??.
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??,
z
dense_96/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_96/kernel
s
#dense_96/kernel/Read/ReadVariableOpReadVariableOpdense_96/kernel*
_output_shapes

:
*
dtype0
r
dense_96/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_96/bias
k
!dense_96/bias/Read/ReadVariableOpReadVariableOpdense_96/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
lstm_288/lstm_cell_288/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_288/lstm_cell_288/kernel
?
1lstm_288/lstm_cell_288/kernel/Read/ReadVariableOpReadVariableOplstm_288/lstm_cell_288/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_288/lstm_cell_288/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_288/lstm_cell_288/recurrent_kernel
?
;lstm_288/lstm_cell_288/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_288/lstm_cell_288/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_288/lstm_cell_288/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_288/lstm_cell_288/bias
?
/lstm_288/lstm_cell_288/bias/Read/ReadVariableOpReadVariableOplstm_288/lstm_cell_288/bias*
_output_shapes	
:?*
dtype0
?
lstm_289/lstm_cell_289/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_289/lstm_cell_289/kernel
?
1lstm_289/lstm_cell_289/kernel/Read/ReadVariableOpReadVariableOplstm_289/lstm_cell_289/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_289/lstm_cell_289/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_289/lstm_cell_289/recurrent_kernel
?
;lstm_289/lstm_cell_289/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_289/lstm_cell_289/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_289/lstm_cell_289/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_289/lstm_cell_289/bias
?
/lstm_289/lstm_cell_289/bias/Read/ReadVariableOpReadVariableOplstm_289/lstm_cell_289/bias*
_output_shapes	
:?*
dtype0
?
lstm_290/lstm_cell_290/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_290/lstm_cell_290/kernel
?
1lstm_290/lstm_cell_290/kernel/Read/ReadVariableOpReadVariableOplstm_290/lstm_cell_290/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_290/lstm_cell_290/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_290/lstm_cell_290/recurrent_kernel
?
;lstm_290/lstm_cell_290/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_290/lstm_cell_290/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_290/lstm_cell_290/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_290/lstm_cell_290/bias
?
/lstm_290/lstm_cell_290/bias/Read/ReadVariableOpReadVariableOplstm_290/lstm_cell_290/bias*
_output_shapes
:(*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
Adam/dense_96/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_96/kernel/m
?
*Adam/dense_96/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_96/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_96/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_96/bias/m
y
(Adam/dense_96/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_96/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_288/lstm_cell_288/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_288/lstm_cell_288/kernel/m
?
8Adam/lstm_288/lstm_cell_288/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_288/lstm_cell_288/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_288/lstm_cell_288/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_288/lstm_cell_288/recurrent_kernel/m
?
BAdam/lstm_288/lstm_cell_288/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_288/lstm_cell_288/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_288/lstm_cell_288/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_288/lstm_cell_288/bias/m
?
6Adam/lstm_288/lstm_cell_288/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_288/lstm_cell_288/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_289/lstm_cell_289/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_289/lstm_cell_289/kernel/m
?
8Adam/lstm_289/lstm_cell_289/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_289/lstm_cell_289/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_289/lstm_cell_289/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_289/lstm_cell_289/recurrent_kernel/m
?
BAdam/lstm_289/lstm_cell_289/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_289/lstm_cell_289/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_289/lstm_cell_289/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_289/lstm_cell_289/bias/m
?
6Adam/lstm_289/lstm_cell_289/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_289/lstm_cell_289/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_290/lstm_cell_290/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_290/lstm_cell_290/kernel/m
?
8Adam/lstm_290/lstm_cell_290/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_290/lstm_cell_290/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_290/lstm_cell_290/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_290/lstm_cell_290/recurrent_kernel/m
?
BAdam/lstm_290/lstm_cell_290/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_290/lstm_cell_290/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_290/lstm_cell_290/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_290/lstm_cell_290/bias/m
?
6Adam/lstm_290/lstm_cell_290/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_290/lstm_cell_290/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_96/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_96/kernel/v
?
*Adam/dense_96/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_96/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_96/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_96/bias/v
y
(Adam/dense_96/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_96/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_288/lstm_cell_288/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_288/lstm_cell_288/kernel/v
?
8Adam/lstm_288/lstm_cell_288/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_288/lstm_cell_288/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_288/lstm_cell_288/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_288/lstm_cell_288/recurrent_kernel/v
?
BAdam/lstm_288/lstm_cell_288/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_288/lstm_cell_288/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_288/lstm_cell_288/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_288/lstm_cell_288/bias/v
?
6Adam/lstm_288/lstm_cell_288/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_288/lstm_cell_288/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_289/lstm_cell_289/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_289/lstm_cell_289/kernel/v
?
8Adam/lstm_289/lstm_cell_289/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_289/lstm_cell_289/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_289/lstm_cell_289/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_289/lstm_cell_289/recurrent_kernel/v
?
BAdam/lstm_289/lstm_cell_289/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_289/lstm_cell_289/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_289/lstm_cell_289/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_289/lstm_cell_289/bias/v
?
6Adam/lstm_289/lstm_cell_289/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_289/lstm_cell_289/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_290/lstm_cell_290/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_290/lstm_cell_290/kernel/v
?
8Adam/lstm_290/lstm_cell_290/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_290/lstm_cell_290/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_290/lstm_cell_290/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_290/lstm_cell_290/recurrent_kernel/v
?
BAdam/lstm_290/lstm_cell_290/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_290/lstm_cell_290/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_290/lstm_cell_290/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_290/lstm_cell_290/bias/v
?
6Adam/lstm_290/lstm_cell_290/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_290/lstm_cell_290/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
?A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?A
value?AB?A B?A
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
?

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
?
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m?4m?5m?!v?"v?-v?.v?/v?0v?1v?2v?3v?4v?5v?
 
 
N
-0
.1
/2
03
14
25
36
47
58
!9
"10
N
-0
.1
/2
03
14
25
36
47
58
!9
"10
 
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
?
;
state_size

-kernel
.recurrent_kernel
/bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
 
 

-0
.1
/2

-0
.1
/2
 
?

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
?
G
state_size

0kernel
1recurrent_kernel
2bias
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
 
 

00
11
22

00
11
22
 
?

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
?
S
state_size

3kernel
4recurrent_kernel
5bias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
 
 

30
41
52

30
41
52
 
?

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_96/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_96/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_288/lstm_cell_288/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_288/lstm_cell_288/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_288/lstm_cell_288/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_289/lstm_cell_289/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_289/lstm_cell_289/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_289/lstm_cell_289/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_290/lstm_cell_290/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_290/lstm_cell_290/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_290/lstm_cell_290/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

d0
 
 
 
 

-0
.1
/2

-0
.1
/2
 
?
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
 
 

0
 
 
 
 
 

00
11
22

00
11
22
 
?
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
 
 

0
 
 
 
 
 

30
41
52

30
41
52
 
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
 
 

0
 
 
 
 
 
 
 
 
4
	ttotal
	ucount
v	variables
w	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

t0
u1

v	variables
~|
VARIABLE_VALUEAdam/dense_96/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_96/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_288/lstm_cell_288/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_288/lstm_cell_288/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_288/lstm_cell_288/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_289/lstm_cell_289/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_289/lstm_cell_289/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_289/lstm_cell_289/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_290/lstm_cell_290/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_290/lstm_cell_290/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_290/lstm_cell_290/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_96/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_96/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_288/lstm_cell_288/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_288/lstm_cell_288/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_288/lstm_cell_288/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_289/lstm_cell_289/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_289/lstm_cell_289/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_289/lstm_cell_289/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_290/lstm_cell_290/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_290/lstm_cell_290/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_290/lstm_cell_290/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_288_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_288_inputlstm_288/lstm_cell_288/kernel'lstm_288/lstm_cell_288/recurrent_kernellstm_288/lstm_cell_288/biaslstm_289/lstm_cell_289/kernel'lstm_289/lstm_cell_289/recurrent_kernellstm_289/lstm_cell_289/biaslstm_290/lstm_cell_290/kernel'lstm_290/lstm_cell_290/recurrent_kernellstm_290/lstm_cell_290/biasdense_96/kerneldense_96/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_14655
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_96/kernel/Read/ReadVariableOp!dense_96/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_288/lstm_cell_288/kernel/Read/ReadVariableOp;lstm_288/lstm_cell_288/recurrent_kernel/Read/ReadVariableOp/lstm_288/lstm_cell_288/bias/Read/ReadVariableOp1lstm_289/lstm_cell_289/kernel/Read/ReadVariableOp;lstm_289/lstm_cell_289/recurrent_kernel/Read/ReadVariableOp/lstm_289/lstm_cell_289/bias/Read/ReadVariableOp1lstm_290/lstm_cell_290/kernel/Read/ReadVariableOp;lstm_290/lstm_cell_290/recurrent_kernel/Read/ReadVariableOp/lstm_290/lstm_cell_290/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_96/kernel/m/Read/ReadVariableOp(Adam/dense_96/bias/m/Read/ReadVariableOp8Adam/lstm_288/lstm_cell_288/kernel/m/Read/ReadVariableOpBAdam/lstm_288/lstm_cell_288/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_288/lstm_cell_288/bias/m/Read/ReadVariableOp8Adam/lstm_289/lstm_cell_289/kernel/m/Read/ReadVariableOpBAdam/lstm_289/lstm_cell_289/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_289/lstm_cell_289/bias/m/Read/ReadVariableOp8Adam/lstm_290/lstm_cell_290/kernel/m/Read/ReadVariableOpBAdam/lstm_290/lstm_cell_290/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_290/lstm_cell_290/bias/m/Read/ReadVariableOp*Adam/dense_96/kernel/v/Read/ReadVariableOp(Adam/dense_96/bias/v/Read/ReadVariableOp8Adam/lstm_288/lstm_cell_288/kernel/v/Read/ReadVariableOpBAdam/lstm_288/lstm_cell_288/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_288/lstm_cell_288/bias/v/Read/ReadVariableOp8Adam/lstm_289/lstm_cell_289/kernel/v/Read/ReadVariableOpBAdam/lstm_289/lstm_cell_289/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_289/lstm_cell_289/bias/v/Read/ReadVariableOp8Adam/lstm_290/lstm_cell_290/kernel/v/Read/ReadVariableOpBAdam/lstm_290/lstm_cell_290/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_290/lstm_cell_290/bias/v/Read/ReadVariableOpConst*5
Tin.
,2*	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_17867
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_96/kerneldense_96/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_288/lstm_cell_288/kernel'lstm_288/lstm_cell_288/recurrent_kernellstm_288/lstm_cell_288/biaslstm_289/lstm_cell_289/kernel'lstm_289/lstm_cell_289/recurrent_kernellstm_289/lstm_cell_289/biaslstm_290/lstm_cell_290/kernel'lstm_290/lstm_cell_290/recurrent_kernellstm_290/lstm_cell_290/biastotalcountAdam/dense_96/kernel/mAdam/dense_96/bias/m$Adam/lstm_288/lstm_cell_288/kernel/m.Adam/lstm_288/lstm_cell_288/recurrent_kernel/m"Adam/lstm_288/lstm_cell_288/bias/m$Adam/lstm_289/lstm_cell_289/kernel/m.Adam/lstm_289/lstm_cell_289/recurrent_kernel/m"Adam/lstm_289/lstm_cell_289/bias/m$Adam/lstm_290/lstm_cell_290/kernel/m.Adam/lstm_290/lstm_cell_290/recurrent_kernel/m"Adam/lstm_290/lstm_cell_290/bias/mAdam/dense_96/kernel/vAdam/dense_96/bias/v$Adam/lstm_288/lstm_cell_288/kernel/v.Adam/lstm_288/lstm_cell_288/recurrent_kernel/v"Adam/lstm_288/lstm_cell_288/bias/v$Adam/lstm_289/lstm_cell_289/kernel/v.Adam/lstm_289/lstm_cell_289/recurrent_kernel/v"Adam/lstm_289/lstm_cell_289/bias/v$Adam/lstm_290/lstm_cell_290/kernel/v.Adam/lstm_290/lstm_cell_290/recurrent_kernel/v"Adam/lstm_290/lstm_cell_290/bias/v*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_17997??+
?
?
)__inference_lstm_cell_layer_call_fn_17464

inputs
states_0
states_1
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_12608o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/1
?7
?
while_body_13660
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	d?G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2?B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	d?E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	2?@
1while_lstm_cell_1_biasadd_readvariableop_resource:	???(while/lstm_cell_1/BiasAdd/ReadVariableOp?'while/lstm_cell_1/MatMul/ReadVariableOp?)while/lstm_cell_1/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?I
?
C__inference_lstm_290_layer_call_and_return_conditional_losses_14110

inputs<
*lstm_cell_2_matmul_readvariableop_resource:2(>
,lstm_cell_2_matmul_1_readvariableop_resource:
(9
+lstm_cell_2_biasadd_readvariableop_resource:(
identity??"lstm_cell_2/BiasAdd/ReadVariableOp?!lstm_cell_2/MatMul/ReadVariableOp?#lstm_cell_2/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_14026*
condR
while_cond_14025*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
C__inference_lstm_289_layer_call_and_return_conditional_losses_16366
inputs_0=
*lstm_cell_1_matmul_readvariableop_resource:	d??
,lstm_cell_1_matmul_1_readvariableop_resource:	2?:
+lstm_cell_1_biasadd_readvariableop_resource:	?
identity??"lstm_cell_1/BiasAdd/ReadVariableOp?!lstm_cell_1/MatMul/ReadVariableOp?#lstm_cell_1/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_16282*
condR
while_cond_16281*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2?
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?7
?
while_body_17184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_2_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:2(D
2while_lstm_cell_2_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_2_biasadd_readvariableop_resource:(??(while/lstm_cell_2/BiasAdd/ReadVariableOp?'while/lstm_cell_2/MatMul/ReadVariableOp?)while/lstm_cell_2/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?"
?
while_body_12826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_1_12850_0:	d?,
while_lstm_cell_1_12852_0:	2?(
while_lstm_cell_1_12854_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_1_12850:	d?*
while_lstm_cell_1_12852:	2?&
while_lstm_cell_1_12854:	???)while/lstm_cell_1/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_12850_0while_lstm_cell_1_12852_0while_lstm_cell_1_12854_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_12812?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2x

while/NoOpNoOp*^while/lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_1_12850while_lstm_cell_1_12850_0"4
while_lstm_cell_1_12852while_lstm_cell_1_12852_0"4
while_lstm_cell_1_12854while_lstm_cell_1_12854_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_lstm_288_layer_call_fn_15596

inputs
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_288_layer_call_and_return_conditional_losses_13594s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_sequential_96_layer_call_and_return_conditional_losses_14590
lstm_288_input!
lstm_288_14563:	?!
lstm_288_14565:	d?
lstm_288_14567:	?!
lstm_289_14570:	d?!
lstm_289_14572:	2?
lstm_289_14574:	? 
lstm_290_14577:2( 
lstm_290_14579:
(
lstm_290_14581:( 
dense_96_14584:

dense_96_14586:
identity?? dense_96/StatefulPartitionedCall? lstm_288/StatefulPartitionedCall? lstm_289/StatefulPartitionedCall? lstm_290/StatefulPartitionedCall?
 lstm_288/StatefulPartitionedCallStatefulPartitionedCalllstm_288_inputlstm_288_14563lstm_288_14565lstm_288_14567*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_288_layer_call_and_return_conditional_losses_13594?
 lstm_289/StatefulPartitionedCallStatefulPartitionedCall)lstm_288/StatefulPartitionedCall:output:0lstm_289_14570lstm_289_14572lstm_289_14574*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_289_layer_call_and_return_conditional_losses_13744?
 lstm_290/StatefulPartitionedCallStatefulPartitionedCall)lstm_289/StatefulPartitionedCall:output:0lstm_290_14577lstm_290_14579lstm_290_14581*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_290_layer_call_and_return_conditional_losses_13894?
 dense_96/StatefulPartitionedCallStatefulPartitionedCall)lstm_290/StatefulPartitionedCall:output:0dense_96_14584dense_96_14586*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_96_layer_call_and_return_conditional_losses_13912x
IdentityIdentity)dense_96/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_96/StatefulPartitionedCall!^lstm_288/StatefulPartitionedCall!^lstm_289/StatefulPartitionedCall!^lstm_290/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 lstm_288/StatefulPartitionedCall lstm_288/StatefulPartitionedCall2D
 lstm_289/StatefulPartitionedCall lstm_289/StatefulPartitionedCall2D
 lstm_290/StatefulPartitionedCall lstm_290/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_288_input
?H
?
C__inference_lstm_288_layer_call_and_return_conditional_losses_16179

inputs;
(lstm_cell_matmul_readvariableop_resource:	?=
*lstm_cell_matmul_1_readvariableop_resource:	d?8
)lstm_cell_biasadd_readvariableop_resource:	?
identity?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:?????????dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:?????????d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_16095*
condR
while_cond_16094*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????d?
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?B
?

lstm_290_while_body_15473.
*lstm_290_while_lstm_290_while_loop_counter4
0lstm_290_while_lstm_290_while_maximum_iterations
lstm_290_while_placeholder 
lstm_290_while_placeholder_1 
lstm_290_while_placeholder_2 
lstm_290_while_placeholder_3-
)lstm_290_while_lstm_290_strided_slice_1_0i
elstm_290_while_tensorarrayv2read_tensorlistgetitem_lstm_290_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_290_while_lstm_cell_2_matmul_readvariableop_resource_0:2(O
=lstm_290_while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(J
<lstm_290_while_lstm_cell_2_biasadd_readvariableop_resource_0:(
lstm_290_while_identity
lstm_290_while_identity_1
lstm_290_while_identity_2
lstm_290_while_identity_3
lstm_290_while_identity_4
lstm_290_while_identity_5+
'lstm_290_while_lstm_290_strided_slice_1g
clstm_290_while_tensorarrayv2read_tensorlistgetitem_lstm_290_tensorarrayunstack_tensorlistfromtensorK
9lstm_290_while_lstm_cell_2_matmul_readvariableop_resource:2(M
;lstm_290_while_lstm_cell_2_matmul_1_readvariableop_resource:
(H
:lstm_290_while_lstm_cell_2_biasadd_readvariableop_resource:(??1lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOp?0lstm_290/while/lstm_cell_2/MatMul/ReadVariableOp?2lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOp?
@lstm_290/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_290/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_290_while_tensorarrayv2read_tensorlistgetitem_lstm_290_tensorarrayunstack_tensorlistfromtensor_0lstm_290_while_placeholderIlstm_290/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
0lstm_290/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp;lstm_290_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
!lstm_290/while/lstm_cell_2/MatMulMatMul9lstm_290/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_290/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
2lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp=lstm_290_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
#lstm_290/while/lstm_cell_2/MatMul_1MatMullstm_290_while_placeholder_2:lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_290/while/lstm_cell_2/addAddV2+lstm_290/while/lstm_cell_2/MatMul:product:0-lstm_290/while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
1lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp<lstm_290_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
"lstm_290/while/lstm_cell_2/BiasAddBiasAdd"lstm_290/while/lstm_cell_2/add:z:09lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(l
*lstm_290/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
 lstm_290/while/lstm_cell_2/splitSplit3lstm_290/while/lstm_cell_2/split/split_dim:output:0+lstm_290/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
"lstm_290/while/lstm_cell_2/SigmoidSigmoid)lstm_290/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
?
$lstm_290/while/lstm_cell_2/Sigmoid_1Sigmoid)lstm_290/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_290/while/lstm_cell_2/mulMul(lstm_290/while/lstm_cell_2/Sigmoid_1:y:0lstm_290_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
lstm_290/while/lstm_cell_2/ReluRelu)lstm_290/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
 lstm_290/while/lstm_cell_2/mul_1Mul&lstm_290/while/lstm_cell_2/Sigmoid:y:0-lstm_290/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
 lstm_290/while/lstm_cell_2/add_1AddV2"lstm_290/while/lstm_cell_2/mul:z:0$lstm_290/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
$lstm_290/while/lstm_cell_2/Sigmoid_2Sigmoid)lstm_290/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
?
!lstm_290/while/lstm_cell_2/Relu_1Relu$lstm_290/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_290/while/lstm_cell_2/mul_2Mul(lstm_290/while/lstm_cell_2/Sigmoid_2:y:0/lstm_290/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_290/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_290_while_placeholder_1lstm_290_while_placeholder$lstm_290/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_290/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_290/while/addAddV2lstm_290_while_placeholderlstm_290/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_290/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_290/while/add_1AddV2*lstm_290_while_lstm_290_while_loop_counterlstm_290/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_290/while/IdentityIdentitylstm_290/while/add_1:z:0^lstm_290/while/NoOp*
T0*
_output_shapes
: ?
lstm_290/while/Identity_1Identity0lstm_290_while_lstm_290_while_maximum_iterations^lstm_290/while/NoOp*
T0*
_output_shapes
: t
lstm_290/while/Identity_2Identitylstm_290/while/add:z:0^lstm_290/while/NoOp*
T0*
_output_shapes
: ?
lstm_290/while/Identity_3IdentityClstm_290/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_290/while/NoOp*
T0*
_output_shapes
: ?
lstm_290/while/Identity_4Identity$lstm_290/while/lstm_cell_2/mul_2:z:0^lstm_290/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_290/while/Identity_5Identity$lstm_290/while/lstm_cell_2/add_1:z:0^lstm_290/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_290/while/NoOpNoOp2^lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOp1^lstm_290/while/lstm_cell_2/MatMul/ReadVariableOp3^lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_290_while_identity lstm_290/while/Identity:output:0"?
lstm_290_while_identity_1"lstm_290/while/Identity_1:output:0"?
lstm_290_while_identity_2"lstm_290/while/Identity_2:output:0"?
lstm_290_while_identity_3"lstm_290/while/Identity_3:output:0"?
lstm_290_while_identity_4"lstm_290/while/Identity_4:output:0"?
lstm_290_while_identity_5"lstm_290/while/Identity_5:output:0"T
'lstm_290_while_lstm_290_strided_slice_1)lstm_290_while_lstm_290_strided_slice_1_0"z
:lstm_290_while_lstm_cell_2_biasadd_readvariableop_resource<lstm_290_while_lstm_cell_2_biasadd_readvariableop_resource_0"|
;lstm_290_while_lstm_cell_2_matmul_1_readvariableop_resource=lstm_290_while_lstm_cell_2_matmul_1_readvariableop_resource_0"x
9lstm_290_while_lstm_cell_2_matmul_readvariableop_resource;lstm_290_while_lstm_cell_2_matmul_readvariableop_resource_0"?
clstm_290_while_tensorarrayv2read_tensorlistgetitem_lstm_290_tensorarrayunstack_tensorlistfromtensorelstm_290_while_tensorarrayv2read_tensorlistgetitem_lstm_290_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2f
1lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOp1lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOp2d
0lstm_290/while/lstm_cell_2/MatMul/ReadVariableOp0lstm_290/while/lstm_cell_2/MatMul/ReadVariableOp2h
2lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOp2lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_13659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_13659___redundant_placeholder03
/while_while_cond_13659___redundant_placeholder13
/while_while_cond_13659___redundant_placeholder23
/while_while_cond_13659___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?7
?
while_body_13810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_2_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:2(D
2while_lstm_cell_2_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_2_biasadd_readvariableop_resource:(??(while/lstm_cell_2/BiasAdd/ReadVariableOp?'while/lstm_cell_2/MatMul/ReadVariableOp?)while/lstm_cell_2/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_12825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_12825___redundant_placeholder03
/while_while_cond_12825___redundant_placeholder13
/while_while_cond_12825___redundant_placeholder23
/while_while_cond_12825___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?7
?
C__inference_lstm_288_layer_call_and_return_conditional_losses_12545

inputs"
lstm_cell_12463:	?"
lstm_cell_12465:	d?
lstm_cell_12467:	?
identity??!lstm_cell/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_12463lstm_cell_12465lstm_cell_12467*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_12462n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_12463lstm_cell_12465lstm_cell_12467*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12476*
condR
while_cond_12475*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????dr
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
lstm_289_while_cond_15333.
*lstm_289_while_lstm_289_while_loop_counter4
0lstm_289_while_lstm_289_while_maximum_iterations
lstm_289_while_placeholder 
lstm_289_while_placeholder_1 
lstm_289_while_placeholder_2 
lstm_289_while_placeholder_30
,lstm_289_while_less_lstm_289_strided_slice_1E
Alstm_289_while_lstm_289_while_cond_15333___redundant_placeholder0E
Alstm_289_while_lstm_289_while_cond_15333___redundant_placeholder1E
Alstm_289_while_lstm_289_while_cond_15333___redundant_placeholder2E
Alstm_289_while_lstm_289_while_cond_15333___redundant_placeholder3
lstm_289_while_identity
?
lstm_289/while/LessLesslstm_289_while_placeholder,lstm_289_while_less_lstm_289_strided_slice_1*
T0*
_output_shapes
: ]
lstm_289/while/IdentityIdentitylstm_289/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_289_while_identity lstm_289/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?

?
-__inference_sequential_96_layer_call_fn_13944
lstm_288_input
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_288_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_96_layer_call_and_return_conditional_losses_13919o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_288_input
?I
?
C__inference_lstm_288_layer_call_and_return_conditional_losses_15893
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	?=
*lstm_cell_matmul_1_readvariableop_resource:	d?8
)lstm_cell_biasadd_readvariableop_resource:	?
identity?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:?????????dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:?????????d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_15809*
condR
while_cond_15808*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d?
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_17183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_17183___redundant_placeholder03
/while_while_cond_17183___redundant_placeholder13
/while_while_cond_17183___redundant_placeholder23
/while_while_cond_17183___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_16567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_16567___redundant_placeholder03
/while_while_cond_16567___redundant_placeholder13
/while_while_cond_16567___redundant_placeholder23
/while_while_cond_16567___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?

?
lstm_288_while_cond_14767.
*lstm_288_while_lstm_288_while_loop_counter4
0lstm_288_while_lstm_288_while_maximum_iterations
lstm_288_while_placeholder 
lstm_288_while_placeholder_1 
lstm_288_while_placeholder_2 
lstm_288_while_placeholder_30
,lstm_288_while_less_lstm_288_strided_slice_1E
Alstm_288_while_lstm_288_while_cond_14767___redundant_placeholder0E
Alstm_288_while_lstm_288_while_cond_14767___redundant_placeholder1E
Alstm_288_while_lstm_288_while_cond_14767___redundant_placeholder2E
Alstm_288_while_lstm_288_while_cond_14767___redundant_placeholder3
lstm_288_while_identity
?
lstm_288/while/LessLesslstm_288_while_placeholder,lstm_288_while_less_lstm_288_strided_slice_1*
T0*
_output_shapes
: ]
lstm_288/while/IdentityIdentitylstm_288/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_288_while_identity lstm_288/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?B
?

lstm_290_while_body_15046.
*lstm_290_while_lstm_290_while_loop_counter4
0lstm_290_while_lstm_290_while_maximum_iterations
lstm_290_while_placeholder 
lstm_290_while_placeholder_1 
lstm_290_while_placeholder_2 
lstm_290_while_placeholder_3-
)lstm_290_while_lstm_290_strided_slice_1_0i
elstm_290_while_tensorarrayv2read_tensorlistgetitem_lstm_290_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_290_while_lstm_cell_2_matmul_readvariableop_resource_0:2(O
=lstm_290_while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(J
<lstm_290_while_lstm_cell_2_biasadd_readvariableop_resource_0:(
lstm_290_while_identity
lstm_290_while_identity_1
lstm_290_while_identity_2
lstm_290_while_identity_3
lstm_290_while_identity_4
lstm_290_while_identity_5+
'lstm_290_while_lstm_290_strided_slice_1g
clstm_290_while_tensorarrayv2read_tensorlistgetitem_lstm_290_tensorarrayunstack_tensorlistfromtensorK
9lstm_290_while_lstm_cell_2_matmul_readvariableop_resource:2(M
;lstm_290_while_lstm_cell_2_matmul_1_readvariableop_resource:
(H
:lstm_290_while_lstm_cell_2_biasadd_readvariableop_resource:(??1lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOp?0lstm_290/while/lstm_cell_2/MatMul/ReadVariableOp?2lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOp?
@lstm_290/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_290/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_290_while_tensorarrayv2read_tensorlistgetitem_lstm_290_tensorarrayunstack_tensorlistfromtensor_0lstm_290_while_placeholderIlstm_290/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
0lstm_290/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp;lstm_290_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
!lstm_290/while/lstm_cell_2/MatMulMatMul9lstm_290/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_290/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
2lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp=lstm_290_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
#lstm_290/while/lstm_cell_2/MatMul_1MatMullstm_290_while_placeholder_2:lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_290/while/lstm_cell_2/addAddV2+lstm_290/while/lstm_cell_2/MatMul:product:0-lstm_290/while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
1lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp<lstm_290_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
"lstm_290/while/lstm_cell_2/BiasAddBiasAdd"lstm_290/while/lstm_cell_2/add:z:09lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(l
*lstm_290/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
 lstm_290/while/lstm_cell_2/splitSplit3lstm_290/while/lstm_cell_2/split/split_dim:output:0+lstm_290/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
"lstm_290/while/lstm_cell_2/SigmoidSigmoid)lstm_290/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
?
$lstm_290/while/lstm_cell_2/Sigmoid_1Sigmoid)lstm_290/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_290/while/lstm_cell_2/mulMul(lstm_290/while/lstm_cell_2/Sigmoid_1:y:0lstm_290_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
lstm_290/while/lstm_cell_2/ReluRelu)lstm_290/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
 lstm_290/while/lstm_cell_2/mul_1Mul&lstm_290/while/lstm_cell_2/Sigmoid:y:0-lstm_290/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
 lstm_290/while/lstm_cell_2/add_1AddV2"lstm_290/while/lstm_cell_2/mul:z:0$lstm_290/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
$lstm_290/while/lstm_cell_2/Sigmoid_2Sigmoid)lstm_290/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
?
!lstm_290/while/lstm_cell_2/Relu_1Relu$lstm_290/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_290/while/lstm_cell_2/mul_2Mul(lstm_290/while/lstm_cell_2/Sigmoid_2:y:0/lstm_290/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_290/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_290_while_placeholder_1lstm_290_while_placeholder$lstm_290/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_290/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_290/while/addAddV2lstm_290_while_placeholderlstm_290/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_290/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_290/while/add_1AddV2*lstm_290_while_lstm_290_while_loop_counterlstm_290/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_290/while/IdentityIdentitylstm_290/while/add_1:z:0^lstm_290/while/NoOp*
T0*
_output_shapes
: ?
lstm_290/while/Identity_1Identity0lstm_290_while_lstm_290_while_maximum_iterations^lstm_290/while/NoOp*
T0*
_output_shapes
: t
lstm_290/while/Identity_2Identitylstm_290/while/add:z:0^lstm_290/while/NoOp*
T0*
_output_shapes
: ?
lstm_290/while/Identity_3IdentityClstm_290/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_290/while/NoOp*
T0*
_output_shapes
: ?
lstm_290/while/Identity_4Identity$lstm_290/while/lstm_cell_2/mul_2:z:0^lstm_290/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_290/while/Identity_5Identity$lstm_290/while/lstm_cell_2/add_1:z:0^lstm_290/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_290/while/NoOpNoOp2^lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOp1^lstm_290/while/lstm_cell_2/MatMul/ReadVariableOp3^lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_290_while_identity lstm_290/while/Identity:output:0"?
lstm_290_while_identity_1"lstm_290/while/Identity_1:output:0"?
lstm_290_while_identity_2"lstm_290/while/Identity_2:output:0"?
lstm_290_while_identity_3"lstm_290/while/Identity_3:output:0"?
lstm_290_while_identity_4"lstm_290/while/Identity_4:output:0"?
lstm_290_while_identity_5"lstm_290/while/Identity_5:output:0"T
'lstm_290_while_lstm_290_strided_slice_1)lstm_290_while_lstm_290_strided_slice_1_0"z
:lstm_290_while_lstm_cell_2_biasadd_readvariableop_resource<lstm_290_while_lstm_cell_2_biasadd_readvariableop_resource_0"|
;lstm_290_while_lstm_cell_2_matmul_1_readvariableop_resource=lstm_290_while_lstm_cell_2_matmul_1_readvariableop_resource_0"x
9lstm_290_while_lstm_cell_2_matmul_readvariableop_resource;lstm_290_while_lstm_cell_2_matmul_readvariableop_resource_0"?
clstm_290_while_tensorarrayv2read_tensorlistgetitem_lstm_290_tensorarrayunstack_tensorlistfromtensorelstm_290_while_tensorarrayv2read_tensorlistgetitem_lstm_290_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2f
1lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOp1lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOp2d
0lstm_290/while/lstm_cell_2/MatMul/ReadVariableOp0lstm_290/while/lstm_cell_2/MatMul/ReadVariableOp2h
2lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOp2lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_lstm_288_layer_call_fn_15607

inputs
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_288_layer_call_and_return_conditional_losses_14440s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_lstm_290_layer_call_fn_16828

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_290_layer_call_and_return_conditional_losses_13894o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?7
?
while_body_17327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_2_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:2(D
2while_lstm_cell_2_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_2_biasadd_readvariableop_resource:(??(while/lstm_cell_2/BiasAdd/ReadVariableOp?'while/lstm_cell_2/MatMul/ReadVariableOp?)while/lstm_cell_2/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?7
?
C__inference_lstm_289_layer_call_and_return_conditional_losses_13086

inputs$
lstm_cell_1_13004:	d?$
lstm_cell_1_13006:	2? 
lstm_cell_1_13008:	?
identity??#lstm_cell_1/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_13004lstm_cell_1_13006lstm_cell_1_13008*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_12958n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_13004lstm_cell_1_13006lstm_cell_1_13008*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_13017*
condR
while_cond_13016*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2t
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_12958

inputs

states
states_11
matmul_readvariableop_resource:	d?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates
?Q
?
'sequential_96_lstm_288_while_body_12027J
Fsequential_96_lstm_288_while_sequential_96_lstm_288_while_loop_counterP
Lsequential_96_lstm_288_while_sequential_96_lstm_288_while_maximum_iterations,
(sequential_96_lstm_288_while_placeholder.
*sequential_96_lstm_288_while_placeholder_1.
*sequential_96_lstm_288_while_placeholder_2.
*sequential_96_lstm_288_while_placeholder_3I
Esequential_96_lstm_288_while_sequential_96_lstm_288_strided_slice_1_0?
?sequential_96_lstm_288_while_tensorarrayv2read_tensorlistgetitem_sequential_96_lstm_288_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_96_lstm_288_while_lstm_cell_matmul_readvariableop_resource_0:	?\
Isequential_96_lstm_288_while_lstm_cell_matmul_1_readvariableop_resource_0:	d?W
Hsequential_96_lstm_288_while_lstm_cell_biasadd_readvariableop_resource_0:	?)
%sequential_96_lstm_288_while_identity+
'sequential_96_lstm_288_while_identity_1+
'sequential_96_lstm_288_while_identity_2+
'sequential_96_lstm_288_while_identity_3+
'sequential_96_lstm_288_while_identity_4+
'sequential_96_lstm_288_while_identity_5G
Csequential_96_lstm_288_while_sequential_96_lstm_288_strided_slice_1?
sequential_96_lstm_288_while_tensorarrayv2read_tensorlistgetitem_sequential_96_lstm_288_tensorarrayunstack_tensorlistfromtensorX
Esequential_96_lstm_288_while_lstm_cell_matmul_readvariableop_resource:	?Z
Gsequential_96_lstm_288_while_lstm_cell_matmul_1_readvariableop_resource:	d?U
Fsequential_96_lstm_288_while_lstm_cell_biasadd_readvariableop_resource:	???=sequential_96/lstm_288/while/lstm_cell/BiasAdd/ReadVariableOp?<sequential_96/lstm_288/while/lstm_cell/MatMul/ReadVariableOp?>sequential_96/lstm_288/while/lstm_cell/MatMul_1/ReadVariableOp?
Nsequential_96/lstm_288/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_96/lstm_288/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_96_lstm_288_while_tensorarrayv2read_tensorlistgetitem_sequential_96_lstm_288_tensorarrayunstack_tensorlistfromtensor_0(sequential_96_lstm_288_while_placeholderWsequential_96/lstm_288/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
<sequential_96/lstm_288/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpGsequential_96_lstm_288_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
-sequential_96/lstm_288/while/lstm_cell/MatMulMatMulGsequential_96/lstm_288/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_96/lstm_288/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
>sequential_96/lstm_288/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpIsequential_96_lstm_288_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
/sequential_96/lstm_288/while/lstm_cell/MatMul_1MatMul*sequential_96_lstm_288_while_placeholder_2Fsequential_96/lstm_288/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*sequential_96/lstm_288/while/lstm_cell/addAddV27sequential_96/lstm_288/while/lstm_cell/MatMul:product:09sequential_96/lstm_288/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
=sequential_96/lstm_288/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpHsequential_96_lstm_288_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
.sequential_96/lstm_288/while/lstm_cell/BiasAddBiasAdd.sequential_96/lstm_288/while/lstm_cell/add:z:0Esequential_96/lstm_288/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????x
6sequential_96/lstm_288/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
,sequential_96/lstm_288/while/lstm_cell/splitSplit?sequential_96/lstm_288/while/lstm_cell/split/split_dim:output:07sequential_96/lstm_288/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
.sequential_96/lstm_288/while/lstm_cell/SigmoidSigmoid5sequential_96/lstm_288/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????d?
0sequential_96/lstm_288/while/lstm_cell/Sigmoid_1Sigmoid5sequential_96/lstm_288/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????d?
*sequential_96/lstm_288/while/lstm_cell/mulMul4sequential_96/lstm_288/while/lstm_cell/Sigmoid_1:y:0*sequential_96_lstm_288_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
+sequential_96/lstm_288/while/lstm_cell/ReluRelu5sequential_96/lstm_288/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d?
,sequential_96/lstm_288/while/lstm_cell/mul_1Mul2sequential_96/lstm_288/while/lstm_cell/Sigmoid:y:09sequential_96/lstm_288/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
,sequential_96/lstm_288/while/lstm_cell/add_1AddV2.sequential_96/lstm_288/while/lstm_cell/mul:z:00sequential_96/lstm_288/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_96/lstm_288/while/lstm_cell/Sigmoid_2Sigmoid5sequential_96/lstm_288/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????d?
-sequential_96/lstm_288/while/lstm_cell/Relu_1Relu0sequential_96/lstm_288/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
,sequential_96/lstm_288/while/lstm_cell/mul_2Mul4sequential_96/lstm_288/while/lstm_cell/Sigmoid_2:y:0;sequential_96/lstm_288/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_96/lstm_288/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_96_lstm_288_while_placeholder_1(sequential_96_lstm_288_while_placeholder0sequential_96/lstm_288/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_96/lstm_288/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_96/lstm_288/while/addAddV2(sequential_96_lstm_288_while_placeholder+sequential_96/lstm_288/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_96/lstm_288/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_96/lstm_288/while/add_1AddV2Fsequential_96_lstm_288_while_sequential_96_lstm_288_while_loop_counter-sequential_96/lstm_288/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_96/lstm_288/while/IdentityIdentity&sequential_96/lstm_288/while/add_1:z:0"^sequential_96/lstm_288/while/NoOp*
T0*
_output_shapes
: ?
'sequential_96/lstm_288/while/Identity_1IdentityLsequential_96_lstm_288_while_sequential_96_lstm_288_while_maximum_iterations"^sequential_96/lstm_288/while/NoOp*
T0*
_output_shapes
: ?
'sequential_96/lstm_288/while/Identity_2Identity$sequential_96/lstm_288/while/add:z:0"^sequential_96/lstm_288/while/NoOp*
T0*
_output_shapes
: ?
'sequential_96/lstm_288/while/Identity_3IdentityQsequential_96/lstm_288/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_96/lstm_288/while/NoOp*
T0*
_output_shapes
: ?
'sequential_96/lstm_288/while/Identity_4Identity0sequential_96/lstm_288/while/lstm_cell/mul_2:z:0"^sequential_96/lstm_288/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_96/lstm_288/while/Identity_5Identity0sequential_96/lstm_288/while/lstm_cell/add_1:z:0"^sequential_96/lstm_288/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_96/lstm_288/while/NoOpNoOp>^sequential_96/lstm_288/while/lstm_cell/BiasAdd/ReadVariableOp=^sequential_96/lstm_288/while/lstm_cell/MatMul/ReadVariableOp?^sequential_96/lstm_288/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_96_lstm_288_while_identity.sequential_96/lstm_288/while/Identity:output:0"[
'sequential_96_lstm_288_while_identity_10sequential_96/lstm_288/while/Identity_1:output:0"[
'sequential_96_lstm_288_while_identity_20sequential_96/lstm_288/while/Identity_2:output:0"[
'sequential_96_lstm_288_while_identity_30sequential_96/lstm_288/while/Identity_3:output:0"[
'sequential_96_lstm_288_while_identity_40sequential_96/lstm_288/while/Identity_4:output:0"[
'sequential_96_lstm_288_while_identity_50sequential_96/lstm_288/while/Identity_5:output:0"?
Fsequential_96_lstm_288_while_lstm_cell_biasadd_readvariableop_resourceHsequential_96_lstm_288_while_lstm_cell_biasadd_readvariableop_resource_0"?
Gsequential_96_lstm_288_while_lstm_cell_matmul_1_readvariableop_resourceIsequential_96_lstm_288_while_lstm_cell_matmul_1_readvariableop_resource_0"?
Esequential_96_lstm_288_while_lstm_cell_matmul_readvariableop_resourceGsequential_96_lstm_288_while_lstm_cell_matmul_readvariableop_resource_0"?
Csequential_96_lstm_288_while_sequential_96_lstm_288_strided_slice_1Esequential_96_lstm_288_while_sequential_96_lstm_288_strided_slice_1_0"?
sequential_96_lstm_288_while_tensorarrayv2read_tensorlistgetitem_sequential_96_lstm_288_tensorarrayunstack_tensorlistfromtensor?sequential_96_lstm_288_while_tensorarrayv2read_tensorlistgetitem_sequential_96_lstm_288_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2~
=sequential_96/lstm_288/while/lstm_cell/BiasAdd/ReadVariableOp=sequential_96/lstm_288/while/lstm_cell/BiasAdd/ReadVariableOp2|
<sequential_96/lstm_288/while/lstm_cell/MatMul/ReadVariableOp<sequential_96/lstm_288/while/lstm_cell/MatMul/ReadVariableOp2?
>sequential_96/lstm_288/while/lstm_cell/MatMul_1/ReadVariableOp>sequential_96/lstm_288/while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?

?
#__inference_signature_wrapper_14655
lstm_288_input
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_288_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_12395o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_288_input
?
?
while_cond_13175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_13175___redundant_placeholder03
/while_while_cond_13175___redundant_placeholder13
/while_while_cond_13175___redundant_placeholder23
/while_while_cond_13175___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?"
?
while_body_13176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_2_13200_0:2(+
while_lstm_cell_2_13202_0:
('
while_lstm_cell_2_13204_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_2_13200:2()
while_lstm_cell_2_13202:
(%
while_lstm_cell_2_13204:(??)while/lstm_cell_2/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_13200_0while_lstm_cell_2_13202_0while_lstm_cell_2_13204_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_13162?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
x

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_2_13200while_lstm_cell_2_13200_0"4
while_lstm_cell_2_13202while_lstm_cell_2_13202_0"4
while_lstm_cell_2_13204while_lstm_cell_2_13204_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?6
?
while_body_15952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	d?@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?C
0while_lstm_cell_matmul_1_readvariableop_resource:	d?>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?7
?
while_body_16282
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	d?G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2?B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	d?E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	2?@
1while_lstm_cell_1_biasadd_readvariableop_resource:	???(while/lstm_cell_1/BiasAdd/ReadVariableOp?'while/lstm_cell_1/MatMul/ReadVariableOp?)while/lstm_cell_1/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_lstm_290_layer_call_fn_16806
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_290_layer_call_and_return_conditional_losses_13245o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?I
?
C__inference_lstm_290_layer_call_and_return_conditional_losses_17411

inputs<
*lstm_cell_2_matmul_readvariableop_resource:2(>
,lstm_cell_2_matmul_1_readvariableop_resource:
(9
+lstm_cell_2_biasadd_readvariableop_resource:(
identity??"lstm_cell_2/BiasAdd/ReadVariableOp?!lstm_cell_2/MatMul/ReadVariableOp?#lstm_cell_2/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_17327*
condR
while_cond_17326*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?7
?
while_body_16425
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	d?G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2?B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	d?E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	2?@
1while_lstm_cell_1_biasadd_readvariableop_resource:	???(while/lstm_cell_1/BiasAdd/ReadVariableOp?'while/lstm_cell_1/MatMul/ReadVariableOp?)while/lstm_cell_1/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_17724

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?
?
'sequential_96_lstm_288_while_cond_12026J
Fsequential_96_lstm_288_while_sequential_96_lstm_288_while_loop_counterP
Lsequential_96_lstm_288_while_sequential_96_lstm_288_while_maximum_iterations,
(sequential_96_lstm_288_while_placeholder.
*sequential_96_lstm_288_while_placeholder_1.
*sequential_96_lstm_288_while_placeholder_2.
*sequential_96_lstm_288_while_placeholder_3L
Hsequential_96_lstm_288_while_less_sequential_96_lstm_288_strided_slice_1a
]sequential_96_lstm_288_while_sequential_96_lstm_288_while_cond_12026___redundant_placeholder0a
]sequential_96_lstm_288_while_sequential_96_lstm_288_while_cond_12026___redundant_placeholder1a
]sequential_96_lstm_288_while_sequential_96_lstm_288_while_cond_12026___redundant_placeholder2a
]sequential_96_lstm_288_while_sequential_96_lstm_288_while_cond_12026___redundant_placeholder3)
%sequential_96_lstm_288_while_identity
?
!sequential_96/lstm_288/while/LessLess(sequential_96_lstm_288_while_placeholderHsequential_96_lstm_288_while_less_sequential_96_lstm_288_strided_slice_1*
T0*
_output_shapes
: y
%sequential_96/lstm_288/while/IdentityIdentity%sequential_96/lstm_288/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_96_lstm_288_while_identity.sequential_96/lstm_288/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?

?
lstm_290_while_cond_15045.
*lstm_290_while_lstm_290_while_loop_counter4
0lstm_290_while_lstm_290_while_maximum_iterations
lstm_290_while_placeholder 
lstm_290_while_placeholder_1 
lstm_290_while_placeholder_2 
lstm_290_while_placeholder_30
,lstm_290_while_less_lstm_290_strided_slice_1E
Alstm_290_while_lstm_290_while_cond_15045___redundant_placeholder0E
Alstm_290_while_lstm_290_while_cond_15045___redundant_placeholder1E
Alstm_290_while_lstm_290_while_cond_15045___redundant_placeholder2E
Alstm_290_while_lstm_290_while_cond_15045___redundant_placeholder3
lstm_290_while_identity
?
lstm_290/while/LessLesslstm_290_while_placeholder,lstm_290_while_less_lstm_290_strided_slice_1*
T0*
_output_shapes
: ]
lstm_290/while/IdentityIdentitylstm_290/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_290_while_identity lstm_290/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_13509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_13509___redundant_placeholder03
/while_while_cond_13509___redundant_placeholder13
/while_while_cond_13509___redundant_placeholder23
/while_while_cond_13509___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?B
?

lstm_289_while_body_14907.
*lstm_289_while_lstm_289_while_loop_counter4
0lstm_289_while_lstm_289_while_maximum_iterations
lstm_289_while_placeholder 
lstm_289_while_placeholder_1 
lstm_289_while_placeholder_2 
lstm_289_while_placeholder_3-
)lstm_289_while_lstm_289_strided_slice_1_0i
elstm_289_while_tensorarrayv2read_tensorlistgetitem_lstm_289_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_289_while_lstm_cell_1_matmul_readvariableop_resource_0:	d?P
=lstm_289_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2?K
<lstm_289_while_lstm_cell_1_biasadd_readvariableop_resource_0:	?
lstm_289_while_identity
lstm_289_while_identity_1
lstm_289_while_identity_2
lstm_289_while_identity_3
lstm_289_while_identity_4
lstm_289_while_identity_5+
'lstm_289_while_lstm_289_strided_slice_1g
clstm_289_while_tensorarrayv2read_tensorlistgetitem_lstm_289_tensorarrayunstack_tensorlistfromtensorL
9lstm_289_while_lstm_cell_1_matmul_readvariableop_resource:	d?N
;lstm_289_while_lstm_cell_1_matmul_1_readvariableop_resource:	2?I
:lstm_289_while_lstm_cell_1_biasadd_readvariableop_resource:	???1lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOp?0lstm_289/while/lstm_cell_1/MatMul/ReadVariableOp?2lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOp?
@lstm_289/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_289/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_289_while_tensorarrayv2read_tensorlistgetitem_lstm_289_tensorarrayunstack_tensorlistfromtensor_0lstm_289_while_placeholderIlstm_289/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
0lstm_289/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_289_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
!lstm_289/while/lstm_cell_1/MatMulMatMul9lstm_289/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_289/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
2lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp=lstm_289_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
#lstm_289/while/lstm_cell_1/MatMul_1MatMullstm_289_while_placeholder_2:lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_289/while/lstm_cell_1/addAddV2+lstm_289/while/lstm_cell_1/MatMul:product:0-lstm_289/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
1lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_289_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
"lstm_289/while/lstm_cell_1/BiasAddBiasAdd"lstm_289/while/lstm_cell_1/add:z:09lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????l
*lstm_289/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
 lstm_289/while/lstm_cell_1/splitSplit3lstm_289/while/lstm_cell_1/split/split_dim:output:0+lstm_289/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
"lstm_289/while/lstm_cell_1/SigmoidSigmoid)lstm_289/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2?
$lstm_289/while/lstm_cell_1/Sigmoid_1Sigmoid)lstm_289/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_289/while/lstm_cell_1/mulMul(lstm_289/while/lstm_cell_1/Sigmoid_1:y:0lstm_289_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
lstm_289/while/lstm_cell_1/ReluRelu)lstm_289/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
 lstm_289/while/lstm_cell_1/mul_1Mul&lstm_289/while/lstm_cell_1/Sigmoid:y:0-lstm_289/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
 lstm_289/while/lstm_cell_1/add_1AddV2"lstm_289/while/lstm_cell_1/mul:z:0$lstm_289/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
$lstm_289/while/lstm_cell_1/Sigmoid_2Sigmoid)lstm_289/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2?
!lstm_289/while/lstm_cell_1/Relu_1Relu$lstm_289/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_289/while/lstm_cell_1/mul_2Mul(lstm_289/while/lstm_cell_1/Sigmoid_2:y:0/lstm_289/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_289/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_289_while_placeholder_1lstm_289_while_placeholder$lstm_289/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_289/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_289/while/addAddV2lstm_289_while_placeholderlstm_289/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_289/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_289/while/add_1AddV2*lstm_289_while_lstm_289_while_loop_counterlstm_289/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_289/while/IdentityIdentitylstm_289/while/add_1:z:0^lstm_289/while/NoOp*
T0*
_output_shapes
: ?
lstm_289/while/Identity_1Identity0lstm_289_while_lstm_289_while_maximum_iterations^lstm_289/while/NoOp*
T0*
_output_shapes
: t
lstm_289/while/Identity_2Identitylstm_289/while/add:z:0^lstm_289/while/NoOp*
T0*
_output_shapes
: ?
lstm_289/while/Identity_3IdentityClstm_289/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_289/while/NoOp*
T0*
_output_shapes
: ?
lstm_289/while/Identity_4Identity$lstm_289/while/lstm_cell_1/mul_2:z:0^lstm_289/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_289/while/Identity_5Identity$lstm_289/while/lstm_cell_1/add_1:z:0^lstm_289/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_289/while/NoOpNoOp2^lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOp1^lstm_289/while/lstm_cell_1/MatMul/ReadVariableOp3^lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_289_while_identity lstm_289/while/Identity:output:0"?
lstm_289_while_identity_1"lstm_289/while/Identity_1:output:0"?
lstm_289_while_identity_2"lstm_289/while/Identity_2:output:0"?
lstm_289_while_identity_3"lstm_289/while/Identity_3:output:0"?
lstm_289_while_identity_4"lstm_289/while/Identity_4:output:0"?
lstm_289_while_identity_5"lstm_289/while/Identity_5:output:0"T
'lstm_289_while_lstm_289_strided_slice_1)lstm_289_while_lstm_289_strided_slice_1_0"z
:lstm_289_while_lstm_cell_1_biasadd_readvariableop_resource<lstm_289_while_lstm_cell_1_biasadd_readvariableop_resource_0"|
;lstm_289_while_lstm_cell_1_matmul_1_readvariableop_resource=lstm_289_while_lstm_cell_1_matmul_1_readvariableop_resource_0"x
9lstm_289_while_lstm_cell_1_matmul_readvariableop_resource;lstm_289_while_lstm_cell_1_matmul_readvariableop_resource_0"?
clstm_289_while_tensorarrayv2read_tensorlistgetitem_lstm_289_tensorarrayunstack_tensorlistfromtensorelstm_289_while_tensorarrayv2read_tensorlistgetitem_lstm_289_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2f
1lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOp1lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOp2d
0lstm_289/while/lstm_cell_1/MatMul/ReadVariableOp0lstm_289/while/lstm_cell_1/MatMul/ReadVariableOp2h
2lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOp2lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_13366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_13366___redundant_placeholder03
/while_while_cond_13366___redundant_placeholder13
/while_while_cond_13366___redundant_placeholder23
/while_while_cond_13366___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
(__inference_lstm_289_layer_call_fn_16201
inputs_0
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_289_layer_call_and_return_conditional_losses_13086|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?	
?
C__inference_dense_96_layer_call_and_return_conditional_losses_17430

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?7
?
while_body_16898
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_2_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:2(D
2while_lstm_cell_2_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_2_biasadd_readvariableop_resource:(??(while/lstm_cell_2/BiasAdd/ReadVariableOp?'while/lstm_cell_2/MatMul/ReadVariableOp?)while/lstm_cell_2/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_lstm_cell_1_layer_call_fn_17562

inputs
states_0
states_1
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_12958o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?H
?
C__inference_lstm_288_layer_call_and_return_conditional_losses_13594

inputs;
(lstm_cell_matmul_readvariableop_resource:	?=
*lstm_cell_matmul_1_readvariableop_resource:	d?8
)lstm_cell_biasadd_readvariableop_resource:	?
identity?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:?????????dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:?????????d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_13510*
condR
while_cond_13509*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????d?
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?6
?
while_body_14356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	d?@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?C
0while_lstm_cell_matmul_1_readvariableop_resource:	d?>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?J
?
C__inference_lstm_290_layer_call_and_return_conditional_losses_16982
inputs_0<
*lstm_cell_2_matmul_readvariableop_resource:2(>
,lstm_cell_2_matmul_1_readvariableop_resource:
(9
+lstm_cell_2_biasadd_readvariableop_resource:(
identity??"lstm_cell_2/BiasAdd/ReadVariableOp?!lstm_cell_2/MatMul/ReadVariableOp?#lstm_cell_2/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_16898*
condR
while_cond_16897*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
(__inference_lstm_289_layer_call_fn_16190
inputs_0
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_289_layer_call_and_return_conditional_losses_12895|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_17594

inputs
states_0
states_11
matmul_readvariableop_resource:	d?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?6
?
while_body_15666
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	d?@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?C
0while_lstm_cell_matmul_1_readvariableop_resource:	d?>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
H__inference_sequential_96_layer_call_and_return_conditional_losses_13919

inputs!
lstm_288_13595:	?!
lstm_288_13597:	d?
lstm_288_13599:	?!
lstm_289_13745:	d?!
lstm_289_13747:	2?
lstm_289_13749:	? 
lstm_290_13895:2( 
lstm_290_13897:
(
lstm_290_13899:( 
dense_96_13913:

dense_96_13915:
identity?? dense_96/StatefulPartitionedCall? lstm_288/StatefulPartitionedCall? lstm_289/StatefulPartitionedCall? lstm_290/StatefulPartitionedCall?
 lstm_288/StatefulPartitionedCallStatefulPartitionedCallinputslstm_288_13595lstm_288_13597lstm_288_13599*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_288_layer_call_and_return_conditional_losses_13594?
 lstm_289/StatefulPartitionedCallStatefulPartitionedCall)lstm_288/StatefulPartitionedCall:output:0lstm_289_13745lstm_289_13747lstm_289_13749*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_289_layer_call_and_return_conditional_losses_13744?
 lstm_290/StatefulPartitionedCallStatefulPartitionedCall)lstm_289/StatefulPartitionedCall:output:0lstm_290_13895lstm_290_13897lstm_290_13899*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_290_layer_call_and_return_conditional_losses_13894?
 dense_96/StatefulPartitionedCallStatefulPartitionedCall)lstm_290/StatefulPartitionedCall:output:0dense_96_13913dense_96_13915*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_96_layer_call_and_return_conditional_losses_13912x
IdentityIdentity)dense_96/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_96/StatefulPartitionedCall!^lstm_288/StatefulPartitionedCall!^lstm_289/StatefulPartitionedCall!^lstm_290/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 lstm_288/StatefulPartitionedCall lstm_288/StatefulPartitionedCall2D
 lstm_289/StatefulPartitionedCall lstm_289/StatefulPartitionedCall2D
 lstm_290/StatefulPartitionedCall lstm_290/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?7
?
while_body_16711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	d?G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2?B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	d?E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	2?@
1while_lstm_cell_1_biasadd_readvariableop_resource:	???(while/lstm_cell_1/BiasAdd/ReadVariableOp?'while/lstm_cell_1/MatMul/ReadVariableOp?)while/lstm_cell_1/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?

?
lstm_289_while_cond_14906.
*lstm_289_while_lstm_289_while_loop_counter4
0lstm_289_while_lstm_289_while_maximum_iterations
lstm_289_while_placeholder 
lstm_289_while_placeholder_1 
lstm_289_while_placeholder_2 
lstm_289_while_placeholder_30
,lstm_289_while_less_lstm_289_strided_slice_1E
Alstm_289_while_lstm_289_while_cond_14906___redundant_placeholder0E
Alstm_289_while_lstm_289_while_cond_14906___redundant_placeholder1E
Alstm_289_while_lstm_289_while_cond_14906___redundant_placeholder2E
Alstm_289_while_lstm_289_while_cond_14906___redundant_placeholder3
lstm_289_while_identity
?
lstm_289/while/LessLesslstm_289_while_placeholder,lstm_289_while_less_lstm_289_strided_slice_1*
T0*
_output_shapes
: ]
lstm_289/while/IdentityIdentitylstm_289/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_289_while_identity lstm_289/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?I
?
C__inference_lstm_289_layer_call_and_return_conditional_losses_13744

inputs=
*lstm_cell_1_matmul_readvariableop_resource:	d??
,lstm_cell_1_matmul_1_readvariableop_resource:	2?:
+lstm_cell_1_biasadd_readvariableop_resource:	?
identity??"lstm_cell_1/BiasAdd/ReadVariableOp?!lstm_cell_1/MatMul/ReadVariableOp?#lstm_cell_1/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_13660*
condR
while_cond_13659*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????2?
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?7
?
C__inference_lstm_288_layer_call_and_return_conditional_losses_12736

inputs"
lstm_cell_12654:	?"
lstm_cell_12656:	d?
lstm_cell_12658:	?
identity??!lstm_cell/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_12654lstm_cell_12656lstm_cell_12658*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_12608n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_12654lstm_cell_12656lstm_cell_12658*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12667*
condR
while_cond_12666*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????dr
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?"
?
while_body_12667
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_12691_0:	?*
while_lstm_cell_12693_0:	d?&
while_lstm_cell_12695_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_12691:	?(
while_lstm_cell_12693:	d?$
while_lstm_cell_12695:	???'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_12691_0while_lstm_cell_12693_0while_lstm_cell_12695_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_12608?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dv

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_12691while_lstm_cell_12691_0"0
while_lstm_cell_12693while_lstm_cell_12693_0"0
while_lstm_cell_12695while_lstm_cell_12695_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?"
?
while_body_13017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_1_13041_0:	d?,
while_lstm_cell_1_13043_0:	2?(
while_lstm_cell_1_13045_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_1_13041:	d?*
while_lstm_cell_1_13043:	2?&
while_lstm_cell_1_13045:	???)while/lstm_cell_1/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_13041_0while_lstm_cell_1_13043_0while_lstm_cell_1_13045_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_12958?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2x

while/NoOpNoOp*^while/lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_1_13041while_lstm_cell_1_13041_0"4
while_lstm_cell_1_13043while_lstm_cell_1_13043_0"4
while_lstm_cell_1_13045while_lstm_cell_1_13045_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_15665
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_15665___redundant_placeholder03
/while_while_cond_15665___redundant_placeholder13
/while_while_cond_15665___redundant_placeholder23
/while_while_cond_15665___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?H
?
C__inference_lstm_288_layer_call_and_return_conditional_losses_16036

inputs;
(lstm_cell_matmul_readvariableop_resource:	?=
*lstm_cell_matmul_1_readvariableop_resource:	d?8
)lstm_cell_biasadd_readvariableop_resource:	?
identity?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:?????????dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:?????????d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_15952*
condR
while_cond_15951*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????d?
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?I
?
C__inference_lstm_290_layer_call_and_return_conditional_losses_17268

inputs<
*lstm_cell_2_matmul_readvariableop_resource:2(>
,lstm_cell_2_matmul_1_readvariableop_resource:
(9
+lstm_cell_2_biasadd_readvariableop_resource:(
identity??"lstm_cell_2/BiasAdd/ReadVariableOp?!lstm_cell_2/MatMul/ReadVariableOp?#lstm_cell_2/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_17184*
condR
while_cond_17183*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_13162

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????

 
_user_specified_namestates:OK
'
_output_shapes
:?????????

 
_user_specified_namestates
?
?
while_cond_14355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_14355___redundant_placeholder03
/while_while_cond_14355___redundant_placeholder13
/while_while_cond_14355___redundant_placeholder23
/while_while_cond_14355___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
??
?

H__inference_sequential_96_layer_call_and_return_conditional_losses_15136

inputsD
1lstm_288_lstm_cell_matmul_readvariableop_resource:	?F
3lstm_288_lstm_cell_matmul_1_readvariableop_resource:	d?A
2lstm_288_lstm_cell_biasadd_readvariableop_resource:	?F
3lstm_289_lstm_cell_1_matmul_readvariableop_resource:	d?H
5lstm_289_lstm_cell_1_matmul_1_readvariableop_resource:	2?C
4lstm_289_lstm_cell_1_biasadd_readvariableop_resource:	?E
3lstm_290_lstm_cell_2_matmul_readvariableop_resource:2(G
5lstm_290_lstm_cell_2_matmul_1_readvariableop_resource:
(B
4lstm_290_lstm_cell_2_biasadd_readvariableop_resource:(9
'dense_96_matmul_readvariableop_resource:
6
(dense_96_biasadd_readvariableop_resource:
identity??dense_96/BiasAdd/ReadVariableOp?dense_96/MatMul/ReadVariableOp?)lstm_288/lstm_cell/BiasAdd/ReadVariableOp?(lstm_288/lstm_cell/MatMul/ReadVariableOp?*lstm_288/lstm_cell/MatMul_1/ReadVariableOp?lstm_288/while?+lstm_289/lstm_cell_1/BiasAdd/ReadVariableOp?*lstm_289/lstm_cell_1/MatMul/ReadVariableOp?,lstm_289/lstm_cell_1/MatMul_1/ReadVariableOp?lstm_289/while?+lstm_290/lstm_cell_2/BiasAdd/ReadVariableOp?*lstm_290/lstm_cell_2/MatMul/ReadVariableOp?,lstm_290/lstm_cell_2/MatMul_1/ReadVariableOp?lstm_290/whileD
lstm_288/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_288/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_288/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_288/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_288/strided_sliceStridedSlicelstm_288/Shape:output:0%lstm_288/strided_slice/stack:output:0'lstm_288/strided_slice/stack_1:output:0'lstm_288/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_288/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_288/zeros/packedPacklstm_288/strided_slice:output:0 lstm_288/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_288/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_288/zerosFilllstm_288/zeros/packed:output:0lstm_288/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_288/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_288/zeros_1/packedPacklstm_288/strided_slice:output:0"lstm_288/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_288/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_288/zeros_1Fill lstm_288/zeros_1/packed:output:0lstm_288/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_288/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_288/transpose	Transposeinputs lstm_288/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_288/Shape_1Shapelstm_288/transpose:y:0*
T0*
_output_shapes
:h
lstm_288/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_288/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_288/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_288/strided_slice_1StridedSlicelstm_288/Shape_1:output:0'lstm_288/strided_slice_1/stack:output:0)lstm_288/strided_slice_1/stack_1:output:0)lstm_288/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_288/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_288/TensorArrayV2TensorListReserve-lstm_288/TensorArrayV2/element_shape:output:0!lstm_288/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_288/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_288/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_288/transpose:y:0Glstm_288/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_288/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_288/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_288/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_288/strided_slice_2StridedSlicelstm_288/transpose:y:0'lstm_288/strided_slice_2/stack:output:0)lstm_288/strided_slice_2/stack_1:output:0)lstm_288/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
(lstm_288/lstm_cell/MatMul/ReadVariableOpReadVariableOp1lstm_288_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_288/lstm_cell/MatMulMatMul!lstm_288/strided_slice_2:output:00lstm_288/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*lstm_288/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp3lstm_288_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_288/lstm_cell/MatMul_1MatMullstm_288/zeros:output:02lstm_288/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_288/lstm_cell/addAddV2#lstm_288/lstm_cell/MatMul:product:0%lstm_288/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)lstm_288/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp2lstm_288_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_288/lstm_cell/BiasAddBiasAddlstm_288/lstm_cell/add:z:01lstm_288/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"lstm_288/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_288/lstm_cell/splitSplit+lstm_288/lstm_cell/split/split_dim:output:0#lstm_288/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
lstm_288/lstm_cell/SigmoidSigmoid!lstm_288/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????d|
lstm_288/lstm_cell/Sigmoid_1Sigmoid!lstm_288/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_288/lstm_cell/mulMul lstm_288/lstm_cell/Sigmoid_1:y:0lstm_288/zeros_1:output:0*
T0*'
_output_shapes
:?????????dt
lstm_288/lstm_cell/ReluRelu!lstm_288/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_288/lstm_cell/mul_1Mullstm_288/lstm_cell/Sigmoid:y:0%lstm_288/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_288/lstm_cell/add_1AddV2lstm_288/lstm_cell/mul:z:0lstm_288/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
lstm_288/lstm_cell/Sigmoid_2Sigmoid!lstm_288/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????dq
lstm_288/lstm_cell/Relu_1Relulstm_288/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_288/lstm_cell/mul_2Mul lstm_288/lstm_cell/Sigmoid_2:y:0'lstm_288/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_288/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_288/TensorArrayV2_1TensorListReserve/lstm_288/TensorArrayV2_1/element_shape:output:0!lstm_288/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_288/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_288/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_288/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_288/whileWhile$lstm_288/while/loop_counter:output:0*lstm_288/while/maximum_iterations:output:0lstm_288/time:output:0!lstm_288/TensorArrayV2_1:handle:0lstm_288/zeros:output:0lstm_288/zeros_1:output:0!lstm_288/strided_slice_1:output:0@lstm_288/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_288_lstm_cell_matmul_readvariableop_resource3lstm_288_lstm_cell_matmul_1_readvariableop_resource2lstm_288_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_288_while_body_14768*%
condR
lstm_288_while_cond_14767*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_288/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_288/TensorArrayV2Stack/TensorListStackTensorListStacklstm_288/while:output:3Blstm_288/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_288/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_288/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_288/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_288/strided_slice_3StridedSlice4lstm_288/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_288/strided_slice_3/stack:output:0)lstm_288/strided_slice_3/stack_1:output:0)lstm_288/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_288/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_288/transpose_1	Transpose4lstm_288/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_288/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_288/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_289/ShapeShapelstm_288/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_289/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_289/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_289/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_289/strided_sliceStridedSlicelstm_289/Shape:output:0%lstm_289/strided_slice/stack:output:0'lstm_289/strided_slice/stack_1:output:0'lstm_289/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_289/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_289/zeros/packedPacklstm_289/strided_slice:output:0 lstm_289/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_289/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_289/zerosFilllstm_289/zeros/packed:output:0lstm_289/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_289/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_289/zeros_1/packedPacklstm_289/strided_slice:output:0"lstm_289/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_289/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_289/zeros_1Fill lstm_289/zeros_1/packed:output:0lstm_289/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_289/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_289/transpose	Transposelstm_288/transpose_1:y:0 lstm_289/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_289/Shape_1Shapelstm_289/transpose:y:0*
T0*
_output_shapes
:h
lstm_289/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_289/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_289/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_289/strided_slice_1StridedSlicelstm_289/Shape_1:output:0'lstm_289/strided_slice_1/stack:output:0)lstm_289/strided_slice_1/stack_1:output:0)lstm_289/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_289/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_289/TensorArrayV2TensorListReserve-lstm_289/TensorArrayV2/element_shape:output:0!lstm_289/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_289/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_289/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_289/transpose:y:0Glstm_289/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_289/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_289/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_289/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_289/strided_slice_2StridedSlicelstm_289/transpose:y:0'lstm_289/strided_slice_2/stack:output:0)lstm_289/strided_slice_2/stack_1:output:0)lstm_289/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
*lstm_289/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp3lstm_289_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_289/lstm_cell_1/MatMulMatMul!lstm_289/strided_slice_2:output:02lstm_289/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,lstm_289/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp5lstm_289_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_289/lstm_cell_1/MatMul_1MatMullstm_289/zeros:output:04lstm_289/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_289/lstm_cell_1/addAddV2%lstm_289/lstm_cell_1/MatMul:product:0'lstm_289/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
+lstm_289/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp4lstm_289_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_289/lstm_cell_1/BiasAddBiasAddlstm_289/lstm_cell_1/add:z:03lstm_289/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????f
$lstm_289/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_289/lstm_cell_1/splitSplit-lstm_289/lstm_cell_1/split/split_dim:output:0%lstm_289/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split~
lstm_289/lstm_cell_1/SigmoidSigmoid#lstm_289/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2?
lstm_289/lstm_cell_1/Sigmoid_1Sigmoid#lstm_289/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_289/lstm_cell_1/mulMul"lstm_289/lstm_cell_1/Sigmoid_1:y:0lstm_289/zeros_1:output:0*
T0*'
_output_shapes
:?????????2x
lstm_289/lstm_cell_1/ReluRelu#lstm_289/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_289/lstm_cell_1/mul_1Mul lstm_289/lstm_cell_1/Sigmoid:y:0'lstm_289/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_289/lstm_cell_1/add_1AddV2lstm_289/lstm_cell_1/mul:z:0lstm_289/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_289/lstm_cell_1/Sigmoid_2Sigmoid#lstm_289/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2u
lstm_289/lstm_cell_1/Relu_1Relulstm_289/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_289/lstm_cell_1/mul_2Mul"lstm_289/lstm_cell_1/Sigmoid_2:y:0)lstm_289/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_289/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_289/TensorArrayV2_1TensorListReserve/lstm_289/TensorArrayV2_1/element_shape:output:0!lstm_289/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_289/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_289/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_289/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_289/whileWhile$lstm_289/while/loop_counter:output:0*lstm_289/while/maximum_iterations:output:0lstm_289/time:output:0!lstm_289/TensorArrayV2_1:handle:0lstm_289/zeros:output:0lstm_289/zeros_1:output:0!lstm_289/strided_slice_1:output:0@lstm_289/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_289_lstm_cell_1_matmul_readvariableop_resource5lstm_289_lstm_cell_1_matmul_1_readvariableop_resource4lstm_289_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_289_while_body_14907*%
condR
lstm_289_while_cond_14906*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_289/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_289/TensorArrayV2Stack/TensorListStackTensorListStacklstm_289/while:output:3Blstm_289/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_289/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_289/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_289/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_289/strided_slice_3StridedSlice4lstm_289/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_289/strided_slice_3/stack:output:0)lstm_289/strided_slice_3/stack_1:output:0)lstm_289/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_289/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_289/transpose_1	Transpose4lstm_289/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_289/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_289/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_290/ShapeShapelstm_289/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_290/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_290/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_290/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_290/strided_sliceStridedSlicelstm_290/Shape:output:0%lstm_290/strided_slice/stack:output:0'lstm_290/strided_slice/stack_1:output:0'lstm_290/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_290/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_290/zeros/packedPacklstm_290/strided_slice:output:0 lstm_290/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_290/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_290/zerosFilllstm_290/zeros/packed:output:0lstm_290/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_290/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_290/zeros_1/packedPacklstm_290/strided_slice:output:0"lstm_290/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_290/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_290/zeros_1Fill lstm_290/zeros_1/packed:output:0lstm_290/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_290/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_290/transpose	Transposelstm_289/transpose_1:y:0 lstm_290/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_290/Shape_1Shapelstm_290/transpose:y:0*
T0*
_output_shapes
:h
lstm_290/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_290/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_290/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_290/strided_slice_1StridedSlicelstm_290/Shape_1:output:0'lstm_290/strided_slice_1/stack:output:0)lstm_290/strided_slice_1/stack_1:output:0)lstm_290/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_290/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_290/TensorArrayV2TensorListReserve-lstm_290/TensorArrayV2/element_shape:output:0!lstm_290/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_290/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_290/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_290/transpose:y:0Glstm_290/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_290/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_290/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_290/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_290/strided_slice_2StridedSlicelstm_290/transpose:y:0'lstm_290/strided_slice_2/stack:output:0)lstm_290/strided_slice_2/stack_1:output:0)lstm_290/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
*lstm_290/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp3lstm_290_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_290/lstm_cell_2/MatMulMatMul!lstm_290/strided_slice_2:output:02lstm_290/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
,lstm_290/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp5lstm_290_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_290/lstm_cell_2/MatMul_1MatMullstm_290/zeros:output:04lstm_290/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_290/lstm_cell_2/addAddV2%lstm_290/lstm_cell_2/MatMul:product:0'lstm_290/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
+lstm_290/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp4lstm_290_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_290/lstm_cell_2/BiasAddBiasAddlstm_290/lstm_cell_2/add:z:03lstm_290/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(f
$lstm_290/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_290/lstm_cell_2/splitSplit-lstm_290/lstm_cell_2/split/split_dim:output:0%lstm_290/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split~
lstm_290/lstm_cell_2/SigmoidSigmoid#lstm_290/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
?
lstm_290/lstm_cell_2/Sigmoid_1Sigmoid#lstm_290/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_290/lstm_cell_2/mulMul"lstm_290/lstm_cell_2/Sigmoid_1:y:0lstm_290/zeros_1:output:0*
T0*'
_output_shapes
:?????????
x
lstm_290/lstm_cell_2/ReluRelu#lstm_290/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_290/lstm_cell_2/mul_1Mul lstm_290/lstm_cell_2/Sigmoid:y:0'lstm_290/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_290/lstm_cell_2/add_1AddV2lstm_290/lstm_cell_2/mul:z:0lstm_290/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_290/lstm_cell_2/Sigmoid_2Sigmoid#lstm_290/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
u
lstm_290/lstm_cell_2/Relu_1Relulstm_290/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_290/lstm_cell_2/mul_2Mul"lstm_290/lstm_cell_2/Sigmoid_2:y:0)lstm_290/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_290/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_290/TensorArrayV2_1TensorListReserve/lstm_290/TensorArrayV2_1/element_shape:output:0!lstm_290/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_290/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_290/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_290/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_290/whileWhile$lstm_290/while/loop_counter:output:0*lstm_290/while/maximum_iterations:output:0lstm_290/time:output:0!lstm_290/TensorArrayV2_1:handle:0lstm_290/zeros:output:0lstm_290/zeros_1:output:0!lstm_290/strided_slice_1:output:0@lstm_290/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_290_lstm_cell_2_matmul_readvariableop_resource5lstm_290_lstm_cell_2_matmul_1_readvariableop_resource4lstm_290_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_290_while_body_15046*%
condR
lstm_290_while_cond_15045*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_290/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_290/TensorArrayV2Stack/TensorListStackTensorListStacklstm_290/while:output:3Blstm_290/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_290/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_290/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_290/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_290/strided_slice_3StridedSlice4lstm_290/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_290/strided_slice_3/stack:output:0)lstm_290/strided_slice_3/stack_1:output:0)lstm_290/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_290/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_290/transpose_1	Transpose4lstm_290/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_290/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_290/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_96/MatMul/ReadVariableOpReadVariableOp'dense_96_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_96/MatMulMatMul!lstm_290/strided_slice_3:output:0&dense_96/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_96/BiasAdd/ReadVariableOpReadVariableOp(dense_96_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_96/BiasAddBiasAdddense_96/MatMul:product:0'dense_96/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_96/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_96/BiasAdd/ReadVariableOp^dense_96/MatMul/ReadVariableOp*^lstm_288/lstm_cell/BiasAdd/ReadVariableOp)^lstm_288/lstm_cell/MatMul/ReadVariableOp+^lstm_288/lstm_cell/MatMul_1/ReadVariableOp^lstm_288/while,^lstm_289/lstm_cell_1/BiasAdd/ReadVariableOp+^lstm_289/lstm_cell_1/MatMul/ReadVariableOp-^lstm_289/lstm_cell_1/MatMul_1/ReadVariableOp^lstm_289/while,^lstm_290/lstm_cell_2/BiasAdd/ReadVariableOp+^lstm_290/lstm_cell_2/MatMul/ReadVariableOp-^lstm_290/lstm_cell_2/MatMul_1/ReadVariableOp^lstm_290/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_96/BiasAdd/ReadVariableOpdense_96/BiasAdd/ReadVariableOp2@
dense_96/MatMul/ReadVariableOpdense_96/MatMul/ReadVariableOp2V
)lstm_288/lstm_cell/BiasAdd/ReadVariableOp)lstm_288/lstm_cell/BiasAdd/ReadVariableOp2T
(lstm_288/lstm_cell/MatMul/ReadVariableOp(lstm_288/lstm_cell/MatMul/ReadVariableOp2X
*lstm_288/lstm_cell/MatMul_1/ReadVariableOp*lstm_288/lstm_cell/MatMul_1/ReadVariableOp2 
lstm_288/whilelstm_288/while2Z
+lstm_289/lstm_cell_1/BiasAdd/ReadVariableOp+lstm_289/lstm_cell_1/BiasAdd/ReadVariableOp2X
*lstm_289/lstm_cell_1/MatMul/ReadVariableOp*lstm_289/lstm_cell_1/MatMul/ReadVariableOp2\
,lstm_289/lstm_cell_1/MatMul_1/ReadVariableOp,lstm_289/lstm_cell_1/MatMul_1/ReadVariableOp2 
lstm_289/whilelstm_289/while2Z
+lstm_290/lstm_cell_2/BiasAdd/ReadVariableOp+lstm_290/lstm_cell_2/BiasAdd/ReadVariableOp2X
*lstm_290/lstm_cell_2/MatMul/ReadVariableOp*lstm_290/lstm_cell_2/MatMul/ReadVariableOp2\
,lstm_290/lstm_cell_2/MatMul_1/ReadVariableOp,lstm_290/lstm_cell_2/MatMul_1/ReadVariableOp2 
lstm_290/whilelstm_290/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_lstm_cell_2_layer_call_fn_17660

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_13308o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
ѳ
?
 __inference__wrapped_model_12395
lstm_288_inputR
?sequential_96_lstm_288_lstm_cell_matmul_readvariableop_resource:	?T
Asequential_96_lstm_288_lstm_cell_matmul_1_readvariableop_resource:	d?O
@sequential_96_lstm_288_lstm_cell_biasadd_readvariableop_resource:	?T
Asequential_96_lstm_289_lstm_cell_1_matmul_readvariableop_resource:	d?V
Csequential_96_lstm_289_lstm_cell_1_matmul_1_readvariableop_resource:	2?Q
Bsequential_96_lstm_289_lstm_cell_1_biasadd_readvariableop_resource:	?S
Asequential_96_lstm_290_lstm_cell_2_matmul_readvariableop_resource:2(U
Csequential_96_lstm_290_lstm_cell_2_matmul_1_readvariableop_resource:
(P
Bsequential_96_lstm_290_lstm_cell_2_biasadd_readvariableop_resource:(G
5sequential_96_dense_96_matmul_readvariableop_resource:
D
6sequential_96_dense_96_biasadd_readvariableop_resource:
identity??-sequential_96/dense_96/BiasAdd/ReadVariableOp?,sequential_96/dense_96/MatMul/ReadVariableOp?7sequential_96/lstm_288/lstm_cell/BiasAdd/ReadVariableOp?6sequential_96/lstm_288/lstm_cell/MatMul/ReadVariableOp?8sequential_96/lstm_288/lstm_cell/MatMul_1/ReadVariableOp?sequential_96/lstm_288/while?9sequential_96/lstm_289/lstm_cell_1/BiasAdd/ReadVariableOp?8sequential_96/lstm_289/lstm_cell_1/MatMul/ReadVariableOp?:sequential_96/lstm_289/lstm_cell_1/MatMul_1/ReadVariableOp?sequential_96/lstm_289/while?9sequential_96/lstm_290/lstm_cell_2/BiasAdd/ReadVariableOp?8sequential_96/lstm_290/lstm_cell_2/MatMul/ReadVariableOp?:sequential_96/lstm_290/lstm_cell_2/MatMul_1/ReadVariableOp?sequential_96/lstm_290/whileZ
sequential_96/lstm_288/ShapeShapelstm_288_input*
T0*
_output_shapes
:t
*sequential_96/lstm_288/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_96/lstm_288/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_96/lstm_288/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_96/lstm_288/strided_sliceStridedSlice%sequential_96/lstm_288/Shape:output:03sequential_96/lstm_288/strided_slice/stack:output:05sequential_96/lstm_288/strided_slice/stack_1:output:05sequential_96/lstm_288/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_96/lstm_288/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_96/lstm_288/zeros/packedPack-sequential_96/lstm_288/strided_slice:output:0.sequential_96/lstm_288/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_96/lstm_288/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_96/lstm_288/zerosFill,sequential_96/lstm_288/zeros/packed:output:0+sequential_96/lstm_288/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_96/lstm_288/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_96/lstm_288/zeros_1/packedPack-sequential_96/lstm_288/strided_slice:output:00sequential_96/lstm_288/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_96/lstm_288/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_96/lstm_288/zeros_1Fill.sequential_96/lstm_288/zeros_1/packed:output:0-sequential_96/lstm_288/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_96/lstm_288/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_96/lstm_288/transpose	Transposelstm_288_input.sequential_96/lstm_288/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_96/lstm_288/Shape_1Shape$sequential_96/lstm_288/transpose:y:0*
T0*
_output_shapes
:v
,sequential_96/lstm_288/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_96/lstm_288/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_96/lstm_288/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_96/lstm_288/strided_slice_1StridedSlice'sequential_96/lstm_288/Shape_1:output:05sequential_96/lstm_288/strided_slice_1/stack:output:07sequential_96/lstm_288/strided_slice_1/stack_1:output:07sequential_96/lstm_288/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_96/lstm_288/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_96/lstm_288/TensorArrayV2TensorListReserve;sequential_96/lstm_288/TensorArrayV2/element_shape:output:0/sequential_96/lstm_288/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_96/lstm_288/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_96/lstm_288/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_96/lstm_288/transpose:y:0Usequential_96/lstm_288/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_96/lstm_288/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_96/lstm_288/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_96/lstm_288/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_96/lstm_288/strided_slice_2StridedSlice$sequential_96/lstm_288/transpose:y:05sequential_96/lstm_288/strided_slice_2/stack:output:07sequential_96/lstm_288/strided_slice_2/stack_1:output:07sequential_96/lstm_288/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
6sequential_96/lstm_288/lstm_cell/MatMul/ReadVariableOpReadVariableOp?sequential_96_lstm_288_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
'sequential_96/lstm_288/lstm_cell/MatMulMatMul/sequential_96/lstm_288/strided_slice_2:output:0>sequential_96/lstm_288/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
8sequential_96/lstm_288/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAsequential_96_lstm_288_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
)sequential_96/lstm_288/lstm_cell/MatMul_1MatMul%sequential_96/lstm_288/zeros:output:0@sequential_96/lstm_288/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
$sequential_96/lstm_288/lstm_cell/addAddV21sequential_96/lstm_288/lstm_cell/MatMul:product:03sequential_96/lstm_288/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
7sequential_96/lstm_288/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp@sequential_96_lstm_288_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
(sequential_96/lstm_288/lstm_cell/BiasAddBiasAdd(sequential_96/lstm_288/lstm_cell/add:z:0?sequential_96/lstm_288/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
0sequential_96/lstm_288/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
&sequential_96/lstm_288/lstm_cell/splitSplit9sequential_96/lstm_288/lstm_cell/split/split_dim:output:01sequential_96/lstm_288/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
(sequential_96/lstm_288/lstm_cell/SigmoidSigmoid/sequential_96/lstm_288/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????d?
*sequential_96/lstm_288/lstm_cell/Sigmoid_1Sigmoid/sequential_96/lstm_288/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????d?
$sequential_96/lstm_288/lstm_cell/mulMul.sequential_96/lstm_288/lstm_cell/Sigmoid_1:y:0'sequential_96/lstm_288/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
%sequential_96/lstm_288/lstm_cell/ReluRelu/sequential_96/lstm_288/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d?
&sequential_96/lstm_288/lstm_cell/mul_1Mul,sequential_96/lstm_288/lstm_cell/Sigmoid:y:03sequential_96/lstm_288/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
&sequential_96/lstm_288/lstm_cell/add_1AddV2(sequential_96/lstm_288/lstm_cell/mul:z:0*sequential_96/lstm_288/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_96/lstm_288/lstm_cell/Sigmoid_2Sigmoid/sequential_96/lstm_288/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????d?
'sequential_96/lstm_288/lstm_cell/Relu_1Relu*sequential_96/lstm_288/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
&sequential_96/lstm_288/lstm_cell/mul_2Mul.sequential_96/lstm_288/lstm_cell/Sigmoid_2:y:05sequential_96/lstm_288/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_96/lstm_288/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_96/lstm_288/TensorArrayV2_1TensorListReserve=sequential_96/lstm_288/TensorArrayV2_1/element_shape:output:0/sequential_96/lstm_288/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_96/lstm_288/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_96/lstm_288/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_96/lstm_288/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_96/lstm_288/whileWhile2sequential_96/lstm_288/while/loop_counter:output:08sequential_96/lstm_288/while/maximum_iterations:output:0$sequential_96/lstm_288/time:output:0/sequential_96/lstm_288/TensorArrayV2_1:handle:0%sequential_96/lstm_288/zeros:output:0'sequential_96/lstm_288/zeros_1:output:0/sequential_96/lstm_288/strided_slice_1:output:0Nsequential_96/lstm_288/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_96_lstm_288_lstm_cell_matmul_readvariableop_resourceAsequential_96_lstm_288_lstm_cell_matmul_1_readvariableop_resource@sequential_96_lstm_288_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_96_lstm_288_while_body_12027*3
cond+R)
'sequential_96_lstm_288_while_cond_12026*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_96/lstm_288/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_96/lstm_288/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_96/lstm_288/while:output:3Psequential_96/lstm_288/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_96/lstm_288/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_96/lstm_288/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_96/lstm_288/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_96/lstm_288/strided_slice_3StridedSliceBsequential_96/lstm_288/TensorArrayV2Stack/TensorListStack:tensor:05sequential_96/lstm_288/strided_slice_3/stack:output:07sequential_96/lstm_288/strided_slice_3/stack_1:output:07sequential_96/lstm_288/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_96/lstm_288/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_96/lstm_288/transpose_1	TransposeBsequential_96/lstm_288/TensorArrayV2Stack/TensorListStack:tensor:00sequential_96/lstm_288/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_96/lstm_288/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_96/lstm_289/ShapeShape&sequential_96/lstm_288/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_96/lstm_289/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_96/lstm_289/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_96/lstm_289/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_96/lstm_289/strided_sliceStridedSlice%sequential_96/lstm_289/Shape:output:03sequential_96/lstm_289/strided_slice/stack:output:05sequential_96/lstm_289/strided_slice/stack_1:output:05sequential_96/lstm_289/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_96/lstm_289/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_96/lstm_289/zeros/packedPack-sequential_96/lstm_289/strided_slice:output:0.sequential_96/lstm_289/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_96/lstm_289/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_96/lstm_289/zerosFill,sequential_96/lstm_289/zeros/packed:output:0+sequential_96/lstm_289/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_96/lstm_289/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_96/lstm_289/zeros_1/packedPack-sequential_96/lstm_289/strided_slice:output:00sequential_96/lstm_289/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_96/lstm_289/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_96/lstm_289/zeros_1Fill.sequential_96/lstm_289/zeros_1/packed:output:0-sequential_96/lstm_289/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_96/lstm_289/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_96/lstm_289/transpose	Transpose&sequential_96/lstm_288/transpose_1:y:0.sequential_96/lstm_289/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_96/lstm_289/Shape_1Shape$sequential_96/lstm_289/transpose:y:0*
T0*
_output_shapes
:v
,sequential_96/lstm_289/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_96/lstm_289/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_96/lstm_289/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_96/lstm_289/strided_slice_1StridedSlice'sequential_96/lstm_289/Shape_1:output:05sequential_96/lstm_289/strided_slice_1/stack:output:07sequential_96/lstm_289/strided_slice_1/stack_1:output:07sequential_96/lstm_289/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_96/lstm_289/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_96/lstm_289/TensorArrayV2TensorListReserve;sequential_96/lstm_289/TensorArrayV2/element_shape:output:0/sequential_96/lstm_289/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_96/lstm_289/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_96/lstm_289/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_96/lstm_289/transpose:y:0Usequential_96/lstm_289/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_96/lstm_289/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_96/lstm_289/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_96/lstm_289/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_96/lstm_289/strided_slice_2StridedSlice$sequential_96/lstm_289/transpose:y:05sequential_96/lstm_289/strided_slice_2/stack:output:07sequential_96/lstm_289/strided_slice_2/stack_1:output:07sequential_96/lstm_289/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
8sequential_96/lstm_289/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpAsequential_96_lstm_289_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
)sequential_96/lstm_289/lstm_cell_1/MatMulMatMul/sequential_96/lstm_289/strided_slice_2:output:0@sequential_96/lstm_289/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
:sequential_96/lstm_289/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpCsequential_96_lstm_289_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
+sequential_96/lstm_289/lstm_cell_1/MatMul_1MatMul%sequential_96/lstm_289/zeros:output:0Bsequential_96/lstm_289/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
&sequential_96/lstm_289/lstm_cell_1/addAddV23sequential_96/lstm_289/lstm_cell_1/MatMul:product:05sequential_96/lstm_289/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
9sequential_96/lstm_289/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpBsequential_96_lstm_289_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*sequential_96/lstm_289/lstm_cell_1/BiasAddBiasAdd*sequential_96/lstm_289/lstm_cell_1/add:z:0Asequential_96/lstm_289/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????t
2sequential_96/lstm_289/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential_96/lstm_289/lstm_cell_1/splitSplit;sequential_96/lstm_289/lstm_cell_1/split/split_dim:output:03sequential_96/lstm_289/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
*sequential_96/lstm_289/lstm_cell_1/SigmoidSigmoid1sequential_96/lstm_289/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2?
,sequential_96/lstm_289/lstm_cell_1/Sigmoid_1Sigmoid1sequential_96/lstm_289/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2?
&sequential_96/lstm_289/lstm_cell_1/mulMul0sequential_96/lstm_289/lstm_cell_1/Sigmoid_1:y:0'sequential_96/lstm_289/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
'sequential_96/lstm_289/lstm_cell_1/ReluRelu1sequential_96/lstm_289/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
(sequential_96/lstm_289/lstm_cell_1/mul_1Mul.sequential_96/lstm_289/lstm_cell_1/Sigmoid:y:05sequential_96/lstm_289/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
(sequential_96/lstm_289/lstm_cell_1/add_1AddV2*sequential_96/lstm_289/lstm_cell_1/mul:z:0,sequential_96/lstm_289/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
,sequential_96/lstm_289/lstm_cell_1/Sigmoid_2Sigmoid1sequential_96/lstm_289/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2?
)sequential_96/lstm_289/lstm_cell_1/Relu_1Relu,sequential_96/lstm_289/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
(sequential_96/lstm_289/lstm_cell_1/mul_2Mul0sequential_96/lstm_289/lstm_cell_1/Sigmoid_2:y:07sequential_96/lstm_289/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_96/lstm_289/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_96/lstm_289/TensorArrayV2_1TensorListReserve=sequential_96/lstm_289/TensorArrayV2_1/element_shape:output:0/sequential_96/lstm_289/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_96/lstm_289/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_96/lstm_289/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_96/lstm_289/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_96/lstm_289/whileWhile2sequential_96/lstm_289/while/loop_counter:output:08sequential_96/lstm_289/while/maximum_iterations:output:0$sequential_96/lstm_289/time:output:0/sequential_96/lstm_289/TensorArrayV2_1:handle:0%sequential_96/lstm_289/zeros:output:0'sequential_96/lstm_289/zeros_1:output:0/sequential_96/lstm_289/strided_slice_1:output:0Nsequential_96/lstm_289/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_96_lstm_289_lstm_cell_1_matmul_readvariableop_resourceCsequential_96_lstm_289_lstm_cell_1_matmul_1_readvariableop_resourceBsequential_96_lstm_289_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_96_lstm_289_while_body_12166*3
cond+R)
'sequential_96_lstm_289_while_cond_12165*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_96/lstm_289/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_96/lstm_289/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_96/lstm_289/while:output:3Psequential_96/lstm_289/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_96/lstm_289/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_96/lstm_289/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_96/lstm_289/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_96/lstm_289/strided_slice_3StridedSliceBsequential_96/lstm_289/TensorArrayV2Stack/TensorListStack:tensor:05sequential_96/lstm_289/strided_slice_3/stack:output:07sequential_96/lstm_289/strided_slice_3/stack_1:output:07sequential_96/lstm_289/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_96/lstm_289/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_96/lstm_289/transpose_1	TransposeBsequential_96/lstm_289/TensorArrayV2Stack/TensorListStack:tensor:00sequential_96/lstm_289/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_96/lstm_289/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_96/lstm_290/ShapeShape&sequential_96/lstm_289/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_96/lstm_290/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_96/lstm_290/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_96/lstm_290/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_96/lstm_290/strided_sliceStridedSlice%sequential_96/lstm_290/Shape:output:03sequential_96/lstm_290/strided_slice/stack:output:05sequential_96/lstm_290/strided_slice/stack_1:output:05sequential_96/lstm_290/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_96/lstm_290/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_96/lstm_290/zeros/packedPack-sequential_96/lstm_290/strided_slice:output:0.sequential_96/lstm_290/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_96/lstm_290/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_96/lstm_290/zerosFill,sequential_96/lstm_290/zeros/packed:output:0+sequential_96/lstm_290/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_96/lstm_290/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_96/lstm_290/zeros_1/packedPack-sequential_96/lstm_290/strided_slice:output:00sequential_96/lstm_290/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_96/lstm_290/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_96/lstm_290/zeros_1Fill.sequential_96/lstm_290/zeros_1/packed:output:0-sequential_96/lstm_290/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_96/lstm_290/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_96/lstm_290/transpose	Transpose&sequential_96/lstm_289/transpose_1:y:0.sequential_96/lstm_290/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_96/lstm_290/Shape_1Shape$sequential_96/lstm_290/transpose:y:0*
T0*
_output_shapes
:v
,sequential_96/lstm_290/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_96/lstm_290/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_96/lstm_290/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_96/lstm_290/strided_slice_1StridedSlice'sequential_96/lstm_290/Shape_1:output:05sequential_96/lstm_290/strided_slice_1/stack:output:07sequential_96/lstm_290/strided_slice_1/stack_1:output:07sequential_96/lstm_290/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_96/lstm_290/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_96/lstm_290/TensorArrayV2TensorListReserve;sequential_96/lstm_290/TensorArrayV2/element_shape:output:0/sequential_96/lstm_290/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_96/lstm_290/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_96/lstm_290/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_96/lstm_290/transpose:y:0Usequential_96/lstm_290/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_96/lstm_290/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_96/lstm_290/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_96/lstm_290/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_96/lstm_290/strided_slice_2StridedSlice$sequential_96/lstm_290/transpose:y:05sequential_96/lstm_290/strided_slice_2/stack:output:07sequential_96/lstm_290/strided_slice_2/stack_1:output:07sequential_96/lstm_290/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
8sequential_96/lstm_290/lstm_cell_2/MatMul/ReadVariableOpReadVariableOpAsequential_96_lstm_290_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
)sequential_96/lstm_290/lstm_cell_2/MatMulMatMul/sequential_96/lstm_290/strided_slice_2:output:0@sequential_96/lstm_290/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
:sequential_96/lstm_290/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpCsequential_96_lstm_290_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
+sequential_96/lstm_290/lstm_cell_2/MatMul_1MatMul%sequential_96/lstm_290/zeros:output:0Bsequential_96/lstm_290/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
&sequential_96/lstm_290/lstm_cell_2/addAddV23sequential_96/lstm_290/lstm_cell_2/MatMul:product:05sequential_96/lstm_290/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
9sequential_96/lstm_290/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpBsequential_96_lstm_290_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
*sequential_96/lstm_290/lstm_cell_2/BiasAddBiasAdd*sequential_96/lstm_290/lstm_cell_2/add:z:0Asequential_96/lstm_290/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(t
2sequential_96/lstm_290/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
(sequential_96/lstm_290/lstm_cell_2/splitSplit;sequential_96/lstm_290/lstm_cell_2/split/split_dim:output:03sequential_96/lstm_290/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
*sequential_96/lstm_290/lstm_cell_2/SigmoidSigmoid1sequential_96/lstm_290/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
?
,sequential_96/lstm_290/lstm_cell_2/Sigmoid_1Sigmoid1sequential_96/lstm_290/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
?
&sequential_96/lstm_290/lstm_cell_2/mulMul0sequential_96/lstm_290/lstm_cell_2/Sigmoid_1:y:0'sequential_96/lstm_290/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
'sequential_96/lstm_290/lstm_cell_2/ReluRelu1sequential_96/lstm_290/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
(sequential_96/lstm_290/lstm_cell_2/mul_1Mul.sequential_96/lstm_290/lstm_cell_2/Sigmoid:y:05sequential_96/lstm_290/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
(sequential_96/lstm_290/lstm_cell_2/add_1AddV2*sequential_96/lstm_290/lstm_cell_2/mul:z:0,sequential_96/lstm_290/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
,sequential_96/lstm_290/lstm_cell_2/Sigmoid_2Sigmoid1sequential_96/lstm_290/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
?
)sequential_96/lstm_290/lstm_cell_2/Relu_1Relu,sequential_96/lstm_290/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
(sequential_96/lstm_290/lstm_cell_2/mul_2Mul0sequential_96/lstm_290/lstm_cell_2/Sigmoid_2:y:07sequential_96/lstm_290/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_96/lstm_290/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_96/lstm_290/TensorArrayV2_1TensorListReserve=sequential_96/lstm_290/TensorArrayV2_1/element_shape:output:0/sequential_96/lstm_290/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_96/lstm_290/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_96/lstm_290/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_96/lstm_290/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_96/lstm_290/whileWhile2sequential_96/lstm_290/while/loop_counter:output:08sequential_96/lstm_290/while/maximum_iterations:output:0$sequential_96/lstm_290/time:output:0/sequential_96/lstm_290/TensorArrayV2_1:handle:0%sequential_96/lstm_290/zeros:output:0'sequential_96/lstm_290/zeros_1:output:0/sequential_96/lstm_290/strided_slice_1:output:0Nsequential_96/lstm_290/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_96_lstm_290_lstm_cell_2_matmul_readvariableop_resourceCsequential_96_lstm_290_lstm_cell_2_matmul_1_readvariableop_resourceBsequential_96_lstm_290_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_96_lstm_290_while_body_12305*3
cond+R)
'sequential_96_lstm_290_while_cond_12304*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_96/lstm_290/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_96/lstm_290/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_96/lstm_290/while:output:3Psequential_96/lstm_290/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_96/lstm_290/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_96/lstm_290/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_96/lstm_290/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_96/lstm_290/strided_slice_3StridedSliceBsequential_96/lstm_290/TensorArrayV2Stack/TensorListStack:tensor:05sequential_96/lstm_290/strided_slice_3/stack:output:07sequential_96/lstm_290/strided_slice_3/stack_1:output:07sequential_96/lstm_290/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_96/lstm_290/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_96/lstm_290/transpose_1	TransposeBsequential_96/lstm_290/TensorArrayV2Stack/TensorListStack:tensor:00sequential_96/lstm_290/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_96/lstm_290/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_96/dense_96/MatMul/ReadVariableOpReadVariableOp5sequential_96_dense_96_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_96/dense_96/MatMulMatMul/sequential_96/lstm_290/strided_slice_3:output:04sequential_96/dense_96/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_96/dense_96/BiasAdd/ReadVariableOpReadVariableOp6sequential_96_dense_96_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_96/dense_96/BiasAddBiasAdd'sequential_96/dense_96/MatMul:product:05sequential_96/dense_96/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_96/dense_96/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_96/dense_96/BiasAdd/ReadVariableOp-^sequential_96/dense_96/MatMul/ReadVariableOp8^sequential_96/lstm_288/lstm_cell/BiasAdd/ReadVariableOp7^sequential_96/lstm_288/lstm_cell/MatMul/ReadVariableOp9^sequential_96/lstm_288/lstm_cell/MatMul_1/ReadVariableOp^sequential_96/lstm_288/while:^sequential_96/lstm_289/lstm_cell_1/BiasAdd/ReadVariableOp9^sequential_96/lstm_289/lstm_cell_1/MatMul/ReadVariableOp;^sequential_96/lstm_289/lstm_cell_1/MatMul_1/ReadVariableOp^sequential_96/lstm_289/while:^sequential_96/lstm_290/lstm_cell_2/BiasAdd/ReadVariableOp9^sequential_96/lstm_290/lstm_cell_2/MatMul/ReadVariableOp;^sequential_96/lstm_290/lstm_cell_2/MatMul_1/ReadVariableOp^sequential_96/lstm_290/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_96/dense_96/BiasAdd/ReadVariableOp-sequential_96/dense_96/BiasAdd/ReadVariableOp2\
,sequential_96/dense_96/MatMul/ReadVariableOp,sequential_96/dense_96/MatMul/ReadVariableOp2r
7sequential_96/lstm_288/lstm_cell/BiasAdd/ReadVariableOp7sequential_96/lstm_288/lstm_cell/BiasAdd/ReadVariableOp2p
6sequential_96/lstm_288/lstm_cell/MatMul/ReadVariableOp6sequential_96/lstm_288/lstm_cell/MatMul/ReadVariableOp2t
8sequential_96/lstm_288/lstm_cell/MatMul_1/ReadVariableOp8sequential_96/lstm_288/lstm_cell/MatMul_1/ReadVariableOp2<
sequential_96/lstm_288/whilesequential_96/lstm_288/while2v
9sequential_96/lstm_289/lstm_cell_1/BiasAdd/ReadVariableOp9sequential_96/lstm_289/lstm_cell_1/BiasAdd/ReadVariableOp2t
8sequential_96/lstm_289/lstm_cell_1/MatMul/ReadVariableOp8sequential_96/lstm_289/lstm_cell_1/MatMul/ReadVariableOp2x
:sequential_96/lstm_289/lstm_cell_1/MatMul_1/ReadVariableOp:sequential_96/lstm_289/lstm_cell_1/MatMul_1/ReadVariableOp2<
sequential_96/lstm_289/whilesequential_96/lstm_289/while2v
9sequential_96/lstm_290/lstm_cell_2/BiasAdd/ReadVariableOp9sequential_96/lstm_290/lstm_cell_2/BiasAdd/ReadVariableOp2t
8sequential_96/lstm_290/lstm_cell_2/MatMul/ReadVariableOp8sequential_96/lstm_290/lstm_cell_2/MatMul/ReadVariableOp2x
:sequential_96/lstm_290/lstm_cell_2/MatMul_1/ReadVariableOp:sequential_96/lstm_290/lstm_cell_2/MatMul_1/ReadVariableOp2<
sequential_96/lstm_290/whilesequential_96/lstm_290/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_288_input
?

?
lstm_288_while_cond_15194.
*lstm_288_while_lstm_288_while_loop_counter4
0lstm_288_while_lstm_288_while_maximum_iterations
lstm_288_while_placeholder 
lstm_288_while_placeholder_1 
lstm_288_while_placeholder_2 
lstm_288_while_placeholder_30
,lstm_288_while_less_lstm_288_strided_slice_1E
Alstm_288_while_lstm_288_while_cond_15194___redundant_placeholder0E
Alstm_288_while_lstm_288_while_cond_15194___redundant_placeholder1E
Alstm_288_while_lstm_288_while_cond_15194___redundant_placeholder2E
Alstm_288_while_lstm_288_while_cond_15194___redundant_placeholder3
lstm_288_while_identity
?
lstm_288/while/LessLesslstm_288_while_placeholder,lstm_288_while_less_lstm_288_strided_slice_1*
T0*
_output_shapes
: ]
lstm_288/while/IdentityIdentitylstm_288/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_288_while_identity lstm_288/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?

?
lstm_290_while_cond_15472.
*lstm_290_while_lstm_290_while_loop_counter4
0lstm_290_while_lstm_290_while_maximum_iterations
lstm_290_while_placeholder 
lstm_290_while_placeholder_1 
lstm_290_while_placeholder_2 
lstm_290_while_placeholder_30
,lstm_290_while_less_lstm_290_strided_slice_1E
Alstm_290_while_lstm_290_while_cond_15472___redundant_placeholder0E
Alstm_290_while_lstm_290_while_cond_15472___redundant_placeholder1E
Alstm_290_while_lstm_290_while_cond_15472___redundant_placeholder2E
Alstm_290_while_lstm_290_while_cond_15472___redundant_placeholder3
lstm_290_while_identity
?
lstm_290/while/LessLesslstm_290_while_placeholder,lstm_290_while_less_lstm_290_strided_slice_1*
T0*
_output_shapes
: ]
lstm_290/while/IdentityIdentitylstm_290/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_290_while_identity lstm_290/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_15951
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_15951___redundant_placeholder03
/while_while_cond_15951___redundant_placeholder13
/while_while_cond_15951___redundant_placeholder23
/while_while_cond_15951___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?6
?
while_body_13510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	d?@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?C
0while_lstm_cell_matmul_1_readvariableop_resource:	d?>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_14025
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_14025___redundant_placeholder03
/while_while_cond_14025___redundant_placeholder13
/while_while_cond_14025___redundant_placeholder23
/while_while_cond_14025___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_16094
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_16094___redundant_placeholder03
/while_while_cond_16094___redundant_placeholder13
/while_while_cond_16094___redundant_placeholder23
/while_while_cond_16094___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?I
?
C__inference_lstm_289_layer_call_and_return_conditional_losses_14275

inputs=
*lstm_cell_1_matmul_readvariableop_resource:	d??
,lstm_cell_1_matmul_1_readvariableop_resource:	2?:
+lstm_cell_1_biasadd_readvariableop_resource:	?
identity??"lstm_cell_1/BiasAdd/ReadVariableOp?!lstm_cell_1/MatMul/ReadVariableOp?#lstm_cell_1/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_14191*
condR
while_cond_14190*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????2?
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?A
?

lstm_288_while_body_14768.
*lstm_288_while_lstm_288_while_loop_counter4
0lstm_288_while_lstm_288_while_maximum_iterations
lstm_288_while_placeholder 
lstm_288_while_placeholder_1 
lstm_288_while_placeholder_2 
lstm_288_while_placeholder_3-
)lstm_288_while_lstm_288_strided_slice_1_0i
elstm_288_while_tensorarrayv2read_tensorlistgetitem_lstm_288_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_288_while_lstm_cell_matmul_readvariableop_resource_0:	?N
;lstm_288_while_lstm_cell_matmul_1_readvariableop_resource_0:	d?I
:lstm_288_while_lstm_cell_biasadd_readvariableop_resource_0:	?
lstm_288_while_identity
lstm_288_while_identity_1
lstm_288_while_identity_2
lstm_288_while_identity_3
lstm_288_while_identity_4
lstm_288_while_identity_5+
'lstm_288_while_lstm_288_strided_slice_1g
clstm_288_while_tensorarrayv2read_tensorlistgetitem_lstm_288_tensorarrayunstack_tensorlistfromtensorJ
7lstm_288_while_lstm_cell_matmul_readvariableop_resource:	?L
9lstm_288_while_lstm_cell_matmul_1_readvariableop_resource:	d?G
8lstm_288_while_lstm_cell_biasadd_readvariableop_resource:	???/lstm_288/while/lstm_cell/BiasAdd/ReadVariableOp?.lstm_288/while/lstm_cell/MatMul/ReadVariableOp?0lstm_288/while/lstm_cell/MatMul_1/ReadVariableOp?
@lstm_288/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_288/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_288_while_tensorarrayv2read_tensorlistgetitem_lstm_288_tensorarrayunstack_tensorlistfromtensor_0lstm_288_while_placeholderIlstm_288/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
.lstm_288/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp9lstm_288_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
lstm_288/while/lstm_cell/MatMulMatMul9lstm_288/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_288/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
0lstm_288/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;lstm_288_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
!lstm_288/while/lstm_cell/MatMul_1MatMullstm_288_while_placeholder_28lstm_288/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_288/while/lstm_cell/addAddV2)lstm_288/while/lstm_cell/MatMul:product:0+lstm_288/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
/lstm_288/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:lstm_288_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
 lstm_288/while/lstm_cell/BiasAddBiasAdd lstm_288/while/lstm_cell/add:z:07lstm_288/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????j
(lstm_288/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_288/while/lstm_cell/splitSplit1lstm_288/while/lstm_cell/split/split_dim:output:0)lstm_288/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
 lstm_288/while/lstm_cell/SigmoidSigmoid'lstm_288/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????d?
"lstm_288/while/lstm_cell/Sigmoid_1Sigmoid'lstm_288/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_288/while/lstm_cell/mulMul&lstm_288/while/lstm_cell/Sigmoid_1:y:0lstm_288_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
lstm_288/while/lstm_cell/ReluRelu'lstm_288/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_288/while/lstm_cell/mul_1Mul$lstm_288/while/lstm_cell/Sigmoid:y:0+lstm_288/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_288/while/lstm_cell/add_1AddV2 lstm_288/while/lstm_cell/mul:z:0"lstm_288/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_288/while/lstm_cell/Sigmoid_2Sigmoid'lstm_288/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????d}
lstm_288/while/lstm_cell/Relu_1Relu"lstm_288/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_288/while/lstm_cell/mul_2Mul&lstm_288/while/lstm_cell/Sigmoid_2:y:0-lstm_288/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_288/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_288_while_placeholder_1lstm_288_while_placeholder"lstm_288/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_288/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_288/while/addAddV2lstm_288_while_placeholderlstm_288/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_288/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_288/while/add_1AddV2*lstm_288_while_lstm_288_while_loop_counterlstm_288/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_288/while/IdentityIdentitylstm_288/while/add_1:z:0^lstm_288/while/NoOp*
T0*
_output_shapes
: ?
lstm_288/while/Identity_1Identity0lstm_288_while_lstm_288_while_maximum_iterations^lstm_288/while/NoOp*
T0*
_output_shapes
: t
lstm_288/while/Identity_2Identitylstm_288/while/add:z:0^lstm_288/while/NoOp*
T0*
_output_shapes
: ?
lstm_288/while/Identity_3IdentityClstm_288/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_288/while/NoOp*
T0*
_output_shapes
: ?
lstm_288/while/Identity_4Identity"lstm_288/while/lstm_cell/mul_2:z:0^lstm_288/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_288/while/Identity_5Identity"lstm_288/while/lstm_cell/add_1:z:0^lstm_288/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_288/while/NoOpNoOp0^lstm_288/while/lstm_cell/BiasAdd/ReadVariableOp/^lstm_288/while/lstm_cell/MatMul/ReadVariableOp1^lstm_288/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_288_while_identity lstm_288/while/Identity:output:0"?
lstm_288_while_identity_1"lstm_288/while/Identity_1:output:0"?
lstm_288_while_identity_2"lstm_288/while/Identity_2:output:0"?
lstm_288_while_identity_3"lstm_288/while/Identity_3:output:0"?
lstm_288_while_identity_4"lstm_288/while/Identity_4:output:0"?
lstm_288_while_identity_5"lstm_288/while/Identity_5:output:0"T
'lstm_288_while_lstm_288_strided_slice_1)lstm_288_while_lstm_288_strided_slice_1_0"v
8lstm_288_while_lstm_cell_biasadd_readvariableop_resource:lstm_288_while_lstm_cell_biasadd_readvariableop_resource_0"x
9lstm_288_while_lstm_cell_matmul_1_readvariableop_resource;lstm_288_while_lstm_cell_matmul_1_readvariableop_resource_0"t
7lstm_288_while_lstm_cell_matmul_readvariableop_resource9lstm_288_while_lstm_cell_matmul_readvariableop_resource_0"?
clstm_288_while_tensorarrayv2read_tensorlistgetitem_lstm_288_tensorarrayunstack_tensorlistfromtensorelstm_288_while_tensorarrayv2read_tensorlistgetitem_lstm_288_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2b
/lstm_288/while/lstm_cell/BiasAdd/ReadVariableOp/lstm_288/while/lstm_cell/BiasAdd/ReadVariableOp2`
.lstm_288/while/lstm_cell/MatMul/ReadVariableOp.lstm_288/while/lstm_cell/MatMul/ReadVariableOp2d
0lstm_288/while/lstm_cell/MatMul_1/ReadVariableOp0lstm_288/while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?

?
-__inference_sequential_96_layer_call_fn_14709

inputs
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_96_layer_call_and_return_conditional_losses_14508o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_lstm_290_layer_call_fn_16839

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_290_layer_call_and_return_conditional_losses_14110o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?7
?
C__inference_lstm_290_layer_call_and_return_conditional_losses_13436

inputs#
lstm_cell_2_13354:2(#
lstm_cell_2_13356:
(
lstm_cell_2_13358:(
identity??#lstm_cell_2/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_13354lstm_cell_2_13356lstm_cell_2_13358*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_13308n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_13354lstm_cell_2_13356lstm_cell_2_13358*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_13367*
condR
while_cond_13366*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
t
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?R
?
'sequential_96_lstm_290_while_body_12305J
Fsequential_96_lstm_290_while_sequential_96_lstm_290_while_loop_counterP
Lsequential_96_lstm_290_while_sequential_96_lstm_290_while_maximum_iterations,
(sequential_96_lstm_290_while_placeholder.
*sequential_96_lstm_290_while_placeholder_1.
*sequential_96_lstm_290_while_placeholder_2.
*sequential_96_lstm_290_while_placeholder_3I
Esequential_96_lstm_290_while_sequential_96_lstm_290_strided_slice_1_0?
?sequential_96_lstm_290_while_tensorarrayv2read_tensorlistgetitem_sequential_96_lstm_290_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_96_lstm_290_while_lstm_cell_2_matmul_readvariableop_resource_0:2(]
Ksequential_96_lstm_290_while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(X
Jsequential_96_lstm_290_while_lstm_cell_2_biasadd_readvariableop_resource_0:()
%sequential_96_lstm_290_while_identity+
'sequential_96_lstm_290_while_identity_1+
'sequential_96_lstm_290_while_identity_2+
'sequential_96_lstm_290_while_identity_3+
'sequential_96_lstm_290_while_identity_4+
'sequential_96_lstm_290_while_identity_5G
Csequential_96_lstm_290_while_sequential_96_lstm_290_strided_slice_1?
sequential_96_lstm_290_while_tensorarrayv2read_tensorlistgetitem_sequential_96_lstm_290_tensorarrayunstack_tensorlistfromtensorY
Gsequential_96_lstm_290_while_lstm_cell_2_matmul_readvariableop_resource:2([
Isequential_96_lstm_290_while_lstm_cell_2_matmul_1_readvariableop_resource:
(V
Hsequential_96_lstm_290_while_lstm_cell_2_biasadd_readvariableop_resource:(???sequential_96/lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOp?>sequential_96/lstm_290/while/lstm_cell_2/MatMul/ReadVariableOp?@sequential_96/lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOp?
Nsequential_96/lstm_290/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_96/lstm_290/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_96_lstm_290_while_tensorarrayv2read_tensorlistgetitem_sequential_96_lstm_290_tensorarrayunstack_tensorlistfromtensor_0(sequential_96_lstm_290_while_placeholderWsequential_96/lstm_290/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
>sequential_96/lstm_290/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOpIsequential_96_lstm_290_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
/sequential_96/lstm_290/while/lstm_cell_2/MatMulMatMulGsequential_96/lstm_290/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_96/lstm_290/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
@sequential_96/lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpKsequential_96_lstm_290_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
1sequential_96/lstm_290/while/lstm_cell_2/MatMul_1MatMul*sequential_96_lstm_290_while_placeholder_2Hsequential_96/lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
,sequential_96/lstm_290/while/lstm_cell_2/addAddV29sequential_96/lstm_290/while/lstm_cell_2/MatMul:product:0;sequential_96/lstm_290/while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
?sequential_96/lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpJsequential_96_lstm_290_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
0sequential_96/lstm_290/while/lstm_cell_2/BiasAddBiasAdd0sequential_96/lstm_290/while/lstm_cell_2/add:z:0Gsequential_96/lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(z
8sequential_96/lstm_290/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
.sequential_96/lstm_290/while/lstm_cell_2/splitSplitAsequential_96/lstm_290/while/lstm_cell_2/split/split_dim:output:09sequential_96/lstm_290/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
0sequential_96/lstm_290/while/lstm_cell_2/SigmoidSigmoid7sequential_96/lstm_290/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
?
2sequential_96/lstm_290/while/lstm_cell_2/Sigmoid_1Sigmoid7sequential_96/lstm_290/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
?
,sequential_96/lstm_290/while/lstm_cell_2/mulMul6sequential_96/lstm_290/while/lstm_cell_2/Sigmoid_1:y:0*sequential_96_lstm_290_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
-sequential_96/lstm_290/while/lstm_cell_2/ReluRelu7sequential_96/lstm_290/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
.sequential_96/lstm_290/while/lstm_cell_2/mul_1Mul4sequential_96/lstm_290/while/lstm_cell_2/Sigmoid:y:0;sequential_96/lstm_290/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
.sequential_96/lstm_290/while/lstm_cell_2/add_1AddV20sequential_96/lstm_290/while/lstm_cell_2/mul:z:02sequential_96/lstm_290/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
2sequential_96/lstm_290/while/lstm_cell_2/Sigmoid_2Sigmoid7sequential_96/lstm_290/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
?
/sequential_96/lstm_290/while/lstm_cell_2/Relu_1Relu2sequential_96/lstm_290/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_96/lstm_290/while/lstm_cell_2/mul_2Mul6sequential_96/lstm_290/while/lstm_cell_2/Sigmoid_2:y:0=sequential_96/lstm_290/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_96/lstm_290/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_96_lstm_290_while_placeholder_1(sequential_96_lstm_290_while_placeholder2sequential_96/lstm_290/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_96/lstm_290/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_96/lstm_290/while/addAddV2(sequential_96_lstm_290_while_placeholder+sequential_96/lstm_290/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_96/lstm_290/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_96/lstm_290/while/add_1AddV2Fsequential_96_lstm_290_while_sequential_96_lstm_290_while_loop_counter-sequential_96/lstm_290/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_96/lstm_290/while/IdentityIdentity&sequential_96/lstm_290/while/add_1:z:0"^sequential_96/lstm_290/while/NoOp*
T0*
_output_shapes
: ?
'sequential_96/lstm_290/while/Identity_1IdentityLsequential_96_lstm_290_while_sequential_96_lstm_290_while_maximum_iterations"^sequential_96/lstm_290/while/NoOp*
T0*
_output_shapes
: ?
'sequential_96/lstm_290/while/Identity_2Identity$sequential_96/lstm_290/while/add:z:0"^sequential_96/lstm_290/while/NoOp*
T0*
_output_shapes
: ?
'sequential_96/lstm_290/while/Identity_3IdentityQsequential_96/lstm_290/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_96/lstm_290/while/NoOp*
T0*
_output_shapes
: ?
'sequential_96/lstm_290/while/Identity_4Identity2sequential_96/lstm_290/while/lstm_cell_2/mul_2:z:0"^sequential_96/lstm_290/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_96/lstm_290/while/Identity_5Identity2sequential_96/lstm_290/while/lstm_cell_2/add_1:z:0"^sequential_96/lstm_290/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_96/lstm_290/while/NoOpNoOp@^sequential_96/lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOp?^sequential_96/lstm_290/while/lstm_cell_2/MatMul/ReadVariableOpA^sequential_96/lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_96_lstm_290_while_identity.sequential_96/lstm_290/while/Identity:output:0"[
'sequential_96_lstm_290_while_identity_10sequential_96/lstm_290/while/Identity_1:output:0"[
'sequential_96_lstm_290_while_identity_20sequential_96/lstm_290/while/Identity_2:output:0"[
'sequential_96_lstm_290_while_identity_30sequential_96/lstm_290/while/Identity_3:output:0"[
'sequential_96_lstm_290_while_identity_40sequential_96/lstm_290/while/Identity_4:output:0"[
'sequential_96_lstm_290_while_identity_50sequential_96/lstm_290/while/Identity_5:output:0"?
Hsequential_96_lstm_290_while_lstm_cell_2_biasadd_readvariableop_resourceJsequential_96_lstm_290_while_lstm_cell_2_biasadd_readvariableop_resource_0"?
Isequential_96_lstm_290_while_lstm_cell_2_matmul_1_readvariableop_resourceKsequential_96_lstm_290_while_lstm_cell_2_matmul_1_readvariableop_resource_0"?
Gsequential_96_lstm_290_while_lstm_cell_2_matmul_readvariableop_resourceIsequential_96_lstm_290_while_lstm_cell_2_matmul_readvariableop_resource_0"?
Csequential_96_lstm_290_while_sequential_96_lstm_290_strided_slice_1Esequential_96_lstm_290_while_sequential_96_lstm_290_strided_slice_1_0"?
sequential_96_lstm_290_while_tensorarrayv2read_tensorlistgetitem_sequential_96_lstm_290_tensorarrayunstack_tensorlistfromtensor?sequential_96_lstm_290_while_tensorarrayv2read_tensorlistgetitem_sequential_96_lstm_290_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
?sequential_96/lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOp?sequential_96/lstm_290/while/lstm_cell_2/BiasAdd/ReadVariableOp2?
>sequential_96/lstm_290/while/lstm_cell_2/MatMul/ReadVariableOp>sequential_96/lstm_290/while/lstm_cell_2/MatMul/ReadVariableOp2?
@sequential_96/lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOp@sequential_96/lstm_290/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?I
?
C__inference_lstm_289_layer_call_and_return_conditional_losses_16795

inputs=
*lstm_cell_1_matmul_readvariableop_resource:	d??
,lstm_cell_1_matmul_1_readvariableop_resource:	2?:
+lstm_cell_1_biasadd_readvariableop_resource:	?
identity??"lstm_cell_1/BiasAdd/ReadVariableOp?!lstm_cell_1/MatMul/ReadVariableOp?#lstm_cell_1/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_16711*
condR
while_cond_16710*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????2?
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?6
?
while_body_16095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	d?@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?C
0while_lstm_cell_matmul_1_readvariableop_resource:	d?>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_dense_96_layer_call_fn_17420

inputs
unknown:

	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_96_layer_call_and_return_conditional_losses_13912o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?B
?

lstm_289_while_body_15334.
*lstm_289_while_lstm_289_while_loop_counter4
0lstm_289_while_lstm_289_while_maximum_iterations
lstm_289_while_placeholder 
lstm_289_while_placeholder_1 
lstm_289_while_placeholder_2 
lstm_289_while_placeholder_3-
)lstm_289_while_lstm_289_strided_slice_1_0i
elstm_289_while_tensorarrayv2read_tensorlistgetitem_lstm_289_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_289_while_lstm_cell_1_matmul_readvariableop_resource_0:	d?P
=lstm_289_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2?K
<lstm_289_while_lstm_cell_1_biasadd_readvariableop_resource_0:	?
lstm_289_while_identity
lstm_289_while_identity_1
lstm_289_while_identity_2
lstm_289_while_identity_3
lstm_289_while_identity_4
lstm_289_while_identity_5+
'lstm_289_while_lstm_289_strided_slice_1g
clstm_289_while_tensorarrayv2read_tensorlistgetitem_lstm_289_tensorarrayunstack_tensorlistfromtensorL
9lstm_289_while_lstm_cell_1_matmul_readvariableop_resource:	d?N
;lstm_289_while_lstm_cell_1_matmul_1_readvariableop_resource:	2?I
:lstm_289_while_lstm_cell_1_biasadd_readvariableop_resource:	???1lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOp?0lstm_289/while/lstm_cell_1/MatMul/ReadVariableOp?2lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOp?
@lstm_289/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_289/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_289_while_tensorarrayv2read_tensorlistgetitem_lstm_289_tensorarrayunstack_tensorlistfromtensor_0lstm_289_while_placeholderIlstm_289/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
0lstm_289/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_289_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
!lstm_289/while/lstm_cell_1/MatMulMatMul9lstm_289/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_289/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
2lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp=lstm_289_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
#lstm_289/while/lstm_cell_1/MatMul_1MatMullstm_289_while_placeholder_2:lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_289/while/lstm_cell_1/addAddV2+lstm_289/while/lstm_cell_1/MatMul:product:0-lstm_289/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
1lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_289_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
"lstm_289/while/lstm_cell_1/BiasAddBiasAdd"lstm_289/while/lstm_cell_1/add:z:09lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????l
*lstm_289/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
 lstm_289/while/lstm_cell_1/splitSplit3lstm_289/while/lstm_cell_1/split/split_dim:output:0+lstm_289/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
"lstm_289/while/lstm_cell_1/SigmoidSigmoid)lstm_289/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2?
$lstm_289/while/lstm_cell_1/Sigmoid_1Sigmoid)lstm_289/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_289/while/lstm_cell_1/mulMul(lstm_289/while/lstm_cell_1/Sigmoid_1:y:0lstm_289_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
lstm_289/while/lstm_cell_1/ReluRelu)lstm_289/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
 lstm_289/while/lstm_cell_1/mul_1Mul&lstm_289/while/lstm_cell_1/Sigmoid:y:0-lstm_289/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
 lstm_289/while/lstm_cell_1/add_1AddV2"lstm_289/while/lstm_cell_1/mul:z:0$lstm_289/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
$lstm_289/while/lstm_cell_1/Sigmoid_2Sigmoid)lstm_289/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2?
!lstm_289/while/lstm_cell_1/Relu_1Relu$lstm_289/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_289/while/lstm_cell_1/mul_2Mul(lstm_289/while/lstm_cell_1/Sigmoid_2:y:0/lstm_289/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_289/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_289_while_placeholder_1lstm_289_while_placeholder$lstm_289/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_289/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_289/while/addAddV2lstm_289_while_placeholderlstm_289/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_289/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_289/while/add_1AddV2*lstm_289_while_lstm_289_while_loop_counterlstm_289/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_289/while/IdentityIdentitylstm_289/while/add_1:z:0^lstm_289/while/NoOp*
T0*
_output_shapes
: ?
lstm_289/while/Identity_1Identity0lstm_289_while_lstm_289_while_maximum_iterations^lstm_289/while/NoOp*
T0*
_output_shapes
: t
lstm_289/while/Identity_2Identitylstm_289/while/add:z:0^lstm_289/while/NoOp*
T0*
_output_shapes
: ?
lstm_289/while/Identity_3IdentityClstm_289/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_289/while/NoOp*
T0*
_output_shapes
: ?
lstm_289/while/Identity_4Identity$lstm_289/while/lstm_cell_1/mul_2:z:0^lstm_289/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_289/while/Identity_5Identity$lstm_289/while/lstm_cell_1/add_1:z:0^lstm_289/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_289/while/NoOpNoOp2^lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOp1^lstm_289/while/lstm_cell_1/MatMul/ReadVariableOp3^lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_289_while_identity lstm_289/while/Identity:output:0"?
lstm_289_while_identity_1"lstm_289/while/Identity_1:output:0"?
lstm_289_while_identity_2"lstm_289/while/Identity_2:output:0"?
lstm_289_while_identity_3"lstm_289/while/Identity_3:output:0"?
lstm_289_while_identity_4"lstm_289/while/Identity_4:output:0"?
lstm_289_while_identity_5"lstm_289/while/Identity_5:output:0"T
'lstm_289_while_lstm_289_strided_slice_1)lstm_289_while_lstm_289_strided_slice_1_0"z
:lstm_289_while_lstm_cell_1_biasadd_readvariableop_resource<lstm_289_while_lstm_cell_1_biasadd_readvariableop_resource_0"|
;lstm_289_while_lstm_cell_1_matmul_1_readvariableop_resource=lstm_289_while_lstm_cell_1_matmul_1_readvariableop_resource_0"x
9lstm_289_while_lstm_cell_1_matmul_readvariableop_resource;lstm_289_while_lstm_cell_1_matmul_readvariableop_resource_0"?
clstm_289_while_tensorarrayv2read_tensorlistgetitem_lstm_289_tensorarrayunstack_tensorlistfromtensorelstm_289_while_tensorarrayv2read_tensorlistgetitem_lstm_289_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2f
1lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOp1lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOp2d
0lstm_289/while/lstm_cell_1/MatMul/ReadVariableOp0lstm_289/while/lstm_cell_1/MatMul/ReadVariableOp2h
2lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOp2lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
'sequential_96_lstm_290_while_cond_12304J
Fsequential_96_lstm_290_while_sequential_96_lstm_290_while_loop_counterP
Lsequential_96_lstm_290_while_sequential_96_lstm_290_while_maximum_iterations,
(sequential_96_lstm_290_while_placeholder.
*sequential_96_lstm_290_while_placeholder_1.
*sequential_96_lstm_290_while_placeholder_2.
*sequential_96_lstm_290_while_placeholder_3L
Hsequential_96_lstm_290_while_less_sequential_96_lstm_290_strided_slice_1a
]sequential_96_lstm_290_while_sequential_96_lstm_290_while_cond_12304___redundant_placeholder0a
]sequential_96_lstm_290_while_sequential_96_lstm_290_while_cond_12304___redundant_placeholder1a
]sequential_96_lstm_290_while_sequential_96_lstm_290_while_cond_12304___redundant_placeholder2a
]sequential_96_lstm_290_while_sequential_96_lstm_290_while_cond_12304___redundant_placeholder3)
%sequential_96_lstm_290_while_identity
?
!sequential_96/lstm_290/while/LessLess(sequential_96_lstm_290_while_placeholderHsequential_96_lstm_290_while_less_sequential_96_lstm_290_strided_slice_1*
T0*
_output_shapes
: y
%sequential_96/lstm_290/while/IdentityIdentity%sequential_96/lstm_290/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_96_lstm_290_while_identity.sequential_96/lstm_290/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
H__inference_sequential_96_layer_call_and_return_conditional_losses_14508

inputs!
lstm_288_14481:	?!
lstm_288_14483:	d?
lstm_288_14485:	?!
lstm_289_14488:	d?!
lstm_289_14490:	2?
lstm_289_14492:	? 
lstm_290_14495:2( 
lstm_290_14497:
(
lstm_290_14499:( 
dense_96_14502:

dense_96_14504:
identity?? dense_96/StatefulPartitionedCall? lstm_288/StatefulPartitionedCall? lstm_289/StatefulPartitionedCall? lstm_290/StatefulPartitionedCall?
 lstm_288/StatefulPartitionedCallStatefulPartitionedCallinputslstm_288_14481lstm_288_14483lstm_288_14485*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_288_layer_call_and_return_conditional_losses_14440?
 lstm_289/StatefulPartitionedCallStatefulPartitionedCall)lstm_288/StatefulPartitionedCall:output:0lstm_289_14488lstm_289_14490lstm_289_14492*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_289_layer_call_and_return_conditional_losses_14275?
 lstm_290/StatefulPartitionedCallStatefulPartitionedCall)lstm_289/StatefulPartitionedCall:output:0lstm_290_14495lstm_290_14497lstm_290_14499*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_290_layer_call_and_return_conditional_losses_14110?
 dense_96/StatefulPartitionedCallStatefulPartitionedCall)lstm_290/StatefulPartitionedCall:output:0dense_96_14502dense_96_14504*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_96_layer_call_and_return_conditional_losses_13912x
IdentityIdentity)dense_96/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_96/StatefulPartitionedCall!^lstm_288/StatefulPartitionedCall!^lstm_289/StatefulPartitionedCall!^lstm_290/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 lstm_288/StatefulPartitionedCall lstm_288/StatefulPartitionedCall2D
 lstm_289/StatefulPartitionedCall lstm_289/StatefulPartitionedCall2D
 lstm_290/StatefulPartitionedCall lstm_290/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_lstm_290_layer_call_fn_16817
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_290_layer_call_and_return_conditional_losses_13436o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?W
?
__inference__traced_save_17867
file_prefix.
*savev2_dense_96_kernel_read_readvariableop,
(savev2_dense_96_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_288_lstm_cell_288_kernel_read_readvariableopF
Bsavev2_lstm_288_lstm_cell_288_recurrent_kernel_read_readvariableop:
6savev2_lstm_288_lstm_cell_288_bias_read_readvariableop<
8savev2_lstm_289_lstm_cell_289_kernel_read_readvariableopF
Bsavev2_lstm_289_lstm_cell_289_recurrent_kernel_read_readvariableop:
6savev2_lstm_289_lstm_cell_289_bias_read_readvariableop<
8savev2_lstm_290_lstm_cell_290_kernel_read_readvariableopF
Bsavev2_lstm_290_lstm_cell_290_recurrent_kernel_read_readvariableop:
6savev2_lstm_290_lstm_cell_290_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_96_kernel_m_read_readvariableop3
/savev2_adam_dense_96_bias_m_read_readvariableopC
?savev2_adam_lstm_288_lstm_cell_288_kernel_m_read_readvariableopM
Isavev2_adam_lstm_288_lstm_cell_288_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_288_lstm_cell_288_bias_m_read_readvariableopC
?savev2_adam_lstm_289_lstm_cell_289_kernel_m_read_readvariableopM
Isavev2_adam_lstm_289_lstm_cell_289_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_289_lstm_cell_289_bias_m_read_readvariableopC
?savev2_adam_lstm_290_lstm_cell_290_kernel_m_read_readvariableopM
Isavev2_adam_lstm_290_lstm_cell_290_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_290_lstm_cell_290_bias_m_read_readvariableop5
1savev2_adam_dense_96_kernel_v_read_readvariableop3
/savev2_adam_dense_96_bias_v_read_readvariableopC
?savev2_adam_lstm_288_lstm_cell_288_kernel_v_read_readvariableopM
Isavev2_adam_lstm_288_lstm_cell_288_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_288_lstm_cell_288_bias_v_read_readvariableopC
?savev2_adam_lstm_289_lstm_cell_289_kernel_v_read_readvariableopM
Isavev2_adam_lstm_289_lstm_cell_289_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_289_lstm_cell_289_bias_v_read_readvariableopC
?savev2_adam_lstm_290_lstm_cell_290_kernel_v_read_readvariableopM
Isavev2_adam_lstm_290_lstm_cell_290_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_290_lstm_cell_290_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*?
value?B?)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_96_kernel_read_readvariableop(savev2_dense_96_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_288_lstm_cell_288_kernel_read_readvariableopBsavev2_lstm_288_lstm_cell_288_recurrent_kernel_read_readvariableop6savev2_lstm_288_lstm_cell_288_bias_read_readvariableop8savev2_lstm_289_lstm_cell_289_kernel_read_readvariableopBsavev2_lstm_289_lstm_cell_289_recurrent_kernel_read_readvariableop6savev2_lstm_289_lstm_cell_289_bias_read_readvariableop8savev2_lstm_290_lstm_cell_290_kernel_read_readvariableopBsavev2_lstm_290_lstm_cell_290_recurrent_kernel_read_readvariableop6savev2_lstm_290_lstm_cell_290_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_96_kernel_m_read_readvariableop/savev2_adam_dense_96_bias_m_read_readvariableop?savev2_adam_lstm_288_lstm_cell_288_kernel_m_read_readvariableopIsavev2_adam_lstm_288_lstm_cell_288_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_288_lstm_cell_288_bias_m_read_readvariableop?savev2_adam_lstm_289_lstm_cell_289_kernel_m_read_readvariableopIsavev2_adam_lstm_289_lstm_cell_289_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_289_lstm_cell_289_bias_m_read_readvariableop?savev2_adam_lstm_290_lstm_cell_290_kernel_m_read_readvariableopIsavev2_adam_lstm_290_lstm_cell_290_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_290_lstm_cell_290_bias_m_read_readvariableop1savev2_adam_dense_96_kernel_v_read_readvariableop/savev2_adam_dense_96_bias_v_read_readvariableop?savev2_adam_lstm_288_lstm_cell_288_kernel_v_read_readvariableopIsavev2_adam_lstm_288_lstm_cell_288_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_288_lstm_cell_288_bias_v_read_readvariableop?savev2_adam_lstm_289_lstm_cell_289_kernel_v_read_readvariableopIsavev2_adam_lstm_289_lstm_cell_289_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_289_lstm_cell_289_bias_v_read_readvariableop?savev2_adam_lstm_290_lstm_cell_290_kernel_v_read_readvariableopIsavev2_adam_lstm_290_lstm_cell_290_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_290_lstm_cell_290_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
:: : : : : :	?:	d?:?:	d?:	2?:?:2(:
(:(: : :
::	?:	d?:?:	d?:	2?:?:2(:
(:(:
::	?:	d?:?:	d?:	2?:?:2(:
(:(: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:%	!

_output_shapes
:	d?:!


_output_shapes	
:?:%!

_output_shapes
:	d?:%!

_output_shapes
:	2?:!

_output_shapes	
:?:$ 

_output_shapes

:2(:$ 

_output_shapes

:
(: 

_output_shapes
:(:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
: 

_output_shapes
::%!

_output_shapes
:	?:%!

_output_shapes
:	d?:!

_output_shapes	
:?:%!

_output_shapes
:	d?:%!

_output_shapes
:	2?:!

_output_shapes	
:?:$ 

_output_shapes

:2(:$ 

_output_shapes

:
(: 

_output_shapes
:(:$ 

_output_shapes

:
: 

_output_shapes
::% !

_output_shapes
:	?:%!!

_output_shapes
:	d?:!"

_output_shapes	
:?:%#!

_output_shapes
:	d?:%$!

_output_shapes
:	2?:!%

_output_shapes	
:?:$& 

_output_shapes

:2(:$' 

_output_shapes

:
(: (

_output_shapes
:(:)

_output_shapes
: 
?"
?
while_body_12476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_12500_0:	?*
while_lstm_cell_12502_0:	d?&
while_lstm_cell_12504_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_12500:	?(
while_lstm_cell_12502:	d?$
while_lstm_cell_12504:	???'while/lstm_cell/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_12500_0while_lstm_cell_12502_0while_lstm_cell_12504_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_12462?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dv

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"0
while_lstm_cell_12500while_lstm_cell_12500_0"0
while_lstm_cell_12502while_lstm_cell_12502_0"0
while_lstm_cell_12504while_lstm_cell_12504_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_15808
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_15808___redundant_placeholder03
/while_while_cond_15808___redundant_placeholder13
/while_while_cond_15808___redundant_placeholder23
/while_while_cond_15808___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?J
?
C__inference_lstm_289_layer_call_and_return_conditional_losses_16509
inputs_0=
*lstm_cell_1_matmul_readvariableop_resource:	d??
,lstm_cell_1_matmul_1_readvariableop_resource:	2?:
+lstm_cell_1_biasadd_readvariableop_resource:	?
identity??"lstm_cell_1/BiasAdd/ReadVariableOp?!lstm_cell_1/MatMul/ReadVariableOp?#lstm_cell_1/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_16425*
condR
while_cond_16424*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2?
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?7
?
while_body_16568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	d?G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2?B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	d?E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	2?@
1while_lstm_cell_1_biasadd_readvariableop_resource:	???(while/lstm_cell_1/BiasAdd/ReadVariableOp?'while/lstm_cell_1/MatMul/ReadVariableOp?)while/lstm_cell_1/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?H
?
C__inference_lstm_288_layer_call_and_return_conditional_losses_14440

inputs;
(lstm_cell_matmul_readvariableop_resource:	?=
*lstm_cell_matmul_1_readvariableop_resource:	d?8
)lstm_cell_biasadd_readvariableop_resource:	?
identity?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:?????????dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:?????????d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_14356*
condR
while_cond_14355*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????d?
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_lstm_cell_1_layer_call_fn_17545

inputs
states_0
states_1
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_12812o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_12608

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????d
 
_user_specified_namestates:OK
'
_output_shapes
:?????????d
 
_user_specified_namestates
?R
?
'sequential_96_lstm_289_while_body_12166J
Fsequential_96_lstm_289_while_sequential_96_lstm_289_while_loop_counterP
Lsequential_96_lstm_289_while_sequential_96_lstm_289_while_maximum_iterations,
(sequential_96_lstm_289_while_placeholder.
*sequential_96_lstm_289_while_placeholder_1.
*sequential_96_lstm_289_while_placeholder_2.
*sequential_96_lstm_289_while_placeholder_3I
Esequential_96_lstm_289_while_sequential_96_lstm_289_strided_slice_1_0?
?sequential_96_lstm_289_while_tensorarrayv2read_tensorlistgetitem_sequential_96_lstm_289_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_96_lstm_289_while_lstm_cell_1_matmul_readvariableop_resource_0:	d?^
Ksequential_96_lstm_289_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2?Y
Jsequential_96_lstm_289_while_lstm_cell_1_biasadd_readvariableop_resource_0:	?)
%sequential_96_lstm_289_while_identity+
'sequential_96_lstm_289_while_identity_1+
'sequential_96_lstm_289_while_identity_2+
'sequential_96_lstm_289_while_identity_3+
'sequential_96_lstm_289_while_identity_4+
'sequential_96_lstm_289_while_identity_5G
Csequential_96_lstm_289_while_sequential_96_lstm_289_strided_slice_1?
sequential_96_lstm_289_while_tensorarrayv2read_tensorlistgetitem_sequential_96_lstm_289_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_96_lstm_289_while_lstm_cell_1_matmul_readvariableop_resource:	d?\
Isequential_96_lstm_289_while_lstm_cell_1_matmul_1_readvariableop_resource:	2?W
Hsequential_96_lstm_289_while_lstm_cell_1_biasadd_readvariableop_resource:	????sequential_96/lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOp?>sequential_96/lstm_289/while/lstm_cell_1/MatMul/ReadVariableOp?@sequential_96/lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOp?
Nsequential_96/lstm_289/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_96/lstm_289/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_96_lstm_289_while_tensorarrayv2read_tensorlistgetitem_sequential_96_lstm_289_tensorarrayunstack_tensorlistfromtensor_0(sequential_96_lstm_289_while_placeholderWsequential_96/lstm_289/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
>sequential_96/lstm_289/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpIsequential_96_lstm_289_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
/sequential_96/lstm_289/while/lstm_cell_1/MatMulMatMulGsequential_96/lstm_289/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_96/lstm_289/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
@sequential_96/lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpKsequential_96_lstm_289_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
1sequential_96/lstm_289/while/lstm_cell_1/MatMul_1MatMul*sequential_96_lstm_289_while_placeholder_2Hsequential_96/lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,sequential_96/lstm_289/while/lstm_cell_1/addAddV29sequential_96/lstm_289/while/lstm_cell_1/MatMul:product:0;sequential_96/lstm_289/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
?sequential_96/lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpJsequential_96_lstm_289_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
0sequential_96/lstm_289/while/lstm_cell_1/BiasAddBiasAdd0sequential_96/lstm_289/while/lstm_cell_1/add:z:0Gsequential_96/lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????z
8sequential_96/lstm_289/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
.sequential_96/lstm_289/while/lstm_cell_1/splitSplitAsequential_96/lstm_289/while/lstm_cell_1/split/split_dim:output:09sequential_96/lstm_289/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
0sequential_96/lstm_289/while/lstm_cell_1/SigmoidSigmoid7sequential_96/lstm_289/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2?
2sequential_96/lstm_289/while/lstm_cell_1/Sigmoid_1Sigmoid7sequential_96/lstm_289/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2?
,sequential_96/lstm_289/while/lstm_cell_1/mulMul6sequential_96/lstm_289/while/lstm_cell_1/Sigmoid_1:y:0*sequential_96_lstm_289_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
-sequential_96/lstm_289/while/lstm_cell_1/ReluRelu7sequential_96/lstm_289/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
.sequential_96/lstm_289/while/lstm_cell_1/mul_1Mul4sequential_96/lstm_289/while/lstm_cell_1/Sigmoid:y:0;sequential_96/lstm_289/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
.sequential_96/lstm_289/while/lstm_cell_1/add_1AddV20sequential_96/lstm_289/while/lstm_cell_1/mul:z:02sequential_96/lstm_289/while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
2sequential_96/lstm_289/while/lstm_cell_1/Sigmoid_2Sigmoid7sequential_96/lstm_289/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2?
/sequential_96/lstm_289/while/lstm_cell_1/Relu_1Relu2sequential_96/lstm_289/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_96/lstm_289/while/lstm_cell_1/mul_2Mul6sequential_96/lstm_289/while/lstm_cell_1/Sigmoid_2:y:0=sequential_96/lstm_289/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_96/lstm_289/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_96_lstm_289_while_placeholder_1(sequential_96_lstm_289_while_placeholder2sequential_96/lstm_289/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_96/lstm_289/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_96/lstm_289/while/addAddV2(sequential_96_lstm_289_while_placeholder+sequential_96/lstm_289/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_96/lstm_289/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_96/lstm_289/while/add_1AddV2Fsequential_96_lstm_289_while_sequential_96_lstm_289_while_loop_counter-sequential_96/lstm_289/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_96/lstm_289/while/IdentityIdentity&sequential_96/lstm_289/while/add_1:z:0"^sequential_96/lstm_289/while/NoOp*
T0*
_output_shapes
: ?
'sequential_96/lstm_289/while/Identity_1IdentityLsequential_96_lstm_289_while_sequential_96_lstm_289_while_maximum_iterations"^sequential_96/lstm_289/while/NoOp*
T0*
_output_shapes
: ?
'sequential_96/lstm_289/while/Identity_2Identity$sequential_96/lstm_289/while/add:z:0"^sequential_96/lstm_289/while/NoOp*
T0*
_output_shapes
: ?
'sequential_96/lstm_289/while/Identity_3IdentityQsequential_96/lstm_289/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_96/lstm_289/while/NoOp*
T0*
_output_shapes
: ?
'sequential_96/lstm_289/while/Identity_4Identity2sequential_96/lstm_289/while/lstm_cell_1/mul_2:z:0"^sequential_96/lstm_289/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_96/lstm_289/while/Identity_5Identity2sequential_96/lstm_289/while/lstm_cell_1/add_1:z:0"^sequential_96/lstm_289/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_96/lstm_289/while/NoOpNoOp@^sequential_96/lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOp?^sequential_96/lstm_289/while/lstm_cell_1/MatMul/ReadVariableOpA^sequential_96/lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_96_lstm_289_while_identity.sequential_96/lstm_289/while/Identity:output:0"[
'sequential_96_lstm_289_while_identity_10sequential_96/lstm_289/while/Identity_1:output:0"[
'sequential_96_lstm_289_while_identity_20sequential_96/lstm_289/while/Identity_2:output:0"[
'sequential_96_lstm_289_while_identity_30sequential_96/lstm_289/while/Identity_3:output:0"[
'sequential_96_lstm_289_while_identity_40sequential_96/lstm_289/while/Identity_4:output:0"[
'sequential_96_lstm_289_while_identity_50sequential_96/lstm_289/while/Identity_5:output:0"?
Hsequential_96_lstm_289_while_lstm_cell_1_biasadd_readvariableop_resourceJsequential_96_lstm_289_while_lstm_cell_1_biasadd_readvariableop_resource_0"?
Isequential_96_lstm_289_while_lstm_cell_1_matmul_1_readvariableop_resourceKsequential_96_lstm_289_while_lstm_cell_1_matmul_1_readvariableop_resource_0"?
Gsequential_96_lstm_289_while_lstm_cell_1_matmul_readvariableop_resourceIsequential_96_lstm_289_while_lstm_cell_1_matmul_readvariableop_resource_0"?
Csequential_96_lstm_289_while_sequential_96_lstm_289_strided_slice_1Esequential_96_lstm_289_while_sequential_96_lstm_289_strided_slice_1_0"?
sequential_96_lstm_289_while_tensorarrayv2read_tensorlistgetitem_sequential_96_lstm_289_tensorarrayunstack_tensorlistfromtensor?sequential_96_lstm_289_while_tensorarrayv2read_tensorlistgetitem_sequential_96_lstm_289_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
?sequential_96/lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOp?sequential_96/lstm_289/while/lstm_cell_1/BiasAdd/ReadVariableOp2?
>sequential_96/lstm_289/while/lstm_cell_1/MatMul/ReadVariableOp>sequential_96/lstm_289/while/lstm_cell_1/MatMul/ReadVariableOp2?
@sequential_96/lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOp@sequential_96/lstm_289/while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_lstm_289_layer_call_fn_16212

inputs
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_289_layer_call_and_return_conditional_losses_13744s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
-__inference_sequential_96_layer_call_fn_14682

inputs
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_96_layer_call_and_return_conditional_losses_13919o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?7
?
C__inference_lstm_290_layer_call_and_return_conditional_losses_13245

inputs#
lstm_cell_2_13163:2(#
lstm_cell_2_13165:
(
lstm_cell_2_13167:(
identity??#lstm_cell_2/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_13163lstm_cell_2_13165lstm_cell_2_13167*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_13162n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_13163lstm_cell_2_13165lstm_cell_2_13167*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_13176*
condR
while_cond_13175*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
t
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_17496

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/1
?
?
while_cond_13016
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_13016___redundant_placeholder03
/while_while_cond_13016___redundant_placeholder13
/while_while_cond_13016___redundant_placeholder23
/while_while_cond_13016___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_16424
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_16424___redundant_placeholder03
/while_while_cond_16424___redundant_placeholder13
/while_while_cond_16424___redundant_placeholder23
/while_while_cond_16424___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_17326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_17326___redundant_placeholder03
/while_while_cond_17326___redundant_placeholder13
/while_while_cond_17326___redundant_placeholder23
/while_while_cond_17326___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_13809
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_13809___redundant_placeholder03
/while_while_cond_13809___redundant_placeholder13
/while_while_cond_13809___redundant_placeholder23
/while_while_cond_13809___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?7
?
while_body_17041
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_2_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:2(D
2while_lstm_cell_2_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_2_biasadd_readvariableop_resource:(??(while/lstm_cell_2/BiasAdd/ReadVariableOp?'while/lstm_cell_2/MatMul/ReadVariableOp?)while/lstm_cell_2/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_lstm_289_layer_call_fn_16223

inputs
unknown:	d?
	unknown_0:	2?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_289_layer_call_and_return_conditional_losses_14275s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?I
?
C__inference_lstm_290_layer_call_and_return_conditional_losses_13894

inputs<
*lstm_cell_2_matmul_readvariableop_resource:2(>
,lstm_cell_2_matmul_1_readvariableop_resource:
(9
+lstm_cell_2_biasadd_readvariableop_resource:(
identity??"lstm_cell_2/BiasAdd/ReadVariableOp?!lstm_cell_2/MatMul/ReadVariableOp?#lstm_cell_2/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_13810*
condR
while_cond_13809*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
H__inference_sequential_96_layer_call_and_return_conditional_losses_14620
lstm_288_input!
lstm_288_14593:	?!
lstm_288_14595:	d?
lstm_288_14597:	?!
lstm_289_14600:	d?!
lstm_289_14602:	2?
lstm_289_14604:	? 
lstm_290_14607:2( 
lstm_290_14609:
(
lstm_290_14611:( 
dense_96_14614:

dense_96_14616:
identity?? dense_96/StatefulPartitionedCall? lstm_288/StatefulPartitionedCall? lstm_289/StatefulPartitionedCall? lstm_290/StatefulPartitionedCall?
 lstm_288/StatefulPartitionedCallStatefulPartitionedCalllstm_288_inputlstm_288_14593lstm_288_14595lstm_288_14597*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_288_layer_call_and_return_conditional_losses_14440?
 lstm_289/StatefulPartitionedCallStatefulPartitionedCall)lstm_288/StatefulPartitionedCall:output:0lstm_289_14600lstm_289_14602lstm_289_14604*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_289_layer_call_and_return_conditional_losses_14275?
 lstm_290/StatefulPartitionedCallStatefulPartitionedCall)lstm_289/StatefulPartitionedCall:output:0lstm_290_14607lstm_290_14609lstm_290_14611*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_290_layer_call_and_return_conditional_losses_14110?
 dense_96/StatefulPartitionedCallStatefulPartitionedCall)lstm_290/StatefulPartitionedCall:output:0dense_96_14614dense_96_14616*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_96_layer_call_and_return_conditional_losses_13912x
IdentityIdentity)dense_96/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_96/StatefulPartitionedCall!^lstm_288/StatefulPartitionedCall!^lstm_289/StatefulPartitionedCall!^lstm_290/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_96/StatefulPartitionedCall dense_96/StatefulPartitionedCall2D
 lstm_288/StatefulPartitionedCall lstm_288/StatefulPartitionedCall2D
 lstm_289/StatefulPartitionedCall lstm_289/StatefulPartitionedCall2D
 lstm_290/StatefulPartitionedCall lstm_290/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_288_input
?I
?
C__inference_lstm_288_layer_call_and_return_conditional_losses_15750
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	?=
*lstm_cell_matmul_1_readvariableop_resource:	d?8
)lstm_cell_biasadd_readvariableop_resource:	?
identity?? lstm_cell/BiasAdd/ReadVariableOp?lstm_cell/MatMul/ReadVariableOp?!lstm_cell/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:?????????dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:?????????d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_15666*
condR
while_cond_15665*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d?
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?7
?
C__inference_lstm_289_layer_call_and_return_conditional_losses_12895

inputs$
lstm_cell_1_12813:	d?$
lstm_cell_1_12815:	2? 
lstm_cell_1_12817:	?
identity??#lstm_cell_1/StatefulPartitionedCall?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_12813lstm_cell_1_12815lstm_cell_1_12817*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????2:?????????2:?????????2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_12812n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_12813lstm_cell_1_12815lstm_cell_1_12817*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12826*
condR
while_cond_12825*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :??????????????????2t
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
??
?
!__inference__traced_restore_17997
file_prefix2
 assignvariableop_dense_96_kernel:
.
 assignvariableop_1_dense_96_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_288_lstm_cell_288_kernel:	?M
:assignvariableop_8_lstm_288_lstm_cell_288_recurrent_kernel:	d?=
.assignvariableop_9_lstm_288_lstm_cell_288_bias:	?D
1assignvariableop_10_lstm_289_lstm_cell_289_kernel:	d?N
;assignvariableop_11_lstm_289_lstm_cell_289_recurrent_kernel:	2?>
/assignvariableop_12_lstm_289_lstm_cell_289_bias:	?C
1assignvariableop_13_lstm_290_lstm_cell_290_kernel:2(M
;assignvariableop_14_lstm_290_lstm_cell_290_recurrent_kernel:
(=
/assignvariableop_15_lstm_290_lstm_cell_290_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_96_kernel_m:
6
(assignvariableop_19_adam_dense_96_bias_m:K
8assignvariableop_20_adam_lstm_288_lstm_cell_288_kernel_m:	?U
Bassignvariableop_21_adam_lstm_288_lstm_cell_288_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_288_lstm_cell_288_bias_m:	?K
8assignvariableop_23_adam_lstm_289_lstm_cell_289_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_289_lstm_cell_289_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_289_lstm_cell_289_bias_m:	?J
8assignvariableop_26_adam_lstm_290_lstm_cell_290_kernel_m:2(T
Bassignvariableop_27_adam_lstm_290_lstm_cell_290_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_290_lstm_cell_290_bias_m:(<
*assignvariableop_29_adam_dense_96_kernel_v:
6
(assignvariableop_30_adam_dense_96_bias_v:K
8assignvariableop_31_adam_lstm_288_lstm_cell_288_kernel_v:	?U
Bassignvariableop_32_adam_lstm_288_lstm_cell_288_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_288_lstm_cell_288_bias_v:	?K
8assignvariableop_34_adam_lstm_289_lstm_cell_289_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_289_lstm_cell_289_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_289_lstm_cell_289_bias_v:	?J
8assignvariableop_37_adam_lstm_290_lstm_cell_290_kernel_v:2(T
Bassignvariableop_38_adam_lstm_290_lstm_cell_290_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_290_lstm_cell_290_bias_v:(
identity_41??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*?
value?B?)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_dense_96_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_96_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_288_lstm_cell_288_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_288_lstm_cell_288_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_288_lstm_cell_288_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_289_lstm_cell_289_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_289_lstm_cell_289_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_289_lstm_cell_289_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_290_lstm_cell_290_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_290_lstm_cell_290_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_290_lstm_cell_290_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_96_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_96_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_288_lstm_cell_288_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_288_lstm_cell_288_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_288_lstm_cell_288_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_289_lstm_cell_289_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_289_lstm_cell_289_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_289_lstm_cell_289_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_290_lstm_cell_290_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_290_lstm_cell_290_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_290_lstm_cell_290_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_96_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_96_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_288_lstm_cell_288_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_288_lstm_cell_288_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_288_lstm_cell_288_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_289_lstm_cell_289_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_289_lstm_cell_289_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_289_lstm_cell_289_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_290_lstm_cell_290_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_290_lstm_cell_290_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_290_lstm_cell_290_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_41Identity_41:output:0*e
_input_shapesT
R: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
)__inference_lstm_cell_layer_call_fn_17447

inputs
states_0
states_1
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????d:?????????d:?????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_12462o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/1
?
?
while_cond_16710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_16710___redundant_placeholder03
/while_while_cond_16710___redundant_placeholder13
/while_while_cond_16710___redundant_placeholder23
/while_while_cond_16710___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_13308

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????

 
_user_specified_namestates:OK
'
_output_shapes
:?????????

 
_user_specified_namestates
?J
?
C__inference_lstm_290_layer_call_and_return_conditional_losses_17125
inputs_0<
*lstm_cell_2_matmul_readvariableop_resource:2(>
,lstm_cell_2_matmul_1_readvariableop_resource:
(9
+lstm_cell_2_biasadd_readvariableop_resource:(
identity??"lstm_cell_2/BiasAdd/ReadVariableOp?!lstm_cell_2/MatMul/ReadVariableOp?#lstm_cell_2/MatMul_1/ReadVariableOp?while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_17041*
condR
while_cond_17040*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?7
?
while_body_14026
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_2_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:2(D
2while_lstm_cell_2_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_2_biasadd_readvariableop_resource:(??(while/lstm_cell_2/BiasAdd/ReadVariableOp?'while/lstm_cell_2/MatMul/ReadVariableOp?)while/lstm_cell_2/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(c
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: 
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_12462

inputs

states
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????d
 
_user_specified_namestates:OK
'
_output_shapes
:?????????d
 
_user_specified_namestates
?
?
while_cond_12666
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_12666___redundant_placeholder03
/while_while_cond_12666___redundant_placeholder13
/while_while_cond_12666___redundant_placeholder23
/while_while_cond_12666___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
??
?

H__inference_sequential_96_layer_call_and_return_conditional_losses_15563

inputsD
1lstm_288_lstm_cell_matmul_readvariableop_resource:	?F
3lstm_288_lstm_cell_matmul_1_readvariableop_resource:	d?A
2lstm_288_lstm_cell_biasadd_readvariableop_resource:	?F
3lstm_289_lstm_cell_1_matmul_readvariableop_resource:	d?H
5lstm_289_lstm_cell_1_matmul_1_readvariableop_resource:	2?C
4lstm_289_lstm_cell_1_biasadd_readvariableop_resource:	?E
3lstm_290_lstm_cell_2_matmul_readvariableop_resource:2(G
5lstm_290_lstm_cell_2_matmul_1_readvariableop_resource:
(B
4lstm_290_lstm_cell_2_biasadd_readvariableop_resource:(9
'dense_96_matmul_readvariableop_resource:
6
(dense_96_biasadd_readvariableop_resource:
identity??dense_96/BiasAdd/ReadVariableOp?dense_96/MatMul/ReadVariableOp?)lstm_288/lstm_cell/BiasAdd/ReadVariableOp?(lstm_288/lstm_cell/MatMul/ReadVariableOp?*lstm_288/lstm_cell/MatMul_1/ReadVariableOp?lstm_288/while?+lstm_289/lstm_cell_1/BiasAdd/ReadVariableOp?*lstm_289/lstm_cell_1/MatMul/ReadVariableOp?,lstm_289/lstm_cell_1/MatMul_1/ReadVariableOp?lstm_289/while?+lstm_290/lstm_cell_2/BiasAdd/ReadVariableOp?*lstm_290/lstm_cell_2/MatMul/ReadVariableOp?,lstm_290/lstm_cell_2/MatMul_1/ReadVariableOp?lstm_290/whileD
lstm_288/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_288/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_288/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_288/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_288/strided_sliceStridedSlicelstm_288/Shape:output:0%lstm_288/strided_slice/stack:output:0'lstm_288/strided_slice/stack_1:output:0'lstm_288/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_288/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_288/zeros/packedPacklstm_288/strided_slice:output:0 lstm_288/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_288/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_288/zerosFilllstm_288/zeros/packed:output:0lstm_288/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_288/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_288/zeros_1/packedPacklstm_288/strided_slice:output:0"lstm_288/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_288/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_288/zeros_1Fill lstm_288/zeros_1/packed:output:0lstm_288/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_288/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_288/transpose	Transposeinputs lstm_288/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_288/Shape_1Shapelstm_288/transpose:y:0*
T0*
_output_shapes
:h
lstm_288/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_288/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_288/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_288/strided_slice_1StridedSlicelstm_288/Shape_1:output:0'lstm_288/strided_slice_1/stack:output:0)lstm_288/strided_slice_1/stack_1:output:0)lstm_288/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_288/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_288/TensorArrayV2TensorListReserve-lstm_288/TensorArrayV2/element_shape:output:0!lstm_288/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_288/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_288/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_288/transpose:y:0Glstm_288/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_288/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_288/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_288/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_288/strided_slice_2StridedSlicelstm_288/transpose:y:0'lstm_288/strided_slice_2/stack:output:0)lstm_288/strided_slice_2/stack_1:output:0)lstm_288/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
(lstm_288/lstm_cell/MatMul/ReadVariableOpReadVariableOp1lstm_288_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_288/lstm_cell/MatMulMatMul!lstm_288/strided_slice_2:output:00lstm_288/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
*lstm_288/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp3lstm_288_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_288/lstm_cell/MatMul_1MatMullstm_288/zeros:output:02lstm_288/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_288/lstm_cell/addAddV2#lstm_288/lstm_cell/MatMul:product:0%lstm_288/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
)lstm_288/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp2lstm_288_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_288/lstm_cell/BiasAddBiasAddlstm_288/lstm_cell/add:z:01lstm_288/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
"lstm_288/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_288/lstm_cell/splitSplit+lstm_288/lstm_cell/split/split_dim:output:0#lstm_288/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitz
lstm_288/lstm_cell/SigmoidSigmoid!lstm_288/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????d|
lstm_288/lstm_cell/Sigmoid_1Sigmoid!lstm_288/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_288/lstm_cell/mulMul lstm_288/lstm_cell/Sigmoid_1:y:0lstm_288/zeros_1:output:0*
T0*'
_output_shapes
:?????????dt
lstm_288/lstm_cell/ReluRelu!lstm_288/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_288/lstm_cell/mul_1Mullstm_288/lstm_cell/Sigmoid:y:0%lstm_288/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_288/lstm_cell/add_1AddV2lstm_288/lstm_cell/mul:z:0lstm_288/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????d|
lstm_288/lstm_cell/Sigmoid_2Sigmoid!lstm_288/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????dq
lstm_288/lstm_cell/Relu_1Relulstm_288/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_288/lstm_cell/mul_2Mul lstm_288/lstm_cell/Sigmoid_2:y:0'lstm_288/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_288/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_288/TensorArrayV2_1TensorListReserve/lstm_288/TensorArrayV2_1/element_shape:output:0!lstm_288/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_288/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_288/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_288/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_288/whileWhile$lstm_288/while/loop_counter:output:0*lstm_288/while/maximum_iterations:output:0lstm_288/time:output:0!lstm_288/TensorArrayV2_1:handle:0lstm_288/zeros:output:0lstm_288/zeros_1:output:0!lstm_288/strided_slice_1:output:0@lstm_288/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_288_lstm_cell_matmul_readvariableop_resource3lstm_288_lstm_cell_matmul_1_readvariableop_resource2lstm_288_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_288_while_body_15195*%
condR
lstm_288_while_cond_15194*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_288/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_288/TensorArrayV2Stack/TensorListStackTensorListStacklstm_288/while:output:3Blstm_288/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_288/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_288/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_288/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_288/strided_slice_3StridedSlice4lstm_288/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_288/strided_slice_3/stack:output:0)lstm_288/strided_slice_3/stack_1:output:0)lstm_288/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_288/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_288/transpose_1	Transpose4lstm_288/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_288/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_288/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_289/ShapeShapelstm_288/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_289/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_289/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_289/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_289/strided_sliceStridedSlicelstm_289/Shape:output:0%lstm_289/strided_slice/stack:output:0'lstm_289/strided_slice/stack_1:output:0'lstm_289/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_289/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_289/zeros/packedPacklstm_289/strided_slice:output:0 lstm_289/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_289/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_289/zerosFilllstm_289/zeros/packed:output:0lstm_289/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_289/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_289/zeros_1/packedPacklstm_289/strided_slice:output:0"lstm_289/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_289/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_289/zeros_1Fill lstm_289/zeros_1/packed:output:0lstm_289/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_289/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_289/transpose	Transposelstm_288/transpose_1:y:0 lstm_289/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_289/Shape_1Shapelstm_289/transpose:y:0*
T0*
_output_shapes
:h
lstm_289/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_289/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_289/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_289/strided_slice_1StridedSlicelstm_289/Shape_1:output:0'lstm_289/strided_slice_1/stack:output:0)lstm_289/strided_slice_1/stack_1:output:0)lstm_289/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_289/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_289/TensorArrayV2TensorListReserve-lstm_289/TensorArrayV2/element_shape:output:0!lstm_289/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_289/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_289/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_289/transpose:y:0Glstm_289/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_289/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_289/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_289/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_289/strided_slice_2StridedSlicelstm_289/transpose:y:0'lstm_289/strided_slice_2/stack:output:0)lstm_289/strided_slice_2/stack_1:output:0)lstm_289/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
*lstm_289/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp3lstm_289_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_289/lstm_cell_1/MatMulMatMul!lstm_289/strided_slice_2:output:02lstm_289/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
,lstm_289/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp5lstm_289_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_289/lstm_cell_1/MatMul_1MatMullstm_289/zeros:output:04lstm_289/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_289/lstm_cell_1/addAddV2%lstm_289/lstm_cell_1/MatMul:product:0'lstm_289/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
+lstm_289/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp4lstm_289_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_289/lstm_cell_1/BiasAddBiasAddlstm_289/lstm_cell_1/add:z:03lstm_289/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????f
$lstm_289/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_289/lstm_cell_1/splitSplit-lstm_289/lstm_cell_1/split/split_dim:output:0%lstm_289/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split~
lstm_289/lstm_cell_1/SigmoidSigmoid#lstm_289/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2?
lstm_289/lstm_cell_1/Sigmoid_1Sigmoid#lstm_289/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_289/lstm_cell_1/mulMul"lstm_289/lstm_cell_1/Sigmoid_1:y:0lstm_289/zeros_1:output:0*
T0*'
_output_shapes
:?????????2x
lstm_289/lstm_cell_1/ReluRelu#lstm_289/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_289/lstm_cell_1/mul_1Mul lstm_289/lstm_cell_1/Sigmoid:y:0'lstm_289/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_289/lstm_cell_1/add_1AddV2lstm_289/lstm_cell_1/mul:z:0lstm_289/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_289/lstm_cell_1/Sigmoid_2Sigmoid#lstm_289/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2u
lstm_289/lstm_cell_1/Relu_1Relulstm_289/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_289/lstm_cell_1/mul_2Mul"lstm_289/lstm_cell_1/Sigmoid_2:y:0)lstm_289/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_289/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_289/TensorArrayV2_1TensorListReserve/lstm_289/TensorArrayV2_1/element_shape:output:0!lstm_289/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_289/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_289/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_289/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_289/whileWhile$lstm_289/while/loop_counter:output:0*lstm_289/while/maximum_iterations:output:0lstm_289/time:output:0!lstm_289/TensorArrayV2_1:handle:0lstm_289/zeros:output:0lstm_289/zeros_1:output:0!lstm_289/strided_slice_1:output:0@lstm_289/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_289_lstm_cell_1_matmul_readvariableop_resource5lstm_289_lstm_cell_1_matmul_1_readvariableop_resource4lstm_289_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_289_while_body_15334*%
condR
lstm_289_while_cond_15333*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_289/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_289/TensorArrayV2Stack/TensorListStackTensorListStacklstm_289/while:output:3Blstm_289/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_289/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_289/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_289/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_289/strided_slice_3StridedSlice4lstm_289/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_289/strided_slice_3/stack:output:0)lstm_289/strided_slice_3/stack_1:output:0)lstm_289/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_289/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_289/transpose_1	Transpose4lstm_289/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_289/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_289/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_290/ShapeShapelstm_289/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_290/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_290/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_290/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_290/strided_sliceStridedSlicelstm_290/Shape:output:0%lstm_290/strided_slice/stack:output:0'lstm_290/strided_slice/stack_1:output:0'lstm_290/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_290/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_290/zeros/packedPacklstm_290/strided_slice:output:0 lstm_290/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_290/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_290/zerosFilllstm_290/zeros/packed:output:0lstm_290/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_290/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_290/zeros_1/packedPacklstm_290/strided_slice:output:0"lstm_290/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_290/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_290/zeros_1Fill lstm_290/zeros_1/packed:output:0lstm_290/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_290/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_290/transpose	Transposelstm_289/transpose_1:y:0 lstm_290/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_290/Shape_1Shapelstm_290/transpose:y:0*
T0*
_output_shapes
:h
lstm_290/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_290/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_290/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_290/strided_slice_1StridedSlicelstm_290/Shape_1:output:0'lstm_290/strided_slice_1/stack:output:0)lstm_290/strided_slice_1/stack_1:output:0)lstm_290/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_290/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_290/TensorArrayV2TensorListReserve-lstm_290/TensorArrayV2/element_shape:output:0!lstm_290/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_290/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_290/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_290/transpose:y:0Glstm_290/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_290/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_290/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_290/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_290/strided_slice_2StridedSlicelstm_290/transpose:y:0'lstm_290/strided_slice_2/stack:output:0)lstm_290/strided_slice_2/stack_1:output:0)lstm_290/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
*lstm_290/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp3lstm_290_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_290/lstm_cell_2/MatMulMatMul!lstm_290/strided_slice_2:output:02lstm_290/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
,lstm_290/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp5lstm_290_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_290/lstm_cell_2/MatMul_1MatMullstm_290/zeros:output:04lstm_290/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_290/lstm_cell_2/addAddV2%lstm_290/lstm_cell_2/MatMul:product:0'lstm_290/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
+lstm_290/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp4lstm_290_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_290/lstm_cell_2/BiasAddBiasAddlstm_290/lstm_cell_2/add:z:03lstm_290/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(f
$lstm_290/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_290/lstm_cell_2/splitSplit-lstm_290/lstm_cell_2/split/split_dim:output:0%lstm_290/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split~
lstm_290/lstm_cell_2/SigmoidSigmoid#lstm_290/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:?????????
?
lstm_290/lstm_cell_2/Sigmoid_1Sigmoid#lstm_290/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_290/lstm_cell_2/mulMul"lstm_290/lstm_cell_2/Sigmoid_1:y:0lstm_290/zeros_1:output:0*
T0*'
_output_shapes
:?????????
x
lstm_290/lstm_cell_2/ReluRelu#lstm_290/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_290/lstm_cell_2/mul_1Mul lstm_290/lstm_cell_2/Sigmoid:y:0'lstm_290/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_290/lstm_cell_2/add_1AddV2lstm_290/lstm_cell_2/mul:z:0lstm_290/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_290/lstm_cell_2/Sigmoid_2Sigmoid#lstm_290/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:?????????
u
lstm_290/lstm_cell_2/Relu_1Relulstm_290/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_290/lstm_cell_2/mul_2Mul"lstm_290/lstm_cell_2/Sigmoid_2:y:0)lstm_290/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_290/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_290/TensorArrayV2_1TensorListReserve/lstm_290/TensorArrayV2_1/element_shape:output:0!lstm_290/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_290/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_290/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_290/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_290/whileWhile$lstm_290/while/loop_counter:output:0*lstm_290/while/maximum_iterations:output:0lstm_290/time:output:0!lstm_290/TensorArrayV2_1:handle:0lstm_290/zeros:output:0lstm_290/zeros_1:output:0!lstm_290/strided_slice_1:output:0@lstm_290/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_290_lstm_cell_2_matmul_readvariableop_resource5lstm_290_lstm_cell_2_matmul_1_readvariableop_resource4lstm_290_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????
:?????????
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_290_while_body_15473*%
condR
lstm_290_while_cond_15472*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_290/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_290/TensorArrayV2Stack/TensorListStackTensorListStacklstm_290/while:output:3Blstm_290/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_290/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_290/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_290/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_290/strided_slice_3StridedSlice4lstm_290/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_290/strided_slice_3/stack:output:0)lstm_290/strided_slice_3/stack_1:output:0)lstm_290/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_290/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_290/transpose_1	Transpose4lstm_290/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_290/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_290/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_96/MatMul/ReadVariableOpReadVariableOp'dense_96_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_96/MatMulMatMul!lstm_290/strided_slice_3:output:0&dense_96/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_96/BiasAdd/ReadVariableOpReadVariableOp(dense_96_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_96/BiasAddBiasAdddense_96/MatMul:product:0'dense_96/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_96/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_96/BiasAdd/ReadVariableOp^dense_96/MatMul/ReadVariableOp*^lstm_288/lstm_cell/BiasAdd/ReadVariableOp)^lstm_288/lstm_cell/MatMul/ReadVariableOp+^lstm_288/lstm_cell/MatMul_1/ReadVariableOp^lstm_288/while,^lstm_289/lstm_cell_1/BiasAdd/ReadVariableOp+^lstm_289/lstm_cell_1/MatMul/ReadVariableOp-^lstm_289/lstm_cell_1/MatMul_1/ReadVariableOp^lstm_289/while,^lstm_290/lstm_cell_2/BiasAdd/ReadVariableOp+^lstm_290/lstm_cell_2/MatMul/ReadVariableOp-^lstm_290/lstm_cell_2/MatMul_1/ReadVariableOp^lstm_290/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_96/BiasAdd/ReadVariableOpdense_96/BiasAdd/ReadVariableOp2@
dense_96/MatMul/ReadVariableOpdense_96/MatMul/ReadVariableOp2V
)lstm_288/lstm_cell/BiasAdd/ReadVariableOp)lstm_288/lstm_cell/BiasAdd/ReadVariableOp2T
(lstm_288/lstm_cell/MatMul/ReadVariableOp(lstm_288/lstm_cell/MatMul/ReadVariableOp2X
*lstm_288/lstm_cell/MatMul_1/ReadVariableOp*lstm_288/lstm_cell/MatMul_1/ReadVariableOp2 
lstm_288/whilelstm_288/while2Z
+lstm_289/lstm_cell_1/BiasAdd/ReadVariableOp+lstm_289/lstm_cell_1/BiasAdd/ReadVariableOp2X
*lstm_289/lstm_cell_1/MatMul/ReadVariableOp*lstm_289/lstm_cell_1/MatMul/ReadVariableOp2\
,lstm_289/lstm_cell_1/MatMul_1/ReadVariableOp,lstm_289/lstm_cell_1/MatMul_1/ReadVariableOp2 
lstm_289/whilelstm_289/while2Z
+lstm_290/lstm_cell_2/BiasAdd/ReadVariableOp+lstm_290/lstm_cell_2/BiasAdd/ReadVariableOp2X
*lstm_290/lstm_cell_2/MatMul/ReadVariableOp*lstm_290/lstm_cell_2/MatMul/ReadVariableOp2\
,lstm_290/lstm_cell_2/MatMul_1/ReadVariableOp,lstm_290/lstm_cell_2/MatMul_1/ReadVariableOp2 
lstm_290/whilelstm_290/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?A
?

lstm_288_while_body_15195.
*lstm_288_while_lstm_288_while_loop_counter4
0lstm_288_while_lstm_288_while_maximum_iterations
lstm_288_while_placeholder 
lstm_288_while_placeholder_1 
lstm_288_while_placeholder_2 
lstm_288_while_placeholder_3-
)lstm_288_while_lstm_288_strided_slice_1_0i
elstm_288_while_tensorarrayv2read_tensorlistgetitem_lstm_288_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_288_while_lstm_cell_matmul_readvariableop_resource_0:	?N
;lstm_288_while_lstm_cell_matmul_1_readvariableop_resource_0:	d?I
:lstm_288_while_lstm_cell_biasadd_readvariableop_resource_0:	?
lstm_288_while_identity
lstm_288_while_identity_1
lstm_288_while_identity_2
lstm_288_while_identity_3
lstm_288_while_identity_4
lstm_288_while_identity_5+
'lstm_288_while_lstm_288_strided_slice_1g
clstm_288_while_tensorarrayv2read_tensorlistgetitem_lstm_288_tensorarrayunstack_tensorlistfromtensorJ
7lstm_288_while_lstm_cell_matmul_readvariableop_resource:	?L
9lstm_288_while_lstm_cell_matmul_1_readvariableop_resource:	d?G
8lstm_288_while_lstm_cell_biasadd_readvariableop_resource:	???/lstm_288/while/lstm_cell/BiasAdd/ReadVariableOp?.lstm_288/while/lstm_cell/MatMul/ReadVariableOp?0lstm_288/while/lstm_cell/MatMul_1/ReadVariableOp?
@lstm_288/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_288/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_288_while_tensorarrayv2read_tensorlistgetitem_lstm_288_tensorarrayunstack_tensorlistfromtensor_0lstm_288_while_placeholderIlstm_288/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
.lstm_288/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp9lstm_288_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
lstm_288/while/lstm_cell/MatMulMatMul9lstm_288/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_288/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
0lstm_288/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;lstm_288_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
!lstm_288/while/lstm_cell/MatMul_1MatMullstm_288_while_placeholder_28lstm_288/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_288/while/lstm_cell/addAddV2)lstm_288/while/lstm_cell/MatMul:product:0+lstm_288/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
/lstm_288/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:lstm_288_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
 lstm_288/while/lstm_cell/BiasAddBiasAdd lstm_288/while/lstm_cell/add:z:07lstm_288/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????j
(lstm_288/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_288/while/lstm_cell/splitSplit1lstm_288/while/lstm_cell/split/split_dim:output:0)lstm_288/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
 lstm_288/while/lstm_cell/SigmoidSigmoid'lstm_288/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????d?
"lstm_288/while/lstm_cell/Sigmoid_1Sigmoid'lstm_288/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_288/while/lstm_cell/mulMul&lstm_288/while/lstm_cell/Sigmoid_1:y:0lstm_288_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
lstm_288/while/lstm_cell/ReluRelu'lstm_288/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_288/while/lstm_cell/mul_1Mul$lstm_288/while/lstm_cell/Sigmoid:y:0+lstm_288/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_288/while/lstm_cell/add_1AddV2 lstm_288/while/lstm_cell/mul:z:0"lstm_288/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_288/while/lstm_cell/Sigmoid_2Sigmoid'lstm_288/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????d}
lstm_288/while/lstm_cell/Relu_1Relu"lstm_288/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_288/while/lstm_cell/mul_2Mul&lstm_288/while/lstm_cell/Sigmoid_2:y:0-lstm_288/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_288/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_288_while_placeholder_1lstm_288_while_placeholder"lstm_288/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_288/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_288/while/addAddV2lstm_288_while_placeholderlstm_288/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_288/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_288/while/add_1AddV2*lstm_288_while_lstm_288_while_loop_counterlstm_288/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_288/while/IdentityIdentitylstm_288/while/add_1:z:0^lstm_288/while/NoOp*
T0*
_output_shapes
: ?
lstm_288/while/Identity_1Identity0lstm_288_while_lstm_288_while_maximum_iterations^lstm_288/while/NoOp*
T0*
_output_shapes
: t
lstm_288/while/Identity_2Identitylstm_288/while/add:z:0^lstm_288/while/NoOp*
T0*
_output_shapes
: ?
lstm_288/while/Identity_3IdentityClstm_288/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_288/while/NoOp*
T0*
_output_shapes
: ?
lstm_288/while/Identity_4Identity"lstm_288/while/lstm_cell/mul_2:z:0^lstm_288/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_288/while/Identity_5Identity"lstm_288/while/lstm_cell/add_1:z:0^lstm_288/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_288/while/NoOpNoOp0^lstm_288/while/lstm_cell/BiasAdd/ReadVariableOp/^lstm_288/while/lstm_cell/MatMul/ReadVariableOp1^lstm_288/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_288_while_identity lstm_288/while/Identity:output:0"?
lstm_288_while_identity_1"lstm_288/while/Identity_1:output:0"?
lstm_288_while_identity_2"lstm_288/while/Identity_2:output:0"?
lstm_288_while_identity_3"lstm_288/while/Identity_3:output:0"?
lstm_288_while_identity_4"lstm_288/while/Identity_4:output:0"?
lstm_288_while_identity_5"lstm_288/while/Identity_5:output:0"T
'lstm_288_while_lstm_288_strided_slice_1)lstm_288_while_lstm_288_strided_slice_1_0"v
8lstm_288_while_lstm_cell_biasadd_readvariableop_resource:lstm_288_while_lstm_cell_biasadd_readvariableop_resource_0"x
9lstm_288_while_lstm_cell_matmul_1_readvariableop_resource;lstm_288_while_lstm_cell_matmul_1_readvariableop_resource_0"t
7lstm_288_while_lstm_cell_matmul_readvariableop_resource9lstm_288_while_lstm_cell_matmul_readvariableop_resource_0"?
clstm_288_while_tensorarrayv2read_tensorlistgetitem_lstm_288_tensorarrayunstack_tensorlistfromtensorelstm_288_while_tensorarrayv2read_tensorlistgetitem_lstm_288_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2b
/lstm_288/while/lstm_cell/BiasAdd/ReadVariableOp/lstm_288/while/lstm_cell/BiasAdd/ReadVariableOp2`
.lstm_288/while/lstm_cell/MatMul/ReadVariableOp.lstm_288/while/lstm_cell/MatMul/ReadVariableOp2d
0lstm_288/while/lstm_cell/MatMul_1/ReadVariableOp0lstm_288/while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_12475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_12475___redundant_placeholder03
/while_while_cond_12475___redundant_placeholder13
/while_while_cond_12475___redundant_placeholder23
/while_while_cond_12475___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????d:?????????d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
:
?
?
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_17626

inputs
states_0
states_11
matmul_readvariableop_resource:	d?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
states/1
?
?
while_cond_17040
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_17040___redundant_placeholder03
/while_while_cond_17040___redundant_placeholder13
/while_while_cond_17040___redundant_placeholder23
/while_while_cond_17040___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_16281
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_16281___redundant_placeholder03
/while_while_cond_16281___redundant_placeholder13
/while_while_cond_16281___redundant_placeholder23
/while_while_cond_16281___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?

?
-__inference_sequential_96_layer_call_fn_14560
lstm_288_input
unknown:	?
	unknown_0:	d?
	unknown_1:	?
	unknown_2:	d?
	unknown_3:	2?
	unknown_4:	?
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_288_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_96_layer_call_and_return_conditional_losses_14508o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_288_input
?
?
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_17692

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????
?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?7
?
while_body_14191
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	d?G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	2?B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	d?E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	2?@
1while_lstm_cell_1_biasadd_readvariableop_resource:	???(while/lstm_cell_1/BiasAdd/ReadVariableOp?'while/lstm_cell_1/MatMul/ReadVariableOp?)while/lstm_cell_1/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
: 
?
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_17528

inputs
states_0
states_11
matmul_readvariableop_resource:	?3
 matmul_1_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????:?????????d:?????????d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
states/1
?	
?
C__inference_dense_96_layer_call_and_return_conditional_losses_13912

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
'sequential_96_lstm_289_while_cond_12165J
Fsequential_96_lstm_289_while_sequential_96_lstm_289_while_loop_counterP
Lsequential_96_lstm_289_while_sequential_96_lstm_289_while_maximum_iterations,
(sequential_96_lstm_289_while_placeholder.
*sequential_96_lstm_289_while_placeholder_1.
*sequential_96_lstm_289_while_placeholder_2.
*sequential_96_lstm_289_while_placeholder_3L
Hsequential_96_lstm_289_while_less_sequential_96_lstm_289_strided_slice_1a
]sequential_96_lstm_289_while_sequential_96_lstm_289_while_cond_12165___redundant_placeholder0a
]sequential_96_lstm_289_while_sequential_96_lstm_289_while_cond_12165___redundant_placeholder1a
]sequential_96_lstm_289_while_sequential_96_lstm_289_while_cond_12165___redundant_placeholder2a
]sequential_96_lstm_289_while_sequential_96_lstm_289_while_cond_12165___redundant_placeholder3)
%sequential_96_lstm_289_while_identity
?
!sequential_96/lstm_289/while/LessLess(sequential_96_lstm_289_while_placeholderHsequential_96_lstm_289_while_less_sequential_96_lstm_289_strided_slice_1*
T0*
_output_shapes
: y
%sequential_96/lstm_289/while/IdentityIdentity%sequential_96/lstm_289/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_96_lstm_289_while_identity.sequential_96/lstm_289/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_14190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_14190___redundant_placeholder03
/while_while_cond_14190___redundant_placeholder13
/while_while_cond_14190___redundant_placeholder23
/while_while_cond_14190___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????2:?????????2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????2:-)
'
_output_shapes
:?????????2:

_output_shapes
: :

_output_shapes
:
?
?
(__inference_lstm_288_layer_call_fn_15585
inputs_0
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_288_layer_call_and_return_conditional_losses_12736|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_16897
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_16897___redundant_placeholder03
/while_while_cond_16897___redundant_placeholder13
/while_while_cond_16897___redundant_placeholder23
/while_while_cond_16897___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????
:?????????
: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
:
?I
?
C__inference_lstm_289_layer_call_and_return_conditional_losses_16652

inputs=
*lstm_cell_1_matmul_readvariableop_resource:	d??
,lstm_cell_1_matmul_1_readvariableop_resource:	2?:
+lstm_cell_1_biasadd_readvariableop_resource:	?
identity??"lstm_cell_1/BiasAdd/ReadVariableOp?!lstm_cell_1/MatMul/ReadVariableOp?#lstm_cell_1/MatMul_1/ReadVariableOp?while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:?????????2u
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:?????????2x
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:?????????2n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:?????????2c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_16568*
condR
while_cond_16567*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:?????????2?
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?6
?
while_body_15809
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	?E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	d?@
1while_lstm_cell_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	?C
0while_lstm_cell_matmul_1_readvariableop_resource:	d?>
/while_lstm_cell_biasadd_readvariableop_resource:	???&while/lstm_cell/BiasAdd/ReadVariableOp?%while/lstm_cell/MatMul/ReadVariableOp?'while/lstm_cell/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:?????????dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:?????????dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:?????????dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????d:-)
'
_output_shapes
:?????????d:

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_lstm_cell_2_layer_call_fn_17643

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_13162o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????2:?????????
:?????????
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/0:QM
'
_output_shapes
:?????????

"
_user_specified_name
states/1
?
?
(__inference_lstm_288_layer_call_fn_15574
inputs_0
unknown:	?
	unknown_0:	d?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_288_layer_call_and_return_conditional_losses_12545|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :??????????????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_12812

inputs

states
states_11
matmul_readvariableop_resource:	d?3
 matmul_1_readvariableop_resource:	2?.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:?????????2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:?????????2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:?????????2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:?????????2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:?????????2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:?????????2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????d:?????????2:?????????2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates:OK
'
_output_shapes
:?????????2
 
_user_specified_namestates
?"
?
while_body_13367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_2_13391_0:2(+
while_lstm_cell_2_13393_0:
('
while_lstm_cell_2_13395_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_2_13391:2()
while_lstm_cell_2_13393:
(%
while_lstm_cell_2_13395:(??)while/lstm_cell_2/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_13391_0while_lstm_cell_2_13393_0while_lstm_cell_2_13395_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????
:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_13308?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:???M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ?
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
x

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_2_13391while_lstm_cell_2_13391_0"4
while_lstm_cell_2_13393while_lstm_cell_2_13393_0"4
while_lstm_cell_2_13395while_lstm_cell_2_13395_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????
:-)
'
_output_shapes
:?????????
:

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_288_input;
 serving_default_lstm_288_input:0?????????<
dense_960
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer

signatures
#_self_saveable_object_factories
	variables
	trainable_variables

regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_sequential
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3m?4m?5m?!v?"v?-v?.v?/v?0v?1v?2v?3v?4v?5v?"
	optimizer
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
n
-0
.1
/2
03
14
25
36
47
58
!9
"10"
trackable_list_wrapper
n
-0
.1
/2
03
14
25
36
47
58
!9
"10"
trackable_list_wrapper
 "
trackable_list_wrapper
?
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
;
state_size

-kernel
.recurrent_kernel
/bias
#<_self_saveable_object_factories
=	variables
>trainable_variables
?regularization_losses
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
G
state_size

0kernel
1recurrent_kernel
2bias
#H_self_saveable_object_factories
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
S
state_size

3kernel
4recurrent_kernel
5bias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:
2dense_96/kernel
:2dense_96/bias
 "
trackable_dict_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	?2lstm_288/lstm_cell_288/kernel
::8	d?2'lstm_288/lstm_cell_288/recurrent_kernel
*:(?2lstm_288/lstm_cell_288/bias
0:.	d?2lstm_289/lstm_cell_289/kernel
::8	2?2'lstm_289/lstm_cell_289/recurrent_kernel
*:(?2lstm_289/lstm_cell_289/bias
/:-2(2lstm_290/lstm_cell_290/kernel
9:7
(2'lstm_290/lstm_cell_290/recurrent_kernel
):'(2lstm_290/lstm_cell_290/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
d0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
?
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	ttotal
	ucount
v	variables
w	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
t0
u1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
&:$
2Adam/dense_96/kernel/m
 :2Adam/dense_96/bias/m
5:3	?2$Adam/lstm_288/lstm_cell_288/kernel/m
?:=	d?2.Adam/lstm_288/lstm_cell_288/recurrent_kernel/m
/:-?2"Adam/lstm_288/lstm_cell_288/bias/m
5:3	d?2$Adam/lstm_289/lstm_cell_289/kernel/m
?:=	2?2.Adam/lstm_289/lstm_cell_289/recurrent_kernel/m
/:-?2"Adam/lstm_289/lstm_cell_289/bias/m
4:22(2$Adam/lstm_290/lstm_cell_290/kernel/m
>:<
(2.Adam/lstm_290/lstm_cell_290/recurrent_kernel/m
.:,(2"Adam/lstm_290/lstm_cell_290/bias/m
&:$
2Adam/dense_96/kernel/v
 :2Adam/dense_96/bias/v
5:3	?2$Adam/lstm_288/lstm_cell_288/kernel/v
?:=	d?2.Adam/lstm_288/lstm_cell_288/recurrent_kernel/v
/:-?2"Adam/lstm_288/lstm_cell_288/bias/v
5:3	d?2$Adam/lstm_289/lstm_cell_289/kernel/v
?:=	2?2.Adam/lstm_289/lstm_cell_289/recurrent_kernel/v
/:-?2"Adam/lstm_289/lstm_cell_289/bias/v
4:22(2$Adam/lstm_290/lstm_cell_290/kernel/v
>:<
(2.Adam/lstm_290/lstm_cell_290/recurrent_kernel/v
.:,(2"Adam/lstm_290/lstm_cell_290/bias/v
?2?
-__inference_sequential_96_layer_call_fn_13944
-__inference_sequential_96_layer_call_fn_14682
-__inference_sequential_96_layer_call_fn_14709
-__inference_sequential_96_layer_call_fn_14560?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_96_layer_call_and_return_conditional_losses_15136
H__inference_sequential_96_layer_call_and_return_conditional_losses_15563
H__inference_sequential_96_layer_call_and_return_conditional_losses_14590
H__inference_sequential_96_layer_call_and_return_conditional_losses_14620?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_12395lstm_288_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_lstm_288_layer_call_fn_15574
(__inference_lstm_288_layer_call_fn_15585
(__inference_lstm_288_layer_call_fn_15596
(__inference_lstm_288_layer_call_fn_15607?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_lstm_288_layer_call_and_return_conditional_losses_15750
C__inference_lstm_288_layer_call_and_return_conditional_losses_15893
C__inference_lstm_288_layer_call_and_return_conditional_losses_16036
C__inference_lstm_288_layer_call_and_return_conditional_losses_16179?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_lstm_289_layer_call_fn_16190
(__inference_lstm_289_layer_call_fn_16201
(__inference_lstm_289_layer_call_fn_16212
(__inference_lstm_289_layer_call_fn_16223?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_lstm_289_layer_call_and_return_conditional_losses_16366
C__inference_lstm_289_layer_call_and_return_conditional_losses_16509
C__inference_lstm_289_layer_call_and_return_conditional_losses_16652
C__inference_lstm_289_layer_call_and_return_conditional_losses_16795?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_lstm_290_layer_call_fn_16806
(__inference_lstm_290_layer_call_fn_16817
(__inference_lstm_290_layer_call_fn_16828
(__inference_lstm_290_layer_call_fn_16839?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_lstm_290_layer_call_and_return_conditional_losses_16982
C__inference_lstm_290_layer_call_and_return_conditional_losses_17125
C__inference_lstm_290_layer_call_and_return_conditional_losses_17268
C__inference_lstm_290_layer_call_and_return_conditional_losses_17411?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_dense_96_layer_call_fn_17420?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_96_layer_call_and_return_conditional_losses_17430?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_14655lstm_288_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_lstm_cell_layer_call_fn_17447
)__inference_lstm_cell_layer_call_fn_17464?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_17496
D__inference_lstm_cell_layer_call_and_return_conditional_losses_17528?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_lstm_cell_1_layer_call_fn_17545
+__inference_lstm_cell_1_layer_call_fn_17562?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_17594
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_17626?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_lstm_cell_2_layer_call_fn_17643
+__inference_lstm_cell_2_layer_call_fn_17660?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_17692
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_17724?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
 __inference__wrapped_model_12395-./012345!";?8
1?.
,?)
lstm_288_input?????????
? "3?0
.
dense_96"?
dense_96??????????
C__inference_dense_96_layer_call_and_return_conditional_losses_17430\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? {
(__inference_dense_96_layer_call_fn_17420O!"/?,
%?"
 ?
inputs?????????

? "???????????
C__inference_lstm_288_layer_call_and_return_conditional_losses_15750?-./O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "2?/
(?%
0??????????????????d
? ?
C__inference_lstm_288_layer_call_and_return_conditional_losses_15893?-./O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "2?/
(?%
0??????????????????d
? ?
C__inference_lstm_288_layer_call_and_return_conditional_losses_16036q-./??<
5?2
$?!
inputs?????????

 
p 

 
? ")?&
?
0?????????d
? ?
C__inference_lstm_288_layer_call_and_return_conditional_losses_16179q-./??<
5?2
$?!
inputs?????????

 
p

 
? ")?&
?
0?????????d
? ?
(__inference_lstm_288_layer_call_fn_15574}-./O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "%?"??????????????????d?
(__inference_lstm_288_layer_call_fn_15585}-./O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "%?"??????????????????d?
(__inference_lstm_288_layer_call_fn_15596d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
(__inference_lstm_288_layer_call_fn_15607d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
C__inference_lstm_289_layer_call_and_return_conditional_losses_16366?012O?L
E?B
4?1
/?,
inputs/0??????????????????d

 
p 

 
? "2?/
(?%
0??????????????????2
? ?
C__inference_lstm_289_layer_call_and_return_conditional_losses_16509?012O?L
E?B
4?1
/?,
inputs/0??????????????????d

 
p

 
? "2?/
(?%
0??????????????????2
? ?
C__inference_lstm_289_layer_call_and_return_conditional_losses_16652q012??<
5?2
$?!
inputs?????????d

 
p 

 
? ")?&
?
0?????????2
? ?
C__inference_lstm_289_layer_call_and_return_conditional_losses_16795q012??<
5?2
$?!
inputs?????????d

 
p

 
? ")?&
?
0?????????2
? ?
(__inference_lstm_289_layer_call_fn_16190}012O?L
E?B
4?1
/?,
inputs/0??????????????????d

 
p 

 
? "%?"??????????????????2?
(__inference_lstm_289_layer_call_fn_16201}012O?L
E?B
4?1
/?,
inputs/0??????????????????d

 
p

 
? "%?"??????????????????2?
(__inference_lstm_289_layer_call_fn_16212d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
(__inference_lstm_289_layer_call_fn_16223d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
C__inference_lstm_290_layer_call_and_return_conditional_losses_16982}345O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p 

 
? "%?"
?
0?????????

? ?
C__inference_lstm_290_layer_call_and_return_conditional_losses_17125}345O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p

 
? "%?"
?
0?????????

? ?
C__inference_lstm_290_layer_call_and_return_conditional_losses_17268m345??<
5?2
$?!
inputs?????????2

 
p 

 
? "%?"
?
0?????????

? ?
C__inference_lstm_290_layer_call_and_return_conditional_losses_17411m345??<
5?2
$?!
inputs?????????2

 
p

 
? "%?"
?
0?????????

? ?
(__inference_lstm_290_layer_call_fn_16806p345O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p 

 
? "??????????
?
(__inference_lstm_290_layer_call_fn_16817p345O?L
E?B
4?1
/?,
inputs/0??????????????????2

 
p

 
? "??????????
?
(__inference_lstm_290_layer_call_fn_16828`345??<
5?2
$?!
inputs?????????2

 
p 

 
? "??????????
?
(__inference_lstm_290_layer_call_fn_16839`345??<
5?2
$?!
inputs?????????2

 
p

 
? "??????????
?
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_17594?012??}
v?s
 ?
inputs?????????d
K?H
"?
states/0?????????2
"?
states/1?????????2
p 
? "s?p
i?f
?
0/0?????????2
E?B
?
0/1/0?????????2
?
0/1/1?????????2
? ?
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_17626?012??}
v?s
 ?
inputs?????????d
K?H
"?
states/0?????????2
"?
states/1?????????2
p
? "s?p
i?f
?
0/0?????????2
E?B
?
0/1/0?????????2
?
0/1/1?????????2
? ?
+__inference_lstm_cell_1_layer_call_fn_17545?012??}
v?s
 ?
inputs?????????d
K?H
"?
states/0?????????2
"?
states/1?????????2
p 
? "c?`
?
0?????????2
A?>
?
1/0?????????2
?
1/1?????????2?
+__inference_lstm_cell_1_layer_call_fn_17562?012??}
v?s
 ?
inputs?????????d
K?H
"?
states/0?????????2
"?
states/1?????????2
p
? "c?`
?
0?????????2
A?>
?
1/0?????????2
?
1/1?????????2?
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_17692?345??}
v?s
 ?
inputs?????????2
K?H
"?
states/0?????????

"?
states/1?????????

p 
? "s?p
i?f
?
0/0?????????

E?B
?
0/1/0?????????

?
0/1/1?????????

? ?
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_17724?345??}
v?s
 ?
inputs?????????2
K?H
"?
states/0?????????

"?
states/1?????????

p
? "s?p
i?f
?
0/0?????????

E?B
?
0/1/0?????????

?
0/1/1?????????

? ?
+__inference_lstm_cell_2_layer_call_fn_17643?345??}
v?s
 ?
inputs?????????2
K?H
"?
states/0?????????

"?
states/1?????????

p 
? "c?`
?
0?????????

A?>
?
1/0?????????

?
1/1?????????
?
+__inference_lstm_cell_2_layer_call_fn_17660?345??}
v?s
 ?
inputs?????????2
K?H
"?
states/0?????????

"?
states/1?????????

p
? "c?`
?
0?????????

A?>
?
1/0?????????

?
1/1?????????
?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_17496?-./??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????d
"?
states/1?????????d
p 
? "s?p
i?f
?
0/0?????????d
E?B
?
0/1/0?????????d
?
0/1/1?????????d
? ?
D__inference_lstm_cell_layer_call_and_return_conditional_losses_17528?-./??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????d
"?
states/1?????????d
p
? "s?p
i?f
?
0/0?????????d
E?B
?
0/1/0?????????d
?
0/1/1?????????d
? ?
)__inference_lstm_cell_layer_call_fn_17447?-./??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????d
"?
states/1?????????d
p 
? "c?`
?
0?????????d
A?>
?
1/0?????????d
?
1/1?????????d?
)__inference_lstm_cell_layer_call_fn_17464?-./??}
v?s
 ?
inputs?????????
K?H
"?
states/0?????????d
"?
states/1?????????d
p
? "c?`
?
0?????????d
A?>
?
1/0?????????d
?
1/1?????????d?
H__inference_sequential_96_layer_call_and_return_conditional_losses_14590y-./012345!"C?@
9?6
,?)
lstm_288_input?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_96_layer_call_and_return_conditional_losses_14620y-./012345!"C?@
9?6
,?)
lstm_288_input?????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_96_layer_call_and_return_conditional_losses_15136q-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_96_layer_call_and_return_conditional_losses_15563q-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_96_layer_call_fn_13944l-./012345!"C?@
9?6
,?)
lstm_288_input?????????
p 

 
? "???????????
-__inference_sequential_96_layer_call_fn_14560l-./012345!"C?@
9?6
,?)
lstm_288_input?????????
p

 
? "???????????
-__inference_sequential_96_layer_call_fn_14682d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
-__inference_sequential_96_layer_call_fn_14709d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
#__inference_signature_wrapper_14655?-./012345!"M?J
? 
C?@
>
lstm_288_input,?)
lstm_288_input?????????"3?0
.
dense_96"?
dense_96?????????