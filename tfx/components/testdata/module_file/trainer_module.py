# Copyright 2019 Google LLC. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
"""Python source file include taxi pipeline functions and necesasry utils.

The utilities in this file are used to build a model with native Keras.
This module file will be used in Transform and generic Trainer.
"""

from typing import Optional

from absl import logging
import tensorflow as tf
import tensorflow_transform as tft
from tfx.components.trainer import fn_args_utils
from tfx_bsl.tfxio import dataset_options

# Categorical features are assumed to each have a maximum value in the dataset.
_MAX_CATEGORICAL_FEATURE_VALUES = [24, 31, 13]

_CATEGORICAL_FEATURE_KEYS = [
    'trip_start_hour',
    'trip_start_day',
    'trip_start_month',
    'pickup_census_tract',
    'dropoff_census_tract',
    'pickup_community_area',
    'dropoff_community_area',
]

_DENSE_FLOAT_FEATURE_KEYS = ['trip_miles', 'fare', 'trip_seconds']

# Number of buckets used by tf.transform for encoding each feature.
_FEATURE_BUCKET_COUNT = 10

_BUCKET_FEATURE_KEYS = [
    'pickup_latitude',
    'pickup_longitude',
    'dropoff_latitude',
    'dropoff_longitude',
]

# Number of vocabulary terms used for encoding VOCAB_FEATURES by tf.transform
_VOCAB_SIZE = 1000

# Count of out-of-vocab buckets in which unrecognized VOCAB_FEATURES are hashed.
_OOV_SIZE = 10

_VOCAB_FEATURE_KEYS = [
    'payment_type',
    'company',
]

# Keys
_LABEL_KEY = 'tips'
_FARE_KEY = 'fare'


def _transformed_name(key):
  return key + '_xf'


def _transformed_names(keys):
  return [_transformed_name(key) for key in keys]


def _fill_in_missing(x):
  """Replace missing values in a SparseTensor.

  Fills in missing values of `x` with '' or 0, and converts to a dense tensor.

  Args:
      x: A `SparseTensor` of rank 2.  Its dense shape should have size at most 1
      in the second dimension.

  Returns:
      A rank 1 tensor where missing values of `x` have been filled in.
  """
  if not isinstance(x, tf.sparse.SparseTensor):
    return x

  default_value = '' if x.dtype == tf.string else 0
  dense_tensor = tf.sparse.to_dense(
      tf.SparseTensor(x.indices, x.values, [x.dense_shape[0], 1]),
      default_value,
  )
  return dense_tensor


def _get_tf_examples_serving_signature(model, tf_transform_output):
  """Returns a serving signature that accepts `tensorflow.Example`."""
  model.tft_layer_inference = tf_transform_output.transform_features_layer()

  @tf.function(
      input_signature=[
          tf.TensorSpec(shape=[None], dtype=tf.string, name='examples')
      ]
  )
  def serve_tf_examples_fn(serialized_tf_example):
    raw_feature_spec = tf_transform_output.raw_feature_spec()
    raw_feature_spec.pop(_LABEL_KEY)
    raw_features = tf.io.parse_example(serialized_tf_example, raw_feature_spec)
    transformed_features = model.tft_layer_inference(raw_features)
    logging.info('serve_transformed_features = %s', transformed_features)

    outputs = model(transformed_features)
    return {'outputs': outputs}

  return serve_tf_examples_fn


def _get_transform_features_signature(model, tf_transform_output):
  """Returns a serving signature that accepts `tensorflow.Example`."""
  model.tft_layer_eval = tf_transform_output.transform_features_layer()

  @tf.function(
      input_signature=[
          tf.TensorSpec(shape=[None], dtype=tf.string, name='examples')
      ]
  )
  def transform_features_fn(serialized_tf_example):
    raw_feature_spec = tf_transform_output.raw_feature_spec()
    raw_features = tf.io.parse_example(serialized_tf_example, raw_feature_spec)
    transformed_features = model.tft_layer_eval(raw_features)
    logging.info('eval_transformed_features = %s', transformed_features)
    return transformed_features

  return transform_features_fn


