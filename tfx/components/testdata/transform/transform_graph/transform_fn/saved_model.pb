йЮ
Ѓє
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
9
DivNoNan
x"T
y"T
z"T"
Ttype:

2
Ў
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
Ё
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
.
Identity

input"T
output"T"	
Ttype
м
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0ўџџџџџџџџ"
value_indexint(0ўџџџџџџџџ"+

vocab_sizeintџџџџџџџџџ(0џџџџџџџџџ"
	delimiterstring	"
offsetint 
.
IsFinite
x"T
y
"
Ttype:
2
+
IsNan
x"T
y
"
Ttype:
2


LogicalNot
x

y

w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
2
LookupTableSizeV2
table_handle
size	
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeэout_type"	
Ttype"
out_typetype0:
2	
М
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
7
Square
x"T
y"T"
Ttype:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
<
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
j

UpperBound
sorted_inputs"T
values"T
output"out_type"	
Ttype"
out_typetype0:
2	
G
Where

input"T	
index	"'
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"	transform*2.15.12v2.15.0-11-g63f5a65c7cdцћ
z
ConstConst*
_output_shapes

:	*
dtype0*=
value4B2	"$ш^ЏТЋSЏТкNЏТ	IЏТADЏТїCЏТ@ЏТs>ЏТK=ЏТ
I
Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R
б
Const_3Const*
_output_shapes
: *
dtype0*
valueB B/tmp/wssong/test2/test_do_with_module_file/transformed_graph/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_vocabulary
I
Const_4Const*
_output_shapes
: *
dtype0	*
value	B	 R5
I
Const_5Const*
_output_shapes
: *
dtype0	*
value	B	 R5
г
Const_6Const*
_output_shapes
: *
dtype0*
valueB B/tmp/wssong/test2/test_do_with_module_file/transformed_graph/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_1_vocabulary
L
Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *к2-@
L
Const_8Const*
_output_shapes
: *
dtype0*
valueB
 *"пB
L
Const_9Const*
_output_shapes
: *
dtype0*
valueB
 * :A
M
Const_10Const*
_output_shapes
: *
dtype0*
valueB
 *ЯБЭB
M
Const_11Const*
_output_shapes
: *
dtype0*
valueB
 */ъ@D
M
Const_12Const*
_output_shapes
: *
dtype0*
valueB
 *#&I
}
Const_13Const*
_output_shapes

:	*
dtype0*=
value4B2	"$w'B#'B:'Ba'Bю'BМ'BЇ'BЗ'Bўм'B
}
Const_14Const*
_output_shapes

:	*
dtype0*=
value4B2	"$јeЏТPЏТXMЏТIЏТADЏТїCЏТй@ЏТ@ЏТе=ЏТ
}
Const_15Const*
_output_shapes

:	*
dtype0*=
value4B2	"$Лx'B['B:'BN'Bю'B1'BFЁ'BXЗ'Bxа'B

 transform/inputs/company/companyPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ
}
"transform/inputs/company/company_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
k
"transform/inputs/company/company_2Placeholder*
_output_shapes
:*
dtype0	*
shape:

.transform/inputs/F_payment_type/F_payment_typePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

0transform/inputs/F_payment_type/F_payment_type_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
y
0transform/inputs/F_payment_type/F_payment_type_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
Ё
>transform/inputs/F_dropoff_census_tract/F_dropoff_census_tractPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

@transform/inputs/F_dropoff_census_tract/F_dropoff_census_tract_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

@transform/inputs/F_dropoff_census_tract/F_dropoff_census_tract_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
Ѕ
Btransform/inputs/F_dropoff_community_area/F_dropoff_community_areaPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

Dtransform/inputs/F_dropoff_community_area/F_dropoff_community_area_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

Dtransform/inputs/F_dropoff_community_area/F_dropoff_community_area_2Placeholder*
_output_shapes
:*
dtype0	*
shape:

6transform/inputs/F_dropoff_latitude/F_dropoff_latitudePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

8transform/inputs/F_dropoff_latitude/F_dropoff_latitude_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

8transform/inputs/F_dropoff_latitude/F_dropoff_latitude_2Placeholder*
_output_shapes
:*
dtype0	*
shape:

8transform/inputs/F_dropoff_longitude/F_dropoff_longitudePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

:transform/inputs/F_dropoff_longitude/F_dropoff_longitude_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

:transform/inputs/F_dropoff_longitude/F_dropoff_longitude_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
}
transform/inputs/fare/farePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ
w
transform/inputs/fare/fare_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
e
transform/inputs/fare/fare_2Placeholder*
_output_shapes
:*
dtype0	*
shape:

<transform/inputs/F_pickup_census_tract/F_pickup_census_tractPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

>transform/inputs/F_pickup_census_tract/F_pickup_census_tract_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

>transform/inputs/F_pickup_census_tract/F_pickup_census_tract_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
Ѓ
@transform/inputs/F_pickup_community_area/F_pickup_community_areaPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

Btransform/inputs/F_pickup_community_area/F_pickup_community_area_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

Btransform/inputs/F_pickup_community_area/F_pickup_community_area_2Placeholder*
_output_shapes
:*
dtype0	*
shape:

4transform/inputs/F_pickup_latitude/F_pickup_latitudePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

6transform/inputs/F_pickup_latitude/F_pickup_latitude_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

6transform/inputs/F_pickup_latitude/F_pickup_latitude_2Placeholder*
_output_shapes
:*
dtype0	*
shape:

6transform/inputs/F_pickup_longitude/F_pickup_longitudePlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

8transform/inputs/F_pickup_longitude/F_pickup_longitude_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

8transform/inputs/F_pickup_longitude/F_pickup_longitude_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
}
transform/inputs/tips/tipsPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ
w
transform/inputs/tips/tips_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
e
transform/inputs/tips/tips_2Placeholder*
_output_shapes
:*
dtype0	*
shape:

*transform/inputs/F_trip_miles/F_trip_milesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

,transform/inputs/F_trip_miles/F_trip_miles_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
u
,transform/inputs/F_trip_miles/F_trip_miles_2Placeholder*
_output_shapes
:*
dtype0	*
shape:

.transform/inputs/F_trip_seconds/F_trip_secondsPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

0transform/inputs/F_trip_seconds/F_trip_seconds_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ
y
0transform/inputs/F_trip_seconds/F_trip_seconds_2Placeholder*
_output_shapes
:*
dtype0	*
shape:

2transform/inputs/F_trip_start_day/F_trip_start_dayPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

4transform/inputs/F_trip_start_day/F_trip_start_day_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ
}
4transform/inputs/F_trip_start_day/F_trip_start_day_2Placeholder*
_output_shapes
:*
dtype0	*
shape:

4transform/inputs/F_trip_start_hour/F_trip_start_hourPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

6transform/inputs/F_trip_start_hour/F_trip_start_hour_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

6transform/inputs/F_trip_start_hour/F_trip_start_hour_2Placeholder*
_output_shapes
:*
dtype0	*
shape:

6transform/inputs/F_trip_start_month/F_trip_start_monthPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

8transform/inputs/F_trip_start_month/F_trip_start_month_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

8transform/inputs/F_trip_start_month/F_trip_start_month_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
Ё
>transform/inputs/F_trip_start_timestamp/F_trip_start_timestampPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

@transform/inputs/F_trip_start_timestamp/F_trip_start_timestamp_1Placeholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

@transform/inputs/F_trip_start_timestamp/F_trip_start_timestamp_2Placeholder*
_output_shapes
:*
dtype0	*
shape:

,transform/inputs/inputs/company/company_copyIdentity transform/inputs/company/company*
T0	*'
_output_shapes
:џџџџџџџџџ

.transform/inputs/inputs/company/company_1_copyIdentity"transform/inputs/company/company_1*
T0*#
_output_shapes
:џџџџџџџџџ

.transform/inputs/inputs/company/company_2_copyIdentity"transform/inputs/company/company_2*
T0	*
_output_shapes
:
Ј
:transform/inputs/inputs/F_payment_type/F_payment_type_copyIdentity.transform/inputs/F_payment_type/F_payment_type*
T0	*'
_output_shapes
:џџџџџџџџџ
Ј
<transform/inputs/inputs/F_payment_type/F_payment_type_1_copyIdentity0transform/inputs/F_payment_type/F_payment_type_1*
T0*#
_output_shapes
:џџџџџџџџџ

<transform/inputs/inputs/F_payment_type/F_payment_type_2_copyIdentity0transform/inputs/F_payment_type/F_payment_type_2*
T0	*
_output_shapes
:
Ш
Jtransform/inputs/inputs/F_dropoff_census_tract/F_dropoff_census_tract_copyIdentity>transform/inputs/F_dropoff_census_tract/F_dropoff_census_tract*
T0	*'
_output_shapes
:џџџџџџџџџ
Ш
Ltransform/inputs/inputs/F_dropoff_census_tract/F_dropoff_census_tract_1_copyIdentity@transform/inputs/F_dropoff_census_tract/F_dropoff_census_tract_1*
T0	*#
_output_shapes
:џџџџџџџџџ
П
Ltransform/inputs/inputs/F_dropoff_census_tract/F_dropoff_census_tract_2_copyIdentity@transform/inputs/F_dropoff_census_tract/F_dropoff_census_tract_2*
T0	*
_output_shapes
:
а
Ntransform/inputs/inputs/F_dropoff_community_area/F_dropoff_community_area_copyIdentityBtransform/inputs/F_dropoff_community_area/F_dropoff_community_area*
T0	*'
_output_shapes
:џџџџџџџџџ
а
Ptransform/inputs/inputs/F_dropoff_community_area/F_dropoff_community_area_1_copyIdentityDtransform/inputs/F_dropoff_community_area/F_dropoff_community_area_1*
T0	*#
_output_shapes
:џџџџџџџџџ
Ч
Ptransform/inputs/inputs/F_dropoff_community_area/F_dropoff_community_area_2_copyIdentityDtransform/inputs/F_dropoff_community_area/F_dropoff_community_area_2*
T0	*
_output_shapes
:
И
Btransform/inputs/inputs/F_dropoff_latitude/F_dropoff_latitude_copyIdentity6transform/inputs/F_dropoff_latitude/F_dropoff_latitude*
T0	*'
_output_shapes
:џџџџџџџџџ
И
Dtransform/inputs/inputs/F_dropoff_latitude/F_dropoff_latitude_1_copyIdentity8transform/inputs/F_dropoff_latitude/F_dropoff_latitude_1*
T0*#
_output_shapes
:џџџџџџџџџ
Џ
Dtransform/inputs/inputs/F_dropoff_latitude/F_dropoff_latitude_2_copyIdentity8transform/inputs/F_dropoff_latitude/F_dropoff_latitude_2*
T0	*
_output_shapes
:
М
Dtransform/inputs/inputs/F_dropoff_longitude/F_dropoff_longitude_copyIdentity8transform/inputs/F_dropoff_longitude/F_dropoff_longitude*
T0	*'
_output_shapes
:џџџџџџџџџ
М
Ftransform/inputs/inputs/F_dropoff_longitude/F_dropoff_longitude_1_copyIdentity:transform/inputs/F_dropoff_longitude/F_dropoff_longitude_1*
T0*#
_output_shapes
:џџџџџџџџџ
Г
Ftransform/inputs/inputs/F_dropoff_longitude/F_dropoff_longitude_2_copyIdentity:transform/inputs/F_dropoff_longitude/F_dropoff_longitude_2*
T0	*
_output_shapes
:

