# Copyright 2019 Google LLC. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
"""Tests for tfx.components.example_validator.executor."""

import os
import tempfile

from absl.testing import absltest
from absl.testing import parameterized
from tensorflow_data_validation.anomalies.proto import custom_validation_config_pb2
from tfx.components.example_validator import executor
from tfx.dsl.io import fileio
from tfx.orchestration.experimental.core import component_generated_alert_pb2
from tfx.orchestration.experimental.core import constants
from tfx.proto.orchestration import execution_result_pb2
from tfx.types import artifact_utils
from tfx.types import standard_artifacts
from tfx.types import standard_component_specs
from tfx.utils import io_utils
from tfx.utils import json_utils

from google.protobuf import any_pb2
from google.protobuf import text_format
from tensorflow_metadata.proto.v0 import anomalies_pb2


_ANOMALIES_PROTO = text_format.Parse(
    """
    anomaly_info {
      key: 'company'
      value {
        path {
          step: 'company'
        }
        severity: ERROR
        short_description: 'Feature does not have enough values.'
        description: 'Custom validation triggered anomaly. Query: feature.string_stats.common_stats.min_num_values > 5 Test dataset: default slice'
        reason {
          description: 'Custom validation triggered anomaly. Query: feature.string_stats.common_stats.min_num_values > 5 Test dataset: default slice'
          type: CUSTOM_VALIDATION
          short_description: 'Feature does not have enough values.'
        }
      }
    }
    dataset_anomaly_info {
      description: "Low num examples in dataset."
      severity: ERROR
      short_description: "Low num examples in dataset."
      reason {
          type: DATASET_LOW_NUM_EXAMPLES
      }
    }
    """,
    anomalies_pb2.Anomalies()
)