def _input_fn(
    file_pattern: list[str],
    data_accessor: fn_args_utils.DataAccessor,
    tf_transform_output: tft.TFTransformOutput,
    batch_size: int = 200,
) -> tf.data.Dataset:
  """Generates features and label for tuning/training.

  Args:
    file_pattern: List of paths or patterns of input tfrecord files.
    data_accessor: fn_args_utils.DataAccessor for converting input to
      RecordBatch.
    tf_transform_output: A TFTransformOutput.
    batch_size: representing the number of consecutive elements of returned
      dataset to combine in a single batch

  Returns:
    A dataset that contains (features, indices) tuple where features is a
      dictionary of Tensors, and indices is a single Tensor of label indices.
  """
  return data_accessor.tf_dataset_factory(
      file_pattern,
      dataset_options.TensorFlowDatasetOptions(
          batch_size=batch_size, label_key=_transformed_name(_LABEL_KEY)
      ),
      tf_transform_output.transformed_metadata.schema,
  ).repeat()


def _build_keras_model(
    hidden_units: Optional[list[int]] = None,
) -> tf.keras.Model:
  """Creates a DNN Keras model for classifying taxi data.

  Args:
    hidden_units: [int], the layer sizes of the DNN (input layer first).

  Returns:
    A Wide and Deep keras Model.
  """
  # Following values are hard coded for simplicity in this example,
  # However prefarably they should be passsed in as hparams.

  # Keras needs the feature definitions at compile time.
  deep_input = {
      colname: tf.keras.layers.Input(name=colname, shape=(1,), dtype=tf.float32)
      for colname in _transformed_names(_DENSE_FLOAT_FEATURE_KEYS)
  }
  wide_vocab_input = {
      colname: tf.keras.layers.Input(name=colname, shape=(1,), dtype='int32')
      for colname in _transformed_names(_VOCAB_FEATURE_KEYS)
  }
  wide_bucket_input = {
      colname: tf.keras.layers.Input(name=colname, shape=(1,), dtype='int32')
      for colname in _transformed_names(_BUCKET_FEATURE_KEYS)
  }
  wide_categorical_input = {
      colname: tf.keras.layers.Input(name=colname, shape=(1,), dtype='int32')
      for colname in _transformed_names(_CATEGORICAL_FEATURE_KEYS)
  }
  input_layers = {
      **deep_input,
      **wide_vocab_input,
      **wide_bucket_input,
      **wide_categorical_input,
  }

  deep = tf.keras.layers.concatenate(
      [tf.keras.layers.Normalization()(layer) for layer in deep_input.values()]
  )
  for numnodes in (hidden_units or [100, 70, 50, 25]):
    deep = tf.keras.layers.Dense(numnodes)(deep)

  wide_layers = []
  for key in _transformed_names(_VOCAB_FEATURE_KEYS):
    wide_layers.append(
        tf.keras.layers.CategoryEncoding(num_tokens=_VOCAB_SIZE + _OOV_SIZE)(
            input_layers[key]
        )
    )
  for key in _transformed_names(_BUCKET_FEATURE_KEYS):
    wide_layers.append(
        tf.keras.layers.CategoryEncoding(num_tokens=_FEATURE_BUCKET_COUNT)(
            input_layers[key]
        )
    )
  for key, num_tokens in zip(
      _transformed_names(_CATEGORICAL_FEATURE_KEYS),
      _MAX_CATEGORICAL_FEATURE_VALUES,
  ):
    wide_layers.append(
        tf.keras.layers.CategoryEncoding(num_tokens=num_tokens)(
            input_layers[key]
        )
    )
  wide = tf.keras.layers.concatenate(wide_layers)

  output = tf.keras.layers.Dense(1, activation='sigmoid')(
      tf.keras.layers.concatenate([deep, wide])
  )
  output = tf.keras.layers.Reshape((1,))(output)

  model = tf.keras.Model(input_layers, output)
  model.compile(
      loss='binary_crossentropy',
      optimizer=tf.keras.optimizers.Adam(learning_rate=0.001),
      metrics=[tf.keras.metrics.BinaryAccuracy()],
  )
  model.summary(print_fn=logging.info)
  return model