&transform/inputs/inputs/fare/fare_copyIdentitytransform/inputs/fare/fare*
T0	*'
_output_shapes
:џџџџџџџџџ

(transform/inputs/inputs/fare/fare_1_copyIdentitytransform/inputs/fare/fare_1*
T0*#
_output_shapes
:џџџџџџџџџ
w
(transform/inputs/inputs/fare/fare_2_copyIdentitytransform/inputs/fare/fare_2*
T0	*
_output_shapes
:
Ф
Htransform/inputs/inputs/F_pickup_census_tract/F_pickup_census_tract_copyIdentity<transform/inputs/F_pickup_census_tract/F_pickup_census_tract*
T0	*'
_output_shapes
:џџџџџџџџџ
Ф
Jtransform/inputs/inputs/F_pickup_census_tract/F_pickup_census_tract_1_copyIdentity>transform/inputs/F_pickup_census_tract/F_pickup_census_tract_1*
T0	*#
_output_shapes
:џџџџџџџџџ
Л
Jtransform/inputs/inputs/F_pickup_census_tract/F_pickup_census_tract_2_copyIdentity>transform/inputs/F_pickup_census_tract/F_pickup_census_tract_2*
T0	*
_output_shapes
:
Ь
Ltransform/inputs/inputs/F_pickup_community_area/F_pickup_community_area_copyIdentity@transform/inputs/F_pickup_community_area/F_pickup_community_area*
T0	*'
_output_shapes
:џџџџџџџџџ
Ь
Ntransform/inputs/inputs/F_pickup_community_area/F_pickup_community_area_1_copyIdentityBtransform/inputs/F_pickup_community_area/F_pickup_community_area_1*
T0	*#
_output_shapes
:џџџџџџџџџ
У
Ntransform/inputs/inputs/F_pickup_community_area/F_pickup_community_area_2_copyIdentityBtransform/inputs/F_pickup_community_area/F_pickup_community_area_2*
T0	*
_output_shapes
:
Д
@transform/inputs/inputs/F_pickup_latitude/F_pickup_latitude_copyIdentity4transform/inputs/F_pickup_latitude/F_pickup_latitude*
T0	*'
_output_shapes
:џџџџџџџџџ
Д
Btransform/inputs/inputs/F_pickup_latitude/F_pickup_latitude_1_copyIdentity6transform/inputs/F_pickup_latitude/F_pickup_latitude_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ћ
Btransform/inputs/inputs/F_pickup_latitude/F_pickup_latitude_2_copyIdentity6transform/inputs/F_pickup_latitude/F_pickup_latitude_2*
T0	*
_output_shapes
:
И
Btransform/inputs/inputs/F_pickup_longitude/F_pickup_longitude_copyIdentity6transform/inputs/F_pickup_longitude/F_pickup_longitude*
T0	*'
_output_shapes
:џџџџџџџџџ
И
Dtransform/inputs/inputs/F_pickup_longitude/F_pickup_longitude_1_copyIdentity8transform/inputs/F_pickup_longitude/F_pickup_longitude_1*
T0*#
_output_shapes
:џџџџџџџџџ
Џ
Dtransform/inputs/inputs/F_pickup_longitude/F_pickup_longitude_2_copyIdentity8transform/inputs/F_pickup_longitude/F_pickup_longitude_2*
T0	*
_output_shapes
:

&transform/inputs/inputs/tips/tips_copyIdentitytransform/inputs/tips/tips*
T0	*'
_output_shapes
:џџџџџџџџџ

(transform/inputs/inputs/tips/tips_1_copyIdentitytransform/inputs/tips/tips_1*
T0*#
_output_shapes
:џџџџџџџџџ
w
(transform/inputs/inputs/tips/tips_2_copyIdentitytransform/inputs/tips/tips_2*
T0	*
_output_shapes
:
 
6transform/inputs/inputs/F_trip_miles/F_trip_miles_copyIdentity*transform/inputs/F_trip_miles/F_trip_miles*
T0	*'
_output_shapes
:џџџџџџџџџ
 
8transform/inputs/inputs/F_trip_miles/F_trip_miles_1_copyIdentity,transform/inputs/F_trip_miles/F_trip_miles_1*
T0*#
_output_shapes
:џџџџџџџџџ

8transform/inputs/inputs/F_trip_miles/F_trip_miles_2_copyIdentity,transform/inputs/F_trip_miles/F_trip_miles_2*
T0	*
_output_shapes
:
Ј
:transform/inputs/inputs/F_trip_seconds/F_trip_seconds_copyIdentity.transform/inputs/F_trip_seconds/F_trip_seconds*
T0	*'
_output_shapes
:џџџџџџџџџ
Ј
<transform/inputs/inputs/F_trip_seconds/F_trip_seconds_1_copyIdentity0transform/inputs/F_trip_seconds/F_trip_seconds_1*
T0	*#
_output_shapes
:џџџџџџџџџ

<transform/inputs/inputs/F_trip_seconds/F_trip_seconds_2_copyIdentity0transform/inputs/F_trip_seconds/F_trip_seconds_2*
T0	*
_output_shapes
:
А
>transform/inputs/inputs/F_trip_start_day/F_trip_start_day_copyIdentity2transform/inputs/F_trip_start_day/F_trip_start_day*
T0	*'
_output_shapes
:џџџџџџџџџ
А
@transform/inputs/inputs/F_trip_start_day/F_trip_start_day_1_copyIdentity4transform/inputs/F_trip_start_day/F_trip_start_day_1*
T0	*#
_output_shapes
:џџџџџџџџџ
Ї
@transform/inputs/inputs/F_trip_start_day/F_trip_start_day_2_copyIdentity4transform/inputs/F_trip_start_day/F_trip_start_day_2*
T0	*
_output_shapes
:
Д
@transform/inputs/inputs/F_trip_start_hour/F_trip_start_hour_copyIdentity4transform/inputs/F_trip_start_hour/F_trip_start_hour*
T0	*'
_output_shapes
:џџџџџџџџџ
Д
Btransform/inputs/inputs/F_trip_start_hour/F_trip_start_hour_1_copyIdentity6transform/inputs/F_trip_start_hour/F_trip_start_hour_1*
T0	*#
_output_shapes
:џџџџџџџџџ
Ћ
Btransform/inputs/inputs/F_trip_start_hour/F_trip_start_hour_2_copyIdentity6transform/inputs/F_trip_start_hour/F_trip_start_hour_2*
T0	*
_output_shapes
:
И
Btransform/inputs/inputs/F_trip_start_month/F_trip_start_month_copyIdentity6transform/inputs/F_trip_start_month/F_trip_start_month*
T0	*'
_output_shapes
:џџџџџџџџџ
И
Dtransform/inputs/inputs/F_trip_start_month/F_trip_start_month_1_copyIdentity8transform/inputs/F_trip_start_month/F_trip_start_month_1*
T0	*#
_output_shapes
:џџџџџџџџџ
Џ
Dtransform/inputs/inputs/F_trip_start_month/F_trip_start_month_2_copyIdentity8transform/inputs/F_trip_start_month/F_trip_start_month_2*
T0	*
_output_shapes
:
Ш
Jtransform/inputs/inputs/F_trip_start_timestamp/F_trip_start_timestamp_copyIdentity>transform/inputs/F_trip_start_timestamp/F_trip_start_timestamp*
T0	*'
_output_shapes
:џџџџџџџџџ
Ш
Ltransform/inputs/inputs/F_trip_start_timestamp/F_trip_start_timestamp_1_copyIdentity@transform/inputs/F_trip_start_timestamp/F_trip_start_timestamp_1*
T0	*#
_output_shapes
:џџџџџџџџџ
П
Ltransform/inputs/inputs/F_trip_start_timestamp/F_trip_start_timestamp_2_copyIdentity@transform/inputs/F_trip_start_timestamp/F_trip_start_timestamp_2*
T0	*
_output_shapes
:
g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
д
transform/strided_sliceStridedSlice8transform/inputs/inputs/F_trip_miles/F_trip_miles_2_copytransform/strided_slice/stacktransform/strided_slice/stack_1transform/strided_slice/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
f
$transform/SparseTensor/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Ѓ
"transform/SparseTensor/dense_shapePacktransform/strided_slice$transform/SparseTensor/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
%transform/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
П
transform/SparseToDenseSparseToDense6transform/inputs/inputs/F_trip_miles/F_trip_miles_copy"transform/SparseTensor/dense_shape8transform/inputs/inputs/F_trip_miles/F_trip_miles_1_copy%transform/SparseToDense/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(

0transform/scale_to_z_score/mean_and_var/IsFiniteIsFinitetransform/SparseToDense*
T0*'
_output_shapes
:џџџџџџџџџ
З
,transform/scale_to_z_score/mean_and_var/CastCast0transform/scale_to_z_score/mean_and_var/IsFinite*

DstT0	*

SrcT0
*
Truncate( *'
_output_shapes
:џџџџџџџџџ
~
-transform/scale_to_z_score/mean_and_var/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
Э
+transform/scale_to_z_score/mean_and_var/SumSum,transform/scale_to_z_score/mean_and_var/Cast-transform/scale_to_z_score/mean_and_var/Const*
T0	*

Tidx0*
_output_shapes
: *
	keep_dims( 
Ѓ
.transform/scale_to_z_score/mean_and_var/Cast_1Cast+transform/scale_to_z_score/mean_and_var/Sum*

DstT0*

SrcT0	*
Truncate( *
_output_shapes
: 

2transform/scale_to_z_score/mean_and_var/zeros_like	ZerosLiketransform/SparseToDense*
T0*'
_output_shapes
:џџџџџџџџџ

2transform/scale_to_z_score/mean_and_var/IsFinite_1IsFinitetransform/SparseToDense*
T0*'
_output_shapes
:џџџџџџџџџ
я
0transform/scale_to_z_score/mean_and_var/SelectV2SelectV22transform/scale_to_z_score/mean_and_var/IsFinite_1transform/SparseToDense2transform/scale_to_z_score/mean_and_var/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ

/transform/scale_to_z_score/mean_and_var/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
е
-transform/scale_to_z_score/mean_and_var/Sum_1Sum0transform/scale_to_z_score/mean_and_var/SelectV2/transform/scale_to_z_score/mean_and_var/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
О
2transform/scale_to_z_score/mean_and_var/div_no_nanDivNoNan-transform/scale_to_z_score/mean_and_var/Sum_1.transform/scale_to_z_score/mean_and_var/Cast_1*
T0*
_output_shapes
: 
Б
+transform/scale_to_z_score/mean_and_var/subSubtransform/SparseToDense2transform/scale_to_z_score/mean_and_var/div_no_nan*
T0*'
_output_shapes
:џџџџџџџџџ

2transform/scale_to_z_score/mean_and_var/SelectV2_1SelectV22transform/scale_to_z_score/mean_and_var/IsFinite_1+transform/scale_to_z_score/mean_and_var/sub2transform/scale_to_z_score/mean_and_var/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ

.transform/scale_to_z_score/mean_and_var/SquareSquare2transform/scale_to_z_score/mean_and_var/SelectV2_1*
T0*'
_output_shapes
:џџџџџџџџџ

/transform/scale_to_z_score/mean_and_var/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       
г
-transform/scale_to_z_score/mean_and_var/Sum_2Sum.transform/scale_to_z_score/mean_and_var/Square/transform/scale_to_z_score/mean_and_var/Const_2*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
Р
4transform/scale_to_z_score/mean_and_var/div_no_nan_1DivNoNan-transform/scale_to_z_score/mean_and_var/Sum_2.transform/scale_to_z_score/mean_and_var/Cast_1*
T0*
_output_shapes
: 
r
-transform/scale_to_z_score/mean_and_var/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
t
3transform/scale_to_z_score/mean_and_var/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
v
5transform/scale_to_z_score/mean_and_var/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
y
transform/scale_to_z_score/subSubtransform/SparseToDenseConst_7*
T0*'
_output_shapes
:џџџџџџџџџ
Q
transform/scale_to_z_score/SqrtSqrtConst_8*
T0*
_output_shapes
: 
j
%transform/scale_to_z_score/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
И
#transform/scale_to_z_score/NotEqualNotEqualtransform/scale_to_z_score/Sqrt%transform/scale_to_z_score/NotEqual/y*
T0*
_output_shapes
: *
incompatible_shape_error(

%transform/scale_to_z_score/zeros_like	ZerosLiketransform/scale_to_z_score/sub*
T0*'
_output_shapes
:џџџџџџџџџ

transform/scale_to_z_score/CastCast#transform/scale_to_z_score/NotEqual*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 
Ё
transform/scale_to_z_score/addAddV2%transform/scale_to_z_score/zeros_liketransform/scale_to_z_score/Cast*
T0*'
_output_shapes
:џџџџџџџџџ

!transform/scale_to_z_score/Cast_1Casttransform/scale_to_z_score/add*

DstT0
*

SrcT0*
Truncate( *'
_output_shapes
:џџџџџџџџџ
 
"transform/scale_to_z_score/truedivRealDivtransform/scale_to_z_score/subtransform/scale_to_z_score/Sqrt*
T0*'
_output_shapes
:џџџџџџџџџ
Ш
#transform/scale_to_z_score/SelectV2SelectV2!transform/scale_to_z_score/Cast_1"transform/scale_to_z_score/truedivtransform/scale_to_z_score/sub*
T0*'
_output_shapes
:џџџџџџџџџ
i
transform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ь
transform/strided_slice_1StridedSlice(transform/inputs/inputs/fare/fare_2_copytransform/strided_slice_1/stack!transform/strided_slice_1/stack_1!transform/strided_slice_1/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_1/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Љ
$transform/SparseTensor_1/dense_shapePacktransform/strided_slice_1&transform/SparseTensor_1/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
l
'transform/SparseToDense_1/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
transform/SparseToDense_1SparseToDense&transform/inputs/inputs/fare/fare_copy$transform/SparseTensor_1/dense_shape(transform/inputs/inputs/fare/fare_1_copy'transform/SparseToDense_1/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(

2transform/scale_to_z_score_1/mean_and_var/IsFiniteIsFinitetransform/SparseToDense_1*
T0*'
_output_shapes
:џџџџџџџџџ
Л
.transform/scale_to_z_score_1/mean_and_var/CastCast2transform/scale_to_z_score_1/mean_and_var/IsFinite*

DstT0	*

SrcT0
*
Truncate( *'
_output_shapes
:џџџџџџџџџ

/transform/scale_to_z_score_1/mean_and_var/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
г
-transform/scale_to_z_score_1/mean_and_var/SumSum.transform/scale_to_z_score_1/mean_and_var/Cast/transform/scale_to_z_score_1/mean_and_var/Const*
T0	*

Tidx0*
_output_shapes
: *
	keep_dims( 
Ї
0transform/scale_to_z_score_1/mean_and_var/Cast_1Cast-transform/scale_to_z_score_1/mean_and_var/Sum*

DstT0*

SrcT0	*
Truncate( *
_output_shapes
: 

4transform/scale_to_z_score_1/mean_and_var/zeros_like	ZerosLiketransform/SparseToDense_1*
T0*'
_output_shapes
:џџџџџџџџџ

4transform/scale_to_z_score_1/mean_and_var/IsFinite_1IsFinitetransform/SparseToDense_1*
T0*'
_output_shapes
:џџџџџџџџџ
ї
2transform/scale_to_z_score_1/mean_and_var/SelectV2SelectV24transform/scale_to_z_score_1/mean_and_var/IsFinite_1transform/SparseToDense_14transform/scale_to_z_score_1/mean_and_var/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ

1transform/scale_to_z_score_1/mean_and_var/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
л
/transform/scale_to_z_score_1/mean_and_var/Sum_1Sum2transform/scale_to_z_score_1/mean_and_var/SelectV21transform/scale_to_z_score_1/mean_and_var/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
Ф
4transform/scale_to_z_score_1/mean_and_var/div_no_nanDivNoNan/transform/scale_to_z_score_1/mean_and_var/Sum_10transform/scale_to_z_score_1/mean_and_var/Cast_1*
T0*
_output_shapes
: 
З
-transform/scale_to_z_score_1/mean_and_var/subSubtransform/SparseToDense_14transform/scale_to_z_score_1/mean_and_var/div_no_nan*
T0*'
_output_shapes
:џџџџџџџџџ

4transform/scale_to_z_score_1/mean_and_var/SelectV2_1SelectV24transform/scale_to_z_score_1/mean_and_var/IsFinite_1-transform/scale_to_z_score_1/mean_and_var/sub4transform/scale_to_z_score_1/mean_and_var/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
0transform/scale_to_z_score_1/mean_and_var/SquareSquare4transform/scale_to_z_score_1/mean_and_var/SelectV2_1*
T0*'
_output_shapes
:џџџџџџџџџ

1transform/scale_to_z_score_1/mean_and_var/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       
й
/transform/scale_to_z_score_1/mean_and_var/Sum_2Sum0transform/scale_to_z_score_1/mean_and_var/Square1transform/scale_to_z_score_1/mean_and_var/Const_2*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
Ц
6transform/scale_to_z_score_1/mean_and_var/div_no_nan_1DivNoNan/transform/scale_to_z_score_1/mean_and_var/Sum_20transform/scale_to_z_score_1/mean_and_var/Cast_1*
T0*
_output_shapes
: 
t
/transform/scale_to_z_score_1/mean_and_var/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
v
5transform/scale_to_z_score_1/mean_and_var/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
x
7transform/scale_to_z_score_1/mean_and_var/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
}
 transform/scale_to_z_score_1/subSubtransform/SparseToDense_1Const_9*
T0*'
_output_shapes
:џџџџџџџџџ
T
!transform/scale_to_z_score_1/SqrtSqrtConst_10*
T0*
_output_shapes
: 
l
'transform/scale_to_z_score_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
О
%transform/scale_to_z_score_1/NotEqualNotEqual!transform/scale_to_z_score_1/Sqrt'transform/scale_to_z_score_1/NotEqual/y*
T0*
_output_shapes
: *
incompatible_shape_error(

'transform/scale_to_z_score_1/zeros_like	ZerosLike transform/scale_to_z_score_1/sub*
T0*'
_output_shapes
:џџџџџџџџџ

!transform/scale_to_z_score_1/CastCast%transform/scale_to_z_score_1/NotEqual*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 
Ї
 transform/scale_to_z_score_1/addAddV2'transform/scale_to_z_score_1/zeros_like!transform/scale_to_z_score_1/Cast*
T0*'
_output_shapes
:џџџџџџџџџ

#transform/scale_to_z_score_1/Cast_1Cast transform/scale_to_z_score_1/add*

DstT0
*

SrcT0*
Truncate( *'
_output_shapes
:џџџџџџџџџ
І
$transform/scale_to_z_score_1/truedivRealDiv transform/scale_to_z_score_1/sub!transform/scale_to_z_score_1/Sqrt*
T0*'
_output_shapes
:џџџџџџџџџ
а
%transform/scale_to_z_score_1/SelectV2SelectV2#transform/scale_to_z_score_1/Cast_1$transform/scale_to_z_score_1/truediv transform/scale_to_z_score_1/sub*
T0*'
_output_shapes
:џџџџџџџџџ
i
transform/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
р
transform/strided_slice_2StridedSlice<transform/inputs/inputs/F_trip_seconds/F_trip_seconds_2_copytransform/strided_slice_2/stack!transform/strided_slice_2/stack_1!transform/strided_slice_2/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_2/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Љ
$transform/SparseTensor_2/dense_shapePacktransform/strided_slice_2&transform/SparseTensor_2/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
i
'transform/SparseToDense_2/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Э
transform/SparseToDense_2SparseToDense:transform/inputs/inputs/F_trip_seconds/F_trip_seconds_copy$transform/SparseTensor_2/dense_shape<transform/inputs/inputs/F_trip_seconds/F_trip_seconds_1_copy'transform/SparseToDense_2/default_value*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(
Ђ
.transform/scale_to_z_score_2/mean_and_var/CastCasttransform/SparseToDense_2*

DstT0*

SrcT0	*
Truncate( *'
_output_shapes
:џџџџџџџџџ
 
2transform/scale_to_z_score_2/mean_and_var/IsFiniteIsFinite.transform/scale_to_z_score_2/mean_and_var/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Н
0transform/scale_to_z_score_2/mean_and_var/Cast_1Cast2transform/scale_to_z_score_2/mean_and_var/IsFinite*

DstT0	*

SrcT0
*
Truncate( *'
_output_shapes
:џџџџџџџџџ

/transform/scale_to_z_score_2/mean_and_var/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
е
-transform/scale_to_z_score_2/mean_and_var/SumSum0transform/scale_to_z_score_2/mean_and_var/Cast_1/transform/scale_to_z_score_2/mean_and_var/Const*
T0	*

Tidx0*
_output_shapes
: *
	keep_dims( 
Ї
0transform/scale_to_z_score_2/mean_and_var/Cast_2Cast-transform/scale_to_z_score_2/mean_and_var/Sum*

DstT0*

SrcT0	*
Truncate( *
_output_shapes
: 
Ѓ
4transform/scale_to_z_score_2/mean_and_var/zeros_like	ZerosLike.transform/scale_to_z_score_2/mean_and_var/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
4transform/scale_to_z_score_2/mean_and_var/IsFinite_1IsFinite.transform/scale_to_z_score_2/mean_and_var/Cast*
T0*'
_output_shapes
:џџџџџџџџџ

2transform/scale_to_z_score_2/mean_and_var/SelectV2SelectV24transform/scale_to_z_score_2/mean_and_var/IsFinite_1.transform/scale_to_z_score_2/mean_and_var/Cast4transform/scale_to_z_score_2/mean_and_var/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ

1transform/scale_to_z_score_2/mean_and_var/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
л
/transform/scale_to_z_score_2/mean_and_var/Sum_1Sum2transform/scale_to_z_score_2/mean_and_var/SelectV21transform/scale_to_z_score_2/mean_and_var/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
Ф
4transform/scale_to_z_score_2/mean_and_var/div_no_nanDivNoNan/transform/scale_to_z_score_2/mean_and_var/Sum_10transform/scale_to_z_score_2/mean_and_var/Cast_2*
T0*
_output_shapes
: 
Ь
-transform/scale_to_z_score_2/mean_and_var/subSub.transform/scale_to_z_score_2/mean_and_var/Cast4transform/scale_to_z_score_2/mean_and_var/div_no_nan*
T0*'
_output_shapes
:џџџџџџџџџ

4transform/scale_to_z_score_2/mean_and_var/SelectV2_1SelectV24transform/scale_to_z_score_2/mean_and_var/IsFinite_1-transform/scale_to_z_score_2/mean_and_var/sub4transform/scale_to_z_score_2/mean_and_var/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
0transform/scale_to_z_score_2/mean_and_var/SquareSquare4transform/scale_to_z_score_2/mean_and_var/SelectV2_1*
T0*'
_output_shapes
:џџџџџџџџџ

1transform/scale_to_z_score_2/mean_and_var/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       
й
/transform/scale_to_z_score_2/mean_and_var/Sum_2Sum0transform/scale_to_z_score_2/mean_and_var/Square1transform/scale_to_z_score_2/mean_and_var/Const_2*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
Ц
6transform/scale_to_z_score_2/mean_and_var/div_no_nan_1DivNoNan/transform/scale_to_z_score_2/mean_and_var/Sum_20transform/scale_to_z_score_2/mean_and_var/Cast_2*
T0*
_output_shapes
: 
t
/transform/scale_to_z_score_2/mean_and_var/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
v
5transform/scale_to_z_score_2/mean_and_var/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
x
7transform/scale_to_z_score_2/mean_and_var/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 

!transform/scale_to_z_score_2/CastCasttransform/SparseToDense_2*

DstT0*

SrcT0	*
Truncate( *'
_output_shapes
:џџџџџџџџџ

 transform/scale_to_z_score_2/subSub!transform/scale_to_z_score_2/CastConst_11*
T0*'
_output_shapes
:џџџџџџџџџ
T
!transform/scale_to_z_score_2/SqrtSqrtConst_12*
T0*
_output_shapes
: 
l
'transform/scale_to_z_score_2/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
О
%transform/scale_to_z_score_2/NotEqualNotEqual!transform/scale_to_z_score_2/Sqrt'transform/scale_to_z_score_2/NotEqual/y*
T0*
_output_shapes
: *
incompatible_shape_error(

'transform/scale_to_z_score_2/zeros_like	ZerosLike transform/scale_to_z_score_2/sub*
T0*'
_output_shapes
:џџџџџџџџџ

#transform/scale_to_z_score_2/Cast_1Cast%transform/scale_to_z_score_2/NotEqual*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 
Љ
 transform/scale_to_z_score_2/addAddV2'transform/scale_to_z_score_2/zeros_like#transform/scale_to_z_score_2/Cast_1*
T0*'
_output_shapes
:џџџџџџџџџ

#transform/scale_to_z_score_2/Cast_2Cast transform/scale_to_z_score_2/add*

DstT0
*

SrcT0*
Truncate( *'
_output_shapes
:џџџџџџџџџ
І
$transform/scale_to_z_score_2/truedivRealDiv transform/scale_to_z_score_2/sub!transform/scale_to_z_score_2/Sqrt*
T0*'
_output_shapes
:џџџџџџџџџ
а
%transform/scale_to_z_score_2/SelectV2SelectV2#transform/scale_to_z_score_2/Cast_2$transform/scale_to_z_score_2/truediv transform/scale_to_z_score_2/sub*
T0*'
_output_shapes
:џџџџџџџџџ
i
transform/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
р
transform/strided_slice_3StridedSlice<transform/inputs/inputs/F_payment_type/F_payment_type_2_copytransform/strided_slice_3/stack!transform/strided_slice_3/stack_1!transform/strided_slice_3/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_3/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Љ
$transform/SparseTensor_3/dense_shapePacktransform/strided_slice_3&transform/SparseTensor_3/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
h
'transform/SparseToDense_3/default_valueConst*
_output_shapes
: *
dtype0*
valueB B 
Э
transform/SparseToDense_3SparseToDense:transform/inputs/inputs/F_payment_type/F_payment_type_copy$transform/SparseTensor_3/dense_shape<transform/inputs/inputs/F_payment_type/F_payment_type_1_copy'transform/SparseToDense_3/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(

?transform/compute_and_apply_vocabulary/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
м
9transform/compute_and_apply_vocabulary/vocabulary/ReshapeReshapetransform/SparseToDense_3?transform/compute_and_apply_vocabulary/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
м
Ftransform/compute_and_apply_vocabulary/vocabulary/StaticRegexFullMatchStaticRegexFullMatch9transform/compute_and_apply_vocabulary/vocabulary/Reshape*#
_output_shapes
:џџџџџџџџџ*
pattern^$|\C*[\n\r]\C*
З
<transform/compute_and_apply_vocabulary/vocabulary/LogicalNot
LogicalNotFtransform/compute_and_apply_vocabulary/vocabulary/StaticRegexFullMatch*#
_output_shapes
:џџџџџџџџџ
Ы
Dtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/ShapeShape9transform/compute_and_apply_vocabulary/vocabulary/Reshape*
T0*
_output_shapes
:*
out_type0:эЯ

Rtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Ttransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Ttransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
И
Ltransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_sliceStridedSliceDtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/ShapeRtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice/stackTtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice/stack_1Ttransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice/stack_2*
Index0*
T0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask 

Utransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
Ў
Ctransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/ProdProdLtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_sliceUtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/Prod/reduction_indices*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
Э
Ftransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/Shape_1Shape9transform/compute_and_apply_vocabulary/vocabulary/Reshape*
T0*
_output_shapes
:*
out_type0:эЯ

Ttransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
 
Vtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
 
Vtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Р
Ntransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice_1StridedSliceFtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/Shape_1Ttransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice_1/stackVtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice_1/stack_1Vtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask*
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask 
Э
Ftransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/Shape_2Shape9transform/compute_and_apply_vocabulary/vocabulary/Reshape*
T0*
_output_shapes
:*
out_type0:эЯ

Ttransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
 
Vtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
 
Vtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Р
Ntransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice_2StridedSliceFtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/Shape_2Ttransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice_2/stackVtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice_2/stack_1Vtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask 
е
Ntransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/concat/values_1PackCtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/Prod*
N*
T0*
_output_shapes
:*

axis 

Jtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ч
Etransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/concatConcatV2Ntransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice_1Ntransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/concat/values_1Ntransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/strided_slice_2Jtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:

Ftransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/ReshapeReshape9transform/compute_and_apply_vocabulary/vocabulary/ReshapeEtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/concat*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Ё
Ntransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Htransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/Reshape_1Reshape<transform/compute_and_apply_vocabulary/vocabulary/LogicalNotNtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/Reshape_1/shape*
T0
*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Щ
Dtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/WhereWhereHtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/Reshape_1*
T0
*'
_output_shapes
:џџџџџџџџџ
м
Ftransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/SqueezeSqueezeDtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/Where*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


Ltransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 

Gtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/GatherV2GatherV2Ftransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/ReshapeFtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/SqueezeLtransform/compute_and_apply_vocabulary/vocabulary/boolean_mask/GatherV2/axis*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:џџџџџџџџџ*

batch_dims 
Д
stransform/compute_and_apply_vocabulary/vocabulary/vocab_compute_and_apply_vocabulary_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
В
qtransform/compute_and_apply_vocabulary/vocabulary/vocab_compute_and_apply_vocabulary_vocabulary_pruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
y
7transform/compute_and_apply_vocabulary/vocabulary/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Ё
5transform/compute_and_apply_vocabulary/vocabulary/addAddV2Const_17transform/compute_and_apply_vocabulary/vocabulary/add/y*
T0	*
_output_shapes
: 
{
9transform/compute_and_apply_vocabulary/vocabulary/add_1/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Ѕ
7transform/compute_and_apply_vocabulary/vocabulary/add_1AddV2Const_29transform/compute_and_apply_vocabulary/vocabulary/add_1/y*
T0	*
_output_shapes
: 
~
=transform/compute_and_apply_vocabulary/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 

8transform/compute_and_apply_vocabulary/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
џџџџџџџџџ
Б
=transform/compute_and_apply_vocabulary/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	container *
	key_dtype0*y
shared_namejhhash_table_Tensor("compute_and_apply_vocabulary/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
value_dtype0	
Й
_transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_tableConst_3*
	delimiter	*
	key_indexўџџџџџџџџ*
offset *
value_indexџџџџџџџџџ*

vocab_sizeџџџџџџџџџ
а
dtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 

Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R

 
Ftransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/addAddV2dtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
С
Ptransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFasttransform/SparseToDense_3*'
_output_shapes
:џџџџџџџџџ*
num_buckets

б
htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_tabletransform/SparseToDense_38transform/compute_and_apply_vocabulary/apply_vocab/Const*	
Tin0*

Tout0	*'
_output_shapes
:џџџџџџџџџ
в
ftransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 
Н
Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/AddAddV2Ptransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketftransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*
T0	*'
_output_shapes
:џџџџџџџџџ
Я
Mtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualNotEqualhtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV28transform/compute_and_apply_vocabulary/apply_vocab/Const*
T0	*'
_output_shapes
:џџџџџџџџџ*
incompatible_shape_error(

Mtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2SelectV2Mtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualhtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/Add*
T0	*'
_output_shapes
:џџџџџџџџџ
|
:transform/compute_and_apply_vocabulary/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
z
8transform/compute_and_apply_vocabulary/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
р
6transform/compute_and_apply_vocabulary/apply_vocab/subSubFtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add8transform/compute_and_apply_vocabulary/apply_vocab/sub/y*
T0	*
_output_shapes
: 
i
transform/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
в
transform/strided_slice_4StridedSlice.transform/inputs/inputs/company/company_2_copytransform/strided_slice_4/stack!transform/strided_slice_4/stack_1!transform/strided_slice_4/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_4/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Љ
$transform/SparseTensor_4/dense_shapePacktransform/strided_slice_4&transform/SparseTensor_4/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
h
'transform/SparseToDense_4/default_valueConst*
_output_shapes
: *
dtype0*
valueB B 
Б
transform/SparseToDense_4SparseToDense,transform/inputs/inputs/company/company_copy$transform/SparseTensor_4/dense_shape.transform/inputs/inputs/company/company_1_copy'transform/SparseToDense_4/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(

Atransform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
р
;transform/compute_and_apply_vocabulary_1/vocabulary/ReshapeReshapetransform/SparseToDense_4Atransform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
р
Htransform/compute_and_apply_vocabulary_1/vocabulary/StaticRegexFullMatchStaticRegexFullMatch;transform/compute_and_apply_vocabulary_1/vocabulary/Reshape*#
_output_shapes
:џџџџџџџџџ*
pattern^$|\C*[\n\r]\C*
Л
>transform/compute_and_apply_vocabulary_1/vocabulary/LogicalNot
LogicalNotHtransform/compute_and_apply_vocabulary_1/vocabulary/StaticRegexFullMatch*#
_output_shapes
:џџџџџџџџџ
Я
Ftransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/ShapeShape;transform/compute_and_apply_vocabulary_1/vocabulary/Reshape*
T0*
_output_shapes
:*
out_type0:эЯ

Ttransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
 
Vtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
 
Vtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Т
Ntransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_sliceStridedSliceFtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/ShapeTtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice/stackVtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice/stack_1Vtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice/stack_2*
Index0*
T0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask 
Ё
Wtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/Prod/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
Д
Etransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/ProdProdNtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_sliceWtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/Prod/reduction_indices*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
б
Htransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/Shape_1Shape;transform/compute_and_apply_vocabulary_1/vocabulary/Reshape*
T0*
_output_shapes
:*
out_type0:эЯ
 
Vtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Ђ
Xtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Ђ
Xtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ъ
Ptransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice_1StridedSliceHtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/Shape_1Vtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice_1/stackXtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice_1/stack_1Xtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask*
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask 
б
Htransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/Shape_2Shape;transform/compute_and_apply_vocabulary_1/vocabulary/Reshape*
T0*
_output_shapes
:*
out_type0:эЯ
 
Vtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
Ђ
Xtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Ђ
Xtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ъ
Ptransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice_2StridedSliceHtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/Shape_2Vtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice_2/stackXtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice_2/stack_1Xtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask*
new_axis_mask *
shrink_axis_mask 
й
Ptransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/concat/values_1PackEtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/Prod*
N*
T0*
_output_shapes
:*

axis 

Ltransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
б
Gtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/concatConcatV2Ptransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice_1Ptransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/concat/values_1Ptransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/strided_slice_2Ltransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:

Htransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/ReshapeReshape;transform/compute_and_apply_vocabulary_1/vocabulary/ReshapeGtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/concat*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Ѓ
Ptransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Ѓ
Jtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/Reshape_1Reshape>transform/compute_and_apply_vocabulary_1/vocabulary/LogicalNotPtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/Reshape_1/shape*
T0
*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Э
Ftransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/WhereWhereJtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/Reshape_1*
T0
*'
_output_shapes
:џџџџџџџџџ
р
Htransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/SqueezeSqueezeFtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/Where*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


Ntransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 

Itransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/GatherV2GatherV2Htransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/ReshapeHtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/SqueezeNtransform/compute_and_apply_vocabulary_1/vocabulary/boolean_mask/GatherV2/axis*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:џџџџџџџџџ*

batch_dims 
И
wtransform/compute_and_apply_vocabulary_1/vocabulary/vocab_compute_and_apply_vocabulary_1_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
Ж
utransform/compute_and_apply_vocabulary_1/vocabulary/vocab_compute_and_apply_vocabulary_1_vocabulary_pruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
{
9transform/compute_and_apply_vocabulary_1/vocabulary/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Ѕ
7transform/compute_and_apply_vocabulary_1/vocabulary/addAddV2Const_49transform/compute_and_apply_vocabulary_1/vocabulary/add/y*
T0	*
_output_shapes
: 
}
;transform/compute_and_apply_vocabulary_1/vocabulary/add_1/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Љ
9transform/compute_and_apply_vocabulary_1/vocabulary/add_1AddV2Const_5;transform/compute_and_apply_vocabulary_1/vocabulary/add_1/y*
T0	*
_output_shapes
: 

?transform/compute_and_apply_vocabulary_1/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 

:transform/compute_and_apply_vocabulary_1/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
џџџџџџџџџ
Е
?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	container *
	key_dtype0*{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_1/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
value_dtype0	
Н
atransform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableConst_6*
	delimiter	*
	key_indexўџџџџџџџџ*
offset *
value_indexџџџџџџџџџ*

vocab_sizeџџџџџџџџџ
д
ftransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 

Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R

І
Htransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/addAddV2ftransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
У
Rtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFasttransform/SparseToDense_4*'
_output_shapes
:џџџџџџџџџ*
num_buckets

з
jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tabletransform/SparseToDense_4:transform/compute_and_apply_vocabulary_1/apply_vocab/Const*	
Tin0*

Tout0	*'
_output_shapes
:џџџџџџџџџ
ж
htransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 
У
Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/AddAddV2Rtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_buckethtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*
T0	*'
_output_shapes
:џџџџџџџџџ
е
Otransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualNotEqualjtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2:transform/compute_and_apply_vocabulary_1/apply_vocab/Const*
T0	*'
_output_shapes
:џџџџџџџџџ*
incompatible_shape_error(

Otransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2SelectV2Otransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualjtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/Add*
T0	*'
_output_shapes
:џџџџџџџџџ
~
<transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
|
:transform/compute_and_apply_vocabulary_1/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
ц
8transform/compute_and_apply_vocabulary_1/apply_vocab/subSubHtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add:transform/compute_and_apply_vocabulary_1/apply_vocab/sub/y*
T0	*
_output_shapes
: 
i
transform/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ц
transform/strided_slice_5StridedSliceBtransform/inputs/inputs/F_pickup_latitude/F_pickup_latitude_2_copytransform/strided_slice_5/stack!transform/strided_slice_5/stack_1!transform/strided_slice_5/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_5/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Љ
$transform/SparseTensor_5/dense_shapePacktransform/strided_slice_5&transform/SparseTensor_5/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
l
'transform/SparseToDense_5/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
й
transform/SparseToDense_5SparseToDense@transform/inputs/inputs/F_pickup_latitude/F_pickup_latitude_copy$transform/SparseTensor_5/dense_shapeBtransform/inputs/inputs/F_pickup_latitude/F_pickup_latitude_1_copy'transform/SparseToDense_5/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(
z
)transform/bucketize/quantiles/PlaceholderPlaceholder*
_output_shapes

:	*
dtype0*
shape
:	
t
2transform/bucketize/apply_buckets/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :

3transform/bucketize/apply_buckets/assert_rank/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   
d
\transform/bucketize/apply_buckets/assert_rank/assert_type/statically_determined_correct_typeNoOp
U
Mtransform/bucketize/apply_buckets/assert_rank/static_checks_determined_all_okNoOp

>transform/bucketize/apply_buckets/assign_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
к
8transform/bucketize/apply_buckets/assign_buckets/ReshapeReshapetransform/SparseToDense_5>transform/bucketize/apply_buckets/assign_buckets/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ

@transform/bucketize/apply_buckets/assign_buckets/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Ф
:transform/bucketize/apply_buckets/assign_buckets/Reshape_1ReshapeConst_13@transform/bucketize/apply_buckets/assign_buckets/Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:	

Ftransform/bucketize/apply_buckets/assign_buckets/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:	

Dtransform/bucketize/apply_buckets/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Ftransform/bucketize/apply_buckets/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

Ftransform/bucketize/apply_buckets/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ў
>transform/bucketize/apply_buckets/assign_buckets/strided_sliceStridedSliceFtransform/bucketize/apply_buckets/assign_buckets/Shape/shape_as_tensorDtransform/bucketize/apply_buckets/assign_buckets/strided_slice/stackFtransform/bucketize/apply_buckets/assign_buckets/strided_slice/stack_1Ftransform/bucketize/apply_buckets/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
О
8transform/bucketize/apply_buckets/assign_buckets/Shape_1Shape8transform/bucketize/apply_buckets/assign_buckets/Reshape*
T0*
_output_shapes
:*
out_type0:эЯ

Ftransform/bucketize/apply_buckets/assign_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Htransform/bucketize/apply_buckets/assign_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

Htransform/bucketize/apply_buckets/assign_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ј
@transform/bucketize/apply_buckets/assign_buckets/strided_slice_1StridedSlice8transform/bucketize/apply_buckets/assign_buckets/Shape_1Ftransform/bucketize/apply_buckets/assign_buckets/strided_slice_1/stackHtransform/bucketize/apply_buckets/assign_buckets/strided_slice_1/stack_1Htransform/bucketize/apply_buckets/assign_buckets/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask

Btransform/bucketize/apply_buckets/assign_buckets/Reshape_2/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

@transform/bucketize/apply_buckets/assign_buckets/Reshape_2/shapePackBtransform/bucketize/apply_buckets/assign_buckets/Reshape_2/shape/0>transform/bucketize/apply_buckets/assign_buckets/strided_slice*
N*
T0*
_output_shapes
:*

axis 
њ
:transform/bucketize/apply_buckets/assign_buckets/Reshape_2Reshape:transform/bucketize/apply_buckets/assign_buckets/Reshape_1@transform/bucketize/apply_buckets/assign_buckets/Reshape_2/shape*
T0*
Tshape0*
_output_shapes

:	

Btransform/bucketize/apply_buckets/assign_buckets/Reshape_3/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

@transform/bucketize/apply_buckets/assign_buckets/Reshape_3/shapePackBtransform/bucketize/apply_buckets/assign_buckets/Reshape_3/shape/0@transform/bucketize/apply_buckets/assign_buckets/strided_slice_1*
N*
T0*
_output_shapes
:*

axis 

:transform/bucketize/apply_buckets/assign_buckets/Reshape_3Reshape8transform/bucketize/apply_buckets/assign_buckets/Reshape@transform/bucketize/apply_buckets/assign_buckets/Reshape_3/shape*
T0*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

;transform/bucketize/apply_buckets/assign_buckets/UpperBound
UpperBound:transform/bucketize/apply_buckets/assign_buckets/Reshape_2:transform/bucketize/apply_buckets/assign_buckets/Reshape_3*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
out_type0	
О
8transform/bucketize/apply_buckets/assign_buckets/Shape_2Shape8transform/bucketize/apply_buckets/assign_buckets/Reshape*
T0*
_output_shapes
:*
out_type0:эЯ
ј
:transform/bucketize/apply_buckets/assign_buckets/Reshape_4Reshape;transform/bucketize/apply_buckets/assign_buckets/UpperBound8transform/bucketize/apply_buckets/assign_buckets/Shape_2*
T0	*
Tshape0*#
_output_shapes
:џџџџџџџџџ

8transform/bucketize/apply_buckets/assign_buckets/Shape_3Shapetransform/SparseToDense_5*
T0*
_output_shapes
:*
out_type0:эЯ
ћ
:transform/bucketize/apply_buckets/assign_buckets/Reshape_5Reshape:transform/bucketize/apply_buckets/assign_buckets/Reshape_48transform/bucketize/apply_buckets/assign_buckets/Shape_3*
T0	*
Tshape0*'
_output_shapes
:џџџџџџџџџ
i
'transform/bucketize/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
x
'transform/bucketize/apply_buckets/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   

5transform/bucketize/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:

7transform/bucketize/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

7transform/bucketize/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ѓ
/transform/bucketize/apply_buckets/strided_sliceStridedSlice'transform/bucketize/apply_buckets/Shape5transform/bucketize/apply_buckets/strided_slice/stack7transform/bucketize/apply_buckets/strided_slice/stack_17transform/bucketize/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
transform/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ш
transform/strided_slice_6StridedSliceDtransform/inputs/inputs/F_pickup_longitude/F_pickup_longitude_2_copytransform/strided_slice_6/stack!transform/strided_slice_6/stack_1!transform/strided_slice_6/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_6/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Љ
$transform/SparseTensor_6/dense_shapePacktransform/strided_slice_6&transform/SparseTensor_6/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
l
'transform/SparseToDense_6/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
н
transform/SparseToDense_6SparseToDenseBtransform/inputs/inputs/F_pickup_longitude/F_pickup_longitude_copy$transform/SparseTensor_6/dense_shapeDtransform/inputs/inputs/F_pickup_longitude/F_pickup_longitude_1_copy'transform/SparseToDense_6/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(
|
+transform/bucketize_1/quantiles/PlaceholderPlaceholder*
_output_shapes

:	*
dtype0*
shape
:	
v
4transform/bucketize_1/apply_buckets/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :

5transform/bucketize_1/apply_buckets/assert_rank/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   
f
^transform/bucketize_1/apply_buckets/assert_rank/assert_type/statically_determined_correct_typeNoOp
W
Otransform/bucketize_1/apply_buckets/assert_rank/static_checks_determined_all_okNoOp

@transform/bucketize_1/apply_buckets/assign_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
о
:transform/bucketize_1/apply_buckets/assign_buckets/ReshapeReshapetransform/SparseToDense_6@transform/bucketize_1/apply_buckets/assign_buckets/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ

Btransform/bucketize_1/apply_buckets/assign_buckets/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Ш
<transform/bucketize_1/apply_buckets/assign_buckets/Reshape_1ReshapeConst_14Btransform/bucketize_1/apply_buckets/assign_buckets/Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:	

Htransform/bucketize_1/apply_buckets/assign_buckets/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:	

Ftransform/bucketize_1/apply_buckets/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Htransform/bucketize_1/apply_buckets/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

Htransform/bucketize_1/apply_buckets/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

@transform/bucketize_1/apply_buckets/assign_buckets/strided_sliceStridedSliceHtransform/bucketize_1/apply_buckets/assign_buckets/Shape/shape_as_tensorFtransform/bucketize_1/apply_buckets/assign_buckets/strided_slice/stackHtransform/bucketize_1/apply_buckets/assign_buckets/strided_slice/stack_1Htransform/bucketize_1/apply_buckets/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
Т
:transform/bucketize_1/apply_buckets/assign_buckets/Shape_1Shape:transform/bucketize_1/apply_buckets/assign_buckets/Reshape*
T0*
_output_shapes
:*
out_type0:эЯ

Htransform/bucketize_1/apply_buckets/assign_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Jtransform/bucketize_1/apply_buckets/assign_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

Jtransform/bucketize_1/apply_buckets/assign_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

Btransform/bucketize_1/apply_buckets/assign_buckets/strided_slice_1StridedSlice:transform/bucketize_1/apply_buckets/assign_buckets/Shape_1Htransform/bucketize_1/apply_buckets/assign_buckets/strided_slice_1/stackJtransform/bucketize_1/apply_buckets/assign_buckets/strided_slice_1/stack_1Jtransform/bucketize_1/apply_buckets/assign_buckets/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask

Dtransform/bucketize_1/apply_buckets/assign_buckets/Reshape_2/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Btransform/bucketize_1/apply_buckets/assign_buckets/Reshape_2/shapePackDtransform/bucketize_1/apply_buckets/assign_buckets/Reshape_2/shape/0@transform/bucketize_1/apply_buckets/assign_buckets/strided_slice*
N*
T0*
_output_shapes
:*

axis 

<transform/bucketize_1/apply_buckets/assign_buckets/Reshape_2Reshape<transform/bucketize_1/apply_buckets/assign_buckets/Reshape_1Btransform/bucketize_1/apply_buckets/assign_buckets/Reshape_2/shape*
T0*
Tshape0*
_output_shapes

:	

Dtransform/bucketize_1/apply_buckets/assign_buckets/Reshape_3/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Btransform/bucketize_1/apply_buckets/assign_buckets/Reshape_3/shapePackDtransform/bucketize_1/apply_buckets/assign_buckets/Reshape_3/shape/0Btransform/bucketize_1/apply_buckets/assign_buckets/strided_slice_1*
N*
T0*
_output_shapes
:*

axis 

<transform/bucketize_1/apply_buckets/assign_buckets/Reshape_3Reshape:transform/bucketize_1/apply_buckets/assign_buckets/ReshapeBtransform/bucketize_1/apply_buckets/assign_buckets/Reshape_3/shape*
T0*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

=transform/bucketize_1/apply_buckets/assign_buckets/UpperBound
UpperBound<transform/bucketize_1/apply_buckets/assign_buckets/Reshape_2<transform/bucketize_1/apply_buckets/assign_buckets/Reshape_3*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
out_type0	
Т
:transform/bucketize_1/apply_buckets/assign_buckets/Shape_2Shape:transform/bucketize_1/apply_buckets/assign_buckets/Reshape*
T0*
_output_shapes
:*
out_type0:эЯ
ў
<transform/bucketize_1/apply_buckets/assign_buckets/Reshape_4Reshape=transform/bucketize_1/apply_buckets/assign_buckets/UpperBound:transform/bucketize_1/apply_buckets/assign_buckets/Shape_2*
T0	*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Ё
:transform/bucketize_1/apply_buckets/assign_buckets/Shape_3Shapetransform/SparseToDense_6*
T0*
_output_shapes
:*
out_type0:эЯ

<transform/bucketize_1/apply_buckets/assign_buckets/Reshape_5Reshape<transform/bucketize_1/apply_buckets/assign_buckets/Reshape_4:transform/bucketize_1/apply_buckets/assign_buckets/Shape_3*
T0	*
Tshape0*'
_output_shapes
:џџџџџџџџџ
k
)transform/bucketize_1/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
z
)transform/bucketize_1/apply_buckets/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   

7transform/bucketize_1/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:

9transform/bucketize_1/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

9transform/bucketize_1/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
­
1transform/bucketize_1/apply_buckets/strided_sliceStridedSlice)transform/bucketize_1/apply_buckets/Shape7transform/bucketize_1/apply_buckets/strided_slice/stack9transform/bucketize_1/apply_buckets/strided_slice/stack_19transform/bucketize_1/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
transform/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ш
transform/strided_slice_7StridedSliceDtransform/inputs/inputs/F_dropoff_latitude/F_dropoff_latitude_2_copytransform/strided_slice_7/stack!transform/strided_slice_7/stack_1!transform/strided_slice_7/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_7/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Љ
$transform/SparseTensor_7/dense_shapePacktransform/strided_slice_7&transform/SparseTensor_7/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
l
'transform/SparseToDense_7/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
н
transform/SparseToDense_7SparseToDenseBtransform/inputs/inputs/F_dropoff_latitude/F_dropoff_latitude_copy$transform/SparseTensor_7/dense_shapeDtransform/inputs/inputs/F_dropoff_latitude/F_dropoff_latitude_1_copy'transform/SparseToDense_7/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(
|
+transform/bucketize_2/quantiles/PlaceholderPlaceholder*
_output_shapes

:	*
dtype0*
shape
:	
v
4transform/bucketize_2/apply_buckets/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :

5transform/bucketize_2/apply_buckets/assert_rank/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   
f
^transform/bucketize_2/apply_buckets/assert_rank/assert_type/statically_determined_correct_typeNoOp
W
Otransform/bucketize_2/apply_buckets/assert_rank/static_checks_determined_all_okNoOp

@transform/bucketize_2/apply_buckets/assign_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
о
:transform/bucketize_2/apply_buckets/assign_buckets/ReshapeReshapetransform/SparseToDense_7@transform/bucketize_2/apply_buckets/assign_buckets/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ

Btransform/bucketize_2/apply_buckets/assign_buckets/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Ш
<transform/bucketize_2/apply_buckets/assign_buckets/Reshape_1ReshapeConst_15Btransform/bucketize_2/apply_buckets/assign_buckets/Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:	

Htransform/bucketize_2/apply_buckets/assign_buckets/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:	

Ftransform/bucketize_2/apply_buckets/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Htransform/bucketize_2/apply_buckets/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

Htransform/bucketize_2/apply_buckets/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

@transform/bucketize_2/apply_buckets/assign_buckets/strided_sliceStridedSliceHtransform/bucketize_2/apply_buckets/assign_buckets/Shape/shape_as_tensorFtransform/bucketize_2/apply_buckets/assign_buckets/strided_slice/stackHtransform/bucketize_2/apply_buckets/assign_buckets/strided_slice/stack_1Htransform/bucketize_2/apply_buckets/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
Т
:transform/bucketize_2/apply_buckets/assign_buckets/Shape_1Shape:transform/bucketize_2/apply_buckets/assign_buckets/Reshape*
T0*
_output_shapes
:*
out_type0:эЯ

Htransform/bucketize_2/apply_buckets/assign_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Jtransform/bucketize_2/apply_buckets/assign_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

Jtransform/bucketize_2/apply_buckets/assign_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

Btransform/bucketize_2/apply_buckets/assign_buckets/strided_slice_1StridedSlice:transform/bucketize_2/apply_buckets/assign_buckets/Shape_1Htransform/bucketize_2/apply_buckets/assign_buckets/strided_slice_1/stackJtransform/bucketize_2/apply_buckets/assign_buckets/strided_slice_1/stack_1Jtransform/bucketize_2/apply_buckets/assign_buckets/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask

Dtransform/bucketize_2/apply_buckets/assign_buckets/Reshape_2/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Btransform/bucketize_2/apply_buckets/assign_buckets/Reshape_2/shapePackDtransform/bucketize_2/apply_buckets/assign_buckets/Reshape_2/shape/0@transform/bucketize_2/apply_buckets/assign_buckets/strided_slice*
N*
T0*
_output_shapes
:*

axis 

<transform/bucketize_2/apply_buckets/assign_buckets/Reshape_2Reshape<transform/bucketize_2/apply_buckets/assign_buckets/Reshape_1Btransform/bucketize_2/apply_buckets/assign_buckets/Reshape_2/shape*
T0*
Tshape0*
_output_shapes

:	

Dtransform/bucketize_2/apply_buckets/assign_buckets/Reshape_3/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Btransform/bucketize_2/apply_buckets/assign_buckets/Reshape_3/shapePackDtransform/bucketize_2/apply_buckets/assign_buckets/Reshape_3/shape/0Btransform/bucketize_2/apply_buckets/assign_buckets/strided_slice_1*
N*
T0*
_output_shapes
:*

axis 

<transform/bucketize_2/apply_buckets/assign_buckets/Reshape_3Reshape:transform/bucketize_2/apply_buckets/assign_buckets/ReshapeBtransform/bucketize_2/apply_buckets/assign_buckets/Reshape_3/shape*
T0*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

=transform/bucketize_2/apply_buckets/assign_buckets/UpperBound
UpperBound<transform/bucketize_2/apply_buckets/assign_buckets/Reshape_2<transform/bucketize_2/apply_buckets/assign_buckets/Reshape_3*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
out_type0	
Т
:transform/bucketize_2/apply_buckets/assign_buckets/Shape_2Shape:transform/bucketize_2/apply_buckets/assign_buckets/Reshape*
T0*
_output_shapes
:*
out_type0:эЯ
ў
<transform/bucketize_2/apply_buckets/assign_buckets/Reshape_4Reshape=transform/bucketize_2/apply_buckets/assign_buckets/UpperBound:transform/bucketize_2/apply_buckets/assign_buckets/Shape_2*
T0	*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Ё
:transform/bucketize_2/apply_buckets/assign_buckets/Shape_3Shapetransform/SparseToDense_7*
T0*
_output_shapes
:*
out_type0:эЯ

<transform/bucketize_2/apply_buckets/assign_buckets/Reshape_5Reshape<transform/bucketize_2/apply_buckets/assign_buckets/Reshape_4:transform/bucketize_2/apply_buckets/assign_buckets/Shape_3*
T0	*
Tshape0*'
_output_shapes
:џџџџџџџџџ
k
)transform/bucketize_2/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
z
)transform/bucketize_2/apply_buckets/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   

7transform/bucketize_2/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:

9transform/bucketize_2/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

9transform/bucketize_2/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
­
1transform/bucketize_2/apply_buckets/strided_sliceStridedSlice)transform/bucketize_2/apply_buckets/Shape7transform/bucketize_2/apply_buckets/strided_slice/stack9transform/bucketize_2/apply_buckets/strided_slice/stack_19transform/bucketize_2/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
transform/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ъ
transform/strided_slice_8StridedSliceFtransform/inputs/inputs/F_dropoff_longitude/F_dropoff_longitude_2_copytransform/strided_slice_8/stack!transform/strided_slice_8/stack_1!transform/strided_slice_8/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_8/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Љ
$transform/SparseTensor_8/dense_shapePacktransform/strided_slice_8&transform/SparseTensor_8/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
l
'transform/SparseToDense_8/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
с
transform/SparseToDense_8SparseToDenseDtransform/inputs/inputs/F_dropoff_longitude/F_dropoff_longitude_copy$transform/SparseTensor_8/dense_shapeFtransform/inputs/inputs/F_dropoff_longitude/F_dropoff_longitude_1_copy'transform/SparseToDense_8/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(
|
+transform/bucketize_3/quantiles/PlaceholderPlaceholder*
_output_shapes

:	*
dtype0*
shape
:	
v
4transform/bucketize_3/apply_buckets/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :

5transform/bucketize_3/apply_buckets/assert_rank/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   
f
^transform/bucketize_3/apply_buckets/assert_rank/assert_type/statically_determined_correct_typeNoOp
W
Otransform/bucketize_3/apply_buckets/assert_rank/static_checks_determined_all_okNoOp

@transform/bucketize_3/apply_buckets/assign_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
о
:transform/bucketize_3/apply_buckets/assign_buckets/ReshapeReshapetransform/SparseToDense_8@transform/bucketize_3/apply_buckets/assign_buckets/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ

Btransform/bucketize_3/apply_buckets/assign_buckets/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Х
<transform/bucketize_3/apply_buckets/assign_buckets/Reshape_1ReshapeConstBtransform/bucketize_3/apply_buckets/assign_buckets/Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:	

Htransform/bucketize_3/apply_buckets/assign_buckets/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:	

Ftransform/bucketize_3/apply_buckets/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Htransform/bucketize_3/apply_buckets/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

Htransform/bucketize_3/apply_buckets/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

@transform/bucketize_3/apply_buckets/assign_buckets/strided_sliceStridedSliceHtransform/bucketize_3/apply_buckets/assign_buckets/Shape/shape_as_tensorFtransform/bucketize_3/apply_buckets/assign_buckets/strided_slice/stackHtransform/bucketize_3/apply_buckets/assign_buckets/strided_slice/stack_1Htransform/bucketize_3/apply_buckets/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
Т
:transform/bucketize_3/apply_buckets/assign_buckets/Shape_1Shape:transform/bucketize_3/apply_buckets/assign_buckets/Reshape*
T0*
_output_shapes
:*
out_type0:эЯ

Htransform/bucketize_3/apply_buckets/assign_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Jtransform/bucketize_3/apply_buckets/assign_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

Jtransform/bucketize_3/apply_buckets/assign_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

Btransform/bucketize_3/apply_buckets/assign_buckets/strided_slice_1StridedSlice:transform/bucketize_3/apply_buckets/assign_buckets/Shape_1Htransform/bucketize_3/apply_buckets/assign_buckets/strided_slice_1/stackJtransform/bucketize_3/apply_buckets/assign_buckets/strided_slice_1/stack_1Jtransform/bucketize_3/apply_buckets/assign_buckets/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask

Dtransform/bucketize_3/apply_buckets/assign_buckets/Reshape_2/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Btransform/bucketize_3/apply_buckets/assign_buckets/Reshape_2/shapePackDtransform/bucketize_3/apply_buckets/assign_buckets/Reshape_2/shape/0@transform/bucketize_3/apply_buckets/assign_buckets/strided_slice*
N*
T0*
_output_shapes
:*

axis 

<transform/bucketize_3/apply_buckets/assign_buckets/Reshape_2Reshape<transform/bucketize_3/apply_buckets/assign_buckets/Reshape_1Btransform/bucketize_3/apply_buckets/assign_buckets/Reshape_2/shape*
T0*
Tshape0*
_output_shapes

:	

Dtransform/bucketize_3/apply_buckets/assign_buckets/Reshape_3/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Btransform/bucketize_3/apply_buckets/assign_buckets/Reshape_3/shapePackDtransform/bucketize_3/apply_buckets/assign_buckets/Reshape_3/shape/0Btransform/bucketize_3/apply_buckets/assign_buckets/strided_slice_1*
N*
T0*
_output_shapes
:*

axis 

<transform/bucketize_3/apply_buckets/assign_buckets/Reshape_3Reshape:transform/bucketize_3/apply_buckets/assign_buckets/ReshapeBtransform/bucketize_3/apply_buckets/assign_buckets/Reshape_3/shape*
T0*
Tshape0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

=transform/bucketize_3/apply_buckets/assign_buckets/UpperBound
UpperBound<transform/bucketize_3/apply_buckets/assign_buckets/Reshape_2<transform/bucketize_3/apply_buckets/assign_buckets/Reshape_3*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
out_type0	
Т
:transform/bucketize_3/apply_buckets/assign_buckets/Shape_2Shape:transform/bucketize_3/apply_buckets/assign_buckets/Reshape*
T0*
_output_shapes
:*
out_type0:эЯ
ў
<transform/bucketize_3/apply_buckets/assign_buckets/Reshape_4Reshape=transform/bucketize_3/apply_buckets/assign_buckets/UpperBound:transform/bucketize_3/apply_buckets/assign_buckets/Shape_2*
T0	*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Ё
:transform/bucketize_3/apply_buckets/assign_buckets/Shape_3Shapetransform/SparseToDense_8*
T0*
_output_shapes
:*
out_type0:эЯ

<transform/bucketize_3/apply_buckets/assign_buckets/Reshape_5Reshape<transform/bucketize_3/apply_buckets/assign_buckets/Reshape_4:transform/bucketize_3/apply_buckets/assign_buckets/Shape_3*
T0	*
Tshape0*'
_output_shapes
:џџџџџџџџџ
k
)transform/bucketize_3/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
z
)transform/bucketize_3/apply_buckets/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   

7transform/bucketize_3/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:

9transform/bucketize_3/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

9transform/bucketize_3/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
­
1transform/bucketize_3/apply_buckets/strided_sliceStridedSlice)transform/bucketize_3/apply_buckets/Shape7transform/bucketize_3/apply_buckets/strided_slice/stack9transform/bucketize_3/apply_buckets/strided_slice/stack_19transform/bucketize_3/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
transform/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ц
transform/strided_slice_9StridedSliceBtransform/inputs/inputs/F_trip_start_hour/F_trip_start_hour_2_copytransform/strided_slice_9/stack!transform/strided_slice_9/stack_1!transform/strided_slice_9/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_9/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Љ
$transform/SparseTensor_9/dense_shapePacktransform/strided_slice_9&transform/SparseTensor_9/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
i
'transform/SparseToDense_9/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
й
transform/SparseToDense_9SparseToDense@transform/inputs/inputs/F_trip_start_hour/F_trip_start_hour_copy$transform/SparseTensor_9/dense_shapeBtransform/inputs/inputs/F_trip_start_hour/F_trip_start_hour_1_copy'transform/SparseToDense_9/default_value*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(
j
 transform/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ш
transform/strided_slice_10StridedSlice@transform/inputs/inputs/F_trip_start_day/F_trip_start_day_2_copy transform/strided_slice_10/stack"transform/strided_slice_10/stack_1"transform/strided_slice_10/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_10/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Ќ
%transform/SparseTensor_10/dense_shapePacktransform/strided_slice_10'transform/SparseTensor_10/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_10/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
и
transform/SparseToDense_10SparseToDense>transform/inputs/inputs/F_trip_start_day/F_trip_start_day_copy%transform/SparseTensor_10/dense_shape@transform/inputs/inputs/F_trip_start_day/F_trip_start_day_1_copy(transform/SparseToDense_10/default_value*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(
j
 transform/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ь
transform/strided_slice_11StridedSliceDtransform/inputs/inputs/F_trip_start_month/F_trip_start_month_2_copy transform/strided_slice_11/stack"transform/strided_slice_11/stack_1"transform/strided_slice_11/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_11/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Ќ
%transform/SparseTensor_11/dense_shapePacktransform/strided_slice_11'transform/SparseTensor_11/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_11/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
р
transform/SparseToDense_11SparseToDenseBtransform/inputs/inputs/F_trip_start_month/F_trip_start_month_copy%transform/SparseTensor_11/dense_shapeDtransform/inputs/inputs/F_trip_start_month/F_trip_start_month_1_copy(transform/SparseToDense_11/default_value*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(
j
 transform/strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ђ
transform/strided_slice_12StridedSliceJtransform/inputs/inputs/F_pickup_census_tract/F_pickup_census_tract_2_copy transform/strided_slice_12/stack"transform/strided_slice_12/stack_1"transform/strided_slice_12/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_12/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Ќ
%transform/SparseTensor_12/dense_shapePacktransform/strided_slice_12'transform/SparseTensor_12/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_12/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
ь
transform/SparseToDense_12SparseToDenseHtransform/inputs/inputs/F_pickup_census_tract/F_pickup_census_tract_copy%transform/SparseTensor_12/dense_shapeJtransform/inputs/inputs/F_pickup_census_tract/F_pickup_census_tract_1_copy(transform/SparseToDense_12/default_value*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(
j
 transform/strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
є
transform/strided_slice_13StridedSliceLtransform/inputs/inputs/F_dropoff_census_tract/F_dropoff_census_tract_2_copy transform/strided_slice_13/stack"transform/strided_slice_13/stack_1"transform/strided_slice_13/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_13/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Ќ
%transform/SparseTensor_13/dense_shapePacktransform/strided_slice_13'transform/SparseTensor_13/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_13/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
№
transform/SparseToDense_13SparseToDenseJtransform/inputs/inputs/F_dropoff_census_tract/F_dropoff_census_tract_copy%transform/SparseTensor_13/dense_shapeLtransform/inputs/inputs/F_dropoff_census_tract/F_dropoff_census_tract_1_copy(transform/SparseToDense_13/default_value*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(
j
 transform/strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
і
transform/strided_slice_14StridedSliceNtransform/inputs/inputs/F_pickup_community_area/F_pickup_community_area_2_copy transform/strided_slice_14/stack"transform/strided_slice_14/stack_1"transform/strided_slice_14/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_14/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Ќ
%transform/SparseTensor_14/dense_shapePacktransform/strided_slice_14'transform/SparseTensor_14/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_14/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
є
transform/SparseToDense_14SparseToDenseLtransform/inputs/inputs/F_pickup_community_area/F_pickup_community_area_copy%transform/SparseTensor_14/dense_shapeNtransform/inputs/inputs/F_pickup_community_area/F_pickup_community_area_1_copy(transform/SparseToDense_14/default_value*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(
j
 transform/strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ј
transform/strided_slice_15StridedSlicePtransform/inputs/inputs/F_dropoff_community_area/F_dropoff_community_area_2_copy transform/strided_slice_15/stack"transform/strided_slice_15/stack_1"transform/strided_slice_15/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_15/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Ќ
%transform/SparseTensor_15/dense_shapePacktransform/strided_slice_15'transform/SparseTensor_15/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_15/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
ј
transform/SparseToDense_15SparseToDenseNtransform/inputs/inputs/F_dropoff_community_area/F_dropoff_community_area_copy%transform/SparseTensor_15/dense_shapePtransform/inputs/inputs/F_dropoff_community_area/F_dropoff_community_area_1_copy(transform/SparseToDense_15/default_value*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(
j
 transform/strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
а
transform/strided_slice_16StridedSlice(transform/inputs/inputs/fare/fare_2_copy transform/strided_slice_16/stack"transform/strided_slice_16/stack_1"transform/strided_slice_16/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_16/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Ќ
%transform/SparseTensor_16/dense_shapePacktransform/strided_slice_16'transform/SparseTensor_16/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
m
(transform/SparseToDense_16/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
Ј
transform/SparseToDense_16SparseToDense&transform/inputs/inputs/fare/fare_copy%transform/SparseTensor_16/dense_shape(transform/inputs/inputs/fare/fare_1_copy(transform/SparseToDense_16/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(
j
 transform/strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
а
transform/strided_slice_17StridedSlice(transform/inputs/inputs/tips/tips_2_copy transform/strided_slice_17/stack"transform/strided_slice_17/stack_1"transform/strided_slice_17/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_17/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Ќ
%transform/SparseTensor_17/dense_shapePacktransform/strided_slice_17'transform/SparseTensor_17/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
m
(transform/SparseToDense_17/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
Ј
transform/SparseToDense_17SparseToDense&transform/inputs/inputs/tips/tips_copy%transform/SparseTensor_17/dense_shape(transform/inputs/inputs/tips/tips_1_copy(transform/SparseToDense_17/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ*
validate_indices(
f
transform/IsNanIsNantransform/SparseToDense_16*
T0*'
_output_shapes
:џџџџџџџџџ
o
transform/zeros_like	ZerosLiketransform/SparseToDense_16*
T0*'
_output_shapes
:џџџџџџџџџ
}
transform/CastCasttransform/zeros_like*

DstT0	*

SrcT0*
Truncate( *'
_output_shapes
:џџџџџџџџџ
T
transform/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>
s
transform/MulMultransform/SparseToDense_16transform/Const*
T0*'
_output_shapes
:џџџџџџџџџ
y
transform/GreaterGreatertransform/SparseToDense_17transform/Mul*
T0*'
_output_shapes
:џџџџџџџџџ
|
transform/Cast_1Casttransform/Greater*

DstT0	*

SrcT0
*
Truncate( *'
_output_shapes
:џџџџџџџџџ

transform/SelectV2SelectV2transform/IsNantransform/Casttransform/Cast_1*
T0	*'
_output_shapes
:џџџџџџџџџ

transform/initNoOp

transform/init_1NoOp

initNoOp"э"+
asset_filepaths

	Const_3:0
	Const_6:0"і
saved_model_assetsп*м
k
+type.googleapis.com/tensorflow.AssetFileDef<

	Const_3:0-vocab_compute_and_apply_vocabulary_vocabulary
m
+type.googleapis.com/tensorflow.AssetFileDef>

	Const_6:0/vocab_compute_and_apply_vocabulary_1_vocabulary"н
table_initializerЧ
Ф
_transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2
atransform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2"ч
tft_schema_override_maxЫ
Ш
8transform/compute_and_apply_vocabulary/apply_vocab/sub:0
:transform/compute_and_apply_vocabulary_1/apply_vocab/sub:0
1transform/bucketize/apply_buckets/strided_slice:0
3transform/bucketize_1/apply_buckets/strided_slice:0
3transform/bucketize_2/apply_buckets/strided_slice:0
3transform/bucketize_3/apply_buckets/strided_slice:0"Я
tft_schema_override_minГ
А
<transform/compute_and_apply_vocabulary/apply_vocab/Const_1:0
>transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1:0
)transform/bucketize/apply_buckets/Const:0
+transform/bucketize_1/apply_buckets/Const:0
+transform/bucketize_2/apply_buckets/Const:0
+transform/bucketize_3/apply_buckets/Const:0"Ф
tft_schema_override_tensorЅ
Ђ
Otransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0
Qtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0
<transform/bucketize/apply_buckets/assign_buckets/Reshape_5:0
>transform/bucketize_1/apply_buckets/assign_buckets/Reshape_5:0
>transform/bucketize_2/apply_buckets/assign_buckets/Reshape_5:0
>transform/bucketize_3/apply_buckets/assign_buckets/Reshape_5:0*Н+
transform_signatureЅ+

companyџџџџџџџџџџџџџџџџџџ"p
$transform/inputs/company/company_1:0"transform/inputs/company/company:0$transform/inputs/company/company_2:0

dropoff_census_tractы	џџџџџџџџџџџџџџџџџџ"Ъ
Btransform/inputs/F_dropoff_census_tract/F_dropoff_census_tract_1:0@transform/inputs/F_dropoff_census_tract/F_dropoff_census_tract:0Btransform/inputs/F_dropoff_census_tract/F_dropoff_census_tract_2:0

dropoff_community_areaї	џџџџџџџџџџџџџџџџџџ"ж
Ftransform/inputs/F_dropoff_community_area/F_dropoff_community_area_1:0Dtransform/inputs/F_dropoff_community_area/F_dropoff_community_area:0Ftransform/inputs/F_dropoff_community_area/F_dropoff_community_area_2:0
ш
dropoff_latitudeгџџџџџџџџџџџџџџџџџџ"В
:transform/inputs/F_dropoff_latitude/F_dropoff_latitude_1:08transform/inputs/F_dropoff_latitude/F_dropoff_latitude:0:transform/inputs/F_dropoff_latitude/F_dropoff_latitude_2:0
я
dropoff_longitudeйџџџџџџџџџџџџџџџџџџ"И
<transform/inputs/F_dropoff_longitude/F_dropoff_longitude_1:0:transform/inputs/F_dropoff_longitude/F_dropoff_longitude:0<transform/inputs/F_dropoff_longitude/F_dropoff_longitude_2:0

fare~џџџџџџџџџџџџџџџџџџ"^
transform/inputs/fare/fare_1:0transform/inputs/fare/fare:0transform/inputs/fare/fare_2:0
Ь
payment_typeЛџџџџџџџџџџџџџџџџџџ"
2transform/inputs/F_payment_type/F_payment_type_1:00transform/inputs/F_payment_type/F_payment_type:02transform/inputs/F_payment_type/F_payment_type_2:0
§
pickup_census_tractх	џџџџџџџџџџџџџџџџџџ"Ф
@transform/inputs/F_pickup_census_tract/F_pickup_census_tract_1:0>transform/inputs/F_pickup_census_tract/F_pickup_census_tract:0@transform/inputs/F_pickup_census_tract/F_pickup_census_tract_2:0

pickup_community_areaё	џџџџџџџџџџџџџџџџџџ"а
Dtransform/inputs/F_pickup_community_area/F_pickup_community_area_1:0Btransform/inputs/F_pickup_community_area/F_pickup_community_area:0Dtransform/inputs/F_pickup_community_area/F_pickup_community_area_2:0
с
pickup_latitudeЭџџџџџџџџџџџџџџџџџџ"Ќ
8transform/inputs/F_pickup_latitude/F_pickup_latitude_1:06transform/inputs/F_pickup_latitude/F_pickup_latitude:08transform/inputs/F_pickup_latitude/F_pickup_latitude_2:0
ш
pickup_longitudeгџџџџџџџџџџџџџџџџџџ"В
:transform/inputs/F_pickup_longitude/F_pickup_longitude_1:08transform/inputs/F_pickup_longitude/F_pickup_longitude:0:transform/inputs/F_pickup_longitude/F_pickup_longitude_2:0

tips~џџџџџџџџџџџџџџџџџџ"^
transform/inputs/tips/tips_1:0transform/inputs/tips/tips:0transform/inputs/tips/tips_2:0
О

trip_milesЏџџџџџџџџџџџџџџџџџџ"
.transform/inputs/F_trip_miles/F_trip_miles_1:0,transform/inputs/F_trip_miles/F_trip_miles:0.transform/inputs/F_trip_miles/F_trip_miles_2:0
Ь
trip_secondsЛ	џџџџџџџџџџџџџџџџџџ"
2transform/inputs/F_trip_seconds/F_trip_seconds_1:00transform/inputs/F_trip_seconds/F_trip_seconds:02transform/inputs/F_trip_seconds/F_trip_seconds_2:0
к
trip_start_dayЧ	џџџџџџџџџџџџџџџџџџ"І
6transform/inputs/F_trip_start_day/F_trip_start_day_1:04transform/inputs/F_trip_start_day/F_trip_start_day:06transform/inputs/F_trip_start_day/F_trip_start_day_2:0
с
trip_start_hourЭ	џџџџџџџџџџџџџџџџџџ"Ќ
8transform/inputs/F_trip_start_hour/F_trip_start_hour_1:06transform/inputs/F_trip_start_hour/F_trip_start_hour:08transform/inputs/F_trip_start_hour/F_trip_start_hour_2:0
ш
trip_start_monthг	џџџџџџџџџџџџџџџџџџ"В
:transform/inputs/F_trip_start_month/F_trip_start_month_1:08transform/inputs/F_trip_start_month/F_trip_start_month:0:transform/inputs/F_trip_start_month/F_trip_start_month_2:0

trip_start_timestampы	џџџџџџџџџџџџџџџџџџ"Ъ
Btransform/inputs/F_trip_start_timestamp/F_trip_start_timestamp_1:0@transform/inputs/F_trip_start_timestamp/F_trip_start_timestamp:0Btransform/inputs/F_trip_start_timestamp/F_trip_start_timestamp_2:0v

company_xfh
Qtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0	џџџџџџџџџN
dropoff_census_tract_xf3
transform/SparseToDense_13:0	џџџџџџџџџP
dropoff_community_area_xf3
transform/SparseToDense_15:0	џџџџџџџџџl
dropoff_latitude_xfU
>transform/bucketize_2/apply_buckets/assign_buckets/Reshape_5:0	џџџџџџџџџm
dropoff_longitude_xfU
>transform/bucketize_3/apply_buckets/assign_buckets/Reshape_5:0	џџџџџџџџџI
fare_xf>
'transform/scale_to_z_score_1/SelectV2:0џџџџџџџџџy
payment_type_xff
Otransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0	џџџџџџџџџM
pickup_census_tract_xf3
transform/SparseToDense_12:0	џџџџџџџџџO
pickup_community_area_xf3
transform/SparseToDense_14:0	џџџџџџџџџi
pickup_latitude_xfS
<transform/bucketize/apply_buckets/assign_buckets/Reshape_5:0	џџџџџџџџџl
pickup_longitude_xfU
>transform/bucketize_1/apply_buckets/assign_buckets/Reshape_5:0	џџџџџџџџџ6
tips_xf+
transform/SelectV2:0	џџџџџџџџџM
trip_miles_xf<
%transform/scale_to_z_score/SelectV2:0џџџџџџџџџQ
trip_seconds_xf>
'transform/scale_to_z_score_2/SelectV2:0џџџџџџџџџH
trip_start_day_xf3
transform/SparseToDense_10:0	џџџџџџџџџH
trip_start_hour_xf2
transform/SparseToDense_9:0	џџџџџџџџџJ
trip_start_month_xf3
transform/SparseToDense_11:0	џџџџџџџџџtensorflow/serving/predict