class ExecutorTest(parameterized.TestCase):

  def _get_temp_dir(self):
    return tempfile.mkdtemp()

  def _assert_equal_anomalies(self, actual_anomalies, expected_anomalies):
    # Check if the actual anomalies matches with the expected anomalies.
    for feature_name in expected_anomalies.anomaly_info:
      self.assertIn(feature_name, actual_anomalies.anomaly_info)
      # Do not compare diff_regions.
      actual_anomalies.anomaly_info[feature_name].ClearField('diff_regions')

      self.assertEqual(actual_anomalies.anomaly_info[feature_name],
                       expected_anomalies.anomaly_info[feature_name])
    self.assertEqual(
        len(actual_anomalies.anomaly_info),
        len(expected_anomalies.anomaly_info)
    )

  def test_create_anomalies_alerts(self):
    expected_alerts = [
        component_generated_alert_pb2.ComponentGeneratedAlertInfo(
            alert_name='Feature-level anomalies present',
            alert_body=(
                'Feature(s) company contain(s) anomalies for split '
                'train, span 0. See Anomalies artifact for more '
                'details.'
            )
        ),
        component_generated_alert_pb2.ComponentGeneratedAlertInfo(
            alert_name='Feature-level anomalies present',
            alert_body=(
                'Feature(s) company contain(s) anomalies for split '
                'eval, span 0. See Anomalies artifact for more '
                'details.'
            ),
        ),
        component_generated_alert_pb2.ComponentGeneratedAlertInfo(
            alert_name='Dataset anomalies present',
            alert_body=(
                'Low num examples in dataset. in split train, span 0.'
            ),
        ),
        component_generated_alert_pb2.ComponentGeneratedAlertInfo(
            alert_name='Dataset anomalies present',
            alert_body=(
                'Low num examples in dataset. in split eval, span 0.'
            ),
        ),
    ]
    actual_alerts = []
    for split_name in ['train', 'eval']:
      actual_alerts.extend(
          executor._create_anomalies_alerts(
              _ANOMALIES_PROTO, split_name, span=0
          )
      )
    for alert in actual_alerts:
      self.assertIn(alert, expected_alerts)

  @parameterized.named_parameters(
      {
          'testcase_name': 'No_anomalies',
          'custom_validation_config': None,
          'expected_anomalies': anomalies_pb2.Anomalies(),
          'expected_blessing': {
              'train': executor.BLESSED_VALUE,
              'eval': executor.BLESSED_VALUE,
          },
          'expected_alerts': None,
      },
      {
          'testcase_name': 'Custom_validation',
          'custom_validation_config': """
              feature_validations {
              feature_path { step: 'company' }
              validations {
                sql_expression: 'feature.string_stats.common_stats.min_num_values > 5'
                severity: ERROR
                description: 'Feature does not have enough values.'
                }
              }
              """,
          'expected_anomalies': _ANOMALIES_PROTO,
          'expected_blessing': {
              'train': executor.NOT_BLESSED_VALUE,
              'eval': executor.NOT_BLESSED_VALUE,
          },
          'expected_alerts': component_generated_alert_pb2.ComponentGeneratedAlertList(
              component_generated_alert_list=[
                  component_generated_alert_pb2.ComponentGeneratedAlertInfo(
                      alert_name='Feature-level anomalies present',
                      alert_body=(
                          'Feature(s) company contain(s) anomalies for split '
                          'train, span 11. See Anomalies artifact for more '
                          'details.'
                      ),
                  ),
                  component_generated_alert_pb2.ComponentGeneratedAlertInfo(
                      alert_name='Feature-level anomalies present',
                      alert_body=(
                          'Feature(s) company contain(s) anomalies for split '
                          'eval, span 11. See Anomalies artifact for more '
                          'details.'
                      ),
                  ),
              ]
          ),
      },
  )
  def testDo(
      self,
      custom_validation_config,
      expected_anomalies,
      expected_blessing,
      expected_alerts,
  ):
    source_data_dir = os.path.join(
        os.path.dirname(os.path.dirname(__file__)), 'testdata')

    eval_stats_artifact = standard_artifacts.ExampleStatistics()
    eval_stats_artifact.uri = os.path.join(source_data_dir, 'statistics_gen')
    eval_stats_artifact.split_names = artifact_utils.encode_split_names(
        ['train', 'eval', 'test'])
    eval_stats_artifact.span = 11

    schema_artifact = standard_artifacts.Schema()
    schema_artifact.uri = os.path.join(source_data_dir, 'schema_gen')

    output_data_dir = os.path.join(
        os.environ.get('TEST_UNDECLARED_OUTPUTS_DIR', self._get_temp_dir()),
        self._testMethodName)

    validation_output = standard_artifacts.ExampleAnomalies()
    validation_output.uri = os.path.join(output_data_dir, 'output')

    input_dict = {
        standard_component_specs.STATISTICS_KEY: [eval_stats_artifact],
        standard_component_specs.SCHEMA_KEY: [schema_artifact],
    }

    if custom_validation_config is not None:
      custom_validation_config = text_format.Parse(
          custom_validation_config,
          custom_validation_config_pb2.CustomValidationConfig()
      )
    exec_properties = {
        # List needs to be serialized before being passed into Do function.
        standard_component_specs.EXCLUDE_SPLITS_KEY:
            json_utils.dumps(['test']),
        standard_component_specs.CUSTOM_VALIDATION_CONFIG_KEY:
            custom_validation_config,
    }

    output_dict = {
        standard_component_specs.ANOMALIES_KEY: [validation_output],
    }

    example_validator_executor = executor.Executor()
    executor_output = example_validator_executor.Do(
        input_dict, output_dict, exec_properties
    )

    self.assertEqual(
        artifact_utils.encode_split_names(['train', 'eval']),
        validation_output.split_names)
    self.assertEqual(eval_stats_artifact.span, validation_output.span)

    # Check example_validator outputs.
    train_anomalies_path = os.path.join(validation_output.uri, 'Split-train',
                                        'SchemaDiff.pb')
    eval_anomalies_path = os.path.join(validation_output.uri, 'Split-eval',
                                       'SchemaDiff.pb')
    self.assertTrue(fileio.exists(train_anomalies_path))
    self.assertTrue(fileio.exists(eval_anomalies_path))
    train_anomalies_bytes = io_utils.read_bytes_file(train_anomalies_path)
    train_anomalies = anomalies_pb2.Anomalies()
    train_anomalies.ParseFromString(train_anomalies_bytes)
    eval_anomalies_bytes = io_utils.read_bytes_file(eval_anomalies_path)
    eval_anomalies = anomalies_pb2.Anomalies()
    eval_anomalies.ParseFromString(eval_anomalies_bytes)

    self._assert_equal_anomalies(train_anomalies, expected_anomalies)
    self._assert_equal_anomalies(eval_anomalies, expected_anomalies)

    # Assert 'test' split is excluded.
    train_file_path = os.path.join(validation_output.uri, 'Split-test',
                                   'SchemaDiff.pb')
    self.assertFalse(fileio.exists(train_file_path))
    # TODO(zhitaoli): Add comparison to expected anomolies.

    self.assertEqual(
        validation_output.get_json_value_custom_property(
            executor.ARTIFACT_PROPERTY_BLESSED_KEY
        ),
        expected_blessing,
    )

    expected_executor_output = execution_result_pb2.ExecutorOutput(
        output_artifacts={
            standard_component_specs.ANOMALIES_KEY: (
                execution_result_pb2.ExecutorOutput.ArtifactList(
                    artifacts=[validation_output.mlmd_artifact]))
        },
    )
    if expected_alerts:
      alerts_any_proto = any_pb2.Any()
      alerts_any_proto.Pack(expected_alerts)
      expected_executor_output.execution_properties[
          constants.COMPONENT_GENERATED_ALERTS_KEY
      ].proto_value.CopyFrom(alerts_any_proto)

    self.assertEqual(executor_output, expected_executor_output)