def stats_options_updater_fn(unused_stats_type, stats_options):
  """Callback function for setting pre and post-transform stats options.

  Args:
    unused_stats_type: a stats_options_util.StatsType object.
    stats_options: a tfdv.StatsOptions object.

  Returns:
    An updated tfdv.StatsOptions object.
  """
  return stats_options


# TFX Transform will call this function.
def preprocessing_fn(inputs):
  """tf.transform's callback function for preprocessing inputs.

  Args:
    inputs: map from feature keys to raw not-yet-transformed features.

  Returns:
    Map from string feature key to transformed feature operations.
  """
  outputs = {}
  for key in _DENSE_FLOAT_FEATURE_KEYS:
    # If sparse make it dense, setting nan's to 0 or '', and apply zscore.
    outputs[_transformed_name(key)] = tft.scale_to_z_score(
        _fill_in_missing(inputs[key])
    )

  for key in _VOCAB_FEATURE_KEYS:
    # Build a vocabulary for this feature.
    outputs[_transformed_name(key)] = tft.compute_and_apply_vocabulary(
        _fill_in_missing(inputs[key]),
        top_k=_VOCAB_SIZE,
        num_oov_buckets=_OOV_SIZE,
    )

  for key in _BUCKET_FEATURE_KEYS:
    outputs[_transformed_name(key)] = tft.bucketize(
        _fill_in_missing(inputs[key]), _FEATURE_BUCKET_COUNT
    )

  for key in _CATEGORICAL_FEATURE_KEYS:
    outputs[_transformed_name(key)] = _fill_in_missing(inputs[key])

  # Was this passenger a big tipper?
  taxi_fare = _fill_in_missing(inputs[_FARE_KEY])
  tips = _fill_in_missing(inputs[_LABEL_KEY])
  outputs[_transformed_name(_LABEL_KEY)] = tf.where(
      tf.math.is_nan(taxi_fare),
      tf.cast(tf.zeros_like(taxi_fare), tf.int64),
      # Test if the tip was > 20% of the fare.
      tf.cast(
          tf.greater(tips, tf.multiply(taxi_fare, tf.constant(0.2))), tf.int64
      ),
  )

  return outputs


# TFX Trainer will call this function.
def run_fn(fn_args: fn_args_utils.FnArgs):
  """Train the model based on given args.

  Args:
    fn_args: Holds args used to train the model as name/value pairs.
  """
  # Number of nodes in the first layer of the DNN
  first_dnn_layer_size = 100
  num_dnn_layers = 4
  dnn_decay_factor = 0.7

  tf_transform_output = tft.TFTransformOutput(fn_args.transform_graph_path)

  train_dataset = _input_fn(
      fn_args.train_files, fn_args.data_accessor, tf_transform_output, 40
  )
  eval_dataset = _input_fn(
      fn_args.eval_files, fn_args.data_accessor, tf_transform_output, 40
  )

  mirrored_strategy = tf.distribute.MirroredStrategy()
  with mirrored_strategy.scope():
    model = _build_keras_model(
        # Construct layers sizes with exponetial decay
        hidden_units=[
            max(2, int(first_dnn_layer_size * dnn_decay_factor**i))
            for i in range(num_dnn_layers)
        ]
    )

  # Write logs to path
  tensorboard_callback = tf.keras.callbacks.TensorBoard(
      log_dir=fn_args.model_run_dir, update_freq='epoch'
  )

  model.fit(
      train_dataset,
      steps_per_epoch=fn_args.train_steps,
      validation_data=eval_dataset,
      validation_steps=fn_args.eval_steps,
      callbacks=[tensorboard_callback],
  )

  signatures = {
      'serving_default': _get_tf_examples_serving_signature(
          model, tf_transform_output
      ),
      'transform_features': _get_transform_features_signature(
          model, tf_transform_output
      ),
  }
  tf.saved_model.save(model, fn_args.serving_model_dir, signatures=signatures)
