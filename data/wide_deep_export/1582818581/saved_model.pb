†є
Ѕ0Ф0
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
Є
AsString

input"T

output"
Ttype:
2		
"
	precisionint€€€€€€€€€"

scientificbool( "
shortestbool( "
widthint€€€€€€€€€"
fillstring 
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
S
	Bucketize

input"T

output"
Ttype:
2	"

boundarieslist(float)
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
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
Ц
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
п
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
р
SparseCross
indices	*N
values2sparse_types
shapes	*N
dense_inputs2dense_types
output_indices	
output_values"out_type
output_shape	"

Nint("
hashed_outputbool"
num_bucketsint("
hash_keyint"$
sparse_types
list(type)(:
2	"#
dense_types
list(type)(:
2	"
out_typetype:
2	"
internal_typetype:
2	
Ј
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
z
SparseSegmentMean	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2"
Tidxtype0:
2	
Г
SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2	"
Tidxtype0:
2	
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
А
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.12.02v1.12.0-rc2-3-ga6d8ffae09ЏЅ

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 
П
global_step
VariableV2*
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@global_step*
	container *
shape: 
≤
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
o
input_example_tensorPlaceholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
U
ParseExample/ConstConst*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_1Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_2Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_3Const*
dtype0*
_output_shapes
: *
valueB 
W
ParseExample/Const_4Const*
valueB *
dtype0*
_output_shapes
: 
b
ParseExample/ParseExample/namesConst*
valueB *
dtype0*
_output_shapes
: 
q
'ParseExample/ParseExample/sparse_keys_0Const*
dtype0*
_output_shapes
: *
valueB B	education
v
'ParseExample/ParseExample/sparse_keys_1Const*
valueB Bmarital-status*
dtype0*
_output_shapes
: 
r
'ParseExample/ParseExample/sparse_keys_2Const*
dtype0*
_output_shapes
: *
valueB B
occupation
t
'ParseExample/ParseExample/sparse_keys_3Const*
valueB Brelationship*
dtype0*
_output_shapes
: 
q
'ParseExample/ParseExample/sparse_keys_4Const*
valueB B	workclass*
dtype0*
_output_shapes
: 
j
&ParseExample/ParseExample/dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB	 Bage
s
&ParseExample/ParseExample/dense_keys_1Const*
dtype0*
_output_shapes
: *
valueB Bcapital-gain
s
&ParseExample/ParseExample/dense_keys_2Const*
valueB Bcapital-loss*
dtype0*
_output_shapes
: 
t
&ParseExample/ParseExample/dense_keys_3Const*
dtype0*
_output_shapes
: *
valueB Beducation-num
u
&ParseExample/ParseExample/dense_keys_4Const*
valueB Bhours-per-week*
dtype0*
_output_shapes
: 
†
ParseExample/ParseExampleParseExampleinput_example_tensorParseExample/ParseExample/names'ParseExample/ParseExample/sparse_keys_0'ParseExample/ParseExample/sparse_keys_1'ParseExample/ParseExample/sparse_keys_2'ParseExample/ParseExample/sparse_keys_3'ParseExample/ParseExample/sparse_keys_4&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1&ParseExample/ParseExample/dense_keys_2&ParseExample/ParseExample/dense_keys_3&ParseExample/ParseExample/dense_keys_4ParseExample/ConstParseExample/Const_1ParseExample/Const_2ParseExample/Const_3ParseExample/Const_4*љ
_output_shapes™
І:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€::::::€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
Nsparse*
sparse_types	
2*0
dense_shapes 
:::::*
Tdense	
2*
Ndense
Р
4dnn/input_from_feature_columns/input_layer/age/ShapeShapeParseExample/ParseExample:15*
T0*
out_type0*
_output_shapes
:
М
Bdnn/input_from_feature_columns/input_layer/age/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
О
Ddnn/input_from_feature_columns/input_layer/age/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
О
Ddnn/input_from_feature_columns/input_layer/age/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
д
<dnn/input_from_feature_columns/input_layer/age/strided_sliceStridedSlice4dnn/input_from_feature_columns/input_layer/age/ShapeBdnn/input_from_feature_columns/input_layer/age/strided_slice/stackDdnn/input_from_feature_columns/input_layer/age/strided_slice/stack_1Ddnn/input_from_feature_columns/input_layer/age/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
А
>dnn/input_from_feature_columns/input_layer/age/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ь
<dnn/input_from_feature_columns/input_layer/age/Reshape/shapePack<dnn/input_from_feature_columns/input_layer/age/strided_slice>dnn/input_from_feature_columns/input_layer/age/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
Ё
6dnn/input_from_feature_columns/input_layer/age/ReshapeReshapeParseExample/ParseExample:15<dnn/input_from_feature_columns/input_layer/age/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Щ
=dnn/input_from_feature_columns/input_layer/capital-gain/ShapeShapeParseExample/ParseExample:16*
T0*
out_type0*
_output_shapes
:
Х
Kdnn/input_from_feature_columns/input_layer/capital-gain/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ч
Mdnn/input_from_feature_columns/input_layer/capital-gain/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ч
Mdnn/input_from_feature_columns/input_layer/capital-gain/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
С
Ednn/input_from_feature_columns/input_layer/capital-gain/strided_sliceStridedSlice=dnn/input_from_feature_columns/input_layer/capital-gain/ShapeKdnn/input_from_feature_columns/input_layer/capital-gain/strided_slice/stackMdnn/input_from_feature_columns/input_layer/capital-gain/strided_slice/stack_1Mdnn/input_from_feature_columns/input_layer/capital-gain/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
Й
Gdnn/input_from_feature_columns/input_layer/capital-gain/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ч
Ednn/input_from_feature_columns/input_layer/capital-gain/Reshape/shapePackEdnn/input_from_feature_columns/input_layer/capital-gain/strided_sliceGdnn/input_from_feature_columns/input_layer/capital-gain/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
п
?dnn/input_from_feature_columns/input_layer/capital-gain/ReshapeReshapeParseExample/ParseExample:16Ednn/input_from_feature_columns/input_layer/capital-gain/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Щ
=dnn/input_from_feature_columns/input_layer/capital-loss/ShapeShapeParseExample/ParseExample:17*
_output_shapes
:*
T0*
out_type0
Х
Kdnn/input_from_feature_columns/input_layer/capital-loss/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ч
Mdnn/input_from_feature_columns/input_layer/capital-loss/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ч
Mdnn/input_from_feature_columns/input_layer/capital-loss/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
С
Ednn/input_from_feature_columns/input_layer/capital-loss/strided_sliceStridedSlice=dnn/input_from_feature_columns/input_layer/capital-loss/ShapeKdnn/input_from_feature_columns/input_layer/capital-loss/strided_slice/stackMdnn/input_from_feature_columns/input_layer/capital-loss/strided_slice/stack_1Mdnn/input_from_feature_columns/input_layer/capital-loss/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
Й
Gdnn/input_from_feature_columns/input_layer/capital-loss/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ч
Ednn/input_from_feature_columns/input_layer/capital-loss/Reshape/shapePackEdnn/input_from_feature_columns/input_layer/capital-loss/strided_sliceGdnn/input_from_feature_columns/input_layer/capital-loss/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
п
?dnn/input_from_feature_columns/input_layer/capital-loss/ReshapeReshapeParseExample/ParseExample:17Ednn/input_from_feature_columns/input_layer/capital-loss/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Ъ
>dnn/input_from_feature_columns/input_layer/education-num/ShapeShapeParseExample/ParseExample:18*
T0*
out_type0*
_output_shapes
:
Ц
Ldnn/input_from_feature_columns/input_layer/education-num/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ш
Ndnn/input_from_feature_columns/input_layer/education-num/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ш
Ndnn/input_from_feature_columns/input_layer/education-num/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ц
Fdnn/input_from_feature_columns/input_layer/education-num/strided_sliceStridedSlice>dnn/input_from_feature_columns/input_layer/education-num/ShapeLdnn/input_from_feature_columns/input_layer/education-num/strided_slice/stackNdnn/input_from_feature_columns/input_layer/education-num/strided_slice/stack_1Ndnn/input_from_feature_columns/input_layer/education-num/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
К
Hdnn/input_from_feature_columns/input_layer/education-num/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ъ
Fdnn/input_from_feature_columns/input_layer/education-num/Reshape/shapePackFdnn/input_from_feature_columns/input_layer/education-num/strided_sliceHdnn/input_from_feature_columns/input_layer/education-num/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
с
@dnn/input_from_feature_columns/input_layer/education-num/ReshapeReshapeParseExample/ParseExample:18Fdnn/input_from_feature_columns/input_layer/education-num/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
µ
Ednn/input_from_feature_columns/input_layer/education_embedding/lookupStringToHashBucketFastParseExample/ParseExample:5*
num_bucketsА*#
_output_shapes
:€€€€€€€€€
Ј
zdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0*
valueB"   	   
™
ydnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0*
valueB
 *    
ђ
{dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddevConst*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0*
valueB
 *Ђ™™>*
dtype0*
_output_shapes
: 
–
Дdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalzdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:	А	*

seed *
T0*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0*
seed2 
Щ
xdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulMulДdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormal{dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddev*
_output_shapes
:	А	*
T0*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0
Ж
tdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Initializer/truncated_normalAddxdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulydnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Initializer/truncated_normal/mean*
T0*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0*
_output_shapes
:	А	
є
Wdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0
VariableV2*
dtype0*
_output_shapes
:	А	*
shared_name *j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0*
	container *
shape:	А	
ц
^dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/AssignAssignWdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0tdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Initializer/truncated_normal*
T0*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0*
validate_shape(*
_output_shapes
:	А	*
use_locking(
„
\dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/readIdentityWdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0*
_output_shapes
:	А	*
T0*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0
∞
fdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
ѓ
ednn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
И
`dnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/SliceSliceParseExample/ParseExample:10fdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Slice/beginednn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
™
`dnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
й
_dnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/ProdProd`dnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Slice`dnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
≠
kdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GatherV2/indicesConst*
dtype0*
_output_shapes
: *
value	B :
™
hdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
®
cdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GatherV2GatherV2ParseExample/ParseExample:10kdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GatherV2/indiceshdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
й
adnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Cast/xPack_dnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Prodcdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GatherV2*
T0	*

axis *
N*
_output_shapes
:
ƒ
hdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/SparseReshapeSparseReshapeParseExample/ParseExampleParseExample/ParseExample:10adnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Cast/x*-
_output_shapes
:€€€€€€€€€:
т
qdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/SparseReshape/IdentityIdentityEdnn/input_from_feature_columns/input_layer/education_embedding/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
Ђ
idnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Г
gdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GreaterEqualGreaterEqualqdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/SparseReshape/Identityidnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
Д
`dnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/WhereWheregdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
ї
hdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
х
bdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/ReshapeReshape`dnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Wherehdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
ђ
jdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
А
ednn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GatherV2_1GatherV2hdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/SparseReshapebdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Reshapejdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Taxis0
ђ
jdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Е
ednn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GatherV2_2GatherV2qdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/SparseReshape/Identitybdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Reshapejdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	
А
cdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/IdentityIdentityjdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
ґ
tdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
Ґ
Вdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsednn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GatherV2_1ednn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/GatherV2_2cdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Identitytdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
Ў
Жdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Џ
Иdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Џ
Иdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
‘
Аdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceВdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsЖdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/strided_slice/stackИdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Иdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€*
T0	*
Index0
ѕ
wdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/CastCastАdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0
÷
ydnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/UniqueUniqueДdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ј
Иdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0*
value	B : *
dtype0*
_output_shapes
: 
µ
Гdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2\dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/readydnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/UniqueИdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tindices0	*
Tparams0*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0*'
_output_shapes
:€€€€€€€€€	*
Taxis0
—
Мdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityГdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:€€€€€€€€€	*
T0
 
rdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparseSparseSegmentMeanМdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity{dnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/Unique:1wdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:€€€€€€€€€	
ї
jdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
Ґ
ddnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Reshape_1ReshapeДdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2jdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
Т
`dnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/ShapeShaperdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
Є
ndnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ї
pdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ї
pdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ј
hdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/strided_sliceStridedSlice`dnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Shapendnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/strided_slice/stackpdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/strided_slice/stack_1pdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
§
bdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
р
`dnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/stackPackbdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/stack/0hdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/strided_slice*
N*
_output_shapes
:*
T0*

axis 
ь
_dnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/TileTileddnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Reshape_1`dnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ш
ednn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/zeros_like	ZerosLikerdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€	*
T0
“
Zdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weightsSelect_dnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Tileednn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/zeros_likerdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€	
Ћ
adnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Cast_1CastParseExample/ParseExample:10*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
≤
hdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
±
gdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
”
bdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Slice_1Sliceadnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Cast_1hdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Slice_1/begingdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
ь
bdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Shape_1ShapeZdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights*
T0*
out_type0*
_output_shapes
:
≤
hdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ї
gdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
‘
bdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Slice_2Slicebdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Shape_1hdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Slice_2/begingdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
®
fdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
„
adnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/concatConcatV2bdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Slice_1bdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Slice_2fdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
о
ddnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Reshape_2ReshapeZdnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weightsadnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€	
и
Ddnn/input_from_feature_columns/input_layer/education_embedding/ShapeShapeddnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Reshape_2*
T0*
out_type0*
_output_shapes
:
Ь
Rdnn/input_from_feature_columns/input_layer/education_embedding/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Ю
Tdnn/input_from_feature_columns/input_layer/education_embedding/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Ю
Tdnn/input_from_feature_columns/input_layer/education_embedding/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
Ldnn/input_from_feature_columns/input_layer/education_embedding/strided_sliceStridedSliceDdnn/input_from_feature_columns/input_layer/education_embedding/ShapeRdnn/input_from_feature_columns/input_layer/education_embedding/strided_slice/stackTdnn/input_from_feature_columns/input_layer/education_embedding/strided_slice/stack_1Tdnn/input_from_feature_columns/input_layer/education_embedding/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
Р
Ndnn/input_from_feature_columns/input_layer/education_embedding/Reshape/shape/1Const*
value	B :	*
dtype0*
_output_shapes
: 
ђ
Ldnn/input_from_feature_columns/input_layer/education_embedding/Reshape/shapePackLdnn/input_from_feature_columns/input_layer/education_embedding/strided_sliceNdnn/input_from_feature_columns/input_layer/education_embedding/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
≈
Fdnn/input_from_feature_columns/input_layer/education_embedding/ReshapeReshapeddnn/input_from_feature_columns/input_layer/education_embedding/education_embedding_weights/Reshape_2Ldnn/input_from_feature_columns/input_layer/education_embedding/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€	
Ы
?dnn/input_from_feature_columns/input_layer/hours-per-week/ShapeShapeParseExample/ParseExample:19*
T0*
out_type0*
_output_shapes
:
Ч
Mdnn/input_from_feature_columns/input_layer/hours-per-week/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Щ
Odnn/input_from_feature_columns/input_layer/hours-per-week/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Щ
Odnn/input_from_feature_columns/input_layer/hours-per-week/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ы
Gdnn/input_from_feature_columns/input_layer/hours-per-week/strided_sliceStridedSlice?dnn/input_from_feature_columns/input_layer/hours-per-week/ShapeMdnn/input_from_feature_columns/input_layer/hours-per-week/strided_slice/stackOdnn/input_from_feature_columns/input_layer/hours-per-week/strided_slice/stack_1Odnn/input_from_feature_columns/input_layer/hours-per-week/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
Л
Idnn/input_from_feature_columns/input_layer/hours-per-week/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Э
Gdnn/input_from_feature_columns/input_layer/hours-per-week/Reshape/shapePackGdnn/input_from_feature_columns/input_layer/hours-per-week/strided_sliceIdnn/input_from_feature_columns/input_layer/hours-per-week/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
у
Adnn/input_from_feature_columns/input_layer/hours-per-week/ReshapeReshapeParseExample/ParseExample:19Gdnn/input_from_feature_columns/input_layer/hours-per-week/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ї
Jdnn/input_from_feature_columns/input_layer/marital-status_embedding/lookupStringToHashBucketFastParseExample/ParseExample:6*#
_output_shapes
:€€€€€€€€€*
num_bucketsА
Ѕ
dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0*
valueB"   	   
і
~dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Initializer/truncated_normal/meanConst*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
Ј
Аdnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddevConst*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0*
valueB
 *Ђ™™>*
dtype0*
_output_shapes
: 
я
Йdnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormaldnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Initializer/truncated_normal/shape*
seed2 *
dtype0*
_output_shapes
:	А	*

seed *
T0*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0
Ѓ
}dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulMulЙdnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalАdnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddev*
T0*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0*
_output_shapes
:	А	
Ъ
ydnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Initializer/truncated_normalAdd}dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Initializer/truncated_normal/mul~dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Initializer/truncated_normal/mean*
T0*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0*
_output_shapes
:	А	
√
\dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0
VariableV2*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0*
	container *
shape:	А	*
dtype0*
_output_shapes
:	А	*
shared_name 
К
cdnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/AssignAssign\dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0ydnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Initializer/truncated_normal*
use_locking(*
T0*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0*
validate_shape(*
_output_shapes
:	А	
ж
adnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/readIdentity\dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0*
T0*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0*
_output_shapes
:	А	
Ї
pdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
є
odnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
¶
jdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/SliceSliceParseExample/ParseExample:11pdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Slice/beginodnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Slice/size*
_output_shapes
:*
Index0*
T0	
і
jdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
З
idnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/ProdProdjdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Slicejdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Const*
	keep_dims( *

Tidx0*
T0	*
_output_shapes
: 
Ј
udnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GatherV2/indicesConst*
dtype0*
_output_shapes
: *
value	B :
і
rdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
∆
mdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GatherV2GatherV2ParseExample/ParseExample:11udnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GatherV2/indicesrdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
З
kdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Cast/xPackidnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Prodmdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GatherV2*
T0	*

axis *
N*
_output_shapes
:
Џ
rdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/SparseReshapeSparseReshapeParseExample/ParseExample:1ParseExample/ParseExample:11kdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Cast/x*-
_output_shapes
:€€€€€€€€€:
Б
{dnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/SparseReshape/IdentityIdentityJdnn/input_from_feature_columns/input_layer/marital-status_embedding/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
µ
sdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
°
qdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GreaterEqualGreaterEqual{dnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/SparseReshape/Identitysdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
Ш
jdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/WhereWhereqdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GreaterEqual*'
_output_shapes
:€€€€€€€€€*
T0

≈
rdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
У
ldnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/ReshapeReshapejdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Whererdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
ґ
tdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
®
odnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GatherV2_1GatherV2rdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/SparseReshapeldnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Reshapetdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Taxis0
ґ
tdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
≠
odnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GatherV2_2GatherV2{dnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/SparseReshape/Identityldnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Reshapetdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	
Ф
mdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/IdentityIdentitytdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
ј
~dnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
‘
Мdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsodnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GatherV2_1odnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/GatherV2_2mdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Identity~dnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
в
Рdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
д
Тdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
д
Тdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
Ж
Кdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceМdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsРdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/strided_slice/stackТdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Тdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*#
_output_shapes
:€€€€€€€€€*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask 
д
Бdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/CastCastКdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0
л
Гdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/UniqueUniqueОdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
∆
Тdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*
_output_shapes
: *o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0*
value	B : 
ё
Нdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2adnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/readГdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/UniqueТdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0*'
_output_shapes
:€€€€€€€€€	*
Taxis0*
Tindices0	
е
Цdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityНdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:€€€€€€€€€	*
T0
ф
|dnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparseSparseSegmentMeanЦdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityЕdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/Unique:1Бdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€	*

Tidx0
≈
tdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
ј
ndnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Reshape_1ReshapeОdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2tdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
¶
jdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/ShapeShape|dnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
¬
xdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
ƒ
zdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
ƒ
zdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
т
rdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/strided_sliceStridedSlicejdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Shapexdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/strided_slice/stackzdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/strided_slice/stack_1zdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ѓ
ldnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
О
jdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/stackPackldnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/stack/0rdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/strided_slice*
N*
_output_shapes
:*
T0*

axis 
Ъ
idnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/TileTilendnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Reshape_1jdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ђ
odnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/zeros_like	ZerosLike|dnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€	
ъ
ddnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weightsSelectidnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Tileodnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/zeros_like|dnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€	
’
kdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Cast_1CastParseExample/ParseExample:11*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
Љ
rdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
ї
qdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ы
ldnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Slice_1Slicekdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Cast_1rdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Slice_1/beginqdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
Р
ldnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Shape_1Shapeddnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights*
T0*
out_type0*
_output_shapes
:
Љ
rdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
ƒ
qdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
ь
ldnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Slice_2Sliceldnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Shape_1rdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Slice_2/beginqdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
≤
pdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
€
kdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/concatConcatV2ldnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Slice_1ldnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Slice_2pdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
М
ndnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Reshape_2Reshapeddnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weightskdnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€	
ч
Idnn/input_from_feature_columns/input_layer/marital-status_embedding/ShapeShapendnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Reshape_2*
T0*
out_type0*
_output_shapes
:
°
Wdnn/input_from_feature_columns/input_layer/marital-status_embedding/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
£
Ydnn/input_from_feature_columns/input_layer/marital-status_embedding/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
£
Ydnn/input_from_feature_columns/input_layer/marital-status_embedding/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ќ
Qdnn/input_from_feature_columns/input_layer/marital-status_embedding/strided_sliceStridedSliceIdnn/input_from_feature_columns/input_layer/marital-status_embedding/ShapeWdnn/input_from_feature_columns/input_layer/marital-status_embedding/strided_slice/stackYdnn/input_from_feature_columns/input_layer/marital-status_embedding/strided_slice/stack_1Ydnn/input_from_feature_columns/input_layer/marital-status_embedding/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
Х
Sdnn/input_from_feature_columns/input_layer/marital-status_embedding/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :	
ї
Qdnn/input_from_feature_columns/input_layer/marital-status_embedding/Reshape/shapePackQdnn/input_from_feature_columns/input_layer/marital-status_embedding/strided_sliceSdnn/input_from_feature_columns/input_layer/marital-status_embedding/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ў
Kdnn/input_from_feature_columns/input_layer/marital-status_embedding/ReshapeReshapendnn/input_from_feature_columns/input_layer/marital-status_embedding/marital-status_embedding_weights/Reshape_2Qdnn/input_from_feature_columns/input_layer/marital-status_embedding/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€	
ґ
Fdnn/input_from_feature_columns/input_layer/occupation_embedding/lookupStringToHashBucketFastParseExample/ParseExample:7*#
_output_shapes
:€€€€€€€€€*
num_bucketsА
є
{dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/shapeConst*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
valueB"   	   *
dtype0*
_output_shapes
:
ђ
zdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/meanConst*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
Ѓ
|dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddevConst*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
valueB
 *Ђ™™>*
dtype0*
_output_shapes
: 
”
Еdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormal{dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:	А	*

seed *
T0*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
seed2 
Э
ydnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulMulЕdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormal|dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddev*
T0*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
_output_shapes
:	А	
К
udnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normalAddydnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulzdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/mean*
T0*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
_output_shapes
:	А	
ї
Xdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0
VariableV2*
shape:	А	*
dtype0*
_output_shapes
:	А	*
shared_name *k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
	container 
ъ
_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/AssignAssignXdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0udnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal*
use_locking(*
T0*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
validate_shape(*
_output_shapes
:	А	
Џ
]dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/readIdentityXdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
_output_shapes
:	А	*
T0*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0
≤
hdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
±
gdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
О
bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SliceSliceParseExample/ParseExample:12hdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice/begingdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
ђ
bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
п
adnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/ProdProdbdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slicebdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
ѓ
mdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
ђ
jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Ѓ
ednn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2GatherV2ParseExample/ParseExample:12mdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2/indicesjdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0
п
cdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Cast/xPackadnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Prodednn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2*
T0	*

axis *
N*
_output_shapes
:
 
jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshapeSparseReshapeParseExample/ParseExample:2ParseExample/ParseExample:12cdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Cast/x*-
_output_shapes
:€€€€€€€€€:
х
sdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshape/IdentityIdentityFdnn/input_from_feature_columns/input_layer/occupation_embedding/lookup*
T0	*#
_output_shapes
:€€€€€€€€€
≠
kdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
Й
idnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GreaterEqualGreaterEqualsdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshape/Identitykdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
И
bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/WhereWhereidnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
љ
jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
ы
ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/ReshapeReshapebdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Wherejdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
Ѓ
ldnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
И
gdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2_1GatherV2jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshapeddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshapeldnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	
Ѓ
ldnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Н
gdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2_2GatherV2sdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshape/Identityddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshapeldnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:€€€€€€€€€
Д
ednn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/IdentityIdentityldnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
Є
vdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
ђ
Дdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsgdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2_1gdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherV2_2ednn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Identityvdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
Џ
Иdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
№
Кdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
№
Кdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ё
Вdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceДdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsИdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stackКdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Кdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€*
Index0*
T0	*
shrink_axis_mask
”
ydnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/CastCastВdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0
Џ
{dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/UniqueUniqueЖdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ї
Кdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
value	B : *
dtype0*
_output_shapes
: 
љ
Еdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2]dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/read{dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/UniqueКdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*'
_output_shapes
:€€€€€€€€€	
’
Оdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityЕdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:€€€€€€€€€	
“
tdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparseSparseSegmentMeanОdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity}dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/Unique:1ydnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:€€€€€€€€€	
љ
ldnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
®
fdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_1ReshapeЖdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2ldnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ц
bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/ShapeShapetdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0*
out_type0
Ї
pdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Љ
rdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Љ
rdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
 
jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_sliceStridedSlicebdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Shapepdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stackrdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stack_1rdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
¶
ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
ц
bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/stackPackddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/stack/0jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice*
N*
_output_shapes
:*
T0*

axis 
В
adnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/TileTilefdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_1bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ь
gdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/zeros_like	ZerosLiketdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€	*
T0
Џ
\dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weightsSelectadnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Tilegdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/zeros_liketdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€	
Ќ
cdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Cast_1CastParseExample/ParseExample:12*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
і
jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
≥
idnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
џ
ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1Slicecdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Cast_1jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1/beginidnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
А
ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Shape_1Shape\dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights*
T0*
out_type0*
_output_shapes
:
і
jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Љ
idnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
№
ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2Sliceddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Shape_1jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2/beginidnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
™
hdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
я
cdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/concatConcatV2ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2hdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
ф
fdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_2Reshape\dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weightscdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€	
л
Ednn/input_from_feature_columns/input_layer/occupation_embedding/ShapeShapefdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_2*
T0*
out_type0*
_output_shapes
:
Э
Sdnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Я
Udnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Я
Udnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
є
Mdnn/input_from_feature_columns/input_layer/occupation_embedding/strided_sliceStridedSliceEdnn/input_from_feature_columns/input_layer/occupation_embedding/ShapeSdnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stackUdnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stack_1Udnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
С
Odnn/input_from_feature_columns/input_layer/occupation_embedding/Reshape/shape/1Const*
value	B :	*
dtype0*
_output_shapes
: 
ѓ
Mdnn/input_from_feature_columns/input_layer/occupation_embedding/Reshape/shapePackMdnn/input_from_feature_columns/input_layer/occupation_embedding/strided_sliceOdnn/input_from_feature_columns/input_layer/occupation_embedding/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
…
Gdnn/input_from_feature_columns/input_layer/occupation_embedding/ReshapeReshapefdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_2Mdnn/input_from_feature_columns/input_layer/occupation_embedding/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€	
Є
Hdnn/input_from_feature_columns/input_layer/relationship_embedding/lookupStringToHashBucketFastParseExample/ParseExample:8*#
_output_shapes
:€€€€€€€€€*
num_bucketsА
љ
}dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Initializer/truncated_normal/shapeConst*m
_classc
a_loc:@dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0*
valueB"   	   *
dtype0*
_output_shapes
:
∞
|dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Initializer/truncated_normal/meanConst*m
_classc
a_loc:@dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
≤
~dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddevConst*m
_classc
a_loc:@dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0*
valueB
 *Ђ™™>*
dtype0*
_output_shapes
: 
ў
Зdnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormal}dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:	А	*

seed *
T0*m
_classc
a_loc:@dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0*
seed2 
•
{dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulMulЗdnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormal~dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddev*
T0*m
_classc
a_loc:@dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0*
_output_shapes
:	А	
Т
wdnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Initializer/truncated_normalAdd{dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Initializer/truncated_normal/mul|dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Initializer/truncated_normal/mean*
T0*m
_classc
a_loc:@dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0*
_output_shapes
:	А	
њ
Zdnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0
VariableV2*
	container *
shape:	А	*
dtype0*
_output_shapes
:	А	*
shared_name *m
_classc
a_loc:@dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0
В
adnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/AssignAssignZdnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0wdnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Initializer/truncated_normal*
T0*m
_classc
a_loc:@dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0*
validate_shape(*
_output_shapes
:	А	*
use_locking(
а
_dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/readIdentityZdnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0*
T0*m
_classc
a_loc:@dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0*
_output_shapes
:	А	
ґ
ldnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
µ
kdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Ъ
fdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/SliceSliceParseExample/ParseExample:13ldnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Slice/beginkdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
∞
fdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
ы
ednn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/ProdProdfdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Slicefdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
≥
qdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
∞
ndnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Ї
idnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GatherV2GatherV2ParseExample/ParseExample:13qdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GatherV2/indicesndnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0
ы
gdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Cast/xPackednn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Prodidnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GatherV2*
T0	*

axis *
N*
_output_shapes
:
“
ndnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/SparseReshapeSparseReshapeParseExample/ParseExample:3ParseExample/ParseExample:13gdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Cast/x*-
_output_shapes
:€€€€€€€€€:
ы
wdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/SparseReshape/IdentityIdentityHdnn/input_from_feature_columns/input_layer/relationship_embedding/lookup*
T0	*#
_output_shapes
:€€€€€€€€€
±
odnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Х
mdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GreaterEqualGreaterEqualwdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/SparseReshape/Identityodnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0	
Р
fdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/WhereWheremdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
Ѕ
ndnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
З
hdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/ReshapeReshapefdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Wherendnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
≤
pdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Ш
kdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GatherV2_1GatherV2ndnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/SparseReshapehdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Reshapepdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Taxis0
≤
pdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Э
kdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GatherV2_2GatherV2wdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/SparseReshape/Identityhdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Reshapepdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Taxis0
М
idnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/IdentityIdentitypdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
Љ
zdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ј
Иdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowskdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GatherV2_1kdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/GatherV2_2idnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Identityzdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
ё
Мdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
а
Оdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
а
Оdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
т
Жdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceИdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsМdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/strided_slice/stackОdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Оdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€*
Index0*
T0	*
shrink_axis_mask
џ
}dnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/CastCastЖdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0
в
dnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/UniqueUniqueКdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ј
Оdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*m
_classc
a_loc:@dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0*
value	B : *
dtype0*
_output_shapes
: 
Ќ
Йdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2_dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/readdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/UniqueОdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tindices0	*
Tparams0*m
_classc
a_loc:@dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0*'
_output_shapes
:€€€€€€€€€	*
Taxis0
Ё
Тdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityЙdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:€€€€€€€€€	
г
xdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparseSparseSegmentMeanТdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityБdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/Unique:1}dnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€	*

Tidx0
Ѕ
pdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
і
jdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Reshape_1ReshapeКdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2pdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ю
fdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/ShapeShapexdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0*
out_type0
Њ
tdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
ј
vdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
ј
vdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ё
ndnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/strided_sliceStridedSlicefdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Shapetdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/strided_slice/stackvdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/strided_slice/stack_1vdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
™
hdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
В
fdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/stackPackhdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/stack/0ndnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/strided_slice*
T0*

axis *
N*
_output_shapes
:
О
ednn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/TileTilejdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Reshape_1fdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
§
kdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/zeros_like	ZerosLikexdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€	*
T0
к
`dnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weightsSelectednn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Tilekdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/zeros_likexdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€	*
T0
—
gdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Cast_1CastParseExample/ParseExample:13*
Truncate( *
_output_shapes
:*

DstT0*

SrcT0	
Є
ndnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ј
mdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
л
hdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Slice_1Slicegdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Cast_1ndnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Slice_1/beginmdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
И
hdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Shape_1Shape`dnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights*
_output_shapes
:*
T0*
out_type0
Є
ndnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
ј
mdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
м
hdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Slice_2Slicehdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Shape_1ndnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Slice_2/beginmdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
Ѓ
ldnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
п
gdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/concatConcatV2hdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Slice_1hdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Slice_2ldnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
А
jdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Reshape_2Reshape`dnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weightsgdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€	
с
Gdnn/input_from_feature_columns/input_layer/relationship_embedding/ShapeShapejdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Reshape_2*
T0*
out_type0*
_output_shapes
:
Я
Udnn/input_from_feature_columns/input_layer/relationship_embedding/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
°
Wdnn/input_from_feature_columns/input_layer/relationship_embedding/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
°
Wdnn/input_from_feature_columns/input_layer/relationship_embedding/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
√
Odnn/input_from_feature_columns/input_layer/relationship_embedding/strided_sliceStridedSliceGdnn/input_from_feature_columns/input_layer/relationship_embedding/ShapeUdnn/input_from_feature_columns/input_layer/relationship_embedding/strided_slice/stackWdnn/input_from_feature_columns/input_layer/relationship_embedding/strided_slice/stack_1Wdnn/input_from_feature_columns/input_layer/relationship_embedding/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
У
Qdnn/input_from_feature_columns/input_layer/relationship_embedding/Reshape/shape/1Const*
value	B :	*
dtype0*
_output_shapes
: 
µ
Odnn/input_from_feature_columns/input_layer/relationship_embedding/Reshape/shapePackOdnn/input_from_feature_columns/input_layer/relationship_embedding/strided_sliceQdnn/input_from_feature_columns/input_layer/relationship_embedding/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
—
Idnn/input_from_feature_columns/input_layer/relationship_embedding/ReshapeReshapejdnn/input_from_feature_columns/input_layer/relationship_embedding/relationship_embedding_weights/Reshape_2Odnn/input_from_feature_columns/input_layer/relationship_embedding/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€	
µ
Ednn/input_from_feature_columns/input_layer/workclass_embedding/lookupStringToHashBucketFastParseExample/ParseExample:9*#
_output_shapes
:€€€€€€€€€*
num_bucketsА
Ј
zdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Initializer/truncated_normal/shapeConst*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0*
valueB"   	   *
dtype0*
_output_shapes
:
™
ydnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0*
valueB
 *    
ђ
{dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddevConst*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0*
valueB
 *Ђ™™>*
dtype0*
_output_shapes
: 
–
Дdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalzdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Initializer/truncated_normal/shape*
seed2 *
dtype0*
_output_shapes
:	А	*

seed *
T0*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0
Щ
xdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulMulДdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormal{dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddev*
T0*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0*
_output_shapes
:	А	
Ж
tdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Initializer/truncated_normalAddxdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulydnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Initializer/truncated_normal/mean*
T0*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0*
_output_shapes
:	А	
є
Wdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0
VariableV2*
dtype0*
_output_shapes
:	А	*
shared_name *j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0*
	container *
shape:	А	
ц
^dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/AssignAssignWdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0tdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Initializer/truncated_normal*
T0*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0*
validate_shape(*
_output_shapes
:	А	*
use_locking(
„
\dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/readIdentityWdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0*
T0*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0*
_output_shapes
:	А	
∞
fdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
ѓ
ednn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
И
`dnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/SliceSliceParseExample/ParseExample:14fdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Slice/beginednn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
™
`dnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
й
_dnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/ProdProd`dnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Slice`dnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
≠
kdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
™
hdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
®
cdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GatherV2GatherV2ParseExample/ParseExample:14kdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GatherV2/indiceshdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
й
adnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Cast/xPack_dnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Prodcdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GatherV2*
T0	*

axis *
N*
_output_shapes
:
∆
hdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/SparseReshapeSparseReshapeParseExample/ParseExample:4ParseExample/ParseExample:14adnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Cast/x*-
_output_shapes
:€€€€€€€€€:
т
qdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/SparseReshape/IdentityIdentityEdnn/input_from_feature_columns/input_layer/workclass_embedding/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
Ђ
idnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Г
gdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GreaterEqualGreaterEqualqdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/SparseReshape/Identityidnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
Д
`dnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/WhereWheregdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GreaterEqual*'
_output_shapes
:€€€€€€€€€*
T0

ї
hdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
х
bdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/ReshapeReshape`dnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Wherehdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
ђ
jdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
А
ednn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GatherV2_1GatherV2hdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/SparseReshapebdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Reshapejdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€
ђ
jdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Е
ednn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GatherV2_2GatherV2qdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/SparseReshape/Identitybdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Reshapejdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GatherV2_2/axis*#
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	*
Tparams0	
А
cdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/IdentityIdentityjdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
ґ
tdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
Ґ
Вdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsednn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GatherV2_1ednn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/GatherV2_2cdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Identitytdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
Ў
Жdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Џ
Иdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Џ
Иdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
‘
Аdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceВdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsЖdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/strided_slice/stackИdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Иdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€
ѕ
wdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/CastCastАdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0
÷
ydnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/UniqueUniqueДdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ј
Иdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0*
value	B : *
dtype0*
_output_shapes
: 
µ
Гdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2\dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/readydnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/UniqueИdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:€€€€€€€€€	*
Taxis0*
Tindices0	*
Tparams0*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0
—
Мdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityГdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:€€€€€€€€€	
 
rdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparseSparseSegmentMeanМdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity{dnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/Unique:1wdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€	*

Tidx0
ї
jdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
Ґ
ddnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Reshape_1ReshapeДdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2jdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
Т
`dnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/ShapeShaperdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
Є
ndnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ї
pdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Ї
pdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ј
hdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/strided_sliceStridedSlice`dnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Shapendnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/strided_slice/stackpdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/strided_slice/stack_1pdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
§
bdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
р
`dnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/stackPackbdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/stack/0hdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/strided_slice*
T0*

axis *
N*
_output_shapes
:
ь
_dnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/TileTileddnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Reshape_1`dnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/stack*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0
Ш
ednn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/zeros_like	ZerosLikerdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€	
“
Zdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weightsSelect_dnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Tileednn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/zeros_likerdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€	*
T0
Ћ
adnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Cast_1CastParseExample/ParseExample:14*
Truncate( *
_output_shapes
:*

DstT0*

SrcT0	
≤
hdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
±
gdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
”
bdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Slice_1Sliceadnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Cast_1hdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Slice_1/begingdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Slice_1/size*
_output_shapes
:*
Index0*
T0
ь
bdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Shape_1ShapeZdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights*
T0*
out_type0*
_output_shapes
:
≤
hdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ї
gdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
‘
bdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Slice_2Slicebdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Shape_1hdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Slice_2/begingdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Slice_2/size*
_output_shapes
:*
Index0*
T0
®
fdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
„
adnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/concatConcatV2bdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Slice_1bdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Slice_2fdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
о
ddnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Reshape_2ReshapeZdnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weightsadnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€	
и
Ddnn/input_from_feature_columns/input_layer/workclass_embedding/ShapeShapeddnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Reshape_2*
_output_shapes
:*
T0*
out_type0
Ь
Rdnn/input_from_feature_columns/input_layer/workclass_embedding/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ю
Tdnn/input_from_feature_columns/input_layer/workclass_embedding/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ю
Tdnn/input_from_feature_columns/input_layer/workclass_embedding/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
Ldnn/input_from_feature_columns/input_layer/workclass_embedding/strided_sliceStridedSliceDdnn/input_from_feature_columns/input_layer/workclass_embedding/ShapeRdnn/input_from_feature_columns/input_layer/workclass_embedding/strided_slice/stackTdnn/input_from_feature_columns/input_layer/workclass_embedding/strided_slice/stack_1Tdnn/input_from_feature_columns/input_layer/workclass_embedding/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
Р
Ndnn/input_from_feature_columns/input_layer/workclass_embedding/Reshape/shape/1Const*
value	B :	*
dtype0*
_output_shapes
: 
ђ
Ldnn/input_from_feature_columns/input_layer/workclass_embedding/Reshape/shapePackLdnn/input_from_feature_columns/input_layer/workclass_embedding/strided_sliceNdnn/input_from_feature_columns/input_layer/workclass_embedding/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
≈
Fdnn/input_from_feature_columns/input_layer/workclass_embedding/ReshapeReshapeddnn/input_from_feature_columns/input_layer/workclass_embedding/workclass_embedding_weights/Reshape_2Ldnn/input_from_feature_columns/input_layer/workclass_embedding/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€	
x
6dnn/input_from_feature_columns/input_layer/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
м
1dnn/input_from_feature_columns/input_layer/concatConcatV26dnn/input_from_feature_columns/input_layer/age/Reshape?dnn/input_from_feature_columns/input_layer/capital-gain/Reshape?dnn/input_from_feature_columns/input_layer/capital-loss/Reshape@dnn/input_from_feature_columns/input_layer/education-num/ReshapeFdnn/input_from_feature_columns/input_layer/education_embedding/ReshapeAdnn/input_from_feature_columns/input_layer/hours-per-week/ReshapeKdnn/input_from_feature_columns/input_layer/marital-status_embedding/ReshapeGdnn/input_from_feature_columns/input_layer/occupation_embedding/ReshapeIdnn/input_from_feature_columns/input_layer/relationship_embedding/ReshapeFdnn/input_from_feature_columns/input_layer/workclass_embedding/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*

Tidx0*
T0*
N
*'
_output_shapes
:€€€€€€€€€2
≈
@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB"2   А   *
dtype0*
_output_shapes
:
Ј
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB
 *џ <Њ*
dtype0*
_output_shapes
: 
Ј
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB
 *џ <>*
dtype0*
_output_shapes
: 
Я
Hdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
seed2 *
dtype0*
_output_shapes
:	2А*

seed 
Ъ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
_output_shapes
: *
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
≠
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/sub*
_output_shapes
:	2А*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
Я
:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
_output_shapes
:	2А*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
а
dnn/hiddenlayer_0/kernel/part_0VarHandleOp*
shape:	2А*
dtype0*
_output_shapes
: *0
shared_name!dnn/hiddenlayer_0/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
	container 
П
@dnn/hiddenlayer_0/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
Ў
&dnn/hiddenlayer_0/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/kernel/part_0:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
»
3dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes
:	2А*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
∞
/dnn/hiddenlayer_0/bias/part_0/Initializer/zerosConst*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
valueBА*    *
dtype0*
_output_shapes	
:А
÷
dnn/hiddenlayer_0/bias/part_0VarHandleOp*
	container *
shape:А*
dtype0*
_output_shapes
: *.
shared_namednn/hiddenlayer_0/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
Л
>dnn/hiddenlayer_0/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/bias/part_0*
_output_shapes
: 
«
$dnn/hiddenlayer_0/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/bias/part_0/dnn/hiddenlayer_0/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0
Њ
1dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes	
:А
И
'dnn/hiddenlayer_0/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes
:	2А
w
dnn/hiddenlayer_0/kernelIdentity'dnn/hiddenlayer_0/kernel/ReadVariableOp*
T0*
_output_shapes
:	2А
»
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/kernel*
transpose_b( *
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( 
А
%dnn/hiddenlayer_0/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes	
:А
o
dnn/hiddenlayer_0/biasIdentity%dnn/hiddenlayer_0/bias/ReadVariableOp*
T0*
_output_shapes	
:А
†
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/bias*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
l
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*(
_output_shapes
:€€€€€€€€€А*
T0
[
dnn/zero_fraction/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
Г
dnn/zero_fraction/EqualEqualdnn/hiddenlayer_0/Reludnn/zero_fraction/zero*
T0*(
_output_shapes
:€€€€€€€€€А
Й
dnn/zero_fraction/CastCastdnn/zero_fraction/Equal*
Truncate( *(
_output_shapes
:€€€€€€€€€А*

DstT0*

SrcT0

h
dnn/zero_fraction/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Н
dnn/zero_fraction/MeanMeandnn/zero_fraction/Castdnn/zero_fraction/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
†
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*
dtype0*
_output_shapes
: *>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values
Ђ
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/Mean*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_0/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_0/activation*
dtype0*
_output_shapes
: 
У
 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: *
T0
≈
@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB"А   @   *
dtype0*
_output_shapes
:
Ј
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB
 *у5Њ
Ј
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB
 *у5>*
dtype0*
_output_shapes
: 
Я
Hdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	А@*

seed *
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
seed2 
Ъ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
≠
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
:	А@
Я
:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
:	А@
а
dnn/hiddenlayer_1/kernel/part_0VarHandleOp*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
	container *
shape:	А@*
dtype0*
_output_shapes
: *0
shared_name!dnn/hiddenlayer_1/kernel/part_0
П
@dnn/hiddenlayer_1/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
Ў
&dnn/hiddenlayer_1/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_1/kernel/part_0:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
»
3dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes
:	А@*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
Ѓ
/dnn/hiddenlayer_1/bias/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:@*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
valueB@*    
’
dnn/hiddenlayer_1/bias/part_0VarHandleOp*
	container *
shape:@*
dtype0*
_output_shapes
: *.
shared_namednn/hiddenlayer_1/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0
Л
>dnn/hiddenlayer_1/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/bias/part_0*
_output_shapes
: 
«
$dnn/hiddenlayer_1/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_1/bias/part_0/dnn/hiddenlayer_1/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
dtype0
љ
1dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes
:@
И
'dnn/hiddenlayer_1/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes
:	А@
w
dnn/hiddenlayer_1/kernelIdentity'dnn/hiddenlayer_1/kernel/ReadVariableOp*
T0*
_output_shapes
:	А@
ђ
dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Reludnn/hiddenlayer_1/kernel*'
_output_shapes
:€€€€€€€€€@*
transpose_a( *
transpose_b( *
T0

%dnn/hiddenlayer_1/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes
:@
n
dnn/hiddenlayer_1/biasIdentity%dnn/hiddenlayer_1/bias/ReadVariableOp*
T0*
_output_shapes
:@
Я
dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/bias*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€@
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€@
]
dnn/zero_fraction_1/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ж
dnn/zero_fraction_1/EqualEqualdnn/hiddenlayer_1/Reludnn/zero_fraction_1/zero*
T0*'
_output_shapes
:€€€€€€€€€@
М
dnn/zero_fraction_1/CastCastdnn/zero_fraction_1/Equal*

SrcT0
*
Truncate( *'
_output_shapes
:€€€€€€€€€@*

DstT0
j
dnn/zero_fraction_1/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
У
dnn/zero_fraction_1/MeanMeandnn/zero_fraction_1/Castdnn/zero_fraction_1/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
†
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*
dtype0*
_output_shapes
: *>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values
≠
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/Mean*
_output_shapes
: *
T0
Е
$dnn/dnn/hiddenlayer_1/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_1/activation*
dtype0*
_output_shapes
: 
У
 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
T0*
_output_shapes
: 
≈
@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB"@       *
dtype0*
_output_shapes
:
Ј
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB
 *  АЊ*
dtype0*
_output_shapes
: 
Ј
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB
 *  А>*
dtype0*
_output_shapes
: 
Ю
Hdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
seed2 *
dtype0*
_output_shapes

:@ *

seed 
Ъ
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
_output_shapes
: *
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
ђ
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:@ 
Ю
:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
_output_shapes

:@ *
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0
я
dnn/hiddenlayer_2/kernel/part_0VarHandleOp*0
shared_name!dnn/hiddenlayer_2/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
	container *
shape
:@ *
dtype0*
_output_shapes
: 
П
@dnn/hiddenlayer_2/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 
Ў
&dnn/hiddenlayer_2/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_2/kernel/part_0:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0
«
3dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes

:@ 
Ѓ
/dnn/hiddenlayer_2/bias/part_0/Initializer/zerosConst*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
valueB *    *
dtype0*
_output_shapes
: 
’
dnn/hiddenlayer_2/bias/part_0VarHandleOp*
dtype0*
_output_shapes
: *.
shared_namednn/hiddenlayer_2/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
	container *
shape: 
Л
>dnn/hiddenlayer_2/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/bias/part_0*
_output_shapes
: 
«
$dnn/hiddenlayer_2/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_2/bias/part_0/dnn/hiddenlayer_2/bias/part_0/Initializer/zeros*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
dtype0
љ
1dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes
: 
З
'dnn/hiddenlayer_2/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes

:@ 
v
dnn/hiddenlayer_2/kernelIdentity'dnn/hiddenlayer_2/kernel/ReadVariableOp*
T0*
_output_shapes

:@ 
ђ
dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Reludnn/hiddenlayer_2/kernel*'
_output_shapes
:€€€€€€€€€ *
transpose_a( *
transpose_b( *
T0

%dnn/hiddenlayer_2/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes
: 
n
dnn/hiddenlayer_2/biasIdentity%dnn/hiddenlayer_2/bias/ReadVariableOp*
_output_shapes
: *
T0
Я
dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/bias*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€ 
k
dnn/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€ 
]
dnn/zero_fraction_2/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ж
dnn/zero_fraction_2/EqualEqualdnn/hiddenlayer_2/Reludnn/zero_fraction_2/zero*
T0*'
_output_shapes
:€€€€€€€€€ 
М
dnn/zero_fraction_2/CastCastdnn/zero_fraction_2/Equal*

SrcT0
*
Truncate( *'
_output_shapes
:€€€€€€€€€ *

DstT0
j
dnn/zero_fraction_2/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
У
dnn/zero_fraction_2/MeanMeandnn/zero_fraction_2/Castdnn/zero_fraction_2/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
†
2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_2/fraction_of_zero_values*
dtype0*
_output_shapes
: 
≠
-dnn/dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/Mean*
_output_shapes
: *
T0
Е
$dnn/dnn/hiddenlayer_2/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_2/activation*
dtype0*
_output_shapes
: 
У
 dnn/dnn/hiddenlayer_2/activationHistogramSummary$dnn/dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Relu*
T0*
_output_shapes
: 
≈
@dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
valueB"       *
dtype0*
_output_shapes
:
Ј
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
valueB
 *уµЊ*
dtype0*
_output_shapes
: 
Ј
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
valueB
 *уµ>*
dtype0*
_output_shapes
: 
Ю
Hdnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes

: *

seed *
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0
Ъ
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/min*
_output_shapes
: *
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0
ђ
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

: 
Ю
:dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/min*
_output_shapes

: *
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0
я
dnn/hiddenlayer_3/kernel/part_0VarHandleOp*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
	container *
shape
: *
dtype0*
_output_shapes
: *0
shared_name!dnn/hiddenlayer_3/kernel/part_0
П
@dnn/hiddenlayer_3/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/kernel/part_0*
_output_shapes
: 
Ў
&dnn/hiddenlayer_3/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_3/kernel/part_0:dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
dtype0
«
3dnn/hiddenlayer_3/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
dtype0*
_output_shapes

: 
Ѓ
/dnn/hiddenlayer_3/bias/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
valueB*    
’
dnn/hiddenlayer_3/bias/part_0VarHandleOp*.
shared_namednn/hiddenlayer_3/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
	container *
shape:*
dtype0*
_output_shapes
: 
Л
>dnn/hiddenlayer_3/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/bias/part_0*
_output_shapes
: 
«
$dnn/hiddenlayer_3/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_3/bias/part_0/dnn/hiddenlayer_3/bias/part_0/Initializer/zeros*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0
љ
1dnn/hiddenlayer_3/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
dtype0*
_output_shapes
:
З
'dnn/hiddenlayer_3/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0*
dtype0*
_output_shapes

: 
v
dnn/hiddenlayer_3/kernelIdentity'dnn/hiddenlayer_3/kernel/ReadVariableOp*
T0*
_output_shapes

: 
ђ
dnn/hiddenlayer_3/MatMulMatMuldnn/hiddenlayer_2/Reludnn/hiddenlayer_3/kernel*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( *
T0

%dnn/hiddenlayer_3/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0*
dtype0*
_output_shapes
:
n
dnn/hiddenlayer_3/biasIdentity%dnn/hiddenlayer_3/bias/ReadVariableOp*
_output_shapes
:*
T0
Я
dnn/hiddenlayer_3/BiasAddBiasAdddnn/hiddenlayer_3/MatMuldnn/hiddenlayer_3/bias*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
k
dnn/hiddenlayer_3/ReluReludnn/hiddenlayer_3/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€
]
dnn/zero_fraction_3/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ж
dnn/zero_fraction_3/EqualEqualdnn/hiddenlayer_3/Reludnn/zero_fraction_3/zero*
T0*'
_output_shapes
:€€€€€€€€€
М
dnn/zero_fraction_3/CastCastdnn/zero_fraction_3/Equal*

SrcT0
*
Truncate( *'
_output_shapes
:€€€€€€€€€*

DstT0
j
dnn/zero_fraction_3/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
У
dnn/zero_fraction_3/MeanMeandnn/zero_fraction_3/Castdnn/zero_fraction_3/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
†
2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_3/fraction_of_zero_values*
dtype0*
_output_shapes
: 
≠
-dnn/dnn/hiddenlayer_3/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsdnn/zero_fraction_3/Mean*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_3/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_3/activation*
dtype0*
_output_shapes
: 
У
 dnn/dnn/hiddenlayer_3/activationHistogramSummary$dnn/dnn/hiddenlayer_3/activation/tagdnn/hiddenlayer_3/Relu*
T0*
_output_shapes
: 
Ј
9dnn/logits/kernel/part_0/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB"      *
dtype0*
_output_shapes
:
©
7dnn/logits/kernel/part_0/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB
 *0њ*
dtype0*
_output_shapes
: 
©
7dnn/logits/kernel/part_0/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB
 *0?*
dtype0*
_output_shapes
: 
Й
Adnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform9dnn/logits/kernel/part_0/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*

seed *
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
seed2 
ю
7dnn/logits/kernel/part_0/Initializer/random_uniform/subSub7dnn/logits/kernel/part_0/Initializer/random_uniform/max7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: 
Р
7dnn/logits/kernel/part_0/Initializer/random_uniform/mulMulAdnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniform7dnn/logits/kernel/part_0/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
В
3dnn/logits/kernel/part_0/Initializer/random_uniformAdd7dnn/logits/kernel/part_0/Initializer/random_uniform/mul7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:
 
dnn/logits/kernel/part_0VarHandleOp*
dtype0*
_output_shapes
: *)
shared_namednn/logits/kernel/part_0*+
_class!
loc:@dnn/logits/kernel/part_0*
	container *
shape
:
Б
9dnn/logits/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/kernel/part_0*
_output_shapes
: 
Љ
dnn/logits/kernel/part_0/AssignAssignVariableOpdnn/logits/kernel/part_03dnn/logits/kernel/part_0/Initializer/random_uniform*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0
≤
,dnn/logits/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*+
_class!
loc:@dnn/logits/kernel/part_0*
dtype0*
_output_shapes

:
†
(dnn/logits/bias/part_0/Initializer/zerosConst*)
_class
loc:@dnn/logits/bias/part_0*
valueB*    *
dtype0*
_output_shapes
:
ј
dnn/logits/bias/part_0VarHandleOp*
dtype0*
_output_shapes
: *'
shared_namednn/logits/bias/part_0*)
_class
loc:@dnn/logits/bias/part_0*
	container *
shape:
}
7dnn/logits/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/bias/part_0*
_output_shapes
: 
Ђ
dnn/logits/bias/part_0/AssignAssignVariableOpdnn/logits/bias/part_0(dnn/logits/bias/part_0/Initializer/zeros*)
_class
loc:@dnn/logits/bias/part_0*
dtype0
®
*dnn/logits/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
dtype0*
_output_shapes
:*)
_class
loc:@dnn/logits/bias/part_0
y
 dnn/logits/kernel/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
dtype0*
_output_shapes

:
h
dnn/logits/kernelIdentity dnn/logits/kernel/ReadVariableOp*
_output_shapes

:*
T0
Ю
dnn/logits/MatMulMatMuldnn/hiddenlayer_3/Reludnn/logits/kernel*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( 
q
dnn/logits/bias/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
dtype0*
_output_shapes
:
`
dnn/logits/biasIdentitydnn/logits/bias/ReadVariableOp*
_output_shapes
:*
T0
К
dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/bias*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
]
dnn/zero_fraction_4/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
В
dnn/zero_fraction_4/EqualEqualdnn/logits/BiasAdddnn/zero_fraction_4/zero*
T0*'
_output_shapes
:€€€€€€€€€
М
dnn/zero_fraction_4/CastCastdnn/zero_fraction_4/Equal*

SrcT0
*
Truncate( *'
_output_shapes
:€€€€€€€€€*

DstT0
j
dnn/zero_fraction_4/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
У
dnn/zero_fraction_4/MeanMeandnn/zero_fraction_4/Castdnn/zero_fraction_4/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
Т
+dnn/dnn/logits/fraction_of_zero_values/tagsConst*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
dtype0*
_output_shapes
: 
Я
&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_4/Mean*
T0*
_output_shapes
: 
w
dnn/dnn/logits/activation/tagConst**
value!B Bdnn/dnn/logits/activation*
dtype0*
_output_shapes
: 
Б
dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
T0*
_output_shapes
: 
ё
Clinear/linear_model/age_bucketized/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0*
valueB*    
Х
1linear/linear_model/age_bucketized/weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *B
shared_name31linear/linear_model/age_bucketized/weights/part_0*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0*
	container *
shape
:
≥
Rlinear/linear_model/age_bucketized/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp1linear/linear_model/age_bucketized/weights/part_0*
_output_shapes
: 
Ч
8linear/linear_model/age_bucketized/weights/part_0/AssignAssignVariableOp1linear/linear_model/age_bucketized/weights/part_0Clinear/linear_model/age_bucketized/weights/part_0/Initializer/zeros*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0*
dtype0
э
Elinear/linear_model/age_bucketized/weights/part_0/Read/ReadVariableOpReadVariableOp1linear/linear_model/age_bucketized/weights/part_0*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0*
dtype0*
_output_shapes

:
“
9linear/linear_model/linear_model/age_bucketized/Bucketize	BucketizeParseExample/ParseExample:15*:

boundaries,
*"(  РA  »A  рA  B   B  4B  HB  \B  pB  ВB*
T0*'
_output_shapes
:€€€€€€€€€
Ѓ
5linear/linear_model/linear_model/age_bucketized/ShapeShape9linear/linear_model/linear_model/age_bucketized/Bucketize*
T0*
out_type0*
_output_shapes
:
Н
Clinear/linear_model/linear_model/age_bucketized/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
П
Elinear/linear_model/linear_model/age_bucketized/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
П
Elinear/linear_model/linear_model/age_bucketized/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
й
=linear/linear_model/linear_model/age_bucketized/strided_sliceStridedSlice5linear/linear_model/linear_model/age_bucketized/ShapeClinear/linear_model/linear_model/age_bucketized/strided_slice/stackElinear/linear_model/linear_model/age_bucketized/strided_slice/stack_1Elinear/linear_model/linear_model/age_bucketized/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
}
;linear/linear_model/linear_model/age_bucketized/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
}
;linear/linear_model/linear_model/age_bucketized/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
®
5linear/linear_model/linear_model/age_bucketized/rangeRange;linear/linear_model/linear_model/age_bucketized/range/start=linear/linear_model/linear_model/age_bucketized/strided_slice;linear/linear_model/linear_model/age_bucketized/range/delta*

Tidx0*#
_output_shapes
:€€€€€€€€€
А
>linear/linear_model/linear_model/age_bucketized/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :
э
:linear/linear_model/linear_model/age_bucketized/ExpandDims
ExpandDims5linear/linear_model/linear_model/age_bucketized/range>linear/linear_model/linear_model/age_bucketized/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0
П
>linear/linear_model/linear_model/age_bucketized/Tile/multiplesConst*
valueB"      *
dtype0*
_output_shapes
:
ь
4linear/linear_model/linear_model/age_bucketized/TileTile:linear/linear_model/linear_model/age_bucketized/ExpandDims>linear/linear_model/linear_model/age_bucketized/Tile/multiples*

Tmultiples0*
T0*'
_output_shapes
:€€€€€€€€€
Р
=linear/linear_model/linear_model/age_bucketized/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
у
7linear/linear_model/linear_model/age_bucketized/ReshapeReshape4linear/linear_model/linear_model/age_bucketized/Tile=linear/linear_model/linear_model/age_bucketized/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€

=linear/linear_model/linear_model/age_bucketized/range_1/startConst*
dtype0*
_output_shapes
: *
value	B : 

=linear/linear_model/linear_model/age_bucketized/range_1/limitConst*
value	B :*
dtype0*
_output_shapes
: 

=linear/linear_model/linear_model/age_bucketized/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
•
7linear/linear_model/linear_model/age_bucketized/range_1Range=linear/linear_model/linear_model/age_bucketized/range_1/start=linear/linear_model/linear_model/age_bucketized/range_1/limit=linear/linear_model/linear_model/age_bucketized/range_1/delta*
_output_shapes
:*

Tidx0
Ѕ
@linear/linear_model/linear_model/age_bucketized/Tile_1/multiplesPack=linear/linear_model/linear_model/age_bucketized/strided_slice*
T0*

axis *
N*
_output_shapes
:
щ
6linear/linear_model/linear_model/age_bucketized/Tile_1Tile7linear/linear_model/linear_model/age_bucketized/range_1@linear/linear_model/linear_model/age_bucketized/Tile_1/multiples*

Tmultiples0*
T0*#
_output_shapes
:€€€€€€€€€
Т
?linear/linear_model/linear_model/age_bucketized/Reshape_1/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
ь
9linear/linear_model/linear_model/age_bucketized/Reshape_1Reshape9linear/linear_model/linear_model/age_bucketized/Bucketize?linear/linear_model/linear_model/age_bucketized/Reshape_1/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
w
5linear/linear_model/linear_model/age_bucketized/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
„
3linear/linear_model/linear_model/age_bucketized/mulMul5linear/linear_model/linear_model/age_bucketized/mul/x6linear/linear_model/linear_model/age_bucketized/Tile_1*
T0*#
_output_shapes
:€€€€€€€€€
Ў
3linear/linear_model/linear_model/age_bucketized/addAdd9linear/linear_model/linear_model/age_bucketized/Reshape_13linear/linear_model/linear_model/age_bucketized/mul*
T0*#
_output_shapes
:€€€€€€€€€
х
5linear/linear_model/linear_model/age_bucketized/stackPack7linear/linear_model/linear_model/age_bucketized/Reshape6linear/linear_model/linear_model/age_bucketized/Tile_1*
N*'
_output_shapes
:€€€€€€€€€*
T0*

axis 
Ю
>linear/linear_model/linear_model/age_bucketized/transpose/RankRank5linear/linear_model/linear_model/age_bucketized/stack*
T0*
_output_shapes
: 
Б
?linear/linear_model/linear_model/age_bucketized/transpose/sub/yConst*
dtype0*
_output_shapes
: *
value	B :
ж
=linear/linear_model/linear_model/age_bucketized/transpose/subSub>linear/linear_model/linear_model/age_bucketized/transpose/Rank?linear/linear_model/linear_model/age_bucketized/transpose/sub/y*
T0*
_output_shapes
: 
З
Elinear/linear_model/linear_model/age_bucketized/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
З
Elinear/linear_model/linear_model/age_bucketized/transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
«
?linear/linear_model/linear_model/age_bucketized/transpose/RangeRangeElinear/linear_model/linear_model/age_bucketized/transpose/Range/start>linear/linear_model/linear_model/age_bucketized/transpose/RankElinear/linear_model/linear_model/age_bucketized/transpose/Range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
ф
?linear/linear_model/linear_model/age_bucketized/transpose/sub_1Sub=linear/linear_model/linear_model/age_bucketized/transpose/sub?linear/linear_model/linear_model/age_bucketized/transpose/Range*
T0*#
_output_shapes
:€€€€€€€€€
э
9linear/linear_model/linear_model/age_bucketized/transpose	Transpose5linear/linear_model/linear_model/age_bucketized/stack?linear/linear_model/linear_model/age_bucketized/transpose/sub_1*'
_output_shapes
:€€€€€€€€€*
Tperm0*
T0
Ћ
7linear/linear_model/linear_model/age_bucketized/ToInt64Cast9linear/linear_model/linear_model/age_bucketized/transpose*

SrcT0*
Truncate( *'
_output_shapes
:€€€€€€€€€*

DstT0	
{
9linear/linear_model/linear_model/age_bucketized/stack_1/1Const*
value	B :*
dtype0*
_output_shapes
: 
у
7linear/linear_model/linear_model/age_bucketized/stack_1Pack=linear/linear_model/linear_model/age_bucketized/strided_slice9linear/linear_model/linear_model/age_bucketized/stack_1/1*
T0*

axis *
N*
_output_shapes
:
Њ
9linear/linear_model/linear_model/age_bucketized/ToInt64_1Cast7linear/linear_model/linear_model/age_bucketized/stack_1*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
√
<linear/linear_model/linear_model/age_bucketized/Shape_1/CastCast9linear/linear_model/linear_model/age_bucketized/ToInt64_1*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
П
Elinear/linear_model/linear_model/age_bucketized/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB: 
С
Glinear/linear_model/linear_model/age_bucketized/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
С
Glinear/linear_model/linear_model/age_bucketized/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ш
?linear/linear_model/linear_model/age_bucketized/strided_slice_1StridedSlice<linear/linear_model/linear_model/age_bucketized/Shape_1/CastElinear/linear_model/linear_model/age_bucketized/strided_slice_1/stackGlinear/linear_model/linear_model/age_bucketized/strided_slice_1/stack_1Glinear/linear_model/linear_model/age_bucketized/strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
Г
8linear/linear_model/linear_model/age_bucketized/Cast/x/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
у
6linear/linear_model/linear_model/age_bucketized/Cast/xPack?linear/linear_model/linear_model/age_bucketized/strided_slice_18linear/linear_model/linear_model/age_bucketized/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
Є
4linear/linear_model/linear_model/age_bucketized/CastCast6linear/linear_model/linear_model/age_bucketized/Cast/x*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
І
=linear/linear_model/linear_model/age_bucketized/SparseReshapeSparseReshape7linear/linear_model/linear_model/age_bucketized/ToInt649linear/linear_model/linear_model/age_bucketized/ToInt64_14linear/linear_model/linear_model/age_bucketized/Cast*-
_output_shapes
:€€€€€€€€€:
µ
Flinear/linear_model/linear_model/age_bucketized/SparseReshape/IdentityIdentity3linear/linear_model/linear_model/age_bucketized/add*
T0*#
_output_shapes
:€€€€€€€€€
∞
>linear/linear_model/linear_model/age_bucketized/ReadVariableOpReadVariableOp1linear/linear_model/age_bucketized/weights/part_0*
dtype0*
_output_shapes

:
Т
Hlinear/linear_model/linear_model/age_bucketized/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
С
Glinear/linear_model/linear_model/age_bucketized/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
—
Blinear/linear_model/linear_model/age_bucketized/weighted_sum/SliceSlice?linear/linear_model/linear_model/age_bucketized/SparseReshape:1Hlinear/linear_model/linear_model/age_bucketized/weighted_sum/Slice/beginGlinear/linear_model/linear_model/age_bucketized/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
М
Blinear/linear_model/linear_model/age_bucketized/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
П
Alinear/linear_model/linear_model/age_bucketized/weighted_sum/ProdProdBlinear/linear_model/linear_model/age_bucketized/weighted_sum/SliceBlinear/linear_model/linear_model/age_bucketized/weighted_sum/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
П
Mlinear/linear_model/linear_model/age_bucketized/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
М
Jlinear/linear_model/linear_model/age_bucketized/weighted_sum/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
с
Elinear/linear_model/linear_model/age_bucketized/weighted_sum/GatherV2GatherV2?linear/linear_model/linear_model/age_bucketized/SparseReshape:1Mlinear/linear_model/linear_model/age_bucketized/weighted_sum/GatherV2/indicesJlinear/linear_model/linear_model/age_bucketized/weighted_sum/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
П
Clinear/linear_model/linear_model/age_bucketized/weighted_sum/Cast/xPackAlinear/linear_model/linear_model/age_bucketized/weighted_sum/ProdElinear/linear_model/linear_model/age_bucketized/weighted_sum/GatherV2*
T0	*

axis *
N*
_output_shapes
:
ѕ
Jlinear/linear_model/linear_model/age_bucketized/weighted_sum/SparseReshapeSparseReshape=linear/linear_model/linear_model/age_bucketized/SparseReshape?linear/linear_model/linear_model/age_bucketized/SparseReshape:1Clinear/linear_model/linear_model/age_bucketized/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
’
Slinear/linear_model/linear_model/age_bucketized/weighted_sum/SparseReshape/IdentityIdentityFlinear/linear_model/linear_model/age_bucketized/SparseReshape/Identity*
T0*#
_output_shapes
:€€€€€€€€€
Н
Klinear/linear_model/linear_model/age_bucketized/weighted_sum/GreaterEqual/yConst*
value	B : *
dtype0*
_output_shapes
: 
©
Ilinear/linear_model/linear_model/age_bucketized/weighted_sum/GreaterEqualGreaterEqualSlinear/linear_model/linear_model/age_bucketized/weighted_sum/SparseReshape/IdentityKlinear/linear_model/linear_model/age_bucketized/weighted_sum/GreaterEqual/y*
T0*#
_output_shapes
:€€€€€€€€€
»
Blinear/linear_model/linear_model/age_bucketized/weighted_sum/WhereWhereIlinear/linear_model/linear_model/age_bucketized/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
Э
Jlinear/linear_model/linear_model/age_bucketized/weighted_sum/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
Ы
Dlinear/linear_model/linear_model/age_bucketized/weighted_sum/ReshapeReshapeBlinear/linear_model/linear_model/age_bucketized/weighted_sum/WhereJlinear/linear_model/linear_model/age_bucketized/weighted_sum/Reshape/shape*#
_output_shapes
:€€€€€€€€€*
T0	*
Tshape0
О
Llinear/linear_model/linear_model/age_bucketized/weighted_sum/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
И
Glinear/linear_model/linear_model/age_bucketized/weighted_sum/GatherV2_1GatherV2Jlinear/linear_model/linear_model/age_bucketized/weighted_sum/SparseReshapeDlinear/linear_model/linear_model/age_bucketized/weighted_sum/ReshapeLlinear/linear_model/linear_model/age_bucketized/weighted_sum/GatherV2_1/axis*'
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	*
Tparams0	
О
Llinear/linear_model/linear_model/age_bucketized/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Н
Glinear/linear_model/linear_model/age_bucketized/weighted_sum/GatherV2_2GatherV2Slinear/linear_model/linear_model/age_bucketized/weighted_sum/SparseReshape/IdentityDlinear/linear_model/linear_model/age_bucketized/weighted_sum/ReshapeLlinear/linear_model/linear_model/age_bucketized/weighted_sum/GatherV2_2/axis*
Tindices0	*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Taxis0
ƒ
Elinear/linear_model/linear_model/age_bucketized/weighted_sum/IdentityIdentityLlinear/linear_model/linear_model/age_bucketized/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Ш
Vlinear/linear_model/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
Л
dlinear/linear_model/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsGlinear/linear_model/linear_model/age_bucketized/weighted_sum/GatherV2_1Glinear/linear_model/linear_model/age_bucketized/weighted_sum/GatherV2_2Elinear/linear_model/linear_model/age_bucketized/weighted_sum/IdentityVlinear/linear_model/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/Const*
T0*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
є
hlinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
ї
jlinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
ї
jlinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
є
blinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicedlinear/linear_model/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowshlinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stackjlinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1jlinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
T0	*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€
Т
Ylinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/CastCastblinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0	
Щ
[linear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/UniqueUniqueflinear/linear_model/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
€
jlinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*Q
_classG
ECloc:@linear/linear_model/linear_model/age_bucketized/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Ґ
elinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2>linear/linear_model/linear_model/age_bucketized/ReadVariableOp[linear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/Uniquejlinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0*
Tparams0*Q
_classG
ECloc:@linear/linear_model/linear_model/age_bucketized/ReadVariableOp*'
_output_shapes
:€€€€€€€€€
У
nlinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityelinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:€€€€€€€€€
–
Tlinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparseSparseSegmentSumnlinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity]linear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/Unique:1Ylinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
Э
Llinear/linear_model/linear_model/age_bucketized/weighted_sum/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"€€€€   
«
Flinear/linear_model/linear_model/age_bucketized/weighted_sum/Reshape_1Reshapeflinear/linear_model/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Llinear/linear_model/linear_model/age_bucketized/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
÷
Blinear/linear_model/linear_model/age_bucketized/weighted_sum/ShapeShapeTlinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
Ъ
Plinear/linear_model/linear_model/age_bucketized/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ь
Rlinear/linear_model/linear_model/age_bucketized/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ь
Rlinear/linear_model/linear_model/age_bucketized/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
™
Jlinear/linear_model/linear_model/age_bucketized/weighted_sum/strided_sliceStridedSliceBlinear/linear_model/linear_model/age_bucketized/weighted_sum/ShapePlinear/linear_model/linear_model/age_bucketized/weighted_sum/strided_slice/stackRlinear/linear_model/linear_model/age_bucketized/weighted_sum/strided_slice/stack_1Rlinear/linear_model/linear_model/age_bucketized/weighted_sum/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
Ж
Dlinear/linear_model/linear_model/age_bucketized/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Ц
Blinear/linear_model/linear_model/age_bucketized/weighted_sum/stackPackDlinear/linear_model/linear_model/age_bucketized/weighted_sum/stack/0Jlinear/linear_model/linear_model/age_bucketized/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
Ґ
Alinear/linear_model/linear_model/age_bucketized/weighted_sum/TileTileFlinear/linear_model/linear_model/age_bucketized/weighted_sum/Reshape_1Blinear/linear_model/linear_model/age_bucketized/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

№
Glinear/linear_model/linear_model/age_bucketized/weighted_sum/zeros_like	ZerosLikeTlinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Џ
<linear/linear_model/linear_model/age_bucketized/weighted_sumSelectAlinear/linear_model/linear_model/age_bucketized/weighted_sum/TileGlinear/linear_model/linear_model/age_bucketized/weighted_sum/zeros_likeTlinear/linear_model/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
–
Clinear/linear_model/linear_model/age_bucketized/weighted_sum/Cast_1Cast?linear/linear_model/linear_model/age_bucketized/SparseReshape:1*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
Ф
Jlinear/linear_model/linear_model/age_bucketized/weighted_sum/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
У
Ilinear/linear_model/linear_model/age_bucketized/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
џ
Dlinear/linear_model/linear_model/age_bucketized/weighted_sum/Slice_1SliceClinear/linear_model/linear_model/age_bucketized/weighted_sum/Cast_1Jlinear/linear_model/linear_model/age_bucketized/weighted_sum/Slice_1/beginIlinear/linear_model/linear_model/age_bucketized/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ј
Dlinear/linear_model/linear_model/age_bucketized/weighted_sum/Shape_1Shape<linear/linear_model/linear_model/age_bucketized/weighted_sum*
T0*
out_type0*
_output_shapes
:
Ф
Jlinear/linear_model/linear_model/age_bucketized/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ь
Ilinear/linear_model/linear_model/age_bucketized/weighted_sum/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
№
Dlinear/linear_model/linear_model/age_bucketized/weighted_sum/Slice_2SliceDlinear/linear_model/linear_model/age_bucketized/weighted_sum/Shape_1Jlinear/linear_model/linear_model/age_bucketized/weighted_sum/Slice_2/beginIlinear/linear_model/linear_model/age_bucketized/weighted_sum/Slice_2/size*
_output_shapes
:*
Index0*
T0
К
Hlinear/linear_model/linear_model/age_bucketized/weighted_sum/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
я
Clinear/linear_model/linear_model/age_bucketized/weighted_sum/concatConcatV2Dlinear/linear_model/linear_model/age_bucketized/weighted_sum/Slice_1Dlinear/linear_model/linear_model/age_bucketized/weighted_sum/Slice_2Hlinear/linear_model/linear_model/age_bucketized/weighted_sum/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
Ф
Flinear/linear_model/linear_model/age_bucketized/weighted_sum/Reshape_2Reshape<linear/linear_model/linear_model/age_bucketized/weighted_sumClinear/linear_model/linear_model/age_bucketized/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
Т
]linear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0/Initializer/zerosConst*^
_classT
RPloc:@linear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0*
valueB$*    *
dtype0*
_output_shapes

:$
г
Klinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0VarHandleOp*\
shared_nameMKlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0*^
_classT
RPloc:@linear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0*
	container *
shape
:$*
dtype0*
_output_shapes
: 
з
llinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpKlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0*
_output_shapes
: 
€
Rlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0/AssignAssignVariableOpKlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0]linear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0/Initializer/zeros*^
_classT
RPloc:@linear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0*
dtype0
Ћ
_linear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0/Read/ReadVariableOpReadVariableOpKlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0*
dtype0*
_output_shapes

:$*^
_classT
RPloc:@linear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0
»
Olinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ShapeShape9linear/linear_model/linear_model/age_bucketized/Bucketize*
T0*
out_type0*
_output_shapes
:
І
]linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
©
_linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
©
_linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
л
Wlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_sliceStridedSliceOlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Shape]linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice/stack_linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice/stack_1_linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
Ч
Ulinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Ч
Ulinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Р
Olinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/rangeRangeUlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range/startWlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_sliceUlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
Ъ
Xlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
Ћ
Tlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ExpandDims
ExpandDimsOlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/rangeXlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:€€€€€€€€€
©
Xlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Tile/multiplesConst*
valueB"      *
dtype0*
_output_shapes
:
 
Nlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/TileTileTlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ExpandDimsXlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Tile/multiples*

Tmultiples0*
T0*'
_output_shapes
:€€€€€€€€€
™
Wlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ѕ
Qlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ReshapeReshapeNlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/TileWlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Щ
Wlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
Щ
Wlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_1/limitConst*
value	B :*
dtype0*
_output_shapes
: 
Щ
Wlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Н
Qlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_1RangeWlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_1/startWlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_1/limitWlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_1/delta*
_output_shapes
:*

Tidx0
х
Zlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Tile_1/multiplesPackWlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice*
T0*

axis *
N*
_output_shapes
:
«
Plinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Tile_1TileQlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_1Zlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Tile_1/multiples*#
_output_shapes
:€€€€€€€€€*

Tmultiples0*
T0
ђ
Ylinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Reshape_1/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
∞
Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Reshape_1Reshape9linear/linear_model/linear_model/age_bucketized/BucketizeYlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Reshape_1/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
С
Olinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/mul/xConst*
dtype0*
_output_shapes
: *
value	B :
•
Mlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/mulMulOlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/mul/xPlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Tile_1*
T0*#
_output_shapes
:€€€€€€€€€
¶
Mlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/addAddSlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Reshape_1Mlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/mul*#
_output_shapes
:€€€€€€€€€*
T0
√
Olinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/stackPackQlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ReshapePlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Tile_1*
N*'
_output_shapes
:€€€€€€€€€*
T0*

axis 
“
Xlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose/RankRankOlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/stack*
_output_shapes
: *
T0
Ы
Ylinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
і
Wlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose/subSubXlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose/RankYlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose/sub/y*
_output_shapes
: *
T0
°
_linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
°
_linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
ѓ
Ylinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose/RangeRange_linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose/Range/startXlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose/Rank_linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose/Range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
¬
Ylinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose/sub_1SubWlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose/subYlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose/Range*
T0*#
_output_shapes
:€€€€€€€€€
Ћ
Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose	TransposeOlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/stackYlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose/sub_1*'
_output_shapes
:€€€€€€€€€*
Tperm0*
T0
€
Qlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ToInt64CastSlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose*
Truncate( *'
_output_shapes
:€€€€€€€€€*

DstT0	*

SrcT0
Х
Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/stack_1/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ѕ
Qlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/stack_1PackWlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_sliceSlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/stack_1/1*
N*
_output_shapes
:*
T0*

axis 
т
Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ToInt64_1CastQlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/stack_1*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
Ў
Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Bucketize	BucketizeParseExample/ParseExample:16*&

boundaries
"      zD  ъD А;E @F*
T0*'
_output_shapes
:€€€€€€€€€
д
Qlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Shape_1ShapeSlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Bucketize*
T0*
out_type0*
_output_shapes
:
©
_linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ђ
alinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ђ
alinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
х
Ylinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_1StridedSliceQlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Shape_1_linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_1/stackalinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_1/stack_1alinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Щ
Wlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
Щ
Wlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_2/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Ш
Qlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_2RangeWlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_2/startYlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_1Wlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_2/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
Ь
Zlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B :
—
Vlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ExpandDims_1
ExpandDimsQlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_2Zlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ExpandDims_1/dim*

Tdim0*
T0*'
_output_shapes
:€€€€€€€€€
Ђ
Zlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Tile_2/multiplesConst*
valueB"      *
dtype0*
_output_shapes
:
–
Plinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Tile_2TileVlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ExpandDims_1Zlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Tile_2/multiples*

Tmultiples0*
T0*'
_output_shapes
:€€€€€€€€€
ђ
Ylinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
«
Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Reshape_2ReshapePlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Tile_2Ylinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Reshape_2/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Щ
Wlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_3/startConst*
value	B : *
dtype0*
_output_shapes
: 
Щ
Wlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_3/limitConst*
value	B :*
dtype0*
_output_shapes
: 
Щ
Wlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_3/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Н
Qlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_3RangeWlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_3/startWlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_3/limitWlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_3/delta*
_output_shapes
:*

Tidx0
ч
Zlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Tile_3/multiplesPackYlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_1*
T0*

axis *
N*
_output_shapes
:
«
Plinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Tile_3TileQlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/range_3Zlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Tile_3/multiples*

Tmultiples0*
T0*#
_output_shapes
:€€€€€€€€€
ђ
Ylinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Reshape_3/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
 
Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Reshape_3ReshapeSlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/BucketizeYlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
У
Qlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/mul_1/xConst*
value	B :*
dtype0*
_output_shapes
: 
©
Olinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/mul_1MulQlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/mul_1/xPlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Tile_3*
T0*#
_output_shapes
:€€€€€€€€€
™
Olinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/add_1AddSlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Reshape_3Olinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/mul_1*
T0*#
_output_shapes
:€€€€€€€€€
«
Qlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/stack_2PackSlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Reshape_2Plinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Tile_3*
T0*

axis *
N*'
_output_shapes
:€€€€€€€€€
÷
Zlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose_1/RankRankQlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/stack_2*
_output_shapes
: *
T0
Э
[linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose_1/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ї
Ylinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose_1/subSubZlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose_1/Rank[linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose_1/sub/y*
T0*
_output_shapes
: 
£
alinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose_1/Range/startConst*
dtype0*
_output_shapes
: *
value	B : 
£
alinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose_1/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ј
[linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose_1/RangeRangealinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose_1/Range/startZlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose_1/Rankalinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose_1/Range/delta*

Tidx0*#
_output_shapes
:€€€€€€€€€
»
[linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose_1/sub_1SubYlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose_1/sub[linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose_1/Range*
T0*#
_output_shapes
:€€€€€€€€€
—
Ulinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose_1	TransposeQlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/stack_2[linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose_1/sub_1*
T0*'
_output_shapes
:€€€€€€€€€*
Tperm0
Г
Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ToInt64_2CastUlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/transpose_1*

SrcT0*
Truncate( *'
_output_shapes
:€€€€€€€€€*

DstT0	
Х
Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/stack_3/1Const*
value	B :*
dtype0*
_output_shapes
: 
√
Qlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/stack_3PackYlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_1Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/stack_3/1*
N*
_output_shapes
:*
T0*

axis 
т
Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ToInt64_3CastQlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/stack_3*
Truncate( *
_output_shapes
:*

DstT0	*

SrcT0
ч
Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ToInt64_4CastMlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/add*

SrcT0*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0	
щ
Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ToInt64_5CastOlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/add_1*

SrcT0*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0	
і
Ulinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/SparseCrossSparseCrossQlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ToInt64Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ToInt64_2Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ToInt64_4Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ToInt64_5Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ToInt64_1Slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ToInt64_3*
num_buckets$*
hashed_output(*
out_type0	*
N*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
 *
hash_keyюят„м*
internal_type0	*
sparse_types
2		
ы
Vlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Shape_2/CastCastWlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/SparseCross:2*
Truncate( *
_output_shapes
:*

DstT0*

SrcT0	
©
_linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Ђ
alinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ђ
alinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ъ
Ylinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_2StridedSliceVlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Shape_2/Cast_linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_2/stackalinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_2/stack_1alinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Э
Rlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Cast/x/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ѕ
Plinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Cast/xPackYlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/strided_slice_2Rlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
м
Nlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/CastCastPlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Cast/x*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
Ч
Wlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/SparseReshapeSparseReshapeUlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/SparseCrossWlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/SparseCross:2Nlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Cast*-
_output_shapes
:€€€€€€€€€:
у
`linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/SparseReshape/IdentityIdentityWlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/SparseCross:1*#
_output_shapes
:€€€€€€€€€*
T0	
д
Xlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ReadVariableOpReadVariableOpKlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0*
dtype0*
_output_shapes

:$
ђ
blinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ђ
alinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
є
\linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/SliceSliceYlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/SparseReshape:1blinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Slice/beginalinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Slice/size*
_output_shapes
:*
Index0*
T0	
¶
\linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
Ё
[linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/ProdProd\linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Slice\linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
©
glinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GatherV2/indicesConst*
dtype0*
_output_shapes
: *
value	B :
¶
dlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ў
_linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GatherV2GatherV2Ylinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/SparseReshape:1glinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GatherV2/indicesdlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GatherV2/axis*
Tparams0	*
_output_shapes
: *
Taxis0*
Tindices0
Ё
]linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Cast/xPack[linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Prod_linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GatherV2*
T0	*

axis *
N*
_output_shapes
:
Ј
dlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/SparseReshapeSparseReshapeWlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/SparseReshapeYlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/SparseReshape:1]linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
Й
mlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/SparseReshape/IdentityIdentity`linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
І
elinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
ч
clinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GreaterEqualGreaterEqualmlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/SparseReshape/Identityelinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
ь
\linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/WhereWhereclinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
Ј
dlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
й
^linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/ReshapeReshape\linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Wheredlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
®
flinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
р
alinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GatherV2_1GatherV2dlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/SparseReshape^linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Reshapeflinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	
®
flinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
х
alinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GatherV2_2GatherV2mlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/SparseReshape/Identity^linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Reshapeflinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Taxis0
ш
_linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/IdentityIdentityflinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
≤
plinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Н
~linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsalinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GatherV2_1alinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/GatherV2_2_linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Identityplinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
‘
Вlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
÷
Дlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
÷
Дlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Њ
|linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice~linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsВlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stackДlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Дlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€
∆
slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/CastCast|linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0
ќ
ulinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/UniqueUniqueАlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
і
Дlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*k
_classa
_]loc:@linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
•
linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Xlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ReadVariableOpulinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/UniqueДlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*k
_classa
_]loc:@linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/ReadVariableOp*'
_output_shapes
:€€€€€€€€€
»
Иlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitylinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:€€€€€€€€€
є
nlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparseSparseSegmentSumИlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identitywlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/Unique:1slinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:€€€€€€€€€
Ј
flinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"€€€€   
Ц
`linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Reshape_1ReshapeАlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2flinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Reshape_1/shape*'
_output_shapes
:€€€€€€€€€*
T0
*
Tshape0
К
\linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/ShapeShapenlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
T0*
out_type0
і
jlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
ґ
llinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
ґ
llinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ђ
dlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/strided_sliceStridedSlice\linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Shapejlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/strided_slice/stackllinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/strided_slice/stack_1llinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
†
^linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
д
\linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/stackPack^linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/stack/0dlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
р
[linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/TileTile`linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Reshape_1\linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Р
alinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/zeros_like	ZerosLikenlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
¬
Vlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sumSelect[linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Tilealinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/zeros_likenlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Д
]linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Cast_1CastYlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/SparseReshape:1*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
Ѓ
dlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
≠
clinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
√
^linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Slice_1Slice]linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Cast_1dlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Slice_1/beginclinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ф
^linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Shape_1ShapeVlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum*
T0*
out_type0*
_output_shapes
:
Ѓ
dlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
ґ
clinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
ƒ
^linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Slice_2Slice^linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Shape_1dlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Slice_2/beginclinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
§
blinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
«
]linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/concatConcatV2^linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Slice_1^linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Slice_2blinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
в
`linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Reshape_2ReshapeVlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum]linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
р
Llinear/linear_model/capital-gain_bucketized/weights/part_0/Initializer/zerosConst*M
_classC
A?loc:@linear/linear_model/capital-gain_bucketized/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
∞
:linear/linear_model/capital-gain_bucketized/weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *K
shared_name<:linear/linear_model/capital-gain_bucketized/weights/part_0*M
_classC
A?loc:@linear/linear_model/capital-gain_bucketized/weights/part_0*
	container *
shape
:
≈
[linear/linear_model/capital-gain_bucketized/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp:linear/linear_model/capital-gain_bucketized/weights/part_0*
_output_shapes
: 
ї
Alinear/linear_model/capital-gain_bucketized/weights/part_0/AssignAssignVariableOp:linear/linear_model/capital-gain_bucketized/weights/part_0Llinear/linear_model/capital-gain_bucketized/weights/part_0/Initializer/zeros*M
_classC
A?loc:@linear/linear_model/capital-gain_bucketized/weights/part_0*
dtype0
Ш
Nlinear/linear_model/capital-gain_bucketized/weights/part_0/Read/ReadVariableOpReadVariableOp:linear/linear_model/capital-gain_bucketized/weights/part_0*M
_classC
A?loc:@linear/linear_model/capital-gain_bucketized/weights/part_0*
dtype0*
_output_shapes

:
—
>linear/linear_model/linear_model/capital-gain_bucketized/ShapeShapeSlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Bucketize*
T0*
out_type0*
_output_shapes
:
Ц
Llinear/linear_model/linear_model/capital-gain_bucketized/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ш
Nlinear/linear_model/linear_model/capital-gain_bucketized/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ш
Nlinear/linear_model/linear_model/capital-gain_bucketized/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ц
Flinear/linear_model/linear_model/capital-gain_bucketized/strided_sliceStridedSlice>linear/linear_model/linear_model/capital-gain_bucketized/ShapeLlinear/linear_model/linear_model/capital-gain_bucketized/strided_slice/stackNlinear/linear_model/linear_model/capital-gain_bucketized/strided_slice/stack_1Nlinear/linear_model/linear_model/capital-gain_bucketized/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
Ж
Dlinear/linear_model/linear_model/capital-gain_bucketized/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
Ж
Dlinear/linear_model/linear_model/capital-gain_bucketized/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
ћ
>linear/linear_model/linear_model/capital-gain_bucketized/rangeRangeDlinear/linear_model/linear_model/capital-gain_bucketized/range/startFlinear/linear_model/linear_model/capital-gain_bucketized/strided_sliceDlinear/linear_model/linear_model/capital-gain_bucketized/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
Й
Glinear/linear_model/linear_model/capital-gain_bucketized/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
Ш
Clinear/linear_model/linear_model/capital-gain_bucketized/ExpandDims
ExpandDims>linear/linear_model/linear_model/capital-gain_bucketized/rangeGlinear/linear_model/linear_model/capital-gain_bucketized/ExpandDims/dim*
T0*'
_output_shapes
:€€€€€€€€€*

Tdim0
Ш
Glinear/linear_model/linear_model/capital-gain_bucketized/Tile/multiplesConst*
valueB"      *
dtype0*
_output_shapes
:
Ч
=linear/linear_model/linear_model/capital-gain_bucketized/TileTileClinear/linear_model/linear_model/capital-gain_bucketized/ExpandDimsGlinear/linear_model/linear_model/capital-gain_bucketized/Tile/multiples*
T0*'
_output_shapes
:€€€€€€€€€*

Tmultiples0
Щ
Flinear/linear_model/linear_model/capital-gain_bucketized/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
О
@linear/linear_model/linear_model/capital-gain_bucketized/ReshapeReshape=linear/linear_model/linear_model/capital-gain_bucketized/TileFlinear/linear_model/linear_model/capital-gain_bucketized/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
И
Flinear/linear_model/linear_model/capital-gain_bucketized/range_1/startConst*
dtype0*
_output_shapes
: *
value	B : 
И
Flinear/linear_model/linear_model/capital-gain_bucketized/range_1/limitConst*
value	B :*
dtype0*
_output_shapes
: 
И
Flinear/linear_model/linear_model/capital-gain_bucketized/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
…
@linear/linear_model/linear_model/capital-gain_bucketized/range_1RangeFlinear/linear_model/linear_model/capital-gain_bucketized/range_1/startFlinear/linear_model/linear_model/capital-gain_bucketized/range_1/limitFlinear/linear_model/linear_model/capital-gain_bucketized/range_1/delta*
_output_shapes
:*

Tidx0
”
Ilinear/linear_model/linear_model/capital-gain_bucketized/Tile_1/multiplesPackFlinear/linear_model/linear_model/capital-gain_bucketized/strided_slice*
N*
_output_shapes
:*
T0*

axis 
Ф
?linear/linear_model/linear_model/capital-gain_bucketized/Tile_1Tile@linear/linear_model/linear_model/capital-gain_bucketized/range_1Ilinear/linear_model/linear_model/capital-gain_bucketized/Tile_1/multiples*

Tmultiples0*
T0*#
_output_shapes
:€€€€€€€€€
Ы
Hlinear/linear_model/linear_model/capital-gain_bucketized/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
®
Blinear/linear_model/linear_model/capital-gain_bucketized/Reshape_1ReshapeSlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/BucketizeHlinear/linear_model/linear_model/capital-gain_bucketized/Reshape_1/shape*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
А
>linear/linear_model/linear_model/capital-gain_bucketized/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
т
<linear/linear_model/linear_model/capital-gain_bucketized/mulMul>linear/linear_model/linear_model/capital-gain_bucketized/mul/x?linear/linear_model/linear_model/capital-gain_bucketized/Tile_1*#
_output_shapes
:€€€€€€€€€*
T0
у
<linear/linear_model/linear_model/capital-gain_bucketized/addAddBlinear/linear_model/linear_model/capital-gain_bucketized/Reshape_1<linear/linear_model/linear_model/capital-gain_bucketized/mul*
T0*#
_output_shapes
:€€€€€€€€€
Р
>linear/linear_model/linear_model/capital-gain_bucketized/stackPack@linear/linear_model/linear_model/capital-gain_bucketized/Reshape?linear/linear_model/linear_model/capital-gain_bucketized/Tile_1*
N*'
_output_shapes
:€€€€€€€€€*
T0*

axis 
∞
Glinear/linear_model/linear_model/capital-gain_bucketized/transpose/RankRank>linear/linear_model/linear_model/capital-gain_bucketized/stack*
_output_shapes
: *
T0
К
Hlinear/linear_model/linear_model/capital-gain_bucketized/transpose/sub/yConst*
dtype0*
_output_shapes
: *
value	B :
Б
Flinear/linear_model/linear_model/capital-gain_bucketized/transpose/subSubGlinear/linear_model/linear_model/capital-gain_bucketized/transpose/RankHlinear/linear_model/linear_model/capital-gain_bucketized/transpose/sub/y*
T0*
_output_shapes
: 
Р
Nlinear/linear_model/linear_model/capital-gain_bucketized/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Р
Nlinear/linear_model/linear_model/capital-gain_bucketized/transpose/Range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
л
Hlinear/linear_model/linear_model/capital-gain_bucketized/transpose/RangeRangeNlinear/linear_model/linear_model/capital-gain_bucketized/transpose/Range/startGlinear/linear_model/linear_model/capital-gain_bucketized/transpose/RankNlinear/linear_model/linear_model/capital-gain_bucketized/transpose/Range/delta*

Tidx0*#
_output_shapes
:€€€€€€€€€
П
Hlinear/linear_model/linear_model/capital-gain_bucketized/transpose/sub_1SubFlinear/linear_model/linear_model/capital-gain_bucketized/transpose/subHlinear/linear_model/linear_model/capital-gain_bucketized/transpose/Range*#
_output_shapes
:€€€€€€€€€*
T0
Ш
Blinear/linear_model/linear_model/capital-gain_bucketized/transpose	Transpose>linear/linear_model/linear_model/capital-gain_bucketized/stackHlinear/linear_model/linear_model/capital-gain_bucketized/transpose/sub_1*
Tperm0*
T0*'
_output_shapes
:€€€€€€€€€
Ё
@linear/linear_model/linear_model/capital-gain_bucketized/ToInt64CastBlinear/linear_model/linear_model/capital-gain_bucketized/transpose*
Truncate( *'
_output_shapes
:€€€€€€€€€*

DstT0	*

SrcT0
Д
Blinear/linear_model/linear_model/capital-gain_bucketized/stack_1/1Const*
value	B :*
dtype0*
_output_shapes
: 
О
@linear/linear_model/linear_model/capital-gain_bucketized/stack_1PackFlinear/linear_model/linear_model/capital-gain_bucketized/strided_sliceBlinear/linear_model/linear_model/capital-gain_bucketized/stack_1/1*
T0*

axis *
N*
_output_shapes
:
–
Blinear/linear_model/linear_model/capital-gain_bucketized/ToInt64_1Cast@linear/linear_model/linear_model/capital-gain_bucketized/stack_1*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
’
Elinear/linear_model/linear_model/capital-gain_bucketized/Shape_1/CastCastBlinear/linear_model/linear_model/capital-gain_bucketized/ToInt64_1*
Truncate( *
_output_shapes
:*

DstT0*

SrcT0	
Ш
Nlinear/linear_model/linear_model/capital-gain_bucketized/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ъ
Plinear/linear_model/linear_model/capital-gain_bucketized/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ъ
Plinear/linear_model/linear_model/capital-gain_bucketized/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
•
Hlinear/linear_model/linear_model/capital-gain_bucketized/strided_slice_1StridedSliceElinear/linear_model/linear_model/capital-gain_bucketized/Shape_1/CastNlinear/linear_model/linear_model/capital-gain_bucketized/strided_slice_1/stackPlinear/linear_model/linear_model/capital-gain_bucketized/strided_slice_1/stack_1Plinear/linear_model/linear_model/capital-gain_bucketized/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
М
Alinear/linear_model/linear_model/capital-gain_bucketized/Cast/x/1Const*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
О
?linear/linear_model/linear_model/capital-gain_bucketized/Cast/xPackHlinear/linear_model/linear_model/capital-gain_bucketized/strided_slice_1Alinear/linear_model/linear_model/capital-gain_bucketized/Cast/x/1*
N*
_output_shapes
:*
T0*

axis 
 
=linear/linear_model/linear_model/capital-gain_bucketized/CastCast?linear/linear_model/linear_model/capital-gain_bucketized/Cast/x*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
Ћ
Flinear/linear_model/linear_model/capital-gain_bucketized/SparseReshapeSparseReshape@linear/linear_model/linear_model/capital-gain_bucketized/ToInt64Blinear/linear_model/linear_model/capital-gain_bucketized/ToInt64_1=linear/linear_model/linear_model/capital-gain_bucketized/Cast*-
_output_shapes
:€€€€€€€€€:
«
Olinear/linear_model/linear_model/capital-gain_bucketized/SparseReshape/IdentityIdentity<linear/linear_model/linear_model/capital-gain_bucketized/add*
T0*#
_output_shapes
:€€€€€€€€€
¬
Glinear/linear_model/linear_model/capital-gain_bucketized/ReadVariableOpReadVariableOp:linear/linear_model/capital-gain_bucketized/weights/part_0*
dtype0*
_output_shapes

:
Ы
Qlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ъ
Plinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
х
Klinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/SliceSliceHlinear/linear_model/linear_model/capital-gain_bucketized/SparseReshape:1Qlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Slice/beginPlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Х
Klinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
™
Jlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/ProdProdKlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/SliceKlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
Ш
Vlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Х
Slinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Х
Nlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GatherV2GatherV2Hlinear/linear_model/linear_model/capital-gain_bucketized/SparseReshape:1Vlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GatherV2/indicesSlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
™
Llinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Cast/xPackJlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/ProdNlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GatherV2*
T0	*

axis *
N*
_output_shapes
:
у
Slinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/SparseReshapeSparseReshapeFlinear/linear_model/linear_model/capital-gain_bucketized/SparseReshapeHlinear/linear_model/linear_model/capital-gain_bucketized/SparseReshape:1Llinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
з
\linear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/SparseReshape/IdentityIdentityOlinear/linear_model/linear_model/capital-gain_bucketized/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0
Ц
Tlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GreaterEqual/yConst*
value	B : *
dtype0*
_output_shapes
: 
ƒ
Rlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GreaterEqualGreaterEqual\linear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/SparseReshape/IdentityTlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GreaterEqual/y*#
_output_shapes
:€€€€€€€€€*
T0
Џ
Klinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/WhereWhereRlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€*
T0

¶
Slinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
ґ
Mlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/ReshapeReshapeKlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/WhereSlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Reshape/shape*#
_output_shapes
:€€€€€€€€€*
T0	*
Tshape0
Ч
Ulinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ђ
Plinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GatherV2_1GatherV2Slinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/SparseReshapeMlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/ReshapeUlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GatherV2_1/axis*'
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	*
Tparams0	
Ч
Ulinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
±
Plinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GatherV2_2GatherV2\linear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/SparseReshape/IdentityMlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/ReshapeUlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GatherV2_2/axis*#
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	*
Tparams0
÷
Nlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/IdentityIdentityUlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
°
_linear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
Є
mlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsPlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GatherV2_1Plinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/GatherV2_2Nlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Identity_linear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0
¬
qlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
ƒ
slinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
ƒ
slinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ж
klinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicemlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsqlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stackslinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1slinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
T0	*
Index0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€
§
blinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/CastCastklinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0
Ђ
dlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/UniqueUniqueolinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
С
slinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*Z
_classP
NLloc:@linear/linear_model/linear_model/capital-gain_bucketized/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
ѕ
nlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Glinear/linear_model/linear_model/capital-gain_bucketized/ReadVariableOpdlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/Uniqueslinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Tindices0*
Tparams0*Z
_classP
NLloc:@linear/linear_model/linear_model/capital-gain_bucketized/ReadVariableOp*'
_output_shapes
:€€€€€€€€€*
Taxis0
•
wlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitynlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:€€€€€€€€€*
T0
ф
]linear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparseSparseSegmentSumwlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identityflinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/Unique:1blinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
¶
Ulinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
в
Olinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Reshape_1Reshapeolinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Ulinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
и
Klinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/ShapeShape]linear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
£
Ylinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
•
[linear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
•
[linear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
„
Slinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/strided_sliceStridedSliceKlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/ShapeYlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/strided_slice/stack[linear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/strided_slice/stack_1[linear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
П
Mlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
±
Klinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/stackPackMlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/stack/0Slinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
љ
Jlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/TileTileOlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Reshape_1Klinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
о
Plinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/zeros_like	ZerosLike]linear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
ю
Elinear/linear_model/linear_model/capital-gain_bucketized/weighted_sumSelectJlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/TilePlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/zeros_like]linear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
в
Llinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Cast_1CastHlinear/linear_model/linear_model/capital-gain_bucketized/SparseReshape:1*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
Э
Slinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ь
Rlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
€
Mlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Slice_1SliceLlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Cast_1Slinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Slice_1/beginRlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
“
Mlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Shape_1ShapeElinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum*
T0*
out_type0*
_output_shapes
:
Э
Slinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
•
Rlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
А
Mlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Slice_2SliceMlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Shape_1Slinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Slice_2/beginRlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
У
Qlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Г
Llinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/concatConcatV2Mlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Slice_1Mlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Slice_2Qlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
ѓ
Olinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Reshape_2ReshapeElinear/linear_model/linear_model/capital-gain_bucketized/weighted_sumLlinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/concat*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
§
flinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*g
_class]
[Yloc:@linear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0*
valueB*    
ю
Tlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0VarHandleOp*g
_class]
[Yloc:@linear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes
: *e
shared_nameVTlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0
щ
ulinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpTlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0*
_output_shapes
: 
£
[linear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0/AssignAssignVariableOpTlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0flinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0/Initializer/zeros*g
_class]
[Yloc:@linear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0*
dtype0
ж
hlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0/Read/ReadVariableOpReadVariableOpTlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0*
dtype0*
_output_shapes

:*g
_class]
[Yloc:@linear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0
л
Xlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ShapeShapeSlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Bucketize*
T0*
out_type0*
_output_shapes
:
∞
flinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
≤
hlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
≤
hlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ш
`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_sliceStridedSliceXlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Shapeflinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice/stackhlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice/stack_1hlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
†
^linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
†
^linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
і
Xlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/rangeRange^linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range/start`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice^linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range/delta*

Tidx0*#
_output_shapes
:€€€€€€€€€
£
alinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ж
]linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ExpandDims
ExpandDimsXlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/rangealinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:€€€€€€€€€
≤
alinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Tile/multiplesConst*
valueB"      *
dtype0*
_output_shapes
:
е
Wlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/TileTile]linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ExpandDimsalinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Tile/multiples*

Tmultiples0*
T0*'
_output_shapes
:€€€€€€€€€
≥
`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
№
Zlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ReshapeReshapeWlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Tile`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Ґ
`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_1/startConst*
dtype0*
_output_shapes
: *
value	B : 
Ґ
`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_1/limitConst*
value	B :*
dtype0*
_output_shapes
: 
Ґ
`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_1/deltaConst*
dtype0*
_output_shapes
: *
value	B :
±
Zlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_1Range`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_1/start`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_1/limit`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_1/delta*
_output_shapes
:*

Tidx0
З
clinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Tile_1/multiplesPack`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice*
T0*

axis *
N*
_output_shapes
:
в
Ylinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Tile_1TileZlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_1clinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Tile_1/multiples*

Tmultiples0*
T0*#
_output_shapes
:€€€€€€€€€
µ
blinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
№
\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Reshape_1ReshapeSlinear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/Bucketizeblinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Reshape_1/shape*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Ъ
Xlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
ј
Vlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/mulMulXlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/mul/xYlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Tile_1*
T0*#
_output_shapes
:€€€€€€€€€
Ѕ
Vlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/addAdd\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Reshape_1Vlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/mul*
T0*#
_output_shapes
:€€€€€€€€€
ё
Xlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/stackPackZlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ReshapeYlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Tile_1*
T0*

axis *
N*'
_output_shapes
:€€€€€€€€€
д
alinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose/RankRankXlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/stack*
T0*
_output_shapes
: 
§
blinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
ѕ
`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose/subSubalinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose/Rankblinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose/sub/y*
T0*
_output_shapes
: 
™
hlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
™
hlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
”
blinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose/RangeRangehlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose/Range/startalinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose/Rankhlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose/Range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
Ё
blinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose/sub_1Sub`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose/subblinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose/Range*
T0*#
_output_shapes
:€€€€€€€€€
ж
\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose	TransposeXlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/stackblinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose/sub_1*
Tperm0*
T0*'
_output_shapes
:€€€€€€€€€
С
Zlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ToInt64Cast\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose*

SrcT0*
Truncate( *'
_output_shapes
:€€€€€€€€€*

DstT0	
Ю
\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/stack_1/1Const*
value	B :*
dtype0*
_output_shapes
: 
№
Zlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/stack_1Pack`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/stack_1/1*
T0*

axis *
N*
_output_shapes
:
Д
\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ToInt64_1CastZlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/stack_1*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
б
\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Bucketize	BucketizeParseExample/ParseExample:17*'
_output_shapes
:€€€€€€€€€*&

boundaries
"      zD  ъD А;E @ЬE*
T0
ц
Zlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Shape_1Shape\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Bucketize*
T0*
out_type0*
_output_shapes
:
≤
hlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB: 
і
jlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
і
jlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ґ
blinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_1StridedSliceZlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Shape_1hlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_1/stackjlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_1/stack_1jlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_1/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
Ґ
`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
Ґ
`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Љ
Zlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_2Range`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_2/startblinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_1`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_2/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
•
clinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ExpandDims_1/dimConst*
value	B :*
dtype0*
_output_shapes
: 
м
_linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ExpandDims_1
ExpandDimsZlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_2clinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ExpandDims_1/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0
і
clinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Tile_2/multiplesConst*
dtype0*
_output_shapes
:*
valueB"      
л
Ylinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Tile_2Tile_linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ExpandDims_1clinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Tile_2/multiples*

Tmultiples0*
T0*'
_output_shapes
:€€€€€€€€€
µ
blinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Reshape_2/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
в
\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Reshape_2ReshapeYlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Tile_2blinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Reshape_2/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Ґ
`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_3/startConst*
value	B : *
dtype0*
_output_shapes
: 
Ґ
`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_3/limitConst*
value	B :*
dtype0*
_output_shapes
: 
Ґ
`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_3/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
±
Zlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_3Range`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_3/start`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_3/limit`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_3/delta*
_output_shapes
:*

Tidx0
Й
clinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Tile_3/multiplesPackblinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_1*
N*
_output_shapes
:*
T0*

axis 
в
Ylinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Tile_3TileZlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/range_3clinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Tile_3/multiples*#
_output_shapes
:€€€€€€€€€*

Tmultiples0*
T0
µ
blinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Reshape_3/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
е
\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Reshape_3Reshape\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Bucketizeblinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Reshape_3/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Ь
Zlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/mul_1/xConst*
value	B :*
dtype0*
_output_shapes
: 
ƒ
Xlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/mul_1MulZlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/mul_1/xYlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Tile_3*
T0*#
_output_shapes
:€€€€€€€€€
≈
Xlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/add_1Add\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Reshape_3Xlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/mul_1*#
_output_shapes
:€€€€€€€€€*
T0
в
Zlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/stack_2Pack\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Reshape_2Ylinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Tile_3*
T0*

axis *
N*'
_output_shapes
:€€€€€€€€€
и
clinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose_1/RankRankZlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/stack_2*
_output_shapes
: *
T0
¶
dlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose_1/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
’
blinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose_1/subSubclinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose_1/Rankdlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose_1/sub/y*
_output_shapes
: *
T0
ђ
jlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose_1/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
ђ
jlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose_1/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
џ
dlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose_1/RangeRangejlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose_1/Range/startclinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose_1/Rankjlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose_1/Range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
г
dlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose_1/sub_1Subblinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose_1/subdlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose_1/Range*#
_output_shapes
:€€€€€€€€€*
T0
м
^linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose_1	TransposeZlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/stack_2dlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose_1/sub_1*'
_output_shapes
:€€€€€€€€€*
Tperm0*
T0
Х
\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ToInt64_2Cast^linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/transpose_1*

SrcT0*
Truncate( *'
_output_shapes
:€€€€€€€€€*

DstT0	
Ю
\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/stack_3/1Const*
value	B :*
dtype0*
_output_shapes
: 
ё
Zlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/stack_3Packblinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_1\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/stack_3/1*
T0*

axis *
N*
_output_shapes
:
Д
\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ToInt64_3CastZlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/stack_3*
Truncate( *
_output_shapes
:*

DstT0	*

SrcT0
Й
\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ToInt64_4CastVlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/add*

SrcT0*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0	
Л
\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ToInt64_5CastXlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/add_1*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0	*

SrcT0
у
^linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/SparseCrossSparseCrossZlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ToInt64\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ToInt64_2\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ToInt64_4\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ToInt64_5\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ToInt64_1\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ToInt64_3*
hash_keyюят„м*
internal_type0	*
sparse_types
2		*
num_buckets*
hashed_output(*
out_type0	*
N*
dense_types
 *<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:
Н
_linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Shape_2/CastCast`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/SparseCross:2*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
≤
hlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:
і
jlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
і
jlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
І
blinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_2StridedSlice_linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Shape_2/Casthlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_2/stackjlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_2/stack_1jlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_2/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
¶
[linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Cast/x/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
№
Ylinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Cast/xPackblinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/strided_slice_2[linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
ю
Wlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/CastCastYlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Cast/x*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
ї
`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/SparseReshapeSparseReshape^linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/SparseCross`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/SparseCross:2Wlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Cast*-
_output_shapes
:€€€€€€€€€:
Е
ilinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/SparseReshape/IdentityIdentity`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/SparseCross:1*
T0	*#
_output_shapes
:€€€€€€€€€
ц
alinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ReadVariableOpReadVariableOpTlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0*
dtype0*
_output_shapes

:
µ
klinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
і
jlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Ё
elinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/SliceSliceblinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/SparseReshape:1klinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Slice/beginjlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
ѓ
elinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ш
dlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/ProdProdelinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Sliceelinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
≤
plinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
ѓ
mlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
э
hlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GatherV2GatherV2blinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/SparseReshape:1plinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GatherV2/indicesmlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GatherV2/axis*
Tparams0	*
_output_shapes
: *
Taxis0*
Tindices0
ш
flinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Cast/xPackdlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Prodhlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GatherV2*
T0	*

axis *
N*
_output_shapes
:
џ
mlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/SparseReshapeSparseReshape`linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/SparseReshapeblinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/SparseReshape:1flinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
Ы
vlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/SparseReshape/IdentityIdentityilinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
∞
nlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Т
llinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GreaterEqualGreaterEqualvlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/SparseReshape/Identitynlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
О
elinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/WhereWherellinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
ј
mlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Д
glinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/ReshapeReshapeelinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Wheremlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
±
olinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ф
jlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GatherV2_1GatherV2mlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/SparseReshapeglinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Reshapeolinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Taxis0
±
olinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Щ
jlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GatherV2_2GatherV2vlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/SparseReshape/Identityglinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Reshapeolinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	
К
hlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/IdentityIdentityolinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
ї
ylinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ї
Зlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsjlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GatherV2_1jlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/GatherV2_2hlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Identityylinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
Ё
Лlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
я
Нlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
я
Нlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
н
Еlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceЗlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsЛlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stackНlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Нlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€*
Index0*
T0	
ў
|linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/CastCastЕlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0
а
~linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/UniqueUniqueЙlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
∆
Нlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*t
_classj
hfloc:@linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
”
Иlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2alinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ReadVariableOp~linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/UniqueНlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	*
Tparams0*t
_classj
hfloc:@linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/ReadVariableOp
џ
Сlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityИlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:€€€€€€€€€*
T0
ё
wlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparseSparseSegmentSumСlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityАlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/Unique:1|linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:€€€€€€€€€
ј
olinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
±
ilinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Reshape_1ReshapeЙlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2olinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
Ь
elinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/ShapeShapewlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
љ
slinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
њ
ulinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
њ
ulinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ў
mlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/strided_sliceStridedSliceelinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Shapeslinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/strided_slice/stackulinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/strided_slice/stack_1ulinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
©
glinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
€
elinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/stackPackglinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/stack/0mlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
Л
dlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/TileTileilinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Reshape_1elinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0

Ґ
jlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/zeros_like	ZerosLikewlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
ж
_linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sumSelectdlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Tilejlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/zeros_likewlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Ц
flinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Cast_1Castblinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/SparseReshape:1*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
Ј
mlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
ґ
llinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
з
glinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Slice_1Sliceflinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Cast_1mlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Slice_1/beginllinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ж
glinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Shape_1Shape_linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum*
_output_shapes
:*
T0*
out_type0
Ј
mlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
њ
llinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
и
glinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Slice_2Sliceglinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Shape_1mlinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Slice_2/beginllinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
≠
klinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
л
flinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/concatConcatV2glinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Slice_1glinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Slice_2klinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
э
ilinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Reshape_2Reshape_linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sumflinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
р
Llinear/linear_model/capital-loss_bucketized/weights/part_0/Initializer/zerosConst*M
_classC
A?loc:@linear/linear_model/capital-loss_bucketized/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
∞
:linear/linear_model/capital-loss_bucketized/weights/part_0VarHandleOp*M
_classC
A?loc:@linear/linear_model/capital-loss_bucketized/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes
: *K
shared_name<:linear/linear_model/capital-loss_bucketized/weights/part_0
≈
[linear/linear_model/capital-loss_bucketized/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp:linear/linear_model/capital-loss_bucketized/weights/part_0*
_output_shapes
: 
ї
Alinear/linear_model/capital-loss_bucketized/weights/part_0/AssignAssignVariableOp:linear/linear_model/capital-loss_bucketized/weights/part_0Llinear/linear_model/capital-loss_bucketized/weights/part_0/Initializer/zeros*M
_classC
A?loc:@linear/linear_model/capital-loss_bucketized/weights/part_0*
dtype0
Ш
Nlinear/linear_model/capital-loss_bucketized/weights/part_0/Read/ReadVariableOpReadVariableOp:linear/linear_model/capital-loss_bucketized/weights/part_0*
dtype0*
_output_shapes

:*M
_classC
A?loc:@linear/linear_model/capital-loss_bucketized/weights/part_0
Џ
>linear/linear_model/linear_model/capital-loss_bucketized/ShapeShape\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/Bucketize*
T0*
out_type0*
_output_shapes
:
Ц
Llinear/linear_model/linear_model/capital-loss_bucketized/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ш
Nlinear/linear_model/linear_model/capital-loss_bucketized/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Ш
Nlinear/linear_model/linear_model/capital-loss_bucketized/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ц
Flinear/linear_model/linear_model/capital-loss_bucketized/strided_sliceStridedSlice>linear/linear_model/linear_model/capital-loss_bucketized/ShapeLlinear/linear_model/linear_model/capital-loss_bucketized/strided_slice/stackNlinear/linear_model/linear_model/capital-loss_bucketized/strided_slice/stack_1Nlinear/linear_model/linear_model/capital-loss_bucketized/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ж
Dlinear/linear_model/linear_model/capital-loss_bucketized/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Ж
Dlinear/linear_model/linear_model/capital-loss_bucketized/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
ћ
>linear/linear_model/linear_model/capital-loss_bucketized/rangeRangeDlinear/linear_model/linear_model/capital-loss_bucketized/range/startFlinear/linear_model/linear_model/capital-loss_bucketized/strided_sliceDlinear/linear_model/linear_model/capital-loss_bucketized/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
Й
Glinear/linear_model/linear_model/capital-loss_bucketized/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :
Ш
Clinear/linear_model/linear_model/capital-loss_bucketized/ExpandDims
ExpandDims>linear/linear_model/linear_model/capital-loss_bucketized/rangeGlinear/linear_model/linear_model/capital-loss_bucketized/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:€€€€€€€€€
Ш
Glinear/linear_model/linear_model/capital-loss_bucketized/Tile/multiplesConst*
dtype0*
_output_shapes
:*
valueB"      
Ч
=linear/linear_model/linear_model/capital-loss_bucketized/TileTileClinear/linear_model/linear_model/capital-loss_bucketized/ExpandDimsGlinear/linear_model/linear_model/capital-loss_bucketized/Tile/multiples*

Tmultiples0*
T0*'
_output_shapes
:€€€€€€€€€
Щ
Flinear/linear_model/linear_model/capital-loss_bucketized/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
О
@linear/linear_model/linear_model/capital-loss_bucketized/ReshapeReshape=linear/linear_model/linear_model/capital-loss_bucketized/TileFlinear/linear_model/linear_model/capital-loss_bucketized/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
И
Flinear/linear_model/linear_model/capital-loss_bucketized/range_1/startConst*
dtype0*
_output_shapes
: *
value	B : 
И
Flinear/linear_model/linear_model/capital-loss_bucketized/range_1/limitConst*
value	B :*
dtype0*
_output_shapes
: 
И
Flinear/linear_model/linear_model/capital-loss_bucketized/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
…
@linear/linear_model/linear_model/capital-loss_bucketized/range_1RangeFlinear/linear_model/linear_model/capital-loss_bucketized/range_1/startFlinear/linear_model/linear_model/capital-loss_bucketized/range_1/limitFlinear/linear_model/linear_model/capital-loss_bucketized/range_1/delta*
_output_shapes
:*

Tidx0
”
Ilinear/linear_model/linear_model/capital-loss_bucketized/Tile_1/multiplesPackFlinear/linear_model/linear_model/capital-loss_bucketized/strided_slice*
T0*

axis *
N*
_output_shapes
:
Ф
?linear/linear_model/linear_model/capital-loss_bucketized/Tile_1Tile@linear/linear_model/linear_model/capital-loss_bucketized/range_1Ilinear/linear_model/linear_model/capital-loss_bucketized/Tile_1/multiples*

Tmultiples0*
T0*#
_output_shapes
:€€€€€€€€€
Ы
Hlinear/linear_model/linear_model/capital-loss_bucketized/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
±
Blinear/linear_model/linear_model/capital-loss_bucketized/Reshape_1Reshape\linear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/BucketizeHlinear/linear_model/linear_model/capital-loss_bucketized/Reshape_1/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
А
>linear/linear_model/linear_model/capital-loss_bucketized/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
т
<linear/linear_model/linear_model/capital-loss_bucketized/mulMul>linear/linear_model/linear_model/capital-loss_bucketized/mul/x?linear/linear_model/linear_model/capital-loss_bucketized/Tile_1*
T0*#
_output_shapes
:€€€€€€€€€
у
<linear/linear_model/linear_model/capital-loss_bucketized/addAddBlinear/linear_model/linear_model/capital-loss_bucketized/Reshape_1<linear/linear_model/linear_model/capital-loss_bucketized/mul*
T0*#
_output_shapes
:€€€€€€€€€
Р
>linear/linear_model/linear_model/capital-loss_bucketized/stackPack@linear/linear_model/linear_model/capital-loss_bucketized/Reshape?linear/linear_model/linear_model/capital-loss_bucketized/Tile_1*
N*'
_output_shapes
:€€€€€€€€€*
T0*

axis 
∞
Glinear/linear_model/linear_model/capital-loss_bucketized/transpose/RankRank>linear/linear_model/linear_model/capital-loss_bucketized/stack*
T0*
_output_shapes
: 
К
Hlinear/linear_model/linear_model/capital-loss_bucketized/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Б
Flinear/linear_model/linear_model/capital-loss_bucketized/transpose/subSubGlinear/linear_model/linear_model/capital-loss_bucketized/transpose/RankHlinear/linear_model/linear_model/capital-loss_bucketized/transpose/sub/y*
_output_shapes
: *
T0
Р
Nlinear/linear_model/linear_model/capital-loss_bucketized/transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Р
Nlinear/linear_model/linear_model/capital-loss_bucketized/transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
л
Hlinear/linear_model/linear_model/capital-loss_bucketized/transpose/RangeRangeNlinear/linear_model/linear_model/capital-loss_bucketized/transpose/Range/startGlinear/linear_model/linear_model/capital-loss_bucketized/transpose/RankNlinear/linear_model/linear_model/capital-loss_bucketized/transpose/Range/delta*

Tidx0*#
_output_shapes
:€€€€€€€€€
П
Hlinear/linear_model/linear_model/capital-loss_bucketized/transpose/sub_1SubFlinear/linear_model/linear_model/capital-loss_bucketized/transpose/subHlinear/linear_model/linear_model/capital-loss_bucketized/transpose/Range*
T0*#
_output_shapes
:€€€€€€€€€
Ш
Blinear/linear_model/linear_model/capital-loss_bucketized/transpose	Transpose>linear/linear_model/linear_model/capital-loss_bucketized/stackHlinear/linear_model/linear_model/capital-loss_bucketized/transpose/sub_1*
T0*'
_output_shapes
:€€€€€€€€€*
Tperm0
Ё
@linear/linear_model/linear_model/capital-loss_bucketized/ToInt64CastBlinear/linear_model/linear_model/capital-loss_bucketized/transpose*

SrcT0*
Truncate( *'
_output_shapes
:€€€€€€€€€*

DstT0	
Д
Blinear/linear_model/linear_model/capital-loss_bucketized/stack_1/1Const*
value	B :*
dtype0*
_output_shapes
: 
О
@linear/linear_model/linear_model/capital-loss_bucketized/stack_1PackFlinear/linear_model/linear_model/capital-loss_bucketized/strided_sliceBlinear/linear_model/linear_model/capital-loss_bucketized/stack_1/1*
N*
_output_shapes
:*
T0*

axis 
–
Blinear/linear_model/linear_model/capital-loss_bucketized/ToInt64_1Cast@linear/linear_model/linear_model/capital-loss_bucketized/stack_1*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
’
Elinear/linear_model/linear_model/capital-loss_bucketized/Shape_1/CastCastBlinear/linear_model/linear_model/capital-loss_bucketized/ToInt64_1*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
Ш
Nlinear/linear_model/linear_model/capital-loss_bucketized/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ъ
Plinear/linear_model/linear_model/capital-loss_bucketized/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ъ
Plinear/linear_model/linear_model/capital-loss_bucketized/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
•
Hlinear/linear_model/linear_model/capital-loss_bucketized/strided_slice_1StridedSliceElinear/linear_model/linear_model/capital-loss_bucketized/Shape_1/CastNlinear/linear_model/linear_model/capital-loss_bucketized/strided_slice_1/stackPlinear/linear_model/linear_model/capital-loss_bucketized/strided_slice_1/stack_1Plinear/linear_model/linear_model/capital-loss_bucketized/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
М
Alinear/linear_model/linear_model/capital-loss_bucketized/Cast/x/1Const*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
О
?linear/linear_model/linear_model/capital-loss_bucketized/Cast/xPackHlinear/linear_model/linear_model/capital-loss_bucketized/strided_slice_1Alinear/linear_model/linear_model/capital-loss_bucketized/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
 
=linear/linear_model/linear_model/capital-loss_bucketized/CastCast?linear/linear_model/linear_model/capital-loss_bucketized/Cast/x*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
Ћ
Flinear/linear_model/linear_model/capital-loss_bucketized/SparseReshapeSparseReshape@linear/linear_model/linear_model/capital-loss_bucketized/ToInt64Blinear/linear_model/linear_model/capital-loss_bucketized/ToInt64_1=linear/linear_model/linear_model/capital-loss_bucketized/Cast*-
_output_shapes
:€€€€€€€€€:
«
Olinear/linear_model/linear_model/capital-loss_bucketized/SparseReshape/IdentityIdentity<linear/linear_model/linear_model/capital-loss_bucketized/add*
T0*#
_output_shapes
:€€€€€€€€€
¬
Glinear/linear_model/linear_model/capital-loss_bucketized/ReadVariableOpReadVariableOp:linear/linear_model/capital-loss_bucketized/weights/part_0*
dtype0*
_output_shapes

:
Ы
Qlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ъ
Plinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
х
Klinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/SliceSliceHlinear/linear_model/linear_model/capital-loss_bucketized/SparseReshape:1Qlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Slice/beginPlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
Х
Klinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
™
Jlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/ProdProdKlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/SliceKlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
Ш
Vlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Х
Slinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Х
Nlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GatherV2GatherV2Hlinear/linear_model/linear_model/capital-loss_bucketized/SparseReshape:1Vlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GatherV2/indicesSlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
™
Llinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Cast/xPackJlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/ProdNlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GatherV2*
T0	*

axis *
N*
_output_shapes
:
у
Slinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/SparseReshapeSparseReshapeFlinear/linear_model/linear_model/capital-loss_bucketized/SparseReshapeHlinear/linear_model/linear_model/capital-loss_bucketized/SparseReshape:1Llinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
з
\linear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/SparseReshape/IdentityIdentityOlinear/linear_model/linear_model/capital-loss_bucketized/SparseReshape/Identity*
T0*#
_output_shapes
:€€€€€€€€€
Ц
Tlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GreaterEqual/yConst*
value	B : *
dtype0*
_output_shapes
: 
ƒ
Rlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GreaterEqualGreaterEqual\linear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/SparseReshape/IdentityTlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GreaterEqual/y*
T0*#
_output_shapes
:€€€€€€€€€
Џ
Klinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/WhereWhereRlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
¶
Slinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
ґ
Mlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/ReshapeReshapeKlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/WhereSlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
Ч
Ulinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ђ
Plinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GatherV2_1GatherV2Slinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/SparseReshapeMlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/ReshapeUlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	
Ч
Ulinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
±
Plinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GatherV2_2GatherV2\linear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/SparseReshape/IdentityMlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/ReshapeUlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:€€€€€€€€€
÷
Nlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/IdentityIdentityUlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
°
_linear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
Є
mlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsPlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GatherV2_1Plinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/GatherV2_2Nlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Identity_linear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/SparseFillEmptyRows/Const*
T0*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
¬
qlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
ƒ
slinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
ƒ
slinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
ж
klinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicemlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsqlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stackslinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1slinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*#
_output_shapes
:€€€€€€€€€*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask 
§
blinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/CastCastklinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0	
Ђ
dlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/UniqueUniqueolinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
С
slinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*Z
_classP
NLloc:@linear/linear_model/linear_model/capital-loss_bucketized/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
ѕ
nlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2Glinear/linear_model/linear_model/capital-loss_bucketized/ReadVariableOpdlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/Uniqueslinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0*
Tparams0*Z
_classP
NLloc:@linear/linear_model/linear_model/capital-loss_bucketized/ReadVariableOp*'
_output_shapes
:€€€€€€€€€
•
wlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitynlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:€€€€€€€€€*
T0
ф
]linear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparseSparseSegmentSumwlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identityflinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/Unique:1blinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:€€€€€€€€€*

Tidx0*
T0
¶
Ulinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
в
Olinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Reshape_1Reshapeolinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Ulinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
и
Klinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/ShapeShape]linear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
£
Ylinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
•
[linear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
•
[linear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
„
Slinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/strided_sliceStridedSliceKlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/ShapeYlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/strided_slice/stack[linear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/strided_slice/stack_1[linear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
П
Mlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
±
Klinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/stackPackMlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/stack/0Slinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/strided_slice*
N*
_output_shapes
:*
T0*

axis 
љ
Jlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/TileTileOlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Reshape_1Klinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/stack*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0
о
Plinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/zeros_like	ZerosLike]linear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
ю
Elinear/linear_model/linear_model/capital-loss_bucketized/weighted_sumSelectJlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/TilePlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/zeros_like]linear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
в
Llinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Cast_1CastHlinear/linear_model/linear_model/capital-loss_bucketized/SparseReshape:1*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
Э
Slinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
Ь
Rlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
€
Mlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Slice_1SliceLlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Cast_1Slinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Slice_1/beginRlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
“
Mlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Shape_1ShapeElinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum*
T0*
out_type0*
_output_shapes
:
Э
Slinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
•
Rlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
А
Mlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Slice_2SliceMlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Shape_1Slinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Slice_2/beginRlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
У
Qlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Г
Llinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/concatConcatV2Mlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Slice_1Mlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Slice_2Qlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
ѓ
Olinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Reshape_2ReshapeElinear/linear_model/linear_model/capital-loss_bucketized/weighted_sumLlinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
÷
>linear/linear_model/education/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:	А*?
_class5
31loc:@linear/linear_model/education/weights/part_0*
valueB	А*    
З
,linear/linear_model/education/weights/part_0VarHandleOp*?
_class5
31loc:@linear/linear_model/education/weights/part_0*
	container *
shape:	А*
dtype0*
_output_shapes
: *=
shared_name.,linear/linear_model/education/weights/part_0
©
Mlinear/linear_model/education/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp,linear/linear_model/education/weights/part_0*
_output_shapes
: 
Г
3linear/linear_model/education/weights/part_0/AssignAssignVariableOp,linear/linear_model/education/weights/part_0>linear/linear_model/education/weights/part_0/Initializer/zeros*?
_class5
31loc:@linear/linear_model/education/weights/part_0*
dtype0
п
@linear/linear_model/education/weights/part_0/Read/ReadVariableOpReadVariableOp,linear/linear_model/education/weights/part_0*?
_class5
31loc:@linear/linear_model/education/weights/part_0*
dtype0*
_output_shapes
:	А
°
1linear/linear_model/linear_model/education/lookupStringToHashBucketFastParseExample/ParseExample:5*#
_output_shapes
:€€€€€€€€€*
num_bucketsА
Я
5linear/linear_model/linear_model/education/Shape/CastCastParseExample/ParseExample:10*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
И
>linear/linear_model/linear_model/education/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
К
@linear/linear_model/linear_model/education/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
К
@linear/linear_model/linear_model/education/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
’
8linear/linear_model/linear_model/education/strided_sliceStridedSlice5linear/linear_model/linear_model/education/Shape/Cast>linear/linear_model/linear_model/education/strided_slice/stack@linear/linear_model/linear_model/education/strided_slice/stack_1@linear/linear_model/linear_model/education/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
~
3linear/linear_model/linear_model/education/Cast/x/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
в
1linear/linear_model/linear_model/education/Cast/xPack8linear/linear_model/linear_model/education/strided_slice3linear/linear_model/linear_model/education/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
Ѓ
/linear/linear_model/linear_model/education/CastCast1linear/linear_model/linear_model/education/Cast/x*
Truncate( *
_output_shapes
:*

DstT0	*

SrcT0
в
8linear/linear_model/linear_model/education/SparseReshapeSparseReshapeParseExample/ParseExampleParseExample/ParseExample:10/linear/linear_model/linear_model/education/Cast*-
_output_shapes
:€€€€€€€€€:
Ѓ
Alinear/linear_model/linear_model/education/SparseReshape/IdentityIdentity1linear/linear_model/linear_model/education/lookup*
T0	*#
_output_shapes
:€€€€€€€€€
І
9linear/linear_model/linear_model/education/ReadVariableOpReadVariableOp,linear/linear_model/education/weights/part_0*
dtype0*
_output_shapes
:	А
Н
Clinear/linear_model/linear_model/education/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
М
Blinear/linear_model/linear_model/education/weighted_sum/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
љ
=linear/linear_model/linear_model/education/weighted_sum/SliceSlice:linear/linear_model/linear_model/education/SparseReshape:1Clinear/linear_model/linear_model/education/weighted_sum/Slice/beginBlinear/linear_model/linear_model/education/weighted_sum/Slice/size*
_output_shapes
:*
Index0*
T0	
З
=linear/linear_model/linear_model/education/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
А
<linear/linear_model/linear_model/education/weighted_sum/ProdProd=linear/linear_model/linear_model/education/weighted_sum/Slice=linear/linear_model/linear_model/education/weighted_sum/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
К
Hlinear/linear_model/linear_model/education/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
З
Elinear/linear_model/linear_model/education/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ё
@linear/linear_model/linear_model/education/weighted_sum/GatherV2GatherV2:linear/linear_model/linear_model/education/SparseReshape:1Hlinear/linear_model/linear_model/education/weighted_sum/GatherV2/indicesElinear/linear_model/linear_model/education/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
А
>linear/linear_model/linear_model/education/weighted_sum/Cast/xPack<linear/linear_model/linear_model/education/weighted_sum/Prod@linear/linear_model/linear_model/education/weighted_sum/GatherV2*
N*
_output_shapes
:*
T0	*

axis 
ї
Elinear/linear_model/linear_model/education/weighted_sum/SparseReshapeSparseReshape8linear/linear_model/linear_model/education/SparseReshape:linear/linear_model/linear_model/education/SparseReshape:1>linear/linear_model/linear_model/education/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
Ћ
Nlinear/linear_model/linear_model/education/weighted_sum/SparseReshape/IdentityIdentityAlinear/linear_model/linear_model/education/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
И
Flinear/linear_model/linear_model/education/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ъ
Dlinear/linear_model/linear_model/education/weighted_sum/GreaterEqualGreaterEqualNlinear/linear_model/linear_model/education/weighted_sum/SparseReshape/IdentityFlinear/linear_model/linear_model/education/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
Њ
=linear/linear_model/linear_model/education/weighted_sum/WhereWhereDlinear/linear_model/linear_model/education/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
Ш
Elinear/linear_model/linear_model/education/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
М
?linear/linear_model/linear_model/education/weighted_sum/ReshapeReshape=linear/linear_model/linear_model/education/weighted_sum/WhereElinear/linear_model/linear_model/education/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
Й
Glinear/linear_model/linear_model/education/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ф
Blinear/linear_model/linear_model/education/weighted_sum/GatherV2_1GatherV2Elinear/linear_model/linear_model/education/weighted_sum/SparseReshape?linear/linear_model/linear_model/education/weighted_sum/ReshapeGlinear/linear_model/linear_model/education/weighted_sum/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Taxis0
Й
Glinear/linear_model/linear_model/education/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
щ
Blinear/linear_model/linear_model/education/weighted_sum/GatherV2_2GatherV2Nlinear/linear_model/linear_model/education/weighted_sum/SparseReshape/Identity?linear/linear_model/linear_model/education/weighted_sum/ReshapeGlinear/linear_model/linear_model/education/weighted_sum/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	
Ї
@linear/linear_model/linear_model/education/weighted_sum/IdentityIdentityGlinear/linear_model/linear_model/education/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
У
Qlinear/linear_model/linear_model/education/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
т
_linear/linear_model/linear_model/education/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsBlinear/linear_model/linear_model/education/weighted_sum/GatherV2_1Blinear/linear_model/linear_model/education/weighted_sum/GatherV2_2@linear/linear_model/linear_model/education/weighted_sum/IdentityQlinear/linear_model/linear_model/education/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
і
clinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
ґ
elinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
ґ
elinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
†
]linear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice_linear/linear_model/linear_model/education/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsclinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stackelinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1elinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
T0	*
Index0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€
И
Tlinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/CastCast]linear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0
П
Vlinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/UniqueUniquealinear/linear_model/linear_model/education/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
х
elinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*L
_classB
@>loc:@linear/linear_model/linear_model/education/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Й
`linear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV29linear/linear_model/linear_model/education/ReadVariableOpVlinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/Uniqueelinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*L
_classB
@>loc:@linear/linear_model/linear_model/education/ReadVariableOp*'
_output_shapes
:€€€€€€€€€
Й
ilinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentity`linear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:€€€€€€€€€
Љ
Olinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparseSparseSegmentSumilinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityXlinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/Unique:1Tlinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€*

Tidx0
Ш
Glinear/linear_model/linear_model/education/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
Є
Alinear/linear_model/linear_model/education/weighted_sum/Reshape_1Reshapealinear/linear_model/linear_model/education/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Glinear/linear_model/linear_model/education/weighted_sum/Reshape_1/shape*'
_output_shapes
:€€€€€€€€€*
T0
*
Tshape0
ћ
=linear/linear_model/linear_model/education/weighted_sum/ShapeShapeOlinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
Х
Klinear/linear_model/linear_model/education/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ч
Mlinear/linear_model/linear_model/education/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ч
Mlinear/linear_model/linear_model/education/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
С
Elinear/linear_model/linear_model/education/weighted_sum/strided_sliceStridedSlice=linear/linear_model/linear_model/education/weighted_sum/ShapeKlinear/linear_model/linear_model/education/weighted_sum/strided_slice/stackMlinear/linear_model/linear_model/education/weighted_sum/strided_slice/stack_1Mlinear/linear_model/linear_model/education/weighted_sum/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
Б
?linear/linear_model/linear_model/education/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
З
=linear/linear_model/linear_model/education/weighted_sum/stackPack?linear/linear_model/linear_model/education/weighted_sum/stack/0Elinear/linear_model/linear_model/education/weighted_sum/strided_slice*
N*
_output_shapes
:*
T0*

axis 
У
<linear/linear_model/linear_model/education/weighted_sum/TileTileAlinear/linear_model/linear_model/education/weighted_sum/Reshape_1=linear/linear_model/linear_model/education/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
“
Blinear/linear_model/linear_model/education/weighted_sum/zeros_like	ZerosLikeOlinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
∆
7linear/linear_model/linear_model/education/weighted_sumSelect<linear/linear_model/linear_model/education/weighted_sum/TileBlinear/linear_model/linear_model/education/weighted_sum/zeros_likeOlinear/linear_model/linear_model/education/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
∆
>linear/linear_model/linear_model/education/weighted_sum/Cast_1Cast:linear/linear_model/linear_model/education/SparseReshape:1*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
П
Elinear/linear_model/linear_model/education/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
О
Dlinear/linear_model/linear_model/education/weighted_sum/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
«
?linear/linear_model/linear_model/education/weighted_sum/Slice_1Slice>linear/linear_model/linear_model/education/weighted_sum/Cast_1Elinear/linear_model/linear_model/education/weighted_sum/Slice_1/beginDlinear/linear_model/linear_model/education/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ґ
?linear/linear_model/linear_model/education/weighted_sum/Shape_1Shape7linear/linear_model/linear_model/education/weighted_sum*
T0*
out_type0*
_output_shapes
:
П
Elinear/linear_model/linear_model/education/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ч
Dlinear/linear_model/linear_model/education/weighted_sum/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
»
?linear/linear_model/linear_model/education/weighted_sum/Slice_2Slice?linear/linear_model/linear_model/education/weighted_sum/Shape_1Elinear/linear_model/linear_model/education/weighted_sum/Slice_2/beginDlinear/linear_model/linear_model/education/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Е
Clinear/linear_model/linear_model/education/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ћ
>linear/linear_model/linear_model/education/weighted_sum/concatConcatV2?linear/linear_model/linear_model/education/weighted_sum/Slice_1?linear/linear_model/linear_model/education/weighted_sum/Slice_2Clinear/linear_model/linear_model/education/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Е
Alinear/linear_model/linear_model/education/weighted_sum/Reshape_2Reshape7linear/linear_model/linear_model/education/weighted_sum>linear/linear_model/linear_model/education/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
а
Clinear/linear_model/marital-status/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:	А*D
_class:
86loc:@linear/linear_model/marital-status/weights/part_0*
valueB	А*    
Ц
1linear/linear_model/marital-status/weights/part_0VarHandleOp*
	container *
shape:	А*
dtype0*
_output_shapes
: *B
shared_name31linear/linear_model/marital-status/weights/part_0*D
_class:
86loc:@linear/linear_model/marital-status/weights/part_0
≥
Rlinear/linear_model/marital-status/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp1linear/linear_model/marital-status/weights/part_0*
_output_shapes
: 
Ч
8linear/linear_model/marital-status/weights/part_0/AssignAssignVariableOp1linear/linear_model/marital-status/weights/part_0Clinear/linear_model/marital-status/weights/part_0/Initializer/zeros*D
_class:
86loc:@linear/linear_model/marital-status/weights/part_0*
dtype0
ю
Elinear/linear_model/marital-status/weights/part_0/Read/ReadVariableOpReadVariableOp1linear/linear_model/marital-status/weights/part_0*
dtype0*
_output_shapes
:	А*D
_class:
86loc:@linear/linear_model/marital-status/weights/part_0
¶
6linear/linear_model/linear_model/marital-status/lookupStringToHashBucketFastParseExample/ParseExample:6*#
_output_shapes
:€€€€€€€€€*
num_bucketsА
§
:linear/linear_model/linear_model/marital-status/Shape/CastCastParseExample/ParseExample:11*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
Н
Clinear/linear_model/linear_model/marital-status/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
П
Elinear/linear_model/linear_model/marital-status/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
П
Elinear/linear_model/linear_model/marital-status/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
о
=linear/linear_model/linear_model/marital-status/strided_sliceStridedSlice:linear/linear_model/linear_model/marital-status/Shape/CastClinear/linear_model/linear_model/marital-status/strided_slice/stackElinear/linear_model/linear_model/marital-status/strided_slice/stack_1Elinear/linear_model/linear_model/marital-status/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Г
8linear/linear_model/linear_model/marital-status/Cast/x/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
с
6linear/linear_model/linear_model/marital-status/Cast/xPack=linear/linear_model/linear_model/marital-status/strided_slice8linear/linear_model/linear_model/marital-status/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
Є
4linear/linear_model/linear_model/marital-status/CastCast6linear/linear_model/linear_model/marital-status/Cast/x*
Truncate( *
_output_shapes
:*

DstT0	*

SrcT0
о
=linear/linear_model/linear_model/marital-status/SparseReshapeSparseReshapeParseExample/ParseExample:1ParseExample/ParseExample:114linear/linear_model/linear_model/marital-status/Cast*-
_output_shapes
:€€€€€€€€€:
Є
Flinear/linear_model/linear_model/marital-status/SparseReshape/IdentityIdentity6linear/linear_model/linear_model/marital-status/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
±
>linear/linear_model/linear_model/marital-status/ReadVariableOpReadVariableOp1linear/linear_model/marital-status/weights/part_0*
dtype0*
_output_shapes
:	А
Т
Hlinear/linear_model/linear_model/marital-status/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
С
Glinear/linear_model/linear_model/marital-status/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
—
Blinear/linear_model/linear_model/marital-status/weighted_sum/SliceSlice?linear/linear_model/linear_model/marital-status/SparseReshape:1Hlinear/linear_model/linear_model/marital-status/weighted_sum/Slice/beginGlinear/linear_model/linear_model/marital-status/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
М
Blinear/linear_model/linear_model/marital-status/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
П
Alinear/linear_model/linear_model/marital-status/weighted_sum/ProdProdBlinear/linear_model/linear_model/marital-status/weighted_sum/SliceBlinear/linear_model/linear_model/marital-status/weighted_sum/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
П
Mlinear/linear_model/linear_model/marital-status/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
М
Jlinear/linear_model/linear_model/marital-status/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
с
Elinear/linear_model/linear_model/marital-status/weighted_sum/GatherV2GatherV2?linear/linear_model/linear_model/marital-status/SparseReshape:1Mlinear/linear_model/linear_model/marital-status/weighted_sum/GatherV2/indicesJlinear/linear_model/linear_model/marital-status/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
П
Clinear/linear_model/linear_model/marital-status/weighted_sum/Cast/xPackAlinear/linear_model/linear_model/marital-status/weighted_sum/ProdElinear/linear_model/linear_model/marital-status/weighted_sum/GatherV2*
T0	*

axis *
N*
_output_shapes
:
ѕ
Jlinear/linear_model/linear_model/marital-status/weighted_sum/SparseReshapeSparseReshape=linear/linear_model/linear_model/marital-status/SparseReshape?linear/linear_model/linear_model/marital-status/SparseReshape:1Clinear/linear_model/linear_model/marital-status/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
’
Slinear/linear_model/linear_model/marital-status/weighted_sum/SparseReshape/IdentityIdentityFlinear/linear_model/linear_model/marital-status/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
Н
Klinear/linear_model/linear_model/marital-status/weighted_sum/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
©
Ilinear/linear_model/linear_model/marital-status/weighted_sum/GreaterEqualGreaterEqualSlinear/linear_model/linear_model/marital-status/weighted_sum/SparseReshape/IdentityKlinear/linear_model/linear_model/marital-status/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
»
Blinear/linear_model/linear_model/marital-status/weighted_sum/WhereWhereIlinear/linear_model/linear_model/marital-status/weighted_sum/GreaterEqual*'
_output_shapes
:€€€€€€€€€*
T0

Э
Jlinear/linear_model/linear_model/marital-status/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ы
Dlinear/linear_model/linear_model/marital-status/weighted_sum/ReshapeReshapeBlinear/linear_model/linear_model/marital-status/weighted_sum/WhereJlinear/linear_model/linear_model/marital-status/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
О
Llinear/linear_model/linear_model/marital-status/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
И
Glinear/linear_model/linear_model/marital-status/weighted_sum/GatherV2_1GatherV2Jlinear/linear_model/linear_model/marital-status/weighted_sum/SparseReshapeDlinear/linear_model/linear_model/marital-status/weighted_sum/ReshapeLlinear/linear_model/linear_model/marital-status/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	
О
Llinear/linear_model/linear_model/marital-status/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Н
Glinear/linear_model/linear_model/marital-status/weighted_sum/GatherV2_2GatherV2Slinear/linear_model/linear_model/marital-status/weighted_sum/SparseReshape/IdentityDlinear/linear_model/linear_model/marital-status/weighted_sum/ReshapeLlinear/linear_model/linear_model/marital-status/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:€€€€€€€€€
ƒ
Elinear/linear_model/linear_model/marital-status/weighted_sum/IdentityIdentityLlinear/linear_model/linear_model/marital-status/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Ш
Vlinear/linear_model/linear_model/marital-status/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Л
dlinear/linear_model/linear_model/marital-status/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsGlinear/linear_model/linear_model/marital-status/weighted_sum/GatherV2_1Glinear/linear_model/linear_model/marital-status/weighted_sum/GatherV2_2Elinear/linear_model/linear_model/marital-status/weighted_sum/IdentityVlinear/linear_model/linear_model/marital-status/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
є
hlinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
ї
jlinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
ї
jlinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
є
blinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicedlinear/linear_model/linear_model/marital-status/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowshlinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/strided_slice/stackjlinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1jlinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*#
_output_shapes
:€€€€€€€€€*
Index0*
T0	*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask 
Т
Ylinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/CastCastblinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/strided_slice*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0	
Щ
[linear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/UniqueUniqueflinear/linear_model/linear_model/marital-status/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
€
jlinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*Q
_classG
ECloc:@linear/linear_model/linear_model/marital-status/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Ґ
elinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2>linear/linear_model/linear_model/marital-status/ReadVariableOp[linear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/Uniquejlinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*Q
_classG
ECloc:@linear/linear_model/linear_model/marital-status/ReadVariableOp*'
_output_shapes
:€€€€€€€€€
У
nlinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityelinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:€€€€€€€€€*
T0
–
Tlinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparseSparseSegmentSumnlinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity]linear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/Unique:1Ylinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:€€€€€€€€€
Э
Llinear/linear_model/linear_model/marital-status/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
«
Flinear/linear_model/linear_model/marital-status/weighted_sum/Reshape_1Reshapeflinear/linear_model/linear_model/marital-status/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Llinear/linear_model/linear_model/marital-status/weighted_sum/Reshape_1/shape*'
_output_shapes
:€€€€€€€€€*
T0
*
Tshape0
÷
Blinear/linear_model/linear_model/marital-status/weighted_sum/ShapeShapeTlinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
Ъ
Plinear/linear_model/linear_model/marital-status/weighted_sum/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
Ь
Rlinear/linear_model/linear_model/marital-status/weighted_sum/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Ь
Rlinear/linear_model/linear_model/marital-status/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
™
Jlinear/linear_model/linear_model/marital-status/weighted_sum/strided_sliceStridedSliceBlinear/linear_model/linear_model/marital-status/weighted_sum/ShapePlinear/linear_model/linear_model/marital-status/weighted_sum/strided_slice/stackRlinear/linear_model/linear_model/marital-status/weighted_sum/strided_slice/stack_1Rlinear/linear_model/linear_model/marital-status/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
Ж
Dlinear/linear_model/linear_model/marital-status/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Ц
Blinear/linear_model/linear_model/marital-status/weighted_sum/stackPackDlinear/linear_model/linear_model/marital-status/weighted_sum/stack/0Jlinear/linear_model/linear_model/marital-status/weighted_sum/strided_slice*
N*
_output_shapes
:*
T0*

axis 
Ґ
Alinear/linear_model/linear_model/marital-status/weighted_sum/TileTileFlinear/linear_model/linear_model/marital-status/weighted_sum/Reshape_1Blinear/linear_model/linear_model/marital-status/weighted_sum/stack*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0
№
Glinear/linear_model/linear_model/marital-status/weighted_sum/zeros_like	ZerosLikeTlinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
Џ
<linear/linear_model/linear_model/marital-status/weighted_sumSelectAlinear/linear_model/linear_model/marital-status/weighted_sum/TileGlinear/linear_model/linear_model/marital-status/weighted_sum/zeros_likeTlinear/linear_model/linear_model/marital-status/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
–
Clinear/linear_model/linear_model/marital-status/weighted_sum/Cast_1Cast?linear/linear_model/linear_model/marital-status/SparseReshape:1*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
Ф
Jlinear/linear_model/linear_model/marital-status/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
У
Ilinear/linear_model/linear_model/marital-status/weighted_sum/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
џ
Dlinear/linear_model/linear_model/marital-status/weighted_sum/Slice_1SliceClinear/linear_model/linear_model/marital-status/weighted_sum/Cast_1Jlinear/linear_model/linear_model/marital-status/weighted_sum/Slice_1/beginIlinear/linear_model/linear_model/marital-status/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ј
Dlinear/linear_model/linear_model/marital-status/weighted_sum/Shape_1Shape<linear/linear_model/linear_model/marital-status/weighted_sum*
T0*
out_type0*
_output_shapes
:
Ф
Jlinear/linear_model/linear_model/marital-status/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ь
Ilinear/linear_model/linear_model/marital-status/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
№
Dlinear/linear_model/linear_model/marital-status/weighted_sum/Slice_2SliceDlinear/linear_model/linear_model/marital-status/weighted_sum/Shape_1Jlinear/linear_model/linear_model/marital-status/weighted_sum/Slice_2/beginIlinear/linear_model/linear_model/marital-status/weighted_sum/Slice_2/size*
_output_shapes
:*
Index0*
T0
К
Hlinear/linear_model/linear_model/marital-status/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
я
Clinear/linear_model/linear_model/marital-status/weighted_sum/concatConcatV2Dlinear/linear_model/linear_model/marital-status/weighted_sum/Slice_1Dlinear/linear_model/linear_model/marital-status/weighted_sum/Slice_2Hlinear/linear_model/linear_model/marital-status/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ф
Flinear/linear_model/linear_model/marital-status/weighted_sum/Reshape_2Reshape<linear/linear_model/linear_model/marital-status/weighted_sumClinear/linear_model/linear_model/marital-status/weighted_sum/concat*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Ў
?linear/linear_model/occupation/weights/part_0/Initializer/zerosConst*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0*
valueB	А*    *
dtype0*
_output_shapes
:	А
К
-linear/linear_model/occupation/weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *>
shared_name/-linear/linear_model/occupation/weights/part_0*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0*
	container *
shape:	А
Ђ
Nlinear/linear_model/occupation/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp-linear/linear_model/occupation/weights/part_0*
_output_shapes
: 
З
4linear/linear_model/occupation/weights/part_0/AssignAssignVariableOp-linear/linear_model/occupation/weights/part_0?linear/linear_model/occupation/weights/part_0/Initializer/zeros*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0*
dtype0
т
Alinear/linear_model/occupation/weights/part_0/Read/ReadVariableOpReadVariableOp-linear/linear_model/occupation/weights/part_0*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0*
dtype0*
_output_shapes
:	А
Ґ
2linear/linear_model/linear_model/occupation/lookupStringToHashBucketFastParseExample/ParseExample:7*#
_output_shapes
:€€€€€€€€€*
num_bucketsА
†
6linear/linear_model/linear_model/occupation/Shape/CastCastParseExample/ParseExample:12*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
Й
?linear/linear_model/linear_model/occupation/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Л
Alinear/linear_model/linear_model/occupation/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Л
Alinear/linear_model/linear_model/occupation/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Џ
9linear/linear_model/linear_model/occupation/strided_sliceStridedSlice6linear/linear_model/linear_model/occupation/Shape/Cast?linear/linear_model/linear_model/occupation/strided_slice/stackAlinear/linear_model/linear_model/occupation/strided_slice/stack_1Alinear/linear_model/linear_model/occupation/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

4linear/linear_model/linear_model/occupation/Cast/x/1Const*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
е
2linear/linear_model/linear_model/occupation/Cast/xPack9linear/linear_model/linear_model/occupation/strided_slice4linear/linear_model/linear_model/occupation/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
∞
0linear/linear_model/linear_model/occupation/CastCast2linear/linear_model/linear_model/occupation/Cast/x*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
ж
9linear/linear_model/linear_model/occupation/SparseReshapeSparseReshapeParseExample/ParseExample:2ParseExample/ParseExample:120linear/linear_model/linear_model/occupation/Cast*-
_output_shapes
:€€€€€€€€€:
∞
Blinear/linear_model/linear_model/occupation/SparseReshape/IdentityIdentity2linear/linear_model/linear_model/occupation/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
©
:linear/linear_model/linear_model/occupation/ReadVariableOpReadVariableOp-linear/linear_model/occupation/weights/part_0*
dtype0*
_output_shapes
:	А
О
Dlinear/linear_model/linear_model/occupation/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Н
Clinear/linear_model/linear_model/occupation/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Ѕ
>linear/linear_model/linear_model/occupation/weighted_sum/SliceSlice;linear/linear_model/linear_model/occupation/SparseReshape:1Dlinear/linear_model/linear_model/occupation/weighted_sum/Slice/beginClinear/linear_model/linear_model/occupation/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
И
>linear/linear_model/linear_model/occupation/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Г
=linear/linear_model/linear_model/occupation/weighted_sum/ProdProd>linear/linear_model/linear_model/occupation/weighted_sum/Slice>linear/linear_model/linear_model/occupation/weighted_sum/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
Л
Ilinear/linear_model/linear_model/occupation/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
И
Flinear/linear_model/linear_model/occupation/weighted_sum/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
б
Alinear/linear_model/linear_model/occupation/weighted_sum/GatherV2GatherV2;linear/linear_model/linear_model/occupation/SparseReshape:1Ilinear/linear_model/linear_model/occupation/weighted_sum/GatherV2/indicesFlinear/linear_model/linear_model/occupation/weighted_sum/GatherV2/axis*
Tparams0	*
_output_shapes
: *
Taxis0*
Tindices0
Г
?linear/linear_model/linear_model/occupation/weighted_sum/Cast/xPack=linear/linear_model/linear_model/occupation/weighted_sum/ProdAlinear/linear_model/linear_model/occupation/weighted_sum/GatherV2*
N*
_output_shapes
:*
T0	*

axis 
њ
Flinear/linear_model/linear_model/occupation/weighted_sum/SparseReshapeSparseReshape9linear/linear_model/linear_model/occupation/SparseReshape;linear/linear_model/linear_model/occupation/SparseReshape:1?linear/linear_model/linear_model/occupation/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
Ќ
Olinear/linear_model/linear_model/occupation/weighted_sum/SparseReshape/IdentityIdentityBlinear/linear_model/linear_model/occupation/SparseReshape/Identity*#
_output_shapes
:€€€€€€€€€*
T0	
Й
Glinear/linear_model/linear_model/occupation/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Э
Elinear/linear_model/linear_model/occupation/weighted_sum/GreaterEqualGreaterEqualOlinear/linear_model/linear_model/occupation/weighted_sum/SparseReshape/IdentityGlinear/linear_model/linear_model/occupation/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
ј
>linear/linear_model/linear_model/occupation/weighted_sum/WhereWhereElinear/linear_model/linear_model/occupation/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
Щ
Flinear/linear_model/linear_model/occupation/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
П
@linear/linear_model/linear_model/occupation/weighted_sum/ReshapeReshape>linear/linear_model/linear_model/occupation/weighted_sum/WhereFlinear/linear_model/linear_model/occupation/weighted_sum/Reshape/shape*#
_output_shapes
:€€€€€€€€€*
T0	*
Tshape0
К
Hlinear/linear_model/linear_model/occupation/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ш
Clinear/linear_model/linear_model/occupation/weighted_sum/GatherV2_1GatherV2Flinear/linear_model/linear_model/occupation/weighted_sum/SparseReshape@linear/linear_model/linear_model/occupation/weighted_sum/ReshapeHlinear/linear_model/linear_model/occupation/weighted_sum/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	
К
Hlinear/linear_model/linear_model/occupation/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
э
Clinear/linear_model/linear_model/occupation/weighted_sum/GatherV2_2GatherV2Olinear/linear_model/linear_model/occupation/weighted_sum/SparseReshape/Identity@linear/linear_model/linear_model/occupation/weighted_sum/ReshapeHlinear/linear_model/linear_model/occupation/weighted_sum/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	
Љ
Alinear/linear_model/linear_model/occupation/weighted_sum/IdentityIdentityHlinear/linear_model/linear_model/occupation/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
Ф
Rlinear/linear_model/linear_model/occupation/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ч
`linear/linear_model/linear_model/occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsClinear/linear_model/linear_model/occupation/weighted_sum/GatherV2_1Clinear/linear_model/linear_model/occupation/weighted_sum/GatherV2_2Alinear/linear_model/linear_model/occupation/weighted_sum/IdentityRlinear/linear_model/linear_model/occupation/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
µ
dlinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Ј
flinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ј
flinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
•
^linear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice`linear/linear_model/linear_model/occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsdlinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stackflinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1flinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
T0	*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€
К
Ulinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/CastCast^linear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0
С
Wlinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/UniqueUniqueblinear/linear_model/linear_model/occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ч
flinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*M
_classC
A?loc:@linear/linear_model/linear_model/occupation/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
О
alinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2:linear/linear_model/linear_model/occupation/ReadVariableOpWlinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/Uniqueflinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	*
Tparams0*M
_classC
A?loc:@linear/linear_model/linear_model/occupation/ReadVariableOp
Л
jlinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityalinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:€€€€€€€€€
ј
Plinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparseSparseSegmentSumjlinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityYlinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/Unique:1Ulinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:€€€€€€€€€
Щ
Hlinear/linear_model/linear_model/occupation/weighted_sum/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"€€€€   
ї
Blinear/linear_model/linear_model/occupation/weighted_sum/Reshape_1Reshapeblinear/linear_model/linear_model/occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Hlinear/linear_model/linear_model/occupation/weighted_sum/Reshape_1/shape*'
_output_shapes
:€€€€€€€€€*
T0
*
Tshape0
ќ
>linear/linear_model/linear_model/occupation/weighted_sum/ShapeShapePlinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
Ц
Llinear/linear_model/linear_model/occupation/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ш
Nlinear/linear_model/linear_model/occupation/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ш
Nlinear/linear_model/linear_model/occupation/weighted_sum/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ц
Flinear/linear_model/linear_model/occupation/weighted_sum/strided_sliceStridedSlice>linear/linear_model/linear_model/occupation/weighted_sum/ShapeLlinear/linear_model/linear_model/occupation/weighted_sum/strided_slice/stackNlinear/linear_model/linear_model/occupation/weighted_sum/strided_slice/stack_1Nlinear/linear_model/linear_model/occupation/weighted_sum/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
В
@linear/linear_model/linear_model/occupation/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
К
>linear/linear_model/linear_model/occupation/weighted_sum/stackPack@linear/linear_model/linear_model/occupation/weighted_sum/stack/0Flinear/linear_model/linear_model/occupation/weighted_sum/strided_slice*
T0*

axis *
N*
_output_shapes
:
Ц
=linear/linear_model/linear_model/occupation/weighted_sum/TileTileBlinear/linear_model/linear_model/occupation/weighted_sum/Reshape_1>linear/linear_model/linear_model/occupation/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
‘
Clinear/linear_model/linear_model/occupation/weighted_sum/zeros_like	ZerosLikePlinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
 
8linear/linear_model/linear_model/occupation/weighted_sumSelect=linear/linear_model/linear_model/occupation/weighted_sum/TileClinear/linear_model/linear_model/occupation/weighted_sum/zeros_likePlinear/linear_model/linear_model/occupation/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
»
?linear/linear_model/linear_model/occupation/weighted_sum/Cast_1Cast;linear/linear_model/linear_model/occupation/SparseReshape:1*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
Р
Flinear/linear_model/linear_model/occupation/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
П
Elinear/linear_model/linear_model/occupation/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Ћ
@linear/linear_model/linear_model/occupation/weighted_sum/Slice_1Slice?linear/linear_model/linear_model/occupation/weighted_sum/Cast_1Flinear/linear_model/linear_model/occupation/weighted_sum/Slice_1/beginElinear/linear_model/linear_model/occupation/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Є
@linear/linear_model/linear_model/occupation/weighted_sum/Shape_1Shape8linear/linear_model/linear_model/occupation/weighted_sum*
_output_shapes
:*
T0*
out_type0
Р
Flinear/linear_model/linear_model/occupation/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ш
Elinear/linear_model/linear_model/occupation/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
ћ
@linear/linear_model/linear_model/occupation/weighted_sum/Slice_2Slice@linear/linear_model/linear_model/occupation/weighted_sum/Shape_1Flinear/linear_model/linear_model/occupation/weighted_sum/Slice_2/beginElinear/linear_model/linear_model/occupation/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Ж
Dlinear/linear_model/linear_model/occupation/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ѕ
?linear/linear_model/linear_model/occupation/weighted_sum/concatConcatV2@linear/linear_model/linear_model/occupation/weighted_sum/Slice_1@linear/linear_model/linear_model/occupation/weighted_sum/Slice_2Dlinear/linear_model/linear_model/occupation/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
И
Blinear/linear_model/linear_model/occupation/weighted_sum/Reshape_2Reshape8linear/linear_model/linear_model/occupation/weighted_sum?linear/linear_model/linear_model/occupation/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
№
Alinear/linear_model/relationship/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:	А*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0*
valueB	А*    
Р
/linear/linear_model/relationship/weights/part_0VarHandleOp*
	container *
shape:	А*
dtype0*
_output_shapes
: *@
shared_name1/linear/linear_model/relationship/weights/part_0*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0
ѓ
Plinear/linear_model/relationship/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp/linear/linear_model/relationship/weights/part_0*
_output_shapes
: 
П
6linear/linear_model/relationship/weights/part_0/AssignAssignVariableOp/linear/linear_model/relationship/weights/part_0Alinear/linear_model/relationship/weights/part_0/Initializer/zeros*
dtype0*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0
ш
Clinear/linear_model/relationship/weights/part_0/Read/ReadVariableOpReadVariableOp/linear/linear_model/relationship/weights/part_0*
dtype0*
_output_shapes
:	А*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0
§
4linear/linear_model/linear_model/relationship/lookupStringToHashBucketFastParseExample/ParseExample:8*#
_output_shapes
:€€€€€€€€€*
num_bucketsА
Ґ
8linear/linear_model/linear_model/relationship/Shape/CastCastParseExample/ParseExample:13*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
Л
Alinear/linear_model/linear_model/relationship/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Clinear/linear_model/linear_model/relationship/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Clinear/linear_model/linear_model/relationship/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
д
;linear/linear_model/linear_model/relationship/strided_sliceStridedSlice8linear/linear_model/linear_model/relationship/Shape/CastAlinear/linear_model/linear_model/relationship/strided_slice/stackClinear/linear_model/linear_model/relationship/strided_slice/stack_1Clinear/linear_model/linear_model/relationship/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Б
6linear/linear_model/linear_model/relationship/Cast/x/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
л
4linear/linear_model/linear_model/relationship/Cast/xPack;linear/linear_model/linear_model/relationship/strided_slice6linear/linear_model/linear_model/relationship/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
і
2linear/linear_model/linear_model/relationship/CastCast4linear/linear_model/linear_model/relationship/Cast/x*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
к
;linear/linear_model/linear_model/relationship/SparseReshapeSparseReshapeParseExample/ParseExample:3ParseExample/ParseExample:132linear/linear_model/linear_model/relationship/Cast*-
_output_shapes
:€€€€€€€€€:
і
Dlinear/linear_model/linear_model/relationship/SparseReshape/IdentityIdentity4linear/linear_model/linear_model/relationship/lookup*#
_output_shapes
:€€€€€€€€€*
T0	
≠
<linear/linear_model/linear_model/relationship/ReadVariableOpReadVariableOp/linear/linear_model/relationship/weights/part_0*
dtype0*
_output_shapes
:	А
Р
Flinear/linear_model/linear_model/relationship/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
П
Elinear/linear_model/linear_model/relationship/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
…
@linear/linear_model/linear_model/relationship/weighted_sum/SliceSlice=linear/linear_model/linear_model/relationship/SparseReshape:1Flinear/linear_model/linear_model/relationship/weighted_sum/Slice/beginElinear/linear_model/linear_model/relationship/weighted_sum/Slice/size*
_output_shapes
:*
Index0*
T0	
К
@linear/linear_model/linear_model/relationship/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Й
?linear/linear_model/linear_model/relationship/weighted_sum/ProdProd@linear/linear_model/linear_model/relationship/weighted_sum/Slice@linear/linear_model/linear_model/relationship/weighted_sum/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
Н
Klinear/linear_model/linear_model/relationship/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
К
Hlinear/linear_model/linear_model/relationship/weighted_sum/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
й
Clinear/linear_model/linear_model/relationship/weighted_sum/GatherV2GatherV2=linear/linear_model/linear_model/relationship/SparseReshape:1Klinear/linear_model/linear_model/relationship/weighted_sum/GatherV2/indicesHlinear/linear_model/linear_model/relationship/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
Й
Alinear/linear_model/linear_model/relationship/weighted_sum/Cast/xPack?linear/linear_model/linear_model/relationship/weighted_sum/ProdClinear/linear_model/linear_model/relationship/weighted_sum/GatherV2*
N*
_output_shapes
:*
T0	*

axis 
«
Hlinear/linear_model/linear_model/relationship/weighted_sum/SparseReshapeSparseReshape;linear/linear_model/linear_model/relationship/SparseReshape=linear/linear_model/linear_model/relationship/SparseReshape:1Alinear/linear_model/linear_model/relationship/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
—
Qlinear/linear_model/linear_model/relationship/weighted_sum/SparseReshape/IdentityIdentityDlinear/linear_model/linear_model/relationship/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
Л
Ilinear/linear_model/linear_model/relationship/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
£
Glinear/linear_model/linear_model/relationship/weighted_sum/GreaterEqualGreaterEqualQlinear/linear_model/linear_model/relationship/weighted_sum/SparseReshape/IdentityIlinear/linear_model/linear_model/relationship/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
ƒ
@linear/linear_model/linear_model/relationship/weighted_sum/WhereWhereGlinear/linear_model/linear_model/relationship/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
Ы
Hlinear/linear_model/linear_model/relationship/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Х
Blinear/linear_model/linear_model/relationship/weighted_sum/ReshapeReshape@linear/linear_model/linear_model/relationship/weighted_sum/WhereHlinear/linear_model/linear_model/relationship/weighted_sum/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:€€€€€€€€€
М
Jlinear/linear_model/linear_model/relationship/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
А
Elinear/linear_model/linear_model/relationship/weighted_sum/GatherV2_1GatherV2Hlinear/linear_model/linear_model/relationship/weighted_sum/SparseReshapeBlinear/linear_model/linear_model/relationship/weighted_sum/ReshapeJlinear/linear_model/linear_model/relationship/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€
М
Jlinear/linear_model/linear_model/relationship/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Е
Elinear/linear_model/linear_model/relationship/weighted_sum/GatherV2_2GatherV2Qlinear/linear_model/linear_model/relationship/weighted_sum/SparseReshape/IdentityBlinear/linear_model/linear_model/relationship/weighted_sum/ReshapeJlinear/linear_model/linear_model/relationship/weighted_sum/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	
ј
Clinear/linear_model/linear_model/relationship/weighted_sum/IdentityIdentityJlinear/linear_model/linear_model/relationship/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
Ц
Tlinear/linear_model/linear_model/relationship/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Б
blinear/linear_model/linear_model/relationship/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsElinear/linear_model/linear_model/relationship/weighted_sum/GatherV2_1Elinear/linear_model/linear_model/relationship/weighted_sum/GatherV2_2Clinear/linear_model/linear_model/relationship/weighted_sum/IdentityTlinear/linear_model/linear_model/relationship/weighted_sum/SparseFillEmptyRows/Const*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
T0	
Ј
flinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
є
hlinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
є
hlinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ѓ
`linear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceblinear/linear_model/linear_model/relationship/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsflinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stackhlinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1hlinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€
О
Wlinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/CastCast`linear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0	
Х
Ylinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/UniqueUniquedlinear/linear_model/linear_model/relationship/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
out_idx0*
T0	
ы
hlinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*O
_classE
CAloc:@linear/linear_model/linear_model/relationship/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Ш
clinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV2<linear/linear_model/linear_model/relationship/ReadVariableOpYlinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/Uniquehlinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*O
_classE
CAloc:@linear/linear_model/linear_model/relationship/ReadVariableOp*'
_output_shapes
:€€€€€€€€€
П
llinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityclinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:€€€€€€€€€
»
Rlinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparseSparseSegmentSumllinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity[linear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/Unique:1Wlinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:€€€€€€€€€*

Tidx0*
T0
Ы
Jlinear/linear_model/linear_model/relationship/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
Ѕ
Dlinear/linear_model/linear_model/relationship/weighted_sum/Reshape_1Reshapedlinear/linear_model/linear_model/relationship/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Jlinear/linear_model/linear_model/relationship/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
“
@linear/linear_model/linear_model/relationship/weighted_sum/ShapeShapeRlinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse*
_output_shapes
:*
T0*
out_type0
Ш
Nlinear/linear_model/linear_model/relationship/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ъ
Plinear/linear_model/linear_model/relationship/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ъ
Plinear/linear_model/linear_model/relationship/weighted_sum/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
†
Hlinear/linear_model/linear_model/relationship/weighted_sum/strided_sliceStridedSlice@linear/linear_model/linear_model/relationship/weighted_sum/ShapeNlinear/linear_model/linear_model/relationship/weighted_sum/strided_slice/stackPlinear/linear_model/linear_model/relationship/weighted_sum/strided_slice/stack_1Plinear/linear_model/linear_model/relationship/weighted_sum/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
Д
Blinear/linear_model/linear_model/relationship/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Р
@linear/linear_model/linear_model/relationship/weighted_sum/stackPackBlinear/linear_model/linear_model/relationship/weighted_sum/stack/0Hlinear/linear_model/linear_model/relationship/weighted_sum/strided_slice*
N*
_output_shapes
:*
T0*

axis 
Ь
?linear/linear_model/linear_model/relationship/weighted_sum/TileTileDlinear/linear_model/linear_model/relationship/weighted_sum/Reshape_1@linear/linear_model/linear_model/relationship/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ў
Elinear/linear_model/linear_model/relationship/weighted_sum/zeros_like	ZerosLikeRlinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
“
:linear/linear_model/linear_model/relationship/weighted_sumSelect?linear/linear_model/linear_model/relationship/weighted_sum/TileElinear/linear_model/linear_model/relationship/weighted_sum/zeros_likeRlinear/linear_model/linear_model/relationship/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
ћ
Alinear/linear_model/linear_model/relationship/weighted_sum/Cast_1Cast=linear/linear_model/linear_model/relationship/SparseReshape:1*
Truncate( *
_output_shapes
:*

DstT0*

SrcT0	
Т
Hlinear/linear_model/linear_model/relationship/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
С
Glinear/linear_model/linear_model/relationship/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
”
Blinear/linear_model/linear_model/relationship/weighted_sum/Slice_1SliceAlinear/linear_model/linear_model/relationship/weighted_sum/Cast_1Hlinear/linear_model/linear_model/relationship/weighted_sum/Slice_1/beginGlinear/linear_model/linear_model/relationship/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Љ
Blinear/linear_model/linear_model/relationship/weighted_sum/Shape_1Shape:linear/linear_model/linear_model/relationship/weighted_sum*
T0*
out_type0*
_output_shapes
:
Т
Hlinear/linear_model/linear_model/relationship/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ъ
Glinear/linear_model/linear_model/relationship/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
‘
Blinear/linear_model/linear_model/relationship/weighted_sum/Slice_2SliceBlinear/linear_model/linear_model/relationship/weighted_sum/Shape_1Hlinear/linear_model/linear_model/relationship/weighted_sum/Slice_2/beginGlinear/linear_model/linear_model/relationship/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
И
Flinear/linear_model/linear_model/relationship/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
„
Alinear/linear_model/linear_model/relationship/weighted_sum/concatConcatV2Blinear/linear_model/linear_model/relationship/weighted_sum/Slice_1Blinear/linear_model/linear_model/relationship/weighted_sum/Slice_2Flinear/linear_model/linear_model/relationship/weighted_sum/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
О
Dlinear/linear_model/linear_model/relationship/weighted_sum/Reshape_2Reshape:linear/linear_model/linear_model/relationship/weighted_sumAlinear/linear_model/linear_model/relationship/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
÷
>linear/linear_model/workclass/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:	А*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0*
valueB	А*    
З
,linear/linear_model/workclass/weights/part_0VarHandleOp*
dtype0*
_output_shapes
: *=
shared_name.,linear/linear_model/workclass/weights/part_0*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0*
	container *
shape:	А
©
Mlinear/linear_model/workclass/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp,linear/linear_model/workclass/weights/part_0*
_output_shapes
: 
Г
3linear/linear_model/workclass/weights/part_0/AssignAssignVariableOp,linear/linear_model/workclass/weights/part_0>linear/linear_model/workclass/weights/part_0/Initializer/zeros*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0*
dtype0
п
@linear/linear_model/workclass/weights/part_0/Read/ReadVariableOpReadVariableOp,linear/linear_model/workclass/weights/part_0*
dtype0*
_output_shapes
:	А*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0
°
1linear/linear_model/linear_model/workclass/lookupStringToHashBucketFastParseExample/ParseExample:9*#
_output_shapes
:€€€€€€€€€*
num_bucketsА
Я
5linear/linear_model/linear_model/workclass/Shape/CastCastParseExample/ParseExample:14*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
И
>linear/linear_model/linear_model/workclass/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
К
@linear/linear_model/linear_model/workclass/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
К
@linear/linear_model/linear_model/workclass/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
’
8linear/linear_model/linear_model/workclass/strided_sliceStridedSlice5linear/linear_model/linear_model/workclass/Shape/Cast>linear/linear_model/linear_model/workclass/strided_slice/stack@linear/linear_model/linear_model/workclass/strided_slice/stack_1@linear/linear_model/linear_model/workclass/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
~
3linear/linear_model/linear_model/workclass/Cast/x/1Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
в
1linear/linear_model/linear_model/workclass/Cast/xPack8linear/linear_model/linear_model/workclass/strided_slice3linear/linear_model/linear_model/workclass/Cast/x/1*
T0*

axis *
N*
_output_shapes
:
Ѓ
/linear/linear_model/linear_model/workclass/CastCast1linear/linear_model/linear_model/workclass/Cast/x*

SrcT0*
Truncate( *
_output_shapes
:*

DstT0	
д
8linear/linear_model/linear_model/workclass/SparseReshapeSparseReshapeParseExample/ParseExample:4ParseExample/ParseExample:14/linear/linear_model/linear_model/workclass/Cast*-
_output_shapes
:€€€€€€€€€:
Ѓ
Alinear/linear_model/linear_model/workclass/SparseReshape/IdentityIdentity1linear/linear_model/linear_model/workclass/lookup*
T0	*#
_output_shapes
:€€€€€€€€€
І
9linear/linear_model/linear_model/workclass/ReadVariableOpReadVariableOp,linear/linear_model/workclass/weights/part_0*
dtype0*
_output_shapes
:	А
Н
Clinear/linear_model/linear_model/workclass/weighted_sum/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
М
Blinear/linear_model/linear_model/workclass/weighted_sum/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
љ
=linear/linear_model/linear_model/workclass/weighted_sum/SliceSlice:linear/linear_model/linear_model/workclass/SparseReshape:1Clinear/linear_model/linear_model/workclass/weighted_sum/Slice/beginBlinear/linear_model/linear_model/workclass/weighted_sum/Slice/size*
_output_shapes
:*
Index0*
T0	
З
=linear/linear_model/linear_model/workclass/weighted_sum/ConstConst*
valueB: *
dtype0*
_output_shapes
:
А
<linear/linear_model/linear_model/workclass/weighted_sum/ProdProd=linear/linear_model/linear_model/workclass/weighted_sum/Slice=linear/linear_model/linear_model/workclass/weighted_sum/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
К
Hlinear/linear_model/linear_model/workclass/weighted_sum/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
З
Elinear/linear_model/linear_model/workclass/weighted_sum/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ё
@linear/linear_model/linear_model/workclass/weighted_sum/GatherV2GatherV2:linear/linear_model/linear_model/workclass/SparseReshape:1Hlinear/linear_model/linear_model/workclass/weighted_sum/GatherV2/indicesElinear/linear_model/linear_model/workclass/weighted_sum/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0
А
>linear/linear_model/linear_model/workclass/weighted_sum/Cast/xPack<linear/linear_model/linear_model/workclass/weighted_sum/Prod@linear/linear_model/linear_model/workclass/weighted_sum/GatherV2*
T0	*

axis *
N*
_output_shapes
:
ї
Elinear/linear_model/linear_model/workclass/weighted_sum/SparseReshapeSparseReshape8linear/linear_model/linear_model/workclass/SparseReshape:linear/linear_model/linear_model/workclass/SparseReshape:1>linear/linear_model/linear_model/workclass/weighted_sum/Cast/x*-
_output_shapes
:€€€€€€€€€:
Ћ
Nlinear/linear_model/linear_model/workclass/weighted_sum/SparseReshape/IdentityIdentityAlinear/linear_model/linear_model/workclass/SparseReshape/Identity*
T0	*#
_output_shapes
:€€€€€€€€€
И
Flinear/linear_model/linear_model/workclass/weighted_sum/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ъ
Dlinear/linear_model/linear_model/workclass/weighted_sum/GreaterEqualGreaterEqualNlinear/linear_model/linear_model/workclass/weighted_sum/SparseReshape/IdentityFlinear/linear_model/linear_model/workclass/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
Њ
=linear/linear_model/linear_model/workclass/weighted_sum/WhereWhereDlinear/linear_model/linear_model/workclass/weighted_sum/GreaterEqual*
T0
*'
_output_shapes
:€€€€€€€€€
Ш
Elinear/linear_model/linear_model/workclass/weighted_sum/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
М
?linear/linear_model/linear_model/workclass/weighted_sum/ReshapeReshape=linear/linear_model/linear_model/workclass/weighted_sum/WhereElinear/linear_model/linear_model/workclass/weighted_sum/Reshape/shape*#
_output_shapes
:€€€€€€€€€*
T0	*
Tshape0
Й
Glinear/linear_model/linear_model/workclass/weighted_sum/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ф
Blinear/linear_model/linear_model/workclass/weighted_sum/GatherV2_1GatherV2Elinear/linear_model/linear_model/workclass/weighted_sum/SparseReshape?linear/linear_model/linear_model/workclass/weighted_sum/ReshapeGlinear/linear_model/linear_model/workclass/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€
Й
Glinear/linear_model/linear_model/workclass/weighted_sum/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
щ
Blinear/linear_model/linear_model/workclass/weighted_sum/GatherV2_2GatherV2Nlinear/linear_model/linear_model/workclass/weighted_sum/SparseReshape/Identity?linear/linear_model/linear_model/workclass/weighted_sum/ReshapeGlinear/linear_model/linear_model/workclass/weighted_sum/GatherV2_2/axis*#
_output_shapes
:€€€€€€€€€*
Taxis0*
Tindices0	*
Tparams0	
Ї
@linear/linear_model/linear_model/workclass/weighted_sum/IdentityIdentityGlinear/linear_model/linear_model/workclass/weighted_sum/SparseReshape:1*
_output_shapes
:*
T0	
У
Qlinear/linear_model/linear_model/workclass/weighted_sum/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
т
_linear/linear_model/linear_model/workclass/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsBlinear/linear_model/linear_model/workclass/weighted_sum/GatherV2_1Blinear/linear_model/linear_model/workclass/weighted_sum/GatherV2_2@linear/linear_model/linear_model/workclass/weighted_sum/IdentityQlinear/linear_model/linear_model/workclass/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
і
clinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
ґ
elinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
ґ
elinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
†
]linear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice_linear/linear_model/linear_model/workclass/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsclinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stackelinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1elinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€*
Index0*
T0	
И
Tlinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/CastCast]linear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice*

SrcT0	*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0
П
Vlinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/UniqueUniquealinear/linear_model/linear_model/workclass/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
х
elinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/embedding_lookup/axisConst*L
_classB
@>loc:@linear/linear_model/linear_model/workclass/ReadVariableOp*
value	B : *
dtype0*
_output_shapes
: 
Й
`linear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherV29linear/linear_model/linear_model/workclass/ReadVariableOpVlinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/Uniqueelinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*L
_classB
@>loc:@linear/linear_model/linear_model/workclass/ReadVariableOp*'
_output_shapes
:€€€€€€€€€
Й
ilinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentity`linear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:€€€€€€€€€
Љ
Olinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparseSparseSegmentSumilinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityXlinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/Unique:1Tlinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:€€€€€€€€€*

Tidx0*
T0
Ш
Glinear/linear_model/linear_model/workclass/weighted_sum/Reshape_1/shapeConst*
valueB"€€€€   *
dtype0*
_output_shapes
:
Є
Alinear/linear_model/linear_model/workclass/weighted_sum/Reshape_1Reshapealinear/linear_model/linear_model/workclass/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Glinear/linear_model/linear_model/workclass/weighted_sum/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:€€€€€€€€€
ћ
=linear/linear_model/linear_model/workclass/weighted_sum/ShapeShapeOlinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
Х
Klinear/linear_model/linear_model/workclass/weighted_sum/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ч
Mlinear/linear_model/linear_model/workclass/weighted_sum/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ч
Mlinear/linear_model/linear_model/workclass/weighted_sum/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
С
Elinear/linear_model/linear_model/workclass/weighted_sum/strided_sliceStridedSlice=linear/linear_model/linear_model/workclass/weighted_sum/ShapeKlinear/linear_model/linear_model/workclass/weighted_sum/strided_slice/stackMlinear/linear_model/linear_model/workclass/weighted_sum/strided_slice/stack_1Mlinear/linear_model/linear_model/workclass/weighted_sum/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
Б
?linear/linear_model/linear_model/workclass/weighted_sum/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
З
=linear/linear_model/linear_model/workclass/weighted_sum/stackPack?linear/linear_model/linear_model/workclass/weighted_sum/stack/0Elinear/linear_model/linear_model/workclass/weighted_sum/strided_slice*
N*
_output_shapes
:*
T0*

axis 
У
<linear/linear_model/linear_model/workclass/weighted_sum/TileTileAlinear/linear_model/linear_model/workclass/weighted_sum/Reshape_1=linear/linear_model/linear_model/workclass/weighted_sum/stack*
T0
*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0
“
Blinear/linear_model/linear_model/workclass/weighted_sum/zeros_like	ZerosLikeOlinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€
∆
7linear/linear_model/linear_model/workclass/weighted_sumSelect<linear/linear_model/linear_model/workclass/weighted_sum/TileBlinear/linear_model/linear_model/workclass/weighted_sum/zeros_likeOlinear/linear_model/linear_model/workclass/weighted_sum/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€*
T0
∆
>linear/linear_model/linear_model/workclass/weighted_sum/Cast_1Cast:linear/linear_model/linear_model/workclass/SparseReshape:1*

SrcT0	*
Truncate( *
_output_shapes
:*

DstT0
П
Elinear/linear_model/linear_model/workclass/weighted_sum/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
О
Dlinear/linear_model/linear_model/workclass/weighted_sum/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
«
?linear/linear_model/linear_model/workclass/weighted_sum/Slice_1Slice>linear/linear_model/linear_model/workclass/weighted_sum/Cast_1Elinear/linear_model/linear_model/workclass/weighted_sum/Slice_1/beginDlinear/linear_model/linear_model/workclass/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ґ
?linear/linear_model/linear_model/workclass/weighted_sum/Shape_1Shape7linear/linear_model/linear_model/workclass/weighted_sum*
T0*
out_type0*
_output_shapes
:
П
Elinear/linear_model/linear_model/workclass/weighted_sum/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Ч
Dlinear/linear_model/linear_model/workclass/weighted_sum/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
»
?linear/linear_model/linear_model/workclass/weighted_sum/Slice_2Slice?linear/linear_model/linear_model/workclass/weighted_sum/Shape_1Elinear/linear_model/linear_model/workclass/weighted_sum/Slice_2/beginDlinear/linear_model/linear_model/workclass/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
Е
Clinear/linear_model/linear_model/workclass/weighted_sum/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ћ
>linear/linear_model/linear_model/workclass/weighted_sum/concatConcatV2?linear/linear_model/linear_model/workclass/weighted_sum/Slice_1?linear/linear_model/linear_model/workclass/weighted_sum/Slice_2Clinear/linear_model/linear_model/workclass/weighted_sum/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Е
Alinear/linear_model/linear_model/workclass/weighted_sum/Reshape_2Reshape7linear/linear_model/linear_model/workclass/weighted_sum>linear/linear_model/linear_model/workclass/weighted_sum/concat*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
З
5linear/linear_model/linear_model/weighted_sum_no_biasAddNFlinear/linear_model/linear_model/age_bucketized/weighted_sum/Reshape_2`linear/linear_model/linear_model/age_bucketized_X_capital-gain_bucketized/weighted_sum/Reshape_2Olinear/linear_model/linear_model/capital-gain_bucketized/weighted_sum/Reshape_2ilinear/linear_model/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weighted_sum/Reshape_2Olinear/linear_model/linear_model/capital-loss_bucketized/weighted_sum/Reshape_2Alinear/linear_model/linear_model/education/weighted_sum/Reshape_2Flinear/linear_model/linear_model/marital-status/weighted_sum/Reshape_2Blinear/linear_model/linear_model/occupation/weighted_sum/Reshape_2Dlinear/linear_model/linear_model/relationship/weighted_sum/Reshape_2Alinear/linear_model/linear_model/workclass/weighted_sum/Reshape_2*
T0*
N
*'
_output_shapes
:€€€€€€€€€
¬
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
valueB*    *
dtype0*
_output_shapes
:
у
'linear/linear_model/bias_weights/part_0VarHandleOp*8
shared_name)'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container *
shape:*
dtype0*
_output_shapes
: 
Я
Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
п
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
dtype0
џ
;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0
У
/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
В
 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
T0*
_output_shapes
:
Џ
-linear/linear_model/linear_model/weighted_sumBiasAdd5linear/linear_model/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
y
linear/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
d
linear/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
f
linear/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
f
linear/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
•
linear/strided_sliceStridedSlicelinear/ReadVariableOplinear/strided_slice/stacklinear/strided_slice/stack_1linear/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
\
linear/bias/tagsConst*
valueB Blinear/bias*
dtype0*
_output_shapes
: 
e
linear/biasScalarSummarylinear/bias/tagslinear/strided_slice*
T0*
_output_shapes
: 
П
linear/Reshape/ReadVariableOpReadVariableOp1linear/linear_model/age_bucketized/weights/part_0*
dtype0*
_output_shapes

:
g
linear/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Б
linear/ReshapeReshapelinear/Reshape/ReadVariableOplinear/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
Ђ
linear/Reshape_1/ReadVariableOpReadVariableOpKlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0*
dtype0*
_output_shapes

:$
i
linear/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
З
linear/Reshape_1Reshapelinear/Reshape_1/ReadVariableOplinear/Reshape_1/shape*
_output_shapes
:$*
T0*
Tshape0
Ъ
linear/Reshape_2/ReadVariableOpReadVariableOp:linear/linear_model/capital-gain_bucketized/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_2/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
З
linear/Reshape_2Reshapelinear/Reshape_2/ReadVariableOplinear/Reshape_2/shape*
T0*
Tshape0*
_output_shapes
:
і
linear/Reshape_3/ReadVariableOpReadVariableOpTlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_3/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
З
linear/Reshape_3Reshapelinear/Reshape_3/ReadVariableOplinear/Reshape_3/shape*
T0*
Tshape0*
_output_shapes
:
Ъ
linear/Reshape_4/ReadVariableOpReadVariableOp:linear/linear_model/capital-loss_bucketized/weights/part_0*
dtype0*
_output_shapes

:
i
linear/Reshape_4/shapeConst*
dtype0*
_output_shapes
:*
valueB:
€€€€€€€€€
З
linear/Reshape_4Reshapelinear/Reshape_4/ReadVariableOplinear/Reshape_4/shape*
T0*
Tshape0*
_output_shapes
:
Н
linear/Reshape_5/ReadVariableOpReadVariableOp,linear/linear_model/education/weights/part_0*
dtype0*
_output_shapes
:	А
i
linear/Reshape_5/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
И
linear/Reshape_5Reshapelinear/Reshape_5/ReadVariableOplinear/Reshape_5/shape*
T0*
Tshape0*
_output_shapes	
:А
Т
linear/Reshape_6/ReadVariableOpReadVariableOp1linear/linear_model/marital-status/weights/part_0*
dtype0*
_output_shapes
:	А
i
linear/Reshape_6/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
И
linear/Reshape_6Reshapelinear/Reshape_6/ReadVariableOplinear/Reshape_6/shape*
T0*
Tshape0*
_output_shapes	
:А
О
linear/Reshape_7/ReadVariableOpReadVariableOp-linear/linear_model/occupation/weights/part_0*
dtype0*
_output_shapes
:	А
i
linear/Reshape_7/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
И
linear/Reshape_7Reshapelinear/Reshape_7/ReadVariableOplinear/Reshape_7/shape*
T0*
Tshape0*
_output_shapes	
:А
Р
linear/Reshape_8/ReadVariableOpReadVariableOp/linear/linear_model/relationship/weights/part_0*
dtype0*
_output_shapes
:	А
i
linear/Reshape_8/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
И
linear/Reshape_8Reshapelinear/Reshape_8/ReadVariableOplinear/Reshape_8/shape*
T0*
Tshape0*
_output_shapes	
:А
Н
linear/Reshape_9/ReadVariableOpReadVariableOp,linear/linear_model/workclass/weights/part_0*
dtype0*
_output_shapes
:	А
i
linear/Reshape_9/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
И
linear/Reshape_9Reshapelinear/Reshape_9/ReadVariableOplinear/Reshape_9/shape*
T0*
Tshape0*
_output_shapes	
:А
T
linear/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ъ
linear/concatConcatV2linear/Reshapelinear/Reshape_1linear/Reshape_2linear/Reshape_3linear/Reshape_4linear/Reshape_5linear/Reshape_6linear/Reshape_7linear/Reshape_8linear/Reshape_9linear/concat/axis*

Tidx0*
T0*
N
*
_output_shapes	
:Ћ
^
linear/zero_fraction/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
s
linear/zero_fraction/EqualEquallinear/concatlinear/zero_fraction/zero*
T0*
_output_shapes	
:Ћ
В
linear/zero_fraction/CastCastlinear/zero_fraction/Equal*

SrcT0
*
Truncate( *
_output_shapes	
:Ћ*

DstT0
d
linear/zero_fraction/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ц
linear/zero_fraction/MeanMeanlinear/zero_fraction/Castlinear/zero_fraction/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Д
$linear/fraction_of_zero_weights/tagsConst*0
value'B% Blinear/fraction_of_zero_weights*
dtype0*
_output_shapes
: 
Т
linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tagslinear/zero_fraction/Mean*
_output_shapes
: *
T0
`
linear/zero_fraction_1/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
£
linear/zero_fraction_1/EqualEqual-linear/linear_model/linear_model/weighted_sumlinear/zero_fraction_1/zero*
T0*'
_output_shapes
:€€€€€€€€€
Т
linear/zero_fraction_1/CastCastlinear/zero_fraction_1/Equal*
Truncate( *'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0

m
linear/zero_fraction_1/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Ь
linear/zero_fraction_1/MeanMeanlinear/zero_fraction_1/Castlinear/zero_fraction_1/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
Р
*linear/linear/fraction_of_zero_values/tagsConst*6
value-B+ B%linear/linear/fraction_of_zero_values*
dtype0*
_output_shapes
: 
†
%linear/linear/fraction_of_zero_valuesScalarSummary*linear/linear/fraction_of_zero_values/tagslinear/zero_fraction_1/Mean*
T0*
_output_shapes
: 
u
linear/linear/activation/tagConst*)
value B Blinear/linear/activation*
dtype0*
_output_shapes
: 
Ъ
linear/linear/activationHistogramSummarylinear/linear/activation/tag-linear/linear_model/linear_model/weighted_sum*
T0*
_output_shapes
: 

addAdddnn/logits/BiasAdd-linear/linear_model/linear_model/weighted_sum*
T0*'
_output_shapes
:€€€€€€€€€
`
head/predictions/logits/ShapeShapeadd*
_output_shapes
:*
T0*
out_type0
s
1head/predictions/logits/assert_rank_at_least/rankConst*
value	B :*
dtype0*
_output_shapes
: 
c
[head/predictions/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
T
Lhead/predictions/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
[
head/predictions/logisticSigmoidadd*
T0*'
_output_shapes
:€€€€€€€€€
_
head/predictions/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:€€€€€€€€€
q
&head/predictions/two_class_logits/axisConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Њ
!head/predictions/two_class_logitsConcatV2head/predictions/zeros_likeadd&head/predictions/two_class_logits/axis*

Tidx0*
T0*
N*'
_output_shapes
:€€€€€€€€€
~
head/predictions/probabilitiesSoftmax!head/predictions/two_class_logits*
T0*'
_output_shapes
:€€€€€€€€€
o
$head/predictions/class_ids/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
Ї
head/predictions/class_idsArgMax!head/predictions/two_class_logits$head/predictions/class_ids/dimension*
output_type0	*#
_output_shapes
:€€€€€€€€€*

Tidx0*
T0
j
head/predictions/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
§
head/predictions/ExpandDims
ExpandDimshead/predictions/class_idshead/predictions/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0	
’
head/predictions/str_classesAsStringhead/predictions/ExpandDims*

scientific( *
width€€€€€€€€€*'
_output_shapes
:€€€€€€€€€*
shortest( *
	precision€€€€€€€€€*
T0	*

fill 
h

head/ShapeShapehead/predictions/probabilities*
T0*
out_type0*
_output_shapes
:
b
head/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
d
head/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
d
head/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Т
head/strided_sliceStridedSlice
head/Shapehead/strided_slice/stackhead/strided_slice/stack_1head/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
R
head/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
R
head/range/limitConst*
dtype0*
_output_shapes
: *
value	B :
R
head/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
q

head/rangeRangehead/range/starthead/range/limithead/range/delta*
_output_shapes
:*

Tidx0
®
head/AsStringAsString
head/range*
_output_shapes
:*
	precision€€€€€€€€€*
shortest( *
T0*

fill *

scientific( *
width€€€€€€€€€
U
head/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
v
head/ExpandDims
ExpandDimshead/AsStringhead/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
W
head/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
А
head/Tile/multiplesPackhead/strided_slicehead/Tile/multiples/1*
T0*

axis *
N*
_output_shapes
:
{
	head/TileTilehead/ExpandDimshead/Tile/multiples*'
_output_shapes
:€€€€€€€€€*

Tmultiples0*
T0

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
s
save/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
dtype0*
_output_shapes	
:А
Y
save/IdentityIdentitysave/Read/ReadVariableOp*
T0*
_output_shapes	
:А
_
save/Identity_1Identitysave/Identity"/device:CPU:0*
T0*
_output_shapes	
:А
{
save/Read_1/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
dtype0*
_output_shapes
:	2А
a
save/Identity_2Identitysave/Read_1/ReadVariableOp*
T0*
_output_shapes
:	2А
e
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
T0*
_output_shapes
:	2А
t
save/Read_2/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
dtype0*
_output_shapes
:@
\
save/Identity_4Identitysave/Read_2/ReadVariableOp*
T0*
_output_shapes
:@
`
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
T0*
_output_shapes
:@
{
save/Read_3/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
dtype0*
_output_shapes
:	А@
a
save/Identity_6Identitysave/Read_3/ReadVariableOp*
T0*
_output_shapes
:	А@
e
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
T0*
_output_shapes
:	А@
t
save/Read_4/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
dtype0*
_output_shapes
: 
\
save/Identity_8Identitysave/Read_4/ReadVariableOp*
_output_shapes
: *
T0
`
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
T0*
_output_shapes
: 
z
save/Read_5/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*
dtype0*
_output_shapes

:@ 
a
save/Identity_10Identitysave/Read_5/ReadVariableOp*
T0*
_output_shapes

:@ 
f
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
T0*
_output_shapes

:@ 
t
save/Read_6/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0*
dtype0*
_output_shapes
:
]
save/Identity_12Identitysave/Read_6/ReadVariableOp*
T0*
_output_shapes
:
b
save/Identity_13Identitysave/Identity_12"/device:CPU:0*
T0*
_output_shapes
:
z
save/Read_7/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0*
dtype0*
_output_shapes

: 
a
save/Identity_14Identitysave/Read_7/ReadVariableOp*
T0*
_output_shapes

: 
f
save/Identity_15Identitysave/Identity_14"/device:CPU:0*
T0*
_output_shapes

: 
m
save/Read_8/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
dtype0*
_output_shapes
:
]
save/Identity_16Identitysave/Read_8/ReadVariableOp*
T0*
_output_shapes
:
b
save/Identity_17Identitysave/Identity_16"/device:CPU:0*
T0*
_output_shapes
:
s
save/Read_9/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
dtype0*
_output_shapes

:
a
save/Identity_18Identitysave/Read_9/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_19Identitysave/Identity_18"/device:CPU:0*
T0*
_output_shapes

:
Н
save/Read_10/ReadVariableOpReadVariableOp1linear/linear_model/age_bucketized/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_20Identitysave/Read_10/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_21Identitysave/Identity_20"/device:CPU:0*
T0*
_output_shapes

:
І
save/Read_11/ReadVariableOpReadVariableOpKlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0*
dtype0*
_output_shapes

:$
b
save/Identity_22Identitysave/Read_11/ReadVariableOp*
_output_shapes

:$*
T0
f
save/Identity_23Identitysave/Identity_22"/device:CPU:0*
_output_shapes

:$*
T0

save/Read_12/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
dtype0*
_output_shapes
:
^
save/Identity_24Identitysave/Read_12/ReadVariableOp*
T0*
_output_shapes
:
b
save/Identity_25Identitysave/Identity_24"/device:CPU:0*
T0*
_output_shapes
:
Ц
save/Read_13/ReadVariableOpReadVariableOp:linear/linear_model/capital-gain_bucketized/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_26Identitysave/Read_13/ReadVariableOp*
_output_shapes

:*
T0
f
save/Identity_27Identitysave/Identity_26"/device:CPU:0*
T0*
_output_shapes

:
∞
save/Read_14/ReadVariableOpReadVariableOpTlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_28Identitysave/Read_14/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_29Identitysave/Identity_28"/device:CPU:0*
T0*
_output_shapes

:
Ц
save/Read_15/ReadVariableOpReadVariableOp:linear/linear_model/capital-loss_bucketized/weights/part_0*
dtype0*
_output_shapes

:
b
save/Identity_30Identitysave/Read_15/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_31Identitysave/Identity_30"/device:CPU:0*
T0*
_output_shapes

:
Й
save/Read_16/ReadVariableOpReadVariableOp,linear/linear_model/education/weights/part_0*
dtype0*
_output_shapes
:	А
c
save/Identity_32Identitysave/Read_16/ReadVariableOp*
T0*
_output_shapes
:	А
g
save/Identity_33Identitysave/Identity_32"/device:CPU:0*
T0*
_output_shapes
:	А
О
save/Read_17/ReadVariableOpReadVariableOp1linear/linear_model/marital-status/weights/part_0*
dtype0*
_output_shapes
:	А
c
save/Identity_34Identitysave/Read_17/ReadVariableOp*
_output_shapes
:	А*
T0
g
save/Identity_35Identitysave/Identity_34"/device:CPU:0*
T0*
_output_shapes
:	А
К
save/Read_18/ReadVariableOpReadVariableOp-linear/linear_model/occupation/weights/part_0*
dtype0*
_output_shapes
:	А
c
save/Identity_36Identitysave/Read_18/ReadVariableOp*
T0*
_output_shapes
:	А
g
save/Identity_37Identitysave/Identity_36"/device:CPU:0*
T0*
_output_shapes
:	А
М
save/Read_19/ReadVariableOpReadVariableOp/linear/linear_model/relationship/weights/part_0*
dtype0*
_output_shapes
:	А
c
save/Identity_38Identitysave/Read_19/ReadVariableOp*
T0*
_output_shapes
:	А
g
save/Identity_39Identitysave/Identity_38"/device:CPU:0*
T0*
_output_shapes
:	А
Й
save/Read_20/ReadVariableOpReadVariableOp,linear/linear_model/workclass/weights/part_0*
dtype0*
_output_shapes
:	А
c
save/Identity_40Identitysave/Read_20/ReadVariableOp*
T0*
_output_shapes
:	А
g
save/Identity_41Identitysave/Identity_40"/device:CPU:0*
T0*
_output_shapes
:	А
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_a53d604e725d4b8fa4132e00e5c21584/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
°
save/SaveV2/tensor_namesConst"/device:CPU:0*≈
valueїBЄBPdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weightsBUdnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weightsBQdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weightsBSdnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weightsBPdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weightsBglobal_step*
dtype0*
_output_shapes
:
…
save/SaveV2/shape_and_slicesConst"/device:CPU:0*j
valueaB_B512 9 0,512:0,9B512 9 0,512:0,9B512 9 0,512:0,9B512 9 0,512:0,9B512 9 0,512:0,9B *
dtype0*
_output_shapes
:
ф
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices\dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/readadnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/read]dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/read_dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/read\dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/readglobal_step"/device:CPU:0*
dtypes

2	
†
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
Р
save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Е
save/Read_21/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes	
:А
n
save/Identity_42Identitysave/Read_21/ReadVariableOp"/device:CPU:0*
_output_shapes	
:А*
T0
c
save/Identity_43Identitysave/Identity_42"/device:CPU:0*
T0*
_output_shapes	
:А
Л
save/Read_22/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes
:	2А
r
save/Identity_44Identitysave/Read_22/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:	2А
g
save/Identity_45Identitysave/Identity_44"/device:CPU:0*
T0*
_output_shapes
:	2А
Д
save/Read_23/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:@
m
save/Identity_46Identitysave/Read_23/ReadVariableOp"/device:CPU:0*
_output_shapes
:@*
T0
b
save/Identity_47Identitysave/Identity_46"/device:CPU:0*
T0*
_output_shapes
:@
Л
save/Read_24/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes
:	А@
r
save/Identity_48Identitysave/Read_24/ReadVariableOp"/device:CPU:0*
_output_shapes
:	А@*
T0
g
save/Identity_49Identitysave/Identity_48"/device:CPU:0*
T0*
_output_shapes
:	А@
Д
save/Read_25/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
: 
m
save/Identity_50Identitysave/Read_25/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
: 
b
save/Identity_51Identitysave/Identity_50"/device:CPU:0*
_output_shapes
: *
T0
К
save/Read_26/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:@ 
q
save/Identity_52Identitysave/Read_26/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:@ 
f
save/Identity_53Identitysave/Identity_52"/device:CPU:0*
T0*
_output_shapes

:@ 
Д
save/Read_27/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
m
save/Identity_54Identitysave/Read_27/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_55Identitysave/Identity_54"/device:CPU:0*
_output_shapes
:*
T0
К
save/Read_28/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

: 
q
save/Identity_56Identitysave/Read_28/ReadVariableOp"/device:CPU:0*
_output_shapes

: *
T0
f
save/Identity_57Identitysave/Identity_56"/device:CPU:0*
T0*
_output_shapes

: 
}
save/Read_29/ReadVariableOpReadVariableOpdnn/logits/bias/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
m
save/Identity_58Identitysave/Read_29/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_59Identitysave/Identity_58"/device:CPU:0*
T0*
_output_shapes
:
Г
save/Read_30/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_60Identitysave/Read_30/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_61Identitysave/Identity_60"/device:CPU:0*
T0*
_output_shapes

:
Ь
save/Read_31/ReadVariableOpReadVariableOp1linear/linear_model/age_bucketized/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_62Identitysave/Read_31/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_63Identitysave/Identity_62"/device:CPU:0*
T0*
_output_shapes

:
ґ
save/Read_32/ReadVariableOpReadVariableOpKlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:$
q
save/Identity_64Identitysave/Read_32/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:$
f
save/Identity_65Identitysave/Identity_64"/device:CPU:0*
T0*
_output_shapes

:$
О
save/Read_33/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:
m
save/Identity_66Identitysave/Read_33/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_67Identitysave/Identity_66"/device:CPU:0*
T0*
_output_shapes
:
•
save/Read_34/ReadVariableOpReadVariableOp:linear/linear_model/capital-gain_bucketized/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_68Identitysave/Read_34/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_69Identitysave/Identity_68"/device:CPU:0*
T0*
_output_shapes

:
њ
save/Read_35/ReadVariableOpReadVariableOpTlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_70Identitysave/Read_35/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_71Identitysave/Identity_70"/device:CPU:0*
_output_shapes

:*
T0
•
save/Read_36/ReadVariableOpReadVariableOp:linear/linear_model/capital-loss_bucketized/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes

:
q
save/Identity_72Identitysave/Read_36/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_73Identitysave/Identity_72"/device:CPU:0*
_output_shapes

:*
T0
Ш
save/Read_37/ReadVariableOpReadVariableOp,linear/linear_model/education/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:	А
r
save/Identity_74Identitysave/Read_37/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:	А
g
save/Identity_75Identitysave/Identity_74"/device:CPU:0*
T0*
_output_shapes
:	А
Э
save/Read_38/ReadVariableOpReadVariableOp1linear/linear_model/marital-status/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:	А
r
save/Identity_76Identitysave/Read_38/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:	А
g
save/Identity_77Identitysave/Identity_76"/device:CPU:0*
T0*
_output_shapes
:	А
Щ
save/Read_39/ReadVariableOpReadVariableOp-linear/linear_model/occupation/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:	А
r
save/Identity_78Identitysave/Read_39/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:	А
g
save/Identity_79Identitysave/Identity_78"/device:CPU:0*
T0*
_output_shapes
:	А
Ы
save/Read_40/ReadVariableOpReadVariableOp/linear/linear_model/relationship/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:	А
r
save/Identity_80Identitysave/Read_40/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:	А
g
save/Identity_81Identitysave/Identity_80"/device:CPU:0*
T0*
_output_shapes
:	А
Ш
save/Read_41/ReadVariableOpReadVariableOp,linear/linear_model/workclass/weights/part_0"/device:CPU:0*
dtype0*
_output_shapes
:	А
r
save/Identity_82Identitysave/Read_41/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:	А
g
save/Identity_83Identitysave/Identity_82"/device:CPU:0*
T0*
_output_shapes
:	А
ш
save/SaveV2_1/tensor_namesConst"/device:CPU:0*Ъ
valueРBНBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelB*linear/linear_model/age_bucketized/weightsBDlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weightsB linear/linear_model/bias_weightsB3linear/linear_model/capital-gain_bucketized/weightsBMlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weightsB3linear/linear_model/capital-loss_bucketized/weightsB%linear/linear_model/education/weightsB*linear/linear_model/marital-status/weightsB&linear/linear_model/occupation/weightsB(linear/linear_model/relationship/weightsB%linear/linear_model/workclass/weights*
dtype0*
_output_shapes
:
Ю
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*Љ
value≤BѓB	128 0,128B50 128 0,50:0,128B64 0,64B128 64 0,128:0,64B32 0,32B64 32 0,64:0,32B16 0,16B32 16 0,32:0,16B1 0,1B16 1 0,16:0,1B11 1 0,11:0,1B36 1 0,36:0,1B1 0,1B6 1 0,6:0,1B16 1 0,16:0,1B6 1 0,6:0,1B512 1 0,512:0,1B512 1 0,512:0,1B512 1 0,512:0,1B512 1 0,512:0,1B512 1 0,512:0,1*
dtype0*
_output_shapes
:
Щ
save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_43save/Identity_45save/Identity_47save/Identity_49save/Identity_51save/Identity_53save/Identity_55save/Identity_57save/Identity_59save/Identity_61save/Identity_63save/Identity_65save/Identity_67save/Identity_69save/Identity_71save/Identity_73save/Identity_75save/Identity_77save/Identity_79save/Identity_81save/Identity_83"/device:CPU:0*#
dtypes
2
®
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
T0*)
_class
loc:@save/ShardedFilename_1*
_output_shapes
: 
а
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
М
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
®
save/Identity_84Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
§
save/RestoreV2/tensor_namesConst"/device:CPU:0*≈
valueїBЄBPdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weightsBUdnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weightsBQdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weightsBSdnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weightsBPdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weightsBglobal_step*
dtype0*
_output_shapes
:
ћ
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*j
valueaB_B512 9 0,512:0,9B512 9 0,512:0,9B512 9 0,512:0,9B512 9 0,512:0,9B512 9 0,512:0,9B 
џ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*O
_output_shapes=
;:	А	:	А	:	А	:	А	:	А	:*
dtypes

2	
љ
save/AssignAssignWdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0save/RestoreV2*
T0*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0*
validate_shape(*
_output_shapes
:	А	*
use_locking(
Ћ
save/Assign_1Assign\dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0save/RestoreV2:1*
validate_shape(*
_output_shapes
:	А	*
use_locking(*
T0*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0
√
save/Assign_2AssignXdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0save/RestoreV2:2*
use_locking(*
T0*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
validate_shape(*
_output_shapes
:	А	
«
save/Assign_3AssignZdnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0save/RestoreV2:3*
T0*m
_classc
a_loc:@dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0*
validate_shape(*
_output_shapes
:	А	*
use_locking(
Ѕ
save/Assign_4AssignWdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0save/RestoreV2:4*
use_locking(*
T0*j
_class`
^\loc:@dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0*
validate_shape(*
_output_shapes
:	А	
†
save/Assign_5Assignglobal_stepsave/RestoreV2:5*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
x
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5
ы
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*Ъ
valueРBНBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelB*linear/linear_model/age_bucketized/weightsBDlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weightsB linear/linear_model/bias_weightsB3linear/linear_model/capital-gain_bucketized/weightsBMlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weightsB3linear/linear_model/capital-loss_bucketized/weightsB%linear/linear_model/education/weightsB*linear/linear_model/marital-status/weightsB&linear/linear_model/occupation/weightsB(linear/linear_model/relationship/weightsB%linear/linear_model/workclass/weights*
dtype0*
_output_shapes
:
°
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*Љ
value≤BѓB	128 0,128B50 128 0,50:0,128B64 0,64B128 64 0,128:0,64B32 0,32B64 32 0,64:0,32B16 0,16B32 16 0,32:0,16B1 0,1B16 1 0,16:0,1B11 1 0,11:0,1B36 1 0,36:0,1B1 0,1B6 1 0,6:0,1B16 1 0,16:0,1B6 1 0,6:0,1B512 1 0,512:0,1B512 1 0,512:0,1B512 1 0,512:0,1B512 1 0,512:0,1B512 1 0,512:0,1*
dtype0*
_output_shapes
:
ъ
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*Ў
_output_shapes≈
¬:А:	2А:@:	А@: :@ :: ::::$:::::	А:	А:	А:	А:	А*#
dtypes
2
c
save/Identity_85Identitysave/RestoreV2_1"/device:CPU:0*
T0*
_output_shapes	
:А
v
save/AssignVariableOpAssignVariableOpdnn/hiddenlayer_0/bias/part_0save/Identity_85"/device:CPU:0*
dtype0
i
save/Identity_86Identitysave/RestoreV2_1:1"/device:CPU:0*
T0*
_output_shapes
:	2А
z
save/AssignVariableOp_1AssignVariableOpdnn/hiddenlayer_0/kernel/part_0save/Identity_86"/device:CPU:0*
dtype0
d
save/Identity_87Identitysave/RestoreV2_1:2"/device:CPU:0*
T0*
_output_shapes
:@
x
save/AssignVariableOp_2AssignVariableOpdnn/hiddenlayer_1/bias/part_0save/Identity_87"/device:CPU:0*
dtype0
i
save/Identity_88Identitysave/RestoreV2_1:3"/device:CPU:0*
T0*
_output_shapes
:	А@
z
save/AssignVariableOp_3AssignVariableOpdnn/hiddenlayer_1/kernel/part_0save/Identity_88"/device:CPU:0*
dtype0
d
save/Identity_89Identitysave/RestoreV2_1:4"/device:CPU:0*
T0*
_output_shapes
: 
x
save/AssignVariableOp_4AssignVariableOpdnn/hiddenlayer_2/bias/part_0save/Identity_89"/device:CPU:0*
dtype0
h
save/Identity_90Identitysave/RestoreV2_1:5"/device:CPU:0*
T0*
_output_shapes

:@ 
z
save/AssignVariableOp_5AssignVariableOpdnn/hiddenlayer_2/kernel/part_0save/Identity_90"/device:CPU:0*
dtype0
d
save/Identity_91Identitysave/RestoreV2_1:6"/device:CPU:0*
_output_shapes
:*
T0
x
save/AssignVariableOp_6AssignVariableOpdnn/hiddenlayer_3/bias/part_0save/Identity_91"/device:CPU:0*
dtype0
h
save/Identity_92Identitysave/RestoreV2_1:7"/device:CPU:0*
T0*
_output_shapes

: 
z
save/AssignVariableOp_7AssignVariableOpdnn/hiddenlayer_3/kernel/part_0save/Identity_92"/device:CPU:0*
dtype0
d
save/Identity_93Identitysave/RestoreV2_1:8"/device:CPU:0*
T0*
_output_shapes
:
q
save/AssignVariableOp_8AssignVariableOpdnn/logits/bias/part_0save/Identity_93"/device:CPU:0*
dtype0
h
save/Identity_94Identitysave/RestoreV2_1:9"/device:CPU:0*
T0*
_output_shapes

:
s
save/AssignVariableOp_9AssignVariableOpdnn/logits/kernel/part_0save/Identity_94"/device:CPU:0*
dtype0
i
save/Identity_95Identitysave/RestoreV2_1:10"/device:CPU:0*
T0*
_output_shapes

:
Н
save/AssignVariableOp_10AssignVariableOp1linear/linear_model/age_bucketized/weights/part_0save/Identity_95"/device:CPU:0*
dtype0
i
save/Identity_96Identitysave/RestoreV2_1:11"/device:CPU:0*
_output_shapes

:$*
T0
І
save/AssignVariableOp_11AssignVariableOpKlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0save/Identity_96"/device:CPU:0*
dtype0
e
save/Identity_97Identitysave/RestoreV2_1:12"/device:CPU:0*
T0*
_output_shapes
:
Г
save/AssignVariableOp_12AssignVariableOp'linear/linear_model/bias_weights/part_0save/Identity_97"/device:CPU:0*
dtype0
i
save/Identity_98Identitysave/RestoreV2_1:13"/device:CPU:0*
T0*
_output_shapes

:
Ц
save/AssignVariableOp_13AssignVariableOp:linear/linear_model/capital-gain_bucketized/weights/part_0save/Identity_98"/device:CPU:0*
dtype0
i
save/Identity_99Identitysave/RestoreV2_1:14"/device:CPU:0*
T0*
_output_shapes

:
∞
save/AssignVariableOp_14AssignVariableOpTlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0save/Identity_99"/device:CPU:0*
dtype0
j
save/Identity_100Identitysave/RestoreV2_1:15"/device:CPU:0*
T0*
_output_shapes

:
Ч
save/AssignVariableOp_15AssignVariableOp:linear/linear_model/capital-loss_bucketized/weights/part_0save/Identity_100"/device:CPU:0*
dtype0
k
save/Identity_101Identitysave/RestoreV2_1:16"/device:CPU:0*
_output_shapes
:	А*
T0
Й
save/AssignVariableOp_16AssignVariableOp,linear/linear_model/education/weights/part_0save/Identity_101"/device:CPU:0*
dtype0
k
save/Identity_102Identitysave/RestoreV2_1:17"/device:CPU:0*
T0*
_output_shapes
:	А
О
save/AssignVariableOp_17AssignVariableOp1linear/linear_model/marital-status/weights/part_0save/Identity_102"/device:CPU:0*
dtype0
k
save/Identity_103Identitysave/RestoreV2_1:18"/device:CPU:0*
T0*
_output_shapes
:	А
К
save/AssignVariableOp_18AssignVariableOp-linear/linear_model/occupation/weights/part_0save/Identity_103"/device:CPU:0*
dtype0
k
save/Identity_104Identitysave/RestoreV2_1:19"/device:CPU:0*
T0*
_output_shapes
:	А
М
save/AssignVariableOp_19AssignVariableOp/linear/linear_model/relationship/weights/part_0save/Identity_104"/device:CPU:0*
dtype0
k
save/Identity_105Identitysave/RestoreV2_1:20"/device:CPU:0*
T0*
_output_shapes
:	А
Й
save/AssignVariableOp_20AssignVariableOp,linear/linear_model/workclass/weights/part_0save/Identity_105"/device:CPU:0*
dtype0
÷
save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"?
save/Const:0save/Identity_84:0save/restore_all (5 @F8"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"%
saved_model_main_op


group_deps"ц1
model_variablesв1я1
ч
Ydnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0:0^dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Assign^dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/read:0"`
Pdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weightsА	  "А	2vdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
Р
^dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0:0cdnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Assigncdnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/read:0"e
Udnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weightsА	  "А	2{dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
ь
Zdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0:0_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Assign_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/read:0"a
Qdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weightsА	  "А	2wdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
Ж
\dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0:0adnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Assignadnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/read:0"c
Sdnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weightsА	  "А	2ydnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
ч
Ydnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0:0^dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Assign^dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/read:0"`
Pdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weightsА	  "А	2vdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
љ
3linear/linear_model/age_bucketized/weights/part_0:08linear/linear_model/age_bucketized/weights/part_0/AssignGlinear/linear_model/age_bucketized/weights/part_0/Read/ReadVariableOp:0"8
*linear/linear_model/age_bucketized/weights  "(2Elinear/linear_model/age_bucketized/weights/part_0/Initializer/zeros:08
њ
Mlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0:0Rlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0/Assignalinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0/Read/ReadVariableOp:0"R
Dlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights$  "$(2_linear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0/Initializer/zeros:08
к
<linear/linear_model/capital-gain_bucketized/weights/part_0:0Alinear/linear_model/capital-gain_bucketized/weights/part_0/AssignPlinear/linear_model/capital-gain_bucketized/weights/part_0/Read/ReadVariableOp:0"A
3linear/linear_model/capital-gain_bucketized/weights  "(2Nlinear/linear_model/capital-gain_bucketized/weights/part_0/Initializer/zeros:08
м
Vlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0:0[linear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0/Assignjlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0/Read/ReadVariableOp:0"[
Mlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights  "(2hlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0/Initializer/zeros:08
к
<linear/linear_model/capital-loss_bucketized/weights/part_0:0Alinear/linear_model/capital-loss_bucketized/weights/part_0/AssignPlinear/linear_model/capital-loss_bucketized/weights/part_0/Read/ReadVariableOp:0"A
3linear/linear_model/capital-loss_bucketized/weights  "(2Nlinear/linear_model/capital-loss_bucketized/weights/part_0/Initializer/zeros:08
¶
.linear/linear_model/education/weights/part_0:03linear/linear_model/education/weights/part_0/AssignBlinear/linear_model/education/weights/part_0/Read/ReadVariableOp:0"5
%linear/linear_model/education/weightsА  "А(2@linear/linear_model/education/weights/part_0/Initializer/zeros:08
њ
3linear/linear_model/marital-status/weights/part_0:08linear/linear_model/marital-status/weights/part_0/AssignGlinear/linear_model/marital-status/weights/part_0/Read/ReadVariableOp:0":
*linear/linear_model/marital-status/weightsА  "А(2Elinear/linear_model/marital-status/weights/part_0/Initializer/zeros:08
Ђ
/linear/linear_model/occupation/weights/part_0:04linear/linear_model/occupation/weights/part_0/AssignClinear/linear_model/occupation/weights/part_0/Read/ReadVariableOp:0"6
&linear/linear_model/occupation/weightsА  "А(2Alinear/linear_model/occupation/weights/part_0/Initializer/zeros:08
µ
1linear/linear_model/relationship/weights/part_0:06linear/linear_model/relationship/weights/part_0/AssignElinear/linear_model/relationship/weights/part_0/Read/ReadVariableOp:0"8
(linear/linear_model/relationship/weightsА  "А(2Clinear/linear_model/relationship/weights/part_0/Initializer/zeros:08
¶
.linear/linear_model/workclass/weights/part_0:03linear/linear_model/workclass/weights/part_0/AssignBlinear/linear_model/workclass/weights/part_0/Read/ReadVariableOp:0"5
%linear/linear_model/workclass/weightsА  "А(2@linear/linear_model/workclass/weights/part_0/Initializer/zeros:08
И
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"ҐC
trainable_variablesКCЗC
ч
Ydnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0:0^dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Assign^dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/read:0"`
Pdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weightsА	  "А	2vdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
Р
^dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0:0cdnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Assigncdnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/read:0"e
Udnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weightsА	  "А	2{dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
ь
Zdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0:0_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Assign_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/read:0"a
Qdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weightsА	  "А	2wdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
Ж
\dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0:0adnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Assignadnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/read:0"c
Sdnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weightsА	  "А	2ydnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
ч
Ydnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0:0^dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Assign^dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/read:0"`
Pdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weightsА	  "А	2vdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
о
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"(
dnn/hiddenlayer_0/kernel2А  "2А(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
Ў
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"#
dnn/hiddenlayer_0/biasА "А(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
о
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign5dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOp:0"(
dnn/hiddenlayer_1/kernelА@  "А@(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
÷
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign3dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_1/bias@ "@(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
м
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign5dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_2/kernel@   "@ (2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:08
÷
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign3dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_2/bias  " (21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:08
м
!dnn/hiddenlayer_3/kernel/part_0:0&dnn/hiddenlayer_3/kernel/part_0/Assign5dnn/hiddenlayer_3/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_3/kernel   " (2<dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform:08
÷
dnn/hiddenlayer_3/bias/part_0:0$dnn/hiddenlayer_3/bias/part_0/Assign3dnn/hiddenlayer_3/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_3/bias "(21dnn/hiddenlayer_3/bias/part_0/Initializer/zeros:08
…
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"
dnn/logits/kernel  "(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
≥
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias "(2*dnn/logits/bias/part_0/Initializer/zeros:08
љ
3linear/linear_model/age_bucketized/weights/part_0:08linear/linear_model/age_bucketized/weights/part_0/AssignGlinear/linear_model/age_bucketized/weights/part_0/Read/ReadVariableOp:0"8
*linear/linear_model/age_bucketized/weights  "(2Elinear/linear_model/age_bucketized/weights/part_0/Initializer/zeros:08
њ
Mlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0:0Rlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0/Assignalinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0/Read/ReadVariableOp:0"R
Dlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights$  "$(2_linear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0/Initializer/zeros:08
к
<linear/linear_model/capital-gain_bucketized/weights/part_0:0Alinear/linear_model/capital-gain_bucketized/weights/part_0/AssignPlinear/linear_model/capital-gain_bucketized/weights/part_0/Read/ReadVariableOp:0"A
3linear/linear_model/capital-gain_bucketized/weights  "(2Nlinear/linear_model/capital-gain_bucketized/weights/part_0/Initializer/zeros:08
м
Vlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0:0[linear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0/Assignjlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0/Read/ReadVariableOp:0"[
Mlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights  "(2hlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0/Initializer/zeros:08
к
<linear/linear_model/capital-loss_bucketized/weights/part_0:0Alinear/linear_model/capital-loss_bucketized/weights/part_0/AssignPlinear/linear_model/capital-loss_bucketized/weights/part_0/Read/ReadVariableOp:0"A
3linear/linear_model/capital-loss_bucketized/weights  "(2Nlinear/linear_model/capital-loss_bucketized/weights/part_0/Initializer/zeros:08
¶
.linear/linear_model/education/weights/part_0:03linear/linear_model/education/weights/part_0/AssignBlinear/linear_model/education/weights/part_0/Read/ReadVariableOp:0"5
%linear/linear_model/education/weightsА  "А(2@linear/linear_model/education/weights/part_0/Initializer/zeros:08
њ
3linear/linear_model/marital-status/weights/part_0:08linear/linear_model/marital-status/weights/part_0/AssignGlinear/linear_model/marital-status/weights/part_0/Read/ReadVariableOp:0":
*linear/linear_model/marital-status/weightsА  "А(2Elinear/linear_model/marital-status/weights/part_0/Initializer/zeros:08
Ђ
/linear/linear_model/occupation/weights/part_0:04linear/linear_model/occupation/weights/part_0/AssignClinear/linear_model/occupation/weights/part_0/Read/ReadVariableOp:0"6
&linear/linear_model/occupation/weightsА  "А(2Alinear/linear_model/occupation/weights/part_0/Initializer/zeros:08
µ
1linear/linear_model/relationship/weights/part_0:06linear/linear_model/relationship/weights/part_0/AssignElinear/linear_model/relationship/weights/part_0/Read/ReadVariableOp:0"8
(linear/linear_model/relationship/weightsА  "А(2Clinear/linear_model/relationship/weights/part_0/Initializer/zeros:08
¶
.linear/linear_model/workclass/weights/part_0:03linear/linear_model/workclass/weights/part_0/AssignBlinear/linear_model/workclass/weights/part_0/Read/ReadVariableOp:0"5
%linear/linear_model/workclass/weightsА  "А(2@linear/linear_model/workclass/weights/part_0/Initializer/zeros:08
И
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"£
	summariesХ
Т
/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
/dnn/dnn/hiddenlayer_2/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_2/activation:0
/dnn/dnn/hiddenlayer_3/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_3/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0
linear/bias:0
!linear/fraction_of_zero_weights:0
'linear/linear/fraction_of_zero_values:0
linear/linear/activation:0"тC
	variablesдCбC
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
ч
Ydnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0:0^dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Assign^dnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/read:0"`
Pdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weightsА	  "А	2vdnn/input_from_feature_columns/input_layer/education_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
Р
^dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0:0cdnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Assigncdnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/read:0"e
Udnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weightsА	  "А	2{dnn/input_from_feature_columns/input_layer/marital-status_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
ь
Zdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0:0_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Assign_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/read:0"a
Qdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weightsА	  "А	2wdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
Ж
\dnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0:0adnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Assignadnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/read:0"c
Sdnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weightsА	  "А	2ydnn/input_from_feature_columns/input_layer/relationship_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
ч
Ydnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0:0^dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Assign^dnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/read:0"`
Pdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weightsА	  "А	2vdnn/input_from_feature_columns/input_layer/workclass_embedding/embedding_weights/part_0/Initializer/truncated_normal:08
о
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"(
dnn/hiddenlayer_0/kernel2А  "2А(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
Ў
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"#
dnn/hiddenlayer_0/biasА "А(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
о
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign5dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOp:0"(
dnn/hiddenlayer_1/kernelА@  "А@(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
÷
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign3dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_1/bias@ "@(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
м
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign5dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_2/kernel@   "@ (2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:08
÷
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign3dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_2/bias  " (21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:08
м
!dnn/hiddenlayer_3/kernel/part_0:0&dnn/hiddenlayer_3/kernel/part_0/Assign5dnn/hiddenlayer_3/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_3/kernel   " (2<dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform:08
÷
dnn/hiddenlayer_3/bias/part_0:0$dnn/hiddenlayer_3/bias/part_0/Assign3dnn/hiddenlayer_3/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_3/bias "(21dnn/hiddenlayer_3/bias/part_0/Initializer/zeros:08
…
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"
dnn/logits/kernel  "(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
≥
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias "(2*dnn/logits/bias/part_0/Initializer/zeros:08
љ
3linear/linear_model/age_bucketized/weights/part_0:08linear/linear_model/age_bucketized/weights/part_0/AssignGlinear/linear_model/age_bucketized/weights/part_0/Read/ReadVariableOp:0"8
*linear/linear_model/age_bucketized/weights  "(2Elinear/linear_model/age_bucketized/weights/part_0/Initializer/zeros:08
њ
Mlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0:0Rlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0/Assignalinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0/Read/ReadVariableOp:0"R
Dlinear/linear_model/age_bucketized_X_capital-gain_bucketized/weights$  "$(2_linear/linear_model/age_bucketized_X_capital-gain_bucketized/weights/part_0/Initializer/zeros:08
к
<linear/linear_model/capital-gain_bucketized/weights/part_0:0Alinear/linear_model/capital-gain_bucketized/weights/part_0/AssignPlinear/linear_model/capital-gain_bucketized/weights/part_0/Read/ReadVariableOp:0"A
3linear/linear_model/capital-gain_bucketized/weights  "(2Nlinear/linear_model/capital-gain_bucketized/weights/part_0/Initializer/zeros:08
м
Vlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0:0[linear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0/Assignjlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0/Read/ReadVariableOp:0"[
Mlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights  "(2hlinear/linear_model/capital-gain_bucketized_X_capital-loss_bucketized/weights/part_0/Initializer/zeros:08
к
<linear/linear_model/capital-loss_bucketized/weights/part_0:0Alinear/linear_model/capital-loss_bucketized/weights/part_0/AssignPlinear/linear_model/capital-loss_bucketized/weights/part_0/Read/ReadVariableOp:0"A
3linear/linear_model/capital-loss_bucketized/weights  "(2Nlinear/linear_model/capital-loss_bucketized/weights/part_0/Initializer/zeros:08
¶
.linear/linear_model/education/weights/part_0:03linear/linear_model/education/weights/part_0/AssignBlinear/linear_model/education/weights/part_0/Read/ReadVariableOp:0"5
%linear/linear_model/education/weightsА  "А(2@linear/linear_model/education/weights/part_0/Initializer/zeros:08
њ
3linear/linear_model/marital-status/weights/part_0:08linear/linear_model/marital-status/weights/part_0/AssignGlinear/linear_model/marital-status/weights/part_0/Read/ReadVariableOp:0":
*linear/linear_model/marital-status/weightsА  "А(2Elinear/linear_model/marital-status/weights/part_0/Initializer/zeros:08
Ђ
/linear/linear_model/occupation/weights/part_0:04linear/linear_model/occupation/weights/part_0/AssignClinear/linear_model/occupation/weights/part_0/Read/ReadVariableOp:0"6
&linear/linear_model/occupation/weightsА  "А(2Alinear/linear_model/occupation/weights/part_0/Initializer/zeros:08
µ
1linear/linear_model/relationship/weights/part_0:06linear/linear_model/relationship/weights/part_0/AssignElinear/linear_model/relationship/weights/part_0/Read/ReadVariableOp:0"8
(linear/linear_model/relationship/weightsА  "А(2Clinear/linear_model/relationship/weights/part_0/Initializer/zeros:08
¶
.linear/linear_model/workclass/weights/part_0:03linear/linear_model/workclass/weights/part_0/AssignBlinear/linear_model/workclass/weights/part_0/Read/ReadVariableOp:0"5
%linear/linear_model/workclass/weightsА  "А(2@linear/linear_model/workclass/weights/part_0/Initializer/zeros:08
И
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08*Ц
predictК
5
examples)
input_example_tensor:0€€€€€€€€€A
	class_ids4
head/predictions/ExpandDims:0	€€€€€€€€€H
probabilities7
 head/predictions/probabilities:0€€€€€€€€€@
classes5
head/predictions/str_classes:0€€€€€€€€€&
logits
add:0€€€€€€€€€>
logistic2
head/predictions/logistic:0€€€€€€€€€tensorflow/serving/predict*„
classificationƒ
3
inputs)
input_example_tensor:0€€€€€€€€€A
scores7
 head/predictions/probabilities:0€€€€€€€€€-
classes"
head/Tile:0€€€€€€€€€tensorflow/serving/classify*Я

regressionР
3
inputs)
input_example_tensor:0€€€€€€€€€=
outputs2
head/predictions/logistic:0€€€€€€€€€tensorflow/serving/regress*Ў
serving_defaultƒ
3
inputs)
input_example_tensor:0€€€€€€€€€-
classes"
head/Tile:0€€€€€€€€€A
scores7
 head/predictions/probabilities:0€€€€€€€€€tensorflow/serving/classify