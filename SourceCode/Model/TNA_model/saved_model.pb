??/
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
?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??-
z
dense_83/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_83/kernel
s
#dense_83/kernel/Read/ReadVariableOpReadVariableOpdense_83/kernel*
_output_shapes

:
*
dtype0
r
dense_83/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_83/bias
k
!dense_83/bias/Read/ReadVariableOpReadVariableOpdense_83/bias*
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
lstm_249/lstm_cell_249/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_249/lstm_cell_249/kernel
?
1lstm_249/lstm_cell_249/kernel/Read/ReadVariableOpReadVariableOplstm_249/lstm_cell_249/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_249/lstm_cell_249/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_249/lstm_cell_249/recurrent_kernel
?
;lstm_249/lstm_cell_249/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_249/lstm_cell_249/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_249/lstm_cell_249/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_249/lstm_cell_249/bias
?
/lstm_249/lstm_cell_249/bias/Read/ReadVariableOpReadVariableOplstm_249/lstm_cell_249/bias*
_output_shapes	
:?*
dtype0
?
lstm_250/lstm_cell_250/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_250/lstm_cell_250/kernel
?
1lstm_250/lstm_cell_250/kernel/Read/ReadVariableOpReadVariableOplstm_250/lstm_cell_250/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_250/lstm_cell_250/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_250/lstm_cell_250/recurrent_kernel
?
;lstm_250/lstm_cell_250/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_250/lstm_cell_250/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_250/lstm_cell_250/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_250/lstm_cell_250/bias
?
/lstm_250/lstm_cell_250/bias/Read/ReadVariableOpReadVariableOplstm_250/lstm_cell_250/bias*
_output_shapes	
:?*
dtype0
?
lstm_251/lstm_cell_251/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_251/lstm_cell_251/kernel
?
1lstm_251/lstm_cell_251/kernel/Read/ReadVariableOpReadVariableOplstm_251/lstm_cell_251/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_251/lstm_cell_251/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_251/lstm_cell_251/recurrent_kernel
?
;lstm_251/lstm_cell_251/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_251/lstm_cell_251/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_251/lstm_cell_251/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_251/lstm_cell_251/bias
?
/lstm_251/lstm_cell_251/bias/Read/ReadVariableOpReadVariableOplstm_251/lstm_cell_251/bias*
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
Adam/dense_83/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_83/kernel/m
?
*Adam/dense_83/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_83/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_83/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_83/bias/m
y
(Adam/dense_83/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_83/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_249/lstm_cell_249/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_249/lstm_cell_249/kernel/m
?
8Adam/lstm_249/lstm_cell_249/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_249/lstm_cell_249/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_249/lstm_cell_249/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_249/lstm_cell_249/recurrent_kernel/m
?
BAdam/lstm_249/lstm_cell_249/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_249/lstm_cell_249/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_249/lstm_cell_249/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_249/lstm_cell_249/bias/m
?
6Adam/lstm_249/lstm_cell_249/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_249/lstm_cell_249/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_250/lstm_cell_250/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_250/lstm_cell_250/kernel/m
?
8Adam/lstm_250/lstm_cell_250/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_250/lstm_cell_250/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_250/lstm_cell_250/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_250/lstm_cell_250/recurrent_kernel/m
?
BAdam/lstm_250/lstm_cell_250/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_250/lstm_cell_250/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_250/lstm_cell_250/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_250/lstm_cell_250/bias/m
?
6Adam/lstm_250/lstm_cell_250/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_250/lstm_cell_250/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_251/lstm_cell_251/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_251/lstm_cell_251/kernel/m
?
8Adam/lstm_251/lstm_cell_251/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_251/lstm_cell_251/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_251/lstm_cell_251/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_251/lstm_cell_251/recurrent_kernel/m
?
BAdam/lstm_251/lstm_cell_251/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_251/lstm_cell_251/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_251/lstm_cell_251/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_251/lstm_cell_251/bias/m
?
6Adam/lstm_251/lstm_cell_251/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_251/lstm_cell_251/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_83/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_83/kernel/v
?
*Adam/dense_83/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_83/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_83/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_83/bias/v
y
(Adam/dense_83/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_83/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_249/lstm_cell_249/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_249/lstm_cell_249/kernel/v
?
8Adam/lstm_249/lstm_cell_249/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_249/lstm_cell_249/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_249/lstm_cell_249/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_249/lstm_cell_249/recurrent_kernel/v
?
BAdam/lstm_249/lstm_cell_249/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_249/lstm_cell_249/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_249/lstm_cell_249/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_249/lstm_cell_249/bias/v
?
6Adam/lstm_249/lstm_cell_249/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_249/lstm_cell_249/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_250/lstm_cell_250/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_250/lstm_cell_250/kernel/v
?
8Adam/lstm_250/lstm_cell_250/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_250/lstm_cell_250/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_250/lstm_cell_250/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_250/lstm_cell_250/recurrent_kernel/v
?
BAdam/lstm_250/lstm_cell_250/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_250/lstm_cell_250/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_250/lstm_cell_250/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_250/lstm_cell_250/bias/v
?
6Adam/lstm_250/lstm_cell_250/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_250/lstm_cell_250/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_251/lstm_cell_251/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_251/lstm_cell_251/kernel/v
?
8Adam/lstm_251/lstm_cell_251/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_251/lstm_cell_251/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_251/lstm_cell_251/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_251/lstm_cell_251/recurrent_kernel/v
?
BAdam/lstm_251/lstm_cell_251/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_251/lstm_cell_251/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_251/lstm_cell_251/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_251/lstm_cell_251/bias/v
?
6Adam/lstm_251/lstm_cell_251/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_251/lstm_cell_251/bias/v*
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
VARIABLE_VALUEdense_83/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_83/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_249/lstm_cell_249/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_249/lstm_cell_249/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_249/lstm_cell_249/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_250/lstm_cell_250/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_250/lstm_cell_250/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_250/lstm_cell_250/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_251/lstm_cell_251/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_251/lstm_cell_251/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_251/lstm_cell_251/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_83/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_83/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_249/lstm_cell_249/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_249/lstm_cell_249/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_249/lstm_cell_249/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_250/lstm_cell_250/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_250/lstm_cell_250/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_250/lstm_cell_250/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_251/lstm_cell_251/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_251/lstm_cell_251/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_251/lstm_cell_251/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_83/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_83/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_249/lstm_cell_249/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_249/lstm_cell_249/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_249/lstm_cell_249/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_250/lstm_cell_250/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_250/lstm_cell_250/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_250/lstm_cell_250/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_251/lstm_cell_251/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_251/lstm_cell_251/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_251/lstm_cell_251/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_249_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_249_inputlstm_249/lstm_cell_249/kernel'lstm_249/lstm_cell_249/recurrent_kernellstm_249/lstm_cell_249/biaslstm_250/lstm_cell_250/kernel'lstm_250/lstm_cell_250/recurrent_kernellstm_250/lstm_cell_250/biaslstm_251/lstm_cell_251/kernel'lstm_251/lstm_cell_251/recurrent_kernellstm_251/lstm_cell_251/biasdense_83/kerneldense_83/bias*
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
GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_1430525
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_83/kernel/Read/ReadVariableOp!dense_83/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_249/lstm_cell_249/kernel/Read/ReadVariableOp;lstm_249/lstm_cell_249/recurrent_kernel/Read/ReadVariableOp/lstm_249/lstm_cell_249/bias/Read/ReadVariableOp1lstm_250/lstm_cell_250/kernel/Read/ReadVariableOp;lstm_250/lstm_cell_250/recurrent_kernel/Read/ReadVariableOp/lstm_250/lstm_cell_250/bias/Read/ReadVariableOp1lstm_251/lstm_cell_251/kernel/Read/ReadVariableOp;lstm_251/lstm_cell_251/recurrent_kernel/Read/ReadVariableOp/lstm_251/lstm_cell_251/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_83/kernel/m/Read/ReadVariableOp(Adam/dense_83/bias/m/Read/ReadVariableOp8Adam/lstm_249/lstm_cell_249/kernel/m/Read/ReadVariableOpBAdam/lstm_249/lstm_cell_249/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_249/lstm_cell_249/bias/m/Read/ReadVariableOp8Adam/lstm_250/lstm_cell_250/kernel/m/Read/ReadVariableOpBAdam/lstm_250/lstm_cell_250/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_250/lstm_cell_250/bias/m/Read/ReadVariableOp8Adam/lstm_251/lstm_cell_251/kernel/m/Read/ReadVariableOpBAdam/lstm_251/lstm_cell_251/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_251/lstm_cell_251/bias/m/Read/ReadVariableOp*Adam/dense_83/kernel/v/Read/ReadVariableOp(Adam/dense_83/bias/v/Read/ReadVariableOp8Adam/lstm_249/lstm_cell_249/kernel/v/Read/ReadVariableOpBAdam/lstm_249/lstm_cell_249/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_249/lstm_cell_249/bias/v/Read/ReadVariableOp8Adam/lstm_250/lstm_cell_250/kernel/v/Read/ReadVariableOpBAdam/lstm_250/lstm_cell_250/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_250/lstm_cell_250/bias/v/Read/ReadVariableOp8Adam/lstm_251/lstm_cell_251/kernel/v/Read/ReadVariableOpBAdam/lstm_251/lstm_cell_251/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_251/lstm_cell_251/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_1433737
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_83/kerneldense_83/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_249/lstm_cell_249/kernel'lstm_249/lstm_cell_249/recurrent_kernellstm_249/lstm_cell_249/biaslstm_250/lstm_cell_250/kernel'lstm_250/lstm_cell_250/recurrent_kernellstm_250/lstm_cell_250/biaslstm_251/lstm_cell_251/kernel'lstm_251/lstm_cell_251/recurrent_kernellstm_251/lstm_cell_251/biastotalcountAdam/dense_83/kernel/mAdam/dense_83/bias/m$Adam/lstm_249/lstm_cell_249/kernel/m.Adam/lstm_249/lstm_cell_249/recurrent_kernel/m"Adam/lstm_249/lstm_cell_249/bias/m$Adam/lstm_250/lstm_cell_250/kernel/m.Adam/lstm_250/lstm_cell_250/recurrent_kernel/m"Adam/lstm_250/lstm_cell_250/bias/m$Adam/lstm_251/lstm_cell_251/kernel/m.Adam/lstm_251/lstm_cell_251/recurrent_kernel/m"Adam/lstm_251/lstm_cell_251/bias/mAdam/dense_83/kernel/vAdam/dense_83/bias/v$Adam/lstm_249/lstm_cell_249/kernel/v.Adam/lstm_249/lstm_cell_249/recurrent_kernel/v"Adam/lstm_249/lstm_cell_249/bias/v$Adam/lstm_250/lstm_cell_250/kernel/v.Adam/lstm_250/lstm_cell_250/recurrent_kernel/v"Adam/lstm_250/lstm_cell_250/bias/v$Adam/lstm_251/lstm_cell_251/kernel/v.Adam/lstm_251/lstm_cell_251/recurrent_kernel/v"Adam/lstm_251/lstm_cell_251/bias/v*4
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_1433867??+
?
?
while_cond_1429679
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1429679___redundant_placeholder05
1while_while_cond_1429679___redundant_placeholder15
1while_while_cond_1429679___redundant_placeholder25
1while_while_cond_1429679___redundant_placeholder3
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
?C
?

lstm_250_while_body_1430777.
*lstm_250_while_lstm_250_while_loop_counter4
0lstm_250_while_lstm_250_while_maximum_iterations
lstm_250_while_placeholder 
lstm_250_while_placeholder_1 
lstm_250_while_placeholder_2 
lstm_250_while_placeholder_3-
)lstm_250_while_lstm_250_strided_slice_1_0i
elstm_250_while_tensorarrayv2read_tensorlistgetitem_lstm_250_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_250_while_lstm_cell_235_matmul_readvariableop_resource_0:	d?R
?lstm_250_while_lstm_cell_235_matmul_1_readvariableop_resource_0:	2?M
>lstm_250_while_lstm_cell_235_biasadd_readvariableop_resource_0:	?
lstm_250_while_identity
lstm_250_while_identity_1
lstm_250_while_identity_2
lstm_250_while_identity_3
lstm_250_while_identity_4
lstm_250_while_identity_5+
'lstm_250_while_lstm_250_strided_slice_1g
clstm_250_while_tensorarrayv2read_tensorlistgetitem_lstm_250_tensorarrayunstack_tensorlistfromtensorN
;lstm_250_while_lstm_cell_235_matmul_readvariableop_resource:	d?P
=lstm_250_while_lstm_cell_235_matmul_1_readvariableop_resource:	2?K
<lstm_250_while_lstm_cell_235_biasadd_readvariableop_resource:	???3lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOp?2lstm_250/while/lstm_cell_235/MatMul/ReadVariableOp?4lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOp?
@lstm_250/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_250/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_250_while_tensorarrayv2read_tensorlistgetitem_lstm_250_tensorarrayunstack_tensorlistfromtensor_0lstm_250_while_placeholderIlstm_250/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_250/while/lstm_cell_235/MatMul/ReadVariableOpReadVariableOp=lstm_250_while_lstm_cell_235_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_250/while/lstm_cell_235/MatMulMatMul9lstm_250/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_250/while/lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOp?lstm_250_while_lstm_cell_235_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_250/while/lstm_cell_235/MatMul_1MatMullstm_250_while_placeholder_2<lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_250/while/lstm_cell_235/addAddV2-lstm_250/while/lstm_cell_235/MatMul:product:0/lstm_250/while/lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOp>lstm_250_while_lstm_cell_235_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_250/while/lstm_cell_235/BiasAddBiasAdd$lstm_250/while/lstm_cell_235/add:z:0;lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_250/while/lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_250/while/lstm_cell_235/splitSplit5lstm_250/while/lstm_cell_235/split/split_dim:output:0-lstm_250/while/lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_250/while/lstm_cell_235/SigmoidSigmoid+lstm_250/while/lstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_250/while/lstm_cell_235/Sigmoid_1Sigmoid+lstm_250/while/lstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_250/while/lstm_cell_235/mulMul*lstm_250/while/lstm_cell_235/Sigmoid_1:y:0lstm_250_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_250/while/lstm_cell_235/ReluRelu+lstm_250/while/lstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_250/while/lstm_cell_235/mul_1Mul(lstm_250/while/lstm_cell_235/Sigmoid:y:0/lstm_250/while/lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_250/while/lstm_cell_235/add_1AddV2$lstm_250/while/lstm_cell_235/mul:z:0&lstm_250/while/lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_250/while/lstm_cell_235/Sigmoid_2Sigmoid+lstm_250/while/lstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_250/while/lstm_cell_235/Relu_1Relu&lstm_250/while/lstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_250/while/lstm_cell_235/mul_2Mul*lstm_250/while/lstm_cell_235/Sigmoid_2:y:01lstm_250/while/lstm_cell_235/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_250/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_250_while_placeholder_1lstm_250_while_placeholder&lstm_250/while/lstm_cell_235/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_250/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_250/while/addAddV2lstm_250_while_placeholderlstm_250/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_250/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_250/while/add_1AddV2*lstm_250_while_lstm_250_while_loop_counterlstm_250/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_250/while/IdentityIdentitylstm_250/while/add_1:z:0^lstm_250/while/NoOp*
T0*
_output_shapes
: ?
lstm_250/while/Identity_1Identity0lstm_250_while_lstm_250_while_maximum_iterations^lstm_250/while/NoOp*
T0*
_output_shapes
: t
lstm_250/while/Identity_2Identitylstm_250/while/add:z:0^lstm_250/while/NoOp*
T0*
_output_shapes
: ?
lstm_250/while/Identity_3IdentityClstm_250/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_250/while/NoOp*
T0*
_output_shapes
: ?
lstm_250/while/Identity_4Identity&lstm_250/while/lstm_cell_235/mul_2:z:0^lstm_250/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_250/while/Identity_5Identity&lstm_250/while/lstm_cell_235/add_1:z:0^lstm_250/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_250/while/NoOpNoOp4^lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOp3^lstm_250/while/lstm_cell_235/MatMul/ReadVariableOp5^lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_250_while_identity lstm_250/while/Identity:output:0"?
lstm_250_while_identity_1"lstm_250/while/Identity_1:output:0"?
lstm_250_while_identity_2"lstm_250/while/Identity_2:output:0"?
lstm_250_while_identity_3"lstm_250/while/Identity_3:output:0"?
lstm_250_while_identity_4"lstm_250/while/Identity_4:output:0"?
lstm_250_while_identity_5"lstm_250/while/Identity_5:output:0"T
'lstm_250_while_lstm_250_strided_slice_1)lstm_250_while_lstm_250_strided_slice_1_0"~
<lstm_250_while_lstm_cell_235_biasadd_readvariableop_resource>lstm_250_while_lstm_cell_235_biasadd_readvariableop_resource_0"?
=lstm_250_while_lstm_cell_235_matmul_1_readvariableop_resource?lstm_250_while_lstm_cell_235_matmul_1_readvariableop_resource_0"|
;lstm_250_while_lstm_cell_235_matmul_readvariableop_resource=lstm_250_while_lstm_cell_235_matmul_readvariableop_resource_0"?
clstm_250_while_tensorarrayv2read_tensorlistgetitem_lstm_250_tensorarrayunstack_tensorlistfromtensorelstm_250_while_tensorarrayv2read_tensorlistgetitem_lstm_250_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOp3lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOp2h
2lstm_250/while/lstm_cell_235/MatMul/ReadVariableOp2lstm_250/while/lstm_cell_235/MatMul/ReadVariableOp2l
4lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOp4lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOp: 
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
?C
?

lstm_251_while_body_1431343.
*lstm_251_while_lstm_251_while_loop_counter4
0lstm_251_while_lstm_251_while_maximum_iterations
lstm_251_while_placeholder 
lstm_251_while_placeholder_1 
lstm_251_while_placeholder_2 
lstm_251_while_placeholder_3-
)lstm_251_while_lstm_251_strided_slice_1_0i
elstm_251_while_tensorarrayv2read_tensorlistgetitem_lstm_251_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_251_while_lstm_cell_236_matmul_readvariableop_resource_0:2(Q
?lstm_251_while_lstm_cell_236_matmul_1_readvariableop_resource_0:
(L
>lstm_251_while_lstm_cell_236_biasadd_readvariableop_resource_0:(
lstm_251_while_identity
lstm_251_while_identity_1
lstm_251_while_identity_2
lstm_251_while_identity_3
lstm_251_while_identity_4
lstm_251_while_identity_5+
'lstm_251_while_lstm_251_strided_slice_1g
clstm_251_while_tensorarrayv2read_tensorlistgetitem_lstm_251_tensorarrayunstack_tensorlistfromtensorM
;lstm_251_while_lstm_cell_236_matmul_readvariableop_resource:2(O
=lstm_251_while_lstm_cell_236_matmul_1_readvariableop_resource:
(J
<lstm_251_while_lstm_cell_236_biasadd_readvariableop_resource:(??3lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOp?2lstm_251/while/lstm_cell_236/MatMul/ReadVariableOp?4lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOp?
@lstm_251/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_251/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_251_while_tensorarrayv2read_tensorlistgetitem_lstm_251_tensorarrayunstack_tensorlistfromtensor_0lstm_251_while_placeholderIlstm_251/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_251/while/lstm_cell_236/MatMul/ReadVariableOpReadVariableOp=lstm_251_while_lstm_cell_236_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_251/while/lstm_cell_236/MatMulMatMul9lstm_251/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_251/while/lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOp?lstm_251_while_lstm_cell_236_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_251/while/lstm_cell_236/MatMul_1MatMullstm_251_while_placeholder_2<lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_251/while/lstm_cell_236/addAddV2-lstm_251/while/lstm_cell_236/MatMul:product:0/lstm_251/while/lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOp>lstm_251_while_lstm_cell_236_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_251/while/lstm_cell_236/BiasAddBiasAdd$lstm_251/while/lstm_cell_236/add:z:0;lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_251/while/lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_251/while/lstm_cell_236/splitSplit5lstm_251/while/lstm_cell_236/split/split_dim:output:0-lstm_251/while/lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_251/while/lstm_cell_236/SigmoidSigmoid+lstm_251/while/lstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_251/while/lstm_cell_236/Sigmoid_1Sigmoid+lstm_251/while/lstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_251/while/lstm_cell_236/mulMul*lstm_251/while/lstm_cell_236/Sigmoid_1:y:0lstm_251_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_251/while/lstm_cell_236/ReluRelu+lstm_251/while/lstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_251/while/lstm_cell_236/mul_1Mul(lstm_251/while/lstm_cell_236/Sigmoid:y:0/lstm_251/while/lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_251/while/lstm_cell_236/add_1AddV2$lstm_251/while/lstm_cell_236/mul:z:0&lstm_251/while/lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_251/while/lstm_cell_236/Sigmoid_2Sigmoid+lstm_251/while/lstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_251/while/lstm_cell_236/Relu_1Relu&lstm_251/while/lstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_251/while/lstm_cell_236/mul_2Mul*lstm_251/while/lstm_cell_236/Sigmoid_2:y:01lstm_251/while/lstm_cell_236/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_251/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_251_while_placeholder_1lstm_251_while_placeholder&lstm_251/while/lstm_cell_236/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_251/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_251/while/addAddV2lstm_251_while_placeholderlstm_251/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_251/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_251/while/add_1AddV2*lstm_251_while_lstm_251_while_loop_counterlstm_251/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_251/while/IdentityIdentitylstm_251/while/add_1:z:0^lstm_251/while/NoOp*
T0*
_output_shapes
: ?
lstm_251/while/Identity_1Identity0lstm_251_while_lstm_251_while_maximum_iterations^lstm_251/while/NoOp*
T0*
_output_shapes
: t
lstm_251/while/Identity_2Identitylstm_251/while/add:z:0^lstm_251/while/NoOp*
T0*
_output_shapes
: ?
lstm_251/while/Identity_3IdentityClstm_251/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_251/while/NoOp*
T0*
_output_shapes
: ?
lstm_251/while/Identity_4Identity&lstm_251/while/lstm_cell_236/mul_2:z:0^lstm_251/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_251/while/Identity_5Identity&lstm_251/while/lstm_cell_236/add_1:z:0^lstm_251/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_251/while/NoOpNoOp4^lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOp3^lstm_251/while/lstm_cell_236/MatMul/ReadVariableOp5^lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_251_while_identity lstm_251/while/Identity:output:0"?
lstm_251_while_identity_1"lstm_251/while/Identity_1:output:0"?
lstm_251_while_identity_2"lstm_251/while/Identity_2:output:0"?
lstm_251_while_identity_3"lstm_251/while/Identity_3:output:0"?
lstm_251_while_identity_4"lstm_251/while/Identity_4:output:0"?
lstm_251_while_identity_5"lstm_251/while/Identity_5:output:0"T
'lstm_251_while_lstm_251_strided_slice_1)lstm_251_while_lstm_251_strided_slice_1_0"~
<lstm_251_while_lstm_cell_236_biasadd_readvariableop_resource>lstm_251_while_lstm_cell_236_biasadd_readvariableop_resource_0"?
=lstm_251_while_lstm_cell_236_matmul_1_readvariableop_resource?lstm_251_while_lstm_cell_236_matmul_1_readvariableop_resource_0"|
;lstm_251_while_lstm_cell_236_matmul_readvariableop_resource=lstm_251_while_lstm_cell_236_matmul_readvariableop_resource_0"?
clstm_251_while_tensorarrayv2read_tensorlistgetitem_lstm_251_tensorarrayunstack_tensorlistfromtensorelstm_251_while_tensorarrayv2read_tensorlistgetitem_lstm_251_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOp3lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOp2h
2lstm_251/while/lstm_cell_236/MatMul/ReadVariableOp2lstm_251/while/lstm_cell_236/MatMul/ReadVariableOp2l
4lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOp4lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOp: 
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
?8
?
while_body_1432152
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_235_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_235_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_235_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_235_matmul_readvariableop_resource:	d?G
4while_lstm_cell_235_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_235_biasadd_readvariableop_resource:	???*while/lstm_cell_235/BiasAdd/ReadVariableOp?)while/lstm_cell_235/MatMul/ReadVariableOp?+while/lstm_cell_235/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_235/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_235_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_235/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_235_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_235/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_235/addAddV2$while/lstm_cell_235/MatMul:product:0&while/lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_235_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_235/BiasAddBiasAddwhile/lstm_cell_235/add:z:02while/lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_235/splitSplit,while/lstm_cell_235/split/split_dim:output:0$while/lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_235/SigmoidSigmoid"while/lstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_235/Sigmoid_1Sigmoid"while/lstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mulMul!while/lstm_cell_235/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_235/ReluRelu"while/lstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mul_1Mulwhile/lstm_cell_235/Sigmoid:y:0&while/lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/add_1AddV2while/lstm_cell_235/mul:z:0while/lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_235/Sigmoid_2Sigmoid"while/lstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_235/Relu_1Reluwhile/lstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mul_2Mul!while/lstm_cell_235/Sigmoid_2:y:0(while/lstm_cell_235/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_235/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_235/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_235/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_235/BiasAdd/ReadVariableOp*^while/lstm_cell_235/MatMul/ReadVariableOp,^while/lstm_cell_235/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_235_biasadd_readvariableop_resource5while_lstm_cell_235_biasadd_readvariableop_resource_0"n
4while_lstm_cell_235_matmul_1_readvariableop_resource6while_lstm_cell_235_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_235_matmul_readvariableop_resource4while_lstm_cell_235_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_235/BiasAdd/ReadVariableOp*while/lstm_cell_235/BiasAdd/ReadVariableOp2V
)while/lstm_cell_235/MatMul/ReadVariableOp)while/lstm_cell_235/MatMul/ReadVariableOp2Z
+while/lstm_cell_235/MatMul_1/ReadVariableOp+while/lstm_cell_235/MatMul_1/ReadVariableOp: 
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
??
?
#__inference__traced_restore_1433867
file_prefix2
 assignvariableop_dense_83_kernel:
.
 assignvariableop_1_dense_83_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_249_lstm_cell_249_kernel:	?M
:assignvariableop_8_lstm_249_lstm_cell_249_recurrent_kernel:	d?=
.assignvariableop_9_lstm_249_lstm_cell_249_bias:	?D
1assignvariableop_10_lstm_250_lstm_cell_250_kernel:	d?N
;assignvariableop_11_lstm_250_lstm_cell_250_recurrent_kernel:	2?>
/assignvariableop_12_lstm_250_lstm_cell_250_bias:	?C
1assignvariableop_13_lstm_251_lstm_cell_251_kernel:2(M
;assignvariableop_14_lstm_251_lstm_cell_251_recurrent_kernel:
(=
/assignvariableop_15_lstm_251_lstm_cell_251_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_83_kernel_m:
6
(assignvariableop_19_adam_dense_83_bias_m:K
8assignvariableop_20_adam_lstm_249_lstm_cell_249_kernel_m:	?U
Bassignvariableop_21_adam_lstm_249_lstm_cell_249_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_249_lstm_cell_249_bias_m:	?K
8assignvariableop_23_adam_lstm_250_lstm_cell_250_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_250_lstm_cell_250_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_250_lstm_cell_250_bias_m:	?J
8assignvariableop_26_adam_lstm_251_lstm_cell_251_kernel_m:2(T
Bassignvariableop_27_adam_lstm_251_lstm_cell_251_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_251_lstm_cell_251_bias_m:(<
*assignvariableop_29_adam_dense_83_kernel_v:
6
(assignvariableop_30_adam_dense_83_bias_v:K
8assignvariableop_31_adam_lstm_249_lstm_cell_249_kernel_v:	?U
Bassignvariableop_32_adam_lstm_249_lstm_cell_249_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_249_lstm_cell_249_bias_v:	?K
8assignvariableop_34_adam_lstm_250_lstm_cell_250_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_250_lstm_cell_250_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_250_lstm_cell_250_bias_v:	?J
8assignvariableop_37_adam_lstm_251_lstm_cell_251_kernel_v:2(T
Bassignvariableop_38_adam_lstm_251_lstm_cell_251_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_251_lstm_cell_251_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_83_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_83_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_249_lstm_cell_249_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_249_lstm_cell_249_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_249_lstm_cell_249_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_250_lstm_cell_250_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_250_lstm_cell_250_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_250_lstm_cell_250_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_251_lstm_cell_251_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_251_lstm_cell_251_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_251_lstm_cell_251_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_83_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_83_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_249_lstm_cell_249_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_249_lstm_cell_249_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_249_lstm_cell_249_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_250_lstm_cell_250_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_250_lstm_cell_250_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_250_lstm_cell_250_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_251_lstm_cell_251_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_251_lstm_cell_251_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_251_lstm_cell_251_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_83_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_83_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_249_lstm_cell_249_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_249_lstm_cell_249_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_249_lstm_cell_249_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_250_lstm_cell_250_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_250_lstm_cell_250_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_250_lstm_cell_250_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_251_lstm_cell_251_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_251_lstm_cell_251_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_251_lstm_cell_251_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
*__inference_lstm_251_layer_call_fn_1432709

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
GPU 2J 8? *N
fIRG
E__inference_lstm_251_layer_call_and_return_conditional_losses_1429980o
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
?8
?
while_body_1430226
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_234_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_234_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_234_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_234_matmul_readvariableop_resource:	?G
4while_lstm_cell_234_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_234_biasadd_readvariableop_resource:	???*while/lstm_cell_234/BiasAdd/ReadVariableOp?)while/lstm_cell_234/MatMul/ReadVariableOp?+while/lstm_cell_234/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_234/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_234_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_234/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_234_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_234/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_234/addAddV2$while/lstm_cell_234/MatMul:product:0&while/lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_234_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_234/BiasAddBiasAddwhile/lstm_cell_234/add:z:02while/lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_234/splitSplit,while/lstm_cell_234/split/split_dim:output:0$while/lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_234/SigmoidSigmoid"while/lstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_234/Sigmoid_1Sigmoid"while/lstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mulMul!while/lstm_cell_234/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_234/ReluRelu"while/lstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mul_1Mulwhile/lstm_cell_234/Sigmoid:y:0&while/lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/add_1AddV2while/lstm_cell_234/mul:z:0while/lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_234/Sigmoid_2Sigmoid"while/lstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_234/Relu_1Reluwhile/lstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mul_2Mul!while/lstm_cell_234/Sigmoid_2:y:0(while/lstm_cell_234/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_234/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_234/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_234/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_234/BiasAdd/ReadVariableOp*^while/lstm_cell_234/MatMul/ReadVariableOp,^while/lstm_cell_234/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_234_biasadd_readvariableop_resource5while_lstm_cell_234_biasadd_readvariableop_resource_0"n
4while_lstm_cell_234_matmul_1_readvariableop_resource6while_lstm_cell_234_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_234_matmul_readvariableop_resource4while_lstm_cell_234_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_234/BiasAdd/ReadVariableOp*while/lstm_cell_234/BiasAdd/ReadVariableOp2V
)while/lstm_cell_234/MatMul/ReadVariableOp)while/lstm_cell_234/MatMul/ReadVariableOp2Z
+while/lstm_cell_234/MatMul_1/ReadVariableOp+while/lstm_cell_234/MatMul_1/ReadVariableOp: 
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
?#
?
while_body_1429237
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_236_1429261_0:2(/
while_lstm_cell_236_1429263_0:
(+
while_lstm_cell_236_1429265_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_236_1429261:2(-
while_lstm_cell_236_1429263:
()
while_lstm_cell_236_1429265:(??+while/lstm_cell_236/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_236/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_236_1429261_0while_lstm_cell_236_1429263_0while_lstm_cell_236_1429265_0*
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_236_layer_call_and_return_conditional_losses_1429178?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_236/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_236/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_236/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_236/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_236_1429261while_lstm_cell_236_1429261_0"<
while_lstm_cell_236_1429263while_lstm_cell_236_1429263_0"<
while_lstm_cell_236_1429265while_lstm_cell_236_1429265_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_236/StatefulPartitionedCall+while/lstm_cell_236/StatefulPartitionedCall: 
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
?8
?
while_body_1429530
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_235_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_235_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_235_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_235_matmul_readvariableop_resource:	d?G
4while_lstm_cell_235_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_235_biasadd_readvariableop_resource:	???*while/lstm_cell_235/BiasAdd/ReadVariableOp?)while/lstm_cell_235/MatMul/ReadVariableOp?+while/lstm_cell_235/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_235/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_235_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_235/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_235_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_235/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_235/addAddV2$while/lstm_cell_235/MatMul:product:0&while/lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_235_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_235/BiasAddBiasAddwhile/lstm_cell_235/add:z:02while/lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_235/splitSplit,while/lstm_cell_235/split/split_dim:output:0$while/lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_235/SigmoidSigmoid"while/lstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_235/Sigmoid_1Sigmoid"while/lstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mulMul!while/lstm_cell_235/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_235/ReluRelu"while/lstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mul_1Mulwhile/lstm_cell_235/Sigmoid:y:0&while/lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/add_1AddV2while/lstm_cell_235/mul:z:0while/lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_235/Sigmoid_2Sigmoid"while/lstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_235/Relu_1Reluwhile/lstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mul_2Mul!while/lstm_cell_235/Sigmoid_2:y:0(while/lstm_cell_235/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_235/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_235/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_235/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_235/BiasAdd/ReadVariableOp*^while/lstm_cell_235/MatMul/ReadVariableOp,^while/lstm_cell_235/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_235_biasadd_readvariableop_resource5while_lstm_cell_235_biasadd_readvariableop_resource_0"n
4while_lstm_cell_235_matmul_1_readvariableop_resource6while_lstm_cell_235_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_235_matmul_readvariableop_resource4while_lstm_cell_235_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_235/BiasAdd/ReadVariableOp*while/lstm_cell_235/BiasAdd/ReadVariableOp2V
)while/lstm_cell_235/MatMul/ReadVariableOp)while/lstm_cell_235/MatMul/ReadVariableOp2Z
+while/lstm_cell_235/MatMul_1/ReadVariableOp+while/lstm_cell_235/MatMul_1/ReadVariableOp: 
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
?8
?
while_body_1432911
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_236_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_236_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_236_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_236_matmul_readvariableop_resource:2(F
4while_lstm_cell_236_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_236_biasadd_readvariableop_resource:(??*while/lstm_cell_236/BiasAdd/ReadVariableOp?)while/lstm_cell_236/MatMul/ReadVariableOp?+while/lstm_cell_236/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_236/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_236_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_236/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_236_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_236/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_236/addAddV2$while/lstm_cell_236/MatMul:product:0&while/lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_236_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_236/BiasAddBiasAddwhile/lstm_cell_236/add:z:02while/lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_236/splitSplit,while/lstm_cell_236/split/split_dim:output:0$while/lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_236/SigmoidSigmoid"while/lstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_236/Sigmoid_1Sigmoid"while/lstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mulMul!while/lstm_cell_236/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_236/ReluRelu"while/lstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mul_1Mulwhile/lstm_cell_236/Sigmoid:y:0&while/lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/add_1AddV2while/lstm_cell_236/mul:z:0while/lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_236/Sigmoid_2Sigmoid"while/lstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_236/Relu_1Reluwhile/lstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mul_2Mul!while/lstm_cell_236/Sigmoid_2:y:0(while/lstm_cell_236/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_236/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_236/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_236/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_236/BiasAdd/ReadVariableOp*^while/lstm_cell_236/MatMul/ReadVariableOp,^while/lstm_cell_236/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_236_biasadd_readvariableop_resource5while_lstm_cell_236_biasadd_readvariableop_resource_0"n
4while_lstm_cell_236_matmul_1_readvariableop_resource6while_lstm_cell_236_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_236_matmul_readvariableop_resource4while_lstm_cell_236_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_236/BiasAdd/ReadVariableOp*while/lstm_cell_236/BiasAdd/ReadVariableOp2V
)while/lstm_cell_236/MatMul/ReadVariableOp)while/lstm_cell_236/MatMul/ReadVariableOp2Z
+while/lstm_cell_236/MatMul_1/ReadVariableOp+while/lstm_cell_236/MatMul_1/ReadVariableOp: 
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
?J
?
E__inference_lstm_250_layer_call_and_return_conditional_losses_1429614

inputs?
,lstm_cell_235_matmul_readvariableop_resource:	d?A
.lstm_cell_235_matmul_1_readvariableop_resource:	2?<
-lstm_cell_235_biasadd_readvariableop_resource:	?
identity??$lstm_cell_235/BiasAdd/ReadVariableOp?#lstm_cell_235/MatMul/ReadVariableOp?%lstm_cell_235/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_235/MatMul/ReadVariableOpReadVariableOp,lstm_cell_235_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_235/MatMulMatMulstrided_slice_2:output:0+lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_235_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_235/MatMul_1MatMulzeros:output:0-lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_235/addAddV2lstm_cell_235/MatMul:product:0 lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_235_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_235/BiasAddBiasAddlstm_cell_235/add:z:0,lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_235/splitSplit&lstm_cell_235/split/split_dim:output:0lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_235/SigmoidSigmoidlstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_235/Sigmoid_1Sigmoidlstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_235/mulMullstm_cell_235/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_235/ReluRelulstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_235/mul_1Mullstm_cell_235/Sigmoid:y:0 lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_235/add_1AddV2lstm_cell_235/mul:z:0lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_235/Sigmoid_2Sigmoidlstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_235/Relu_1Relulstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_235/mul_2Mullstm_cell_235/Sigmoid_2:y:0"lstm_cell_235/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_235_matmul_readvariableop_resource.lstm_cell_235_matmul_1_readvariableop_resource-lstm_cell_235_biasadd_readvariableop_resource*
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
bodyR
while_body_1429530*
condR
while_cond_1429529*K
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
NoOpNoOp%^lstm_cell_235/BiasAdd/ReadVariableOp$^lstm_cell_235/MatMul/ReadVariableOp&^lstm_cell_235/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_235/BiasAdd/ReadVariableOp$lstm_cell_235/BiasAdd/ReadVariableOp2J
#lstm_cell_235/MatMul/ReadVariableOp#lstm_cell_235/MatMul/ReadVariableOp2N
%lstm_cell_235/MatMul_1/ReadVariableOp%lstm_cell_235/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_251_layer_call_and_return_conditional_losses_1429306

inputs'
lstm_cell_236_1429224:2('
lstm_cell_236_1429226:
(#
lstm_cell_236_1429228:(
identity??%lstm_cell_236/StatefulPartitionedCall?while;
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
%lstm_cell_236/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_236_1429224lstm_cell_236_1429226lstm_cell_236_1429228*
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_236_layer_call_and_return_conditional_losses_1429178n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_236_1429224lstm_cell_236_1429226lstm_cell_236_1429228*
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
bodyR
while_body_1429237*
condR
while_cond_1429236*K
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
v
NoOpNoOp&^lstm_cell_236/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_236/StatefulPartitionedCall%lstm_cell_236/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_1430525
lstm_249_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_249_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? *+
f&R$
"__inference__wrapped_model_1428265o
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
_user_specified_namelstm_249_input
?#
?
while_body_1429046
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_236_1429070_0:2(/
while_lstm_cell_236_1429072_0:
(+
while_lstm_cell_236_1429074_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_236_1429070:2(-
while_lstm_cell_236_1429072:
()
while_lstm_cell_236_1429074:(??+while/lstm_cell_236/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_236/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_236_1429070_0while_lstm_cell_236_1429072_0while_lstm_cell_236_1429074_0*
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_236_layer_call_and_return_conditional_losses_1429032?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_236/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_236/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_236/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_236/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_236_1429070while_lstm_cell_236_1429070_0"<
while_lstm_cell_236_1429072while_lstm_cell_236_1429072_0"<
while_lstm_cell_236_1429074while_lstm_cell_236_1429074_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_236/StatefulPartitionedCall+while/lstm_cell_236/StatefulPartitionedCall: 
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
/__inference_lstm_cell_235_layer_call_fn_1433432

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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_235_layer_call_and_return_conditional_losses_1428828o
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
?
?
while_cond_1432580
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1432580___redundant_placeholder05
1while_while_cond_1432580___redundant_placeholder15
1while_while_cond_1432580___redundant_placeholder25
1while_while_cond_1432580___redundant_placeholder3
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
?
J__inference_lstm_cell_235_layer_call_and_return_conditional_losses_1428828

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
?
?
/__inference_lstm_cell_234_layer_call_fn_1433317

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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_234_layer_call_and_return_conditional_losses_1428332o
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
?8
?
E__inference_lstm_250_layer_call_and_return_conditional_losses_1428765

inputs(
lstm_cell_235_1428683:	d?(
lstm_cell_235_1428685:	2?$
lstm_cell_235_1428687:	?
identity??%lstm_cell_235/StatefulPartitionedCall?while;
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
%lstm_cell_235/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_235_1428683lstm_cell_235_1428685lstm_cell_235_1428687*
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_235_layer_call_and_return_conditional_losses_1428682n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_235_1428683lstm_cell_235_1428685lstm_cell_235_1428687*
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
bodyR
while_body_1428696*
condR
while_cond_1428695*K
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
 :??????????????????2v
NoOpNoOp&^lstm_cell_235/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_235/StatefulPartitionedCall%lstm_cell_235/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_251_layer_call_fn_1432687
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
GPU 2J 8? *N
fIRG
E__inference_lstm_251_layer_call_and_return_conditional_losses_1429306o
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
?
?
/__inference_lstm_cell_236_layer_call_fn_1433530

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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_236_layer_call_and_return_conditional_losses_1429178o
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
?C
?

lstm_249_while_body_1430638.
*lstm_249_while_lstm_249_while_loop_counter4
0lstm_249_while_lstm_249_while_maximum_iterations
lstm_249_while_placeholder 
lstm_249_while_placeholder_1 
lstm_249_while_placeholder_2 
lstm_249_while_placeholder_3-
)lstm_249_while_lstm_249_strided_slice_1_0i
elstm_249_while_tensorarrayv2read_tensorlistgetitem_lstm_249_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_249_while_lstm_cell_234_matmul_readvariableop_resource_0:	?R
?lstm_249_while_lstm_cell_234_matmul_1_readvariableop_resource_0:	d?M
>lstm_249_while_lstm_cell_234_biasadd_readvariableop_resource_0:	?
lstm_249_while_identity
lstm_249_while_identity_1
lstm_249_while_identity_2
lstm_249_while_identity_3
lstm_249_while_identity_4
lstm_249_while_identity_5+
'lstm_249_while_lstm_249_strided_slice_1g
clstm_249_while_tensorarrayv2read_tensorlistgetitem_lstm_249_tensorarrayunstack_tensorlistfromtensorN
;lstm_249_while_lstm_cell_234_matmul_readvariableop_resource:	?P
=lstm_249_while_lstm_cell_234_matmul_1_readvariableop_resource:	d?K
<lstm_249_while_lstm_cell_234_biasadd_readvariableop_resource:	???3lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOp?2lstm_249/while/lstm_cell_234/MatMul/ReadVariableOp?4lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOp?
@lstm_249/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_249/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_249_while_tensorarrayv2read_tensorlistgetitem_lstm_249_tensorarrayunstack_tensorlistfromtensor_0lstm_249_while_placeholderIlstm_249/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_249/while/lstm_cell_234/MatMul/ReadVariableOpReadVariableOp=lstm_249_while_lstm_cell_234_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_249/while/lstm_cell_234/MatMulMatMul9lstm_249/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_249/while/lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOp?lstm_249_while_lstm_cell_234_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_249/while/lstm_cell_234/MatMul_1MatMullstm_249_while_placeholder_2<lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_249/while/lstm_cell_234/addAddV2-lstm_249/while/lstm_cell_234/MatMul:product:0/lstm_249/while/lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOp>lstm_249_while_lstm_cell_234_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_249/while/lstm_cell_234/BiasAddBiasAdd$lstm_249/while/lstm_cell_234/add:z:0;lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_249/while/lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_249/while/lstm_cell_234/splitSplit5lstm_249/while/lstm_cell_234/split/split_dim:output:0-lstm_249/while/lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_249/while/lstm_cell_234/SigmoidSigmoid+lstm_249/while/lstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_249/while/lstm_cell_234/Sigmoid_1Sigmoid+lstm_249/while/lstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_249/while/lstm_cell_234/mulMul*lstm_249/while/lstm_cell_234/Sigmoid_1:y:0lstm_249_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_249/while/lstm_cell_234/ReluRelu+lstm_249/while/lstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_249/while/lstm_cell_234/mul_1Mul(lstm_249/while/lstm_cell_234/Sigmoid:y:0/lstm_249/while/lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_249/while/lstm_cell_234/add_1AddV2$lstm_249/while/lstm_cell_234/mul:z:0&lstm_249/while/lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_249/while/lstm_cell_234/Sigmoid_2Sigmoid+lstm_249/while/lstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_249/while/lstm_cell_234/Relu_1Relu&lstm_249/while/lstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_249/while/lstm_cell_234/mul_2Mul*lstm_249/while/lstm_cell_234/Sigmoid_2:y:01lstm_249/while/lstm_cell_234/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_249/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_249_while_placeholder_1lstm_249_while_placeholder&lstm_249/while/lstm_cell_234/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_249/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_249/while/addAddV2lstm_249_while_placeholderlstm_249/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_249/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_249/while/add_1AddV2*lstm_249_while_lstm_249_while_loop_counterlstm_249/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_249/while/IdentityIdentitylstm_249/while/add_1:z:0^lstm_249/while/NoOp*
T0*
_output_shapes
: ?
lstm_249/while/Identity_1Identity0lstm_249_while_lstm_249_while_maximum_iterations^lstm_249/while/NoOp*
T0*
_output_shapes
: t
lstm_249/while/Identity_2Identitylstm_249/while/add:z:0^lstm_249/while/NoOp*
T0*
_output_shapes
: ?
lstm_249/while/Identity_3IdentityClstm_249/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_249/while/NoOp*
T0*
_output_shapes
: ?
lstm_249/while/Identity_4Identity&lstm_249/while/lstm_cell_234/mul_2:z:0^lstm_249/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_249/while/Identity_5Identity&lstm_249/while/lstm_cell_234/add_1:z:0^lstm_249/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_249/while/NoOpNoOp4^lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOp3^lstm_249/while/lstm_cell_234/MatMul/ReadVariableOp5^lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_249_while_identity lstm_249/while/Identity:output:0"?
lstm_249_while_identity_1"lstm_249/while/Identity_1:output:0"?
lstm_249_while_identity_2"lstm_249/while/Identity_2:output:0"?
lstm_249_while_identity_3"lstm_249/while/Identity_3:output:0"?
lstm_249_while_identity_4"lstm_249/while/Identity_4:output:0"?
lstm_249_while_identity_5"lstm_249/while/Identity_5:output:0"T
'lstm_249_while_lstm_249_strided_slice_1)lstm_249_while_lstm_249_strided_slice_1_0"~
<lstm_249_while_lstm_cell_234_biasadd_readvariableop_resource>lstm_249_while_lstm_cell_234_biasadd_readvariableop_resource_0"?
=lstm_249_while_lstm_cell_234_matmul_1_readvariableop_resource?lstm_249_while_lstm_cell_234_matmul_1_readvariableop_resource_0"|
;lstm_249_while_lstm_cell_234_matmul_readvariableop_resource=lstm_249_while_lstm_cell_234_matmul_readvariableop_resource_0"?
clstm_249_while_tensorarrayv2read_tensorlistgetitem_lstm_249_tensorarrayunstack_tensorlistfromtensorelstm_249_while_tensorarrayv2read_tensorlistgetitem_lstm_249_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOp3lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOp2h
2lstm_249/while/lstm_cell_234/MatMul/ReadVariableOp2lstm_249/while/lstm_cell_234/MatMul/ReadVariableOp2l
4lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOp4lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOp: 
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
while_cond_1429529
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1429529___redundant_placeholder05
1while_while_cond_1429529___redundant_placeholder15
1while_while_cond_1429529___redundant_placeholder25
1while_while_cond_1429529___redundant_placeholder3
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
while_cond_1430060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1430060___redundant_placeholder05
1while_while_cond_1430060___redundant_placeholder15
1while_while_cond_1430060___redundant_placeholder25
1while_while_cond_1430060___redundant_placeholder3
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
?#
?
while_body_1428537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_234_1428561_0:	?0
while_lstm_cell_234_1428563_0:	d?,
while_lstm_cell_234_1428565_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_234_1428561:	?.
while_lstm_cell_234_1428563:	d?*
while_lstm_cell_234_1428565:	???+while/lstm_cell_234/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_234/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_234_1428561_0while_lstm_cell_234_1428563_0while_lstm_cell_234_1428565_0*
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_234_layer_call_and_return_conditional_losses_1428478?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_234/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_234/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_234/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_234/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_234_1428561while_lstm_cell_234_1428561_0"<
while_lstm_cell_234_1428563while_lstm_cell_234_1428563_0"<
while_lstm_cell_234_1428565while_lstm_cell_234_1428565_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_234/StatefulPartitionedCall+while/lstm_cell_234/StatefulPartitionedCall: 
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
/__inference_lstm_cell_234_layer_call_fn_1433334

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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_234_layer_call_and_return_conditional_losses_1428478o
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
?
*__inference_lstm_249_layer_call_fn_1431466

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
GPU 2J 8? *N
fIRG
E__inference_lstm_249_layer_call_and_return_conditional_losses_1429464s
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
?
?
while_cond_1431535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1431535___redundant_placeholder05
1while_while_cond_1431535___redundant_placeholder15
1while_while_cond_1431535___redundant_placeholder25
1while_while_cond_1431535___redundant_placeholder3
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
?

?
lstm_249_while_cond_1430637.
*lstm_249_while_lstm_249_while_loop_counter4
0lstm_249_while_lstm_249_while_maximum_iterations
lstm_249_while_placeholder 
lstm_249_while_placeholder_1 
lstm_249_while_placeholder_2 
lstm_249_while_placeholder_30
,lstm_249_while_less_lstm_249_strided_slice_1G
Clstm_249_while_lstm_249_while_cond_1430637___redundant_placeholder0G
Clstm_249_while_lstm_249_while_cond_1430637___redundant_placeholder1G
Clstm_249_while_lstm_249_while_cond_1430637___redundant_placeholder2G
Clstm_249_while_lstm_249_while_cond_1430637___redundant_placeholder3
lstm_249_while_identity
?
lstm_249/while/LessLesslstm_249_while_placeholder,lstm_249_while_less_lstm_249_strided_slice_1*
T0*
_output_shapes
: ]
lstm_249/while/IdentityIdentitylstm_249/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_249_while_identity lstm_249/while/Identity:output:0*(
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
?
?
while_cond_1428345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1428345___redundant_placeholder05
1while_while_cond_1428345___redundant_placeholder15
1while_while_cond_1428345___redundant_placeholder25
1while_while_cond_1428345___redundant_placeholder3
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
J__inference_lstm_cell_234_layer_call_and_return_conditional_losses_1433398

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
?
?
*__inference_lstm_251_layer_call_fn_1432698

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
GPU 2J 8? *N
fIRG
E__inference_lstm_251_layer_call_and_return_conditional_losses_1429764o
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
?8
?
E__inference_lstm_249_layer_call_and_return_conditional_losses_1428606

inputs(
lstm_cell_234_1428524:	?(
lstm_cell_234_1428526:	d?$
lstm_cell_234_1428528:	?
identity??%lstm_cell_234/StatefulPartitionedCall?while;
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
%lstm_cell_234/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_234_1428524lstm_cell_234_1428526lstm_cell_234_1428528*
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_234_layer_call_and_return_conditional_losses_1428478n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_234_1428524lstm_cell_234_1428526lstm_cell_234_1428528*
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
bodyR
while_body_1428537*
condR
while_cond_1428536*K
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
 :??????????????????dv
NoOpNoOp&^lstm_cell_234/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_234/StatefulPartitionedCall%lstm_cell_234/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_249_layer_call_fn_1431455
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
GPU 2J 8? *N
fIRG
E__inference_lstm_249_layer_call_and_return_conditional_losses_1428606|
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
while_cond_1428695
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1428695___redundant_placeholder05
1while_while_cond_1428695___redundant_placeholder15
1while_while_cond_1428695___redundant_placeholder25
1while_while_cond_1428695___redundant_placeholder3
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
?#
?
while_body_1428346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_234_1428370_0:	?0
while_lstm_cell_234_1428372_0:	d?,
while_lstm_cell_234_1428374_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_234_1428370:	?.
while_lstm_cell_234_1428372:	d?*
while_lstm_cell_234_1428374:	???+while/lstm_cell_234/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_234/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_234_1428370_0while_lstm_cell_234_1428372_0while_lstm_cell_234_1428374_0*
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_234_layer_call_and_return_conditional_losses_1428332?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_234/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_234/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_234/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_234/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_234_1428370while_lstm_cell_234_1428370_0"<
while_lstm_cell_234_1428372while_lstm_cell_234_1428372_0"<
while_lstm_cell_234_1428374while_lstm_cell_234_1428374_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_234/StatefulPartitionedCall+while/lstm_cell_234/StatefulPartitionedCall: 
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
E__inference_lstm_250_layer_call_and_return_conditional_losses_1432665

inputs?
,lstm_cell_235_matmul_readvariableop_resource:	d?A
.lstm_cell_235_matmul_1_readvariableop_resource:	2?<
-lstm_cell_235_biasadd_readvariableop_resource:	?
identity??$lstm_cell_235/BiasAdd/ReadVariableOp?#lstm_cell_235/MatMul/ReadVariableOp?%lstm_cell_235/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_235/MatMul/ReadVariableOpReadVariableOp,lstm_cell_235_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_235/MatMulMatMulstrided_slice_2:output:0+lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_235_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_235/MatMul_1MatMulzeros:output:0-lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_235/addAddV2lstm_cell_235/MatMul:product:0 lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_235_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_235/BiasAddBiasAddlstm_cell_235/add:z:0,lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_235/splitSplit&lstm_cell_235/split/split_dim:output:0lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_235/SigmoidSigmoidlstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_235/Sigmoid_1Sigmoidlstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_235/mulMullstm_cell_235/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_235/ReluRelulstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_235/mul_1Mullstm_cell_235/Sigmoid:y:0 lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_235/add_1AddV2lstm_cell_235/mul:z:0lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_235/Sigmoid_2Sigmoidlstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_235/Relu_1Relulstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_235/mul_2Mullstm_cell_235/Sigmoid_2:y:0"lstm_cell_235/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_235_matmul_readvariableop_resource.lstm_cell_235_matmul_1_readvariableop_resource-lstm_cell_235_biasadd_readvariableop_resource*
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
bodyR
while_body_1432581*
condR
while_cond_1432580*K
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
NoOpNoOp%^lstm_cell_235/BiasAdd/ReadVariableOp$^lstm_cell_235/MatMul/ReadVariableOp&^lstm_cell_235/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_235/BiasAdd/ReadVariableOp$lstm_cell_235/BiasAdd/ReadVariableOp2J
#lstm_cell_235/MatMul/ReadVariableOp#lstm_cell_235/MatMul/ReadVariableOp2N
%lstm_cell_235/MatMul_1/ReadVariableOp%lstm_cell_235/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?#
?
while_body_1428887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_235_1428911_0:	d?0
while_lstm_cell_235_1428913_0:	2?,
while_lstm_cell_235_1428915_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_235_1428911:	d?.
while_lstm_cell_235_1428913:	2?*
while_lstm_cell_235_1428915:	???+while/lstm_cell_235/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_235/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_235_1428911_0while_lstm_cell_235_1428913_0while_lstm_cell_235_1428915_0*
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_235_layer_call_and_return_conditional_losses_1428828?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_235/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_235/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_235/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_235/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_235_1428911while_lstm_cell_235_1428911_0"<
while_lstm_cell_235_1428913while_lstm_cell_235_1428913_0"<
while_lstm_cell_235_1428915while_lstm_cell_235_1428915_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_235/StatefulPartitionedCall+while/lstm_cell_235/StatefulPartitionedCall: 
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
while_cond_1432151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1432151___redundant_placeholder05
1while_while_cond_1432151___redundant_placeholder15
1while_while_cond_1432151___redundant_placeholder25
1while_while_cond_1432151___redundant_placeholder3
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
?8
?
while_body_1432768
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_236_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_236_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_236_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_236_matmul_readvariableop_resource:2(F
4while_lstm_cell_236_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_236_biasadd_readvariableop_resource:(??*while/lstm_cell_236/BiasAdd/ReadVariableOp?)while/lstm_cell_236/MatMul/ReadVariableOp?+while/lstm_cell_236/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_236/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_236_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_236/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_236_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_236/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_236/addAddV2$while/lstm_cell_236/MatMul:product:0&while/lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_236_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_236/BiasAddBiasAddwhile/lstm_cell_236/add:z:02while/lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_236/splitSplit,while/lstm_cell_236/split/split_dim:output:0$while/lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_236/SigmoidSigmoid"while/lstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_236/Sigmoid_1Sigmoid"while/lstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mulMul!while/lstm_cell_236/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_236/ReluRelu"while/lstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mul_1Mulwhile/lstm_cell_236/Sigmoid:y:0&while/lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/add_1AddV2while/lstm_cell_236/mul:z:0while/lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_236/Sigmoid_2Sigmoid"while/lstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_236/Relu_1Reluwhile/lstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mul_2Mul!while/lstm_cell_236/Sigmoid_2:y:0(while/lstm_cell_236/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_236/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_236/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_236/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_236/BiasAdd/ReadVariableOp*^while/lstm_cell_236/MatMul/ReadVariableOp,^while/lstm_cell_236/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_236_biasadd_readvariableop_resource5while_lstm_cell_236_biasadd_readvariableop_resource_0"n
4while_lstm_cell_236_matmul_1_readvariableop_resource6while_lstm_cell_236_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_236_matmul_readvariableop_resource4while_lstm_cell_236_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_236/BiasAdd/ReadVariableOp*while/lstm_cell_236/BiasAdd/ReadVariableOp2V
)while/lstm_cell_236/MatMul/ReadVariableOp)while/lstm_cell_236/MatMul/ReadVariableOp2Z
+while/lstm_cell_236/MatMul_1/ReadVariableOp+while/lstm_cell_236/MatMul_1/ReadVariableOp: 
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
?8
?
while_body_1431679
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_234_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_234_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_234_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_234_matmul_readvariableop_resource:	?G
4while_lstm_cell_234_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_234_biasadd_readvariableop_resource:	???*while/lstm_cell_234/BiasAdd/ReadVariableOp?)while/lstm_cell_234/MatMul/ReadVariableOp?+while/lstm_cell_234/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_234/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_234_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_234/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_234_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_234/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_234/addAddV2$while/lstm_cell_234/MatMul:product:0&while/lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_234_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_234/BiasAddBiasAddwhile/lstm_cell_234/add:z:02while/lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_234/splitSplit,while/lstm_cell_234/split/split_dim:output:0$while/lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_234/SigmoidSigmoid"while/lstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_234/Sigmoid_1Sigmoid"while/lstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mulMul!while/lstm_cell_234/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_234/ReluRelu"while/lstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mul_1Mulwhile/lstm_cell_234/Sigmoid:y:0&while/lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/add_1AddV2while/lstm_cell_234/mul:z:0while/lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_234/Sigmoid_2Sigmoid"while/lstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_234/Relu_1Reluwhile/lstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mul_2Mul!while/lstm_cell_234/Sigmoid_2:y:0(while/lstm_cell_234/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_234/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_234/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_234/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_234/BiasAdd/ReadVariableOp*^while/lstm_cell_234/MatMul/ReadVariableOp,^while/lstm_cell_234/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_234_biasadd_readvariableop_resource5while_lstm_cell_234_biasadd_readvariableop_resource_0"n
4while_lstm_cell_234_matmul_1_readvariableop_resource6while_lstm_cell_234_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_234_matmul_readvariableop_resource4while_lstm_cell_234_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_234/BiasAdd/ReadVariableOp*while/lstm_cell_234/BiasAdd/ReadVariableOp2V
)while/lstm_cell_234/MatMul/ReadVariableOp)while/lstm_cell_234/MatMul/ReadVariableOp2Z
+while/lstm_cell_234/MatMul_1/ReadVariableOp+while/lstm_cell_234/MatMul_1/ReadVariableOp: 
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
while_cond_1433196
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1433196___redundant_placeholder05
1while_while_cond_1433196___redundant_placeholder15
1while_while_cond_1433196___redundant_placeholder25
1while_while_cond_1433196___redundant_placeholder3
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
while_cond_1429045
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1429045___redundant_placeholder05
1while_while_cond_1429045___redundant_placeholder15
1while_while_cond_1429045___redundant_placeholder25
1while_while_cond_1429045___redundant_placeholder3
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
?8
?
while_body_1433197
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_236_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_236_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_236_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_236_matmul_readvariableop_resource:2(F
4while_lstm_cell_236_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_236_biasadd_readvariableop_resource:(??*while/lstm_cell_236/BiasAdd/ReadVariableOp?)while/lstm_cell_236/MatMul/ReadVariableOp?+while/lstm_cell_236/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_236/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_236_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_236/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_236_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_236/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_236/addAddV2$while/lstm_cell_236/MatMul:product:0&while/lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_236_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_236/BiasAddBiasAddwhile/lstm_cell_236/add:z:02while/lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_236/splitSplit,while/lstm_cell_236/split/split_dim:output:0$while/lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_236/SigmoidSigmoid"while/lstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_236/Sigmoid_1Sigmoid"while/lstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mulMul!while/lstm_cell_236/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_236/ReluRelu"while/lstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mul_1Mulwhile/lstm_cell_236/Sigmoid:y:0&while/lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/add_1AddV2while/lstm_cell_236/mul:z:0while/lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_236/Sigmoid_2Sigmoid"while/lstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_236/Relu_1Reluwhile/lstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mul_2Mul!while/lstm_cell_236/Sigmoid_2:y:0(while/lstm_cell_236/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_236/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_236/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_236/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_236/BiasAdd/ReadVariableOp*^while/lstm_cell_236/MatMul/ReadVariableOp,^while/lstm_cell_236/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_236_biasadd_readvariableop_resource5while_lstm_cell_236_biasadd_readvariableop_resource_0"n
4while_lstm_cell_236_matmul_1_readvariableop_resource6while_lstm_cell_236_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_236_matmul_readvariableop_resource4while_lstm_cell_236_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_236/BiasAdd/ReadVariableOp*while/lstm_cell_236/BiasAdd/ReadVariableOp2V
)while/lstm_cell_236/MatMul/ReadVariableOp)while/lstm_cell_236/MatMul/ReadVariableOp2Z
+while/lstm_cell_236/MatMul_1/ReadVariableOp+while/lstm_cell_236/MatMul_1/ReadVariableOp: 
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
while_cond_1428886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1428886___redundant_placeholder05
1while_while_cond_1428886___redundant_placeholder15
1while_while_cond_1428886___redundant_placeholder25
1while_while_cond_1428886___redundant_placeholder3
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
?J
?
E__inference_lstm_251_layer_call_and_return_conditional_losses_1433138

inputs>
,lstm_cell_236_matmul_readvariableop_resource:2(@
.lstm_cell_236_matmul_1_readvariableop_resource:
(;
-lstm_cell_236_biasadd_readvariableop_resource:(
identity??$lstm_cell_236/BiasAdd/ReadVariableOp?#lstm_cell_236/MatMul/ReadVariableOp?%lstm_cell_236/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_236/MatMul/ReadVariableOpReadVariableOp,lstm_cell_236_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_236/MatMulMatMulstrided_slice_2:output:0+lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_236_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_236/MatMul_1MatMulzeros:output:0-lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_236/addAddV2lstm_cell_236/MatMul:product:0 lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_236_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_236/BiasAddBiasAddlstm_cell_236/add:z:0,lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_236/splitSplit&lstm_cell_236/split/split_dim:output:0lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_236/SigmoidSigmoidlstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_236/Sigmoid_1Sigmoidlstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_236/mulMullstm_cell_236/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_236/ReluRelulstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_236/mul_1Mullstm_cell_236/Sigmoid:y:0 lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_236/add_1AddV2lstm_cell_236/mul:z:0lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_236/Sigmoid_2Sigmoidlstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_236/Relu_1Relulstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_236/mul_2Mullstm_cell_236/Sigmoid_2:y:0"lstm_cell_236/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_236_matmul_readvariableop_resource.lstm_cell_236_matmul_1_readvariableop_resource-lstm_cell_236_biasadd_readvariableop_resource*
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
bodyR
while_body_1433054*
condR
while_cond_1433053*K
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
NoOpNoOp%^lstm_cell_236/BiasAdd/ReadVariableOp$^lstm_cell_236/MatMul/ReadVariableOp&^lstm_cell_236/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_236/BiasAdd/ReadVariableOp$lstm_cell_236/BiasAdd/ReadVariableOp2J
#lstm_cell_236/MatMul/ReadVariableOp#lstm_cell_236/MatMul/ReadVariableOp2N
%lstm_cell_236/MatMul_1/ReadVariableOp%lstm_cell_236/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_1433737
file_prefix.
*savev2_dense_83_kernel_read_readvariableop,
(savev2_dense_83_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_249_lstm_cell_249_kernel_read_readvariableopF
Bsavev2_lstm_249_lstm_cell_249_recurrent_kernel_read_readvariableop:
6savev2_lstm_249_lstm_cell_249_bias_read_readvariableop<
8savev2_lstm_250_lstm_cell_250_kernel_read_readvariableopF
Bsavev2_lstm_250_lstm_cell_250_recurrent_kernel_read_readvariableop:
6savev2_lstm_250_lstm_cell_250_bias_read_readvariableop<
8savev2_lstm_251_lstm_cell_251_kernel_read_readvariableopF
Bsavev2_lstm_251_lstm_cell_251_recurrent_kernel_read_readvariableop:
6savev2_lstm_251_lstm_cell_251_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_83_kernel_m_read_readvariableop3
/savev2_adam_dense_83_bias_m_read_readvariableopC
?savev2_adam_lstm_249_lstm_cell_249_kernel_m_read_readvariableopM
Isavev2_adam_lstm_249_lstm_cell_249_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_249_lstm_cell_249_bias_m_read_readvariableopC
?savev2_adam_lstm_250_lstm_cell_250_kernel_m_read_readvariableopM
Isavev2_adam_lstm_250_lstm_cell_250_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_250_lstm_cell_250_bias_m_read_readvariableopC
?savev2_adam_lstm_251_lstm_cell_251_kernel_m_read_readvariableopM
Isavev2_adam_lstm_251_lstm_cell_251_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_251_lstm_cell_251_bias_m_read_readvariableop5
1savev2_adam_dense_83_kernel_v_read_readvariableop3
/savev2_adam_dense_83_bias_v_read_readvariableopC
?savev2_adam_lstm_249_lstm_cell_249_kernel_v_read_readvariableopM
Isavev2_adam_lstm_249_lstm_cell_249_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_249_lstm_cell_249_bias_v_read_readvariableopC
?savev2_adam_lstm_250_lstm_cell_250_kernel_v_read_readvariableopM
Isavev2_adam_lstm_250_lstm_cell_250_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_250_lstm_cell_250_bias_v_read_readvariableopC
?savev2_adam_lstm_251_lstm_cell_251_kernel_v_read_readvariableopM
Isavev2_adam_lstm_251_lstm_cell_251_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_251_lstm_cell_251_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_83_kernel_read_readvariableop(savev2_dense_83_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_249_lstm_cell_249_kernel_read_readvariableopBsavev2_lstm_249_lstm_cell_249_recurrent_kernel_read_readvariableop6savev2_lstm_249_lstm_cell_249_bias_read_readvariableop8savev2_lstm_250_lstm_cell_250_kernel_read_readvariableopBsavev2_lstm_250_lstm_cell_250_recurrent_kernel_read_readvariableop6savev2_lstm_250_lstm_cell_250_bias_read_readvariableop8savev2_lstm_251_lstm_cell_251_kernel_read_readvariableopBsavev2_lstm_251_lstm_cell_251_recurrent_kernel_read_readvariableop6savev2_lstm_251_lstm_cell_251_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_83_kernel_m_read_readvariableop/savev2_adam_dense_83_bias_m_read_readvariableop?savev2_adam_lstm_249_lstm_cell_249_kernel_m_read_readvariableopIsavev2_adam_lstm_249_lstm_cell_249_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_249_lstm_cell_249_bias_m_read_readvariableop?savev2_adam_lstm_250_lstm_cell_250_kernel_m_read_readvariableopIsavev2_adam_lstm_250_lstm_cell_250_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_250_lstm_cell_250_bias_m_read_readvariableop?savev2_adam_lstm_251_lstm_cell_251_kernel_m_read_readvariableopIsavev2_adam_lstm_251_lstm_cell_251_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_251_lstm_cell_251_bias_m_read_readvariableop1savev2_adam_dense_83_kernel_v_read_readvariableop/savev2_adam_dense_83_bias_v_read_readvariableop?savev2_adam_lstm_249_lstm_cell_249_kernel_v_read_readvariableopIsavev2_adam_lstm_249_lstm_cell_249_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_249_lstm_cell_249_bias_v_read_readvariableop?savev2_adam_lstm_250_lstm_cell_250_kernel_v_read_readvariableopIsavev2_adam_lstm_250_lstm_cell_250_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_250_lstm_cell_250_bias_v_read_readvariableop?savev2_adam_lstm_251_lstm_cell_251_kernel_v_read_readvariableopIsavev2_adam_lstm_251_lstm_cell_251_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_251_lstm_cell_251_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?	
?
E__inference_dense_83_layer_call_and_return_conditional_losses_1429782

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
?8
?
while_body_1433054
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_236_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_236_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_236_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_236_matmul_readvariableop_resource:2(F
4while_lstm_cell_236_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_236_biasadd_readvariableop_resource:(??*while/lstm_cell_236/BiasAdd/ReadVariableOp?)while/lstm_cell_236/MatMul/ReadVariableOp?+while/lstm_cell_236/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_236/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_236_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_236/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_236_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_236/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_236/addAddV2$while/lstm_cell_236/MatMul:product:0&while/lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_236_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_236/BiasAddBiasAddwhile/lstm_cell_236/add:z:02while/lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_236/splitSplit,while/lstm_cell_236/split/split_dim:output:0$while/lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_236/SigmoidSigmoid"while/lstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_236/Sigmoid_1Sigmoid"while/lstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mulMul!while/lstm_cell_236/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_236/ReluRelu"while/lstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mul_1Mulwhile/lstm_cell_236/Sigmoid:y:0&while/lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/add_1AddV2while/lstm_cell_236/mul:z:0while/lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_236/Sigmoid_2Sigmoid"while/lstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_236/Relu_1Reluwhile/lstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mul_2Mul!while/lstm_cell_236/Sigmoid_2:y:0(while/lstm_cell_236/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_236/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_236/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_236/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_236/BiasAdd/ReadVariableOp*^while/lstm_cell_236/MatMul/ReadVariableOp,^while/lstm_cell_236/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_236_biasadd_readvariableop_resource5while_lstm_cell_236_biasadd_readvariableop_resource_0"n
4while_lstm_cell_236_matmul_1_readvariableop_resource6while_lstm_cell_236_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_236_matmul_readvariableop_resource4while_lstm_cell_236_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_236/BiasAdd/ReadVariableOp*while/lstm_cell_236/BiasAdd/ReadVariableOp2V
)while/lstm_cell_236/MatMul/ReadVariableOp)while/lstm_cell_236/MatMul/ReadVariableOp2Z
+while/lstm_cell_236/MatMul_1/ReadVariableOp+while/lstm_cell_236/MatMul_1/ReadVariableOp: 
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
while_cond_1431821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1431821___redundant_placeholder05
1while_while_cond_1431821___redundant_placeholder15
1while_while_cond_1431821___redundant_placeholder25
1while_while_cond_1431821___redundant_placeholder3
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
?
?
while_cond_1432294
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1432294___redundant_placeholder05
1while_while_cond_1432294___redundant_placeholder15
1while_while_cond_1432294___redundant_placeholder25
1while_while_cond_1432294___redundant_placeholder3
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
?J
?
E__inference_lstm_249_layer_call_and_return_conditional_losses_1432049

inputs?
,lstm_cell_234_matmul_readvariableop_resource:	?A
.lstm_cell_234_matmul_1_readvariableop_resource:	d?<
-lstm_cell_234_biasadd_readvariableop_resource:	?
identity??$lstm_cell_234/BiasAdd/ReadVariableOp?#lstm_cell_234/MatMul/ReadVariableOp?%lstm_cell_234/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_234/MatMul/ReadVariableOpReadVariableOp,lstm_cell_234_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_234/MatMulMatMulstrided_slice_2:output:0+lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_234_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_234/MatMul_1MatMulzeros:output:0-lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_234/addAddV2lstm_cell_234/MatMul:product:0 lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_234_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_234/BiasAddBiasAddlstm_cell_234/add:z:0,lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_234/splitSplit&lstm_cell_234/split/split_dim:output:0lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_234/SigmoidSigmoidlstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_234/Sigmoid_1Sigmoidlstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_234/mulMullstm_cell_234/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_234/ReluRelulstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_234/mul_1Mullstm_cell_234/Sigmoid:y:0 lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_234/add_1AddV2lstm_cell_234/mul:z:0lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_234/Sigmoid_2Sigmoidlstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_234/Relu_1Relulstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_234/mul_2Mullstm_cell_234/Sigmoid_2:y:0"lstm_cell_234/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_234_matmul_readvariableop_resource.lstm_cell_234_matmul_1_readvariableop_resource-lstm_cell_234_biasadd_readvariableop_resource*
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
bodyR
while_body_1431965*
condR
while_cond_1431964*K
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
NoOpNoOp%^lstm_cell_234/BiasAdd/ReadVariableOp$^lstm_cell_234/MatMul/ReadVariableOp&^lstm_cell_234/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_234/BiasAdd/ReadVariableOp$lstm_cell_234/BiasAdd/ReadVariableOp2J
#lstm_cell_234/MatMul/ReadVariableOp#lstm_cell_234/MatMul/ReadVariableOp2N
%lstm_cell_234/MatMul_1/ReadVariableOp%lstm_cell_234/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
/__inference_sequential_83_layer_call_fn_1430579

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
GPU 2J 8? *S
fNRL
J__inference_sequential_83_layer_call_and_return_conditional_losses_1430378o
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
?J
?
E__inference_lstm_251_layer_call_and_return_conditional_losses_1429980

inputs>
,lstm_cell_236_matmul_readvariableop_resource:2(@
.lstm_cell_236_matmul_1_readvariableop_resource:
(;
-lstm_cell_236_biasadd_readvariableop_resource:(
identity??$lstm_cell_236/BiasAdd/ReadVariableOp?#lstm_cell_236/MatMul/ReadVariableOp?%lstm_cell_236/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_236/MatMul/ReadVariableOpReadVariableOp,lstm_cell_236_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_236/MatMulMatMulstrided_slice_2:output:0+lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_236_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_236/MatMul_1MatMulzeros:output:0-lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_236/addAddV2lstm_cell_236/MatMul:product:0 lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_236_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_236/BiasAddBiasAddlstm_cell_236/add:z:0,lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_236/splitSplit&lstm_cell_236/split/split_dim:output:0lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_236/SigmoidSigmoidlstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_236/Sigmoid_1Sigmoidlstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_236/mulMullstm_cell_236/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_236/ReluRelulstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_236/mul_1Mullstm_cell_236/Sigmoid:y:0 lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_236/add_1AddV2lstm_cell_236/mul:z:0lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_236/Sigmoid_2Sigmoidlstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_236/Relu_1Relulstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_236/mul_2Mullstm_cell_236/Sigmoid_2:y:0"lstm_cell_236/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_236_matmul_readvariableop_resource.lstm_cell_236_matmul_1_readvariableop_resource-lstm_cell_236_biasadd_readvariableop_resource*
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
bodyR
while_body_1429896*
condR
while_cond_1429895*K
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
NoOpNoOp%^lstm_cell_236/BiasAdd/ReadVariableOp$^lstm_cell_236/MatMul/ReadVariableOp&^lstm_cell_236/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_236/BiasAdd/ReadVariableOp$lstm_cell_236/BiasAdd/ReadVariableOp2J
#lstm_cell_236/MatMul/ReadVariableOp#lstm_cell_236/MatMul/ReadVariableOp2N
%lstm_cell_236/MatMul_1/ReadVariableOp%lstm_cell_236/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_1430061
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_235_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_235_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_235_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_235_matmul_readvariableop_resource:	d?G
4while_lstm_cell_235_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_235_biasadd_readvariableop_resource:	???*while/lstm_cell_235/BiasAdd/ReadVariableOp?)while/lstm_cell_235/MatMul/ReadVariableOp?+while/lstm_cell_235/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_235/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_235_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_235/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_235_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_235/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_235/addAddV2$while/lstm_cell_235/MatMul:product:0&while/lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_235_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_235/BiasAddBiasAddwhile/lstm_cell_235/add:z:02while/lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_235/splitSplit,while/lstm_cell_235/split/split_dim:output:0$while/lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_235/SigmoidSigmoid"while/lstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_235/Sigmoid_1Sigmoid"while/lstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mulMul!while/lstm_cell_235/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_235/ReluRelu"while/lstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mul_1Mulwhile/lstm_cell_235/Sigmoid:y:0&while/lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/add_1AddV2while/lstm_cell_235/mul:z:0while/lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_235/Sigmoid_2Sigmoid"while/lstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_235/Relu_1Reluwhile/lstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mul_2Mul!while/lstm_cell_235/Sigmoid_2:y:0(while/lstm_cell_235/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_235/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_235/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_235/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_235/BiasAdd/ReadVariableOp*^while/lstm_cell_235/MatMul/ReadVariableOp,^while/lstm_cell_235/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_235_biasadd_readvariableop_resource5while_lstm_cell_235_biasadd_readvariableop_resource_0"n
4while_lstm_cell_235_matmul_1_readvariableop_resource6while_lstm_cell_235_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_235_matmul_readvariableop_resource4while_lstm_cell_235_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_235/BiasAdd/ReadVariableOp*while/lstm_cell_235/BiasAdd/ReadVariableOp2V
)while/lstm_cell_235/MatMul/ReadVariableOp)while/lstm_cell_235/MatMul/ReadVariableOp2Z
+while/lstm_cell_235/MatMul_1/ReadVariableOp+while/lstm_cell_235/MatMul_1/ReadVariableOp: 
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
while_cond_1429895
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1429895___redundant_placeholder05
1while_while_cond_1429895___redundant_placeholder15
1while_while_cond_1429895___redundant_placeholder25
1while_while_cond_1429895___redundant_placeholder3
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
?
?
*__inference_dense_83_layer_call_fn_1433290

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
GPU 2J 8? *N
fIRG
E__inference_dense_83_layer_call_and_return_conditional_losses_1429782o
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
?
?
while_cond_1429379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1429379___redundant_placeholder05
1while_while_cond_1429379___redundant_placeholder15
1while_while_cond_1429379___redundant_placeholder25
1while_while_cond_1429379___redundant_placeholder3
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
?
?
while_cond_1433053
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1433053___redundant_placeholder05
1while_while_cond_1433053___redundant_placeholder15
1while_while_cond_1433053___redundant_placeholder25
1while_while_cond_1433053___redundant_placeholder3
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
while_cond_1431678
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1431678___redundant_placeholder05
1while_while_cond_1431678___redundant_placeholder15
1while_while_cond_1431678___redundant_placeholder25
1while_while_cond_1431678___redundant_placeholder3
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
?S
?
)sequential_83_lstm_249_while_body_1427897J
Fsequential_83_lstm_249_while_sequential_83_lstm_249_while_loop_counterP
Lsequential_83_lstm_249_while_sequential_83_lstm_249_while_maximum_iterations,
(sequential_83_lstm_249_while_placeholder.
*sequential_83_lstm_249_while_placeholder_1.
*sequential_83_lstm_249_while_placeholder_2.
*sequential_83_lstm_249_while_placeholder_3I
Esequential_83_lstm_249_while_sequential_83_lstm_249_strided_slice_1_0?
?sequential_83_lstm_249_while_tensorarrayv2read_tensorlistgetitem_sequential_83_lstm_249_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_83_lstm_249_while_lstm_cell_234_matmul_readvariableop_resource_0:	?`
Msequential_83_lstm_249_while_lstm_cell_234_matmul_1_readvariableop_resource_0:	d?[
Lsequential_83_lstm_249_while_lstm_cell_234_biasadd_readvariableop_resource_0:	?)
%sequential_83_lstm_249_while_identity+
'sequential_83_lstm_249_while_identity_1+
'sequential_83_lstm_249_while_identity_2+
'sequential_83_lstm_249_while_identity_3+
'sequential_83_lstm_249_while_identity_4+
'sequential_83_lstm_249_while_identity_5G
Csequential_83_lstm_249_while_sequential_83_lstm_249_strided_slice_1?
sequential_83_lstm_249_while_tensorarrayv2read_tensorlistgetitem_sequential_83_lstm_249_tensorarrayunstack_tensorlistfromtensor\
Isequential_83_lstm_249_while_lstm_cell_234_matmul_readvariableop_resource:	?^
Ksequential_83_lstm_249_while_lstm_cell_234_matmul_1_readvariableop_resource:	d?Y
Jsequential_83_lstm_249_while_lstm_cell_234_biasadd_readvariableop_resource:	???Asequential_83/lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOp?@sequential_83/lstm_249/while/lstm_cell_234/MatMul/ReadVariableOp?Bsequential_83/lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOp?
Nsequential_83/lstm_249/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_83/lstm_249/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_83_lstm_249_while_tensorarrayv2read_tensorlistgetitem_sequential_83_lstm_249_tensorarrayunstack_tensorlistfromtensor_0(sequential_83_lstm_249_while_placeholderWsequential_83/lstm_249/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_83/lstm_249/while/lstm_cell_234/MatMul/ReadVariableOpReadVariableOpKsequential_83_lstm_249_while_lstm_cell_234_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_83/lstm_249/while/lstm_cell_234/MatMulMatMulGsequential_83/lstm_249/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_83/lstm_249/while/lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_83/lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOpMsequential_83_lstm_249_while_lstm_cell_234_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_83/lstm_249/while/lstm_cell_234/MatMul_1MatMul*sequential_83_lstm_249_while_placeholder_2Jsequential_83/lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_83/lstm_249/while/lstm_cell_234/addAddV2;sequential_83/lstm_249/while/lstm_cell_234/MatMul:product:0=sequential_83/lstm_249/while/lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_83/lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOpLsequential_83_lstm_249_while_lstm_cell_234_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_83/lstm_249/while/lstm_cell_234/BiasAddBiasAdd2sequential_83/lstm_249/while/lstm_cell_234/add:z:0Isequential_83/lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_83/lstm_249/while/lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_83/lstm_249/while/lstm_cell_234/splitSplitCsequential_83/lstm_249/while/lstm_cell_234/split/split_dim:output:0;sequential_83/lstm_249/while/lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_83/lstm_249/while/lstm_cell_234/SigmoidSigmoid9sequential_83/lstm_249/while/lstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_83/lstm_249/while/lstm_cell_234/Sigmoid_1Sigmoid9sequential_83/lstm_249/while/lstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_83/lstm_249/while/lstm_cell_234/mulMul8sequential_83/lstm_249/while/lstm_cell_234/Sigmoid_1:y:0*sequential_83_lstm_249_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_83/lstm_249/while/lstm_cell_234/ReluRelu9sequential_83/lstm_249/while/lstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_83/lstm_249/while/lstm_cell_234/mul_1Mul6sequential_83/lstm_249/while/lstm_cell_234/Sigmoid:y:0=sequential_83/lstm_249/while/lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_83/lstm_249/while/lstm_cell_234/add_1AddV22sequential_83/lstm_249/while/lstm_cell_234/mul:z:04sequential_83/lstm_249/while/lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_83/lstm_249/while/lstm_cell_234/Sigmoid_2Sigmoid9sequential_83/lstm_249/while/lstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_83/lstm_249/while/lstm_cell_234/Relu_1Relu4sequential_83/lstm_249/while/lstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_83/lstm_249/while/lstm_cell_234/mul_2Mul8sequential_83/lstm_249/while/lstm_cell_234/Sigmoid_2:y:0?sequential_83/lstm_249/while/lstm_cell_234/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_83/lstm_249/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_83_lstm_249_while_placeholder_1(sequential_83_lstm_249_while_placeholder4sequential_83/lstm_249/while/lstm_cell_234/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_83/lstm_249/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_83/lstm_249/while/addAddV2(sequential_83_lstm_249_while_placeholder+sequential_83/lstm_249/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_83/lstm_249/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_83/lstm_249/while/add_1AddV2Fsequential_83_lstm_249_while_sequential_83_lstm_249_while_loop_counter-sequential_83/lstm_249/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_83/lstm_249/while/IdentityIdentity&sequential_83/lstm_249/while/add_1:z:0"^sequential_83/lstm_249/while/NoOp*
T0*
_output_shapes
: ?
'sequential_83/lstm_249/while/Identity_1IdentityLsequential_83_lstm_249_while_sequential_83_lstm_249_while_maximum_iterations"^sequential_83/lstm_249/while/NoOp*
T0*
_output_shapes
: ?
'sequential_83/lstm_249/while/Identity_2Identity$sequential_83/lstm_249/while/add:z:0"^sequential_83/lstm_249/while/NoOp*
T0*
_output_shapes
: ?
'sequential_83/lstm_249/while/Identity_3IdentityQsequential_83/lstm_249/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_83/lstm_249/while/NoOp*
T0*
_output_shapes
: ?
'sequential_83/lstm_249/while/Identity_4Identity4sequential_83/lstm_249/while/lstm_cell_234/mul_2:z:0"^sequential_83/lstm_249/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_83/lstm_249/while/Identity_5Identity4sequential_83/lstm_249/while/lstm_cell_234/add_1:z:0"^sequential_83/lstm_249/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_83/lstm_249/while/NoOpNoOpB^sequential_83/lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOpA^sequential_83/lstm_249/while/lstm_cell_234/MatMul/ReadVariableOpC^sequential_83/lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_83_lstm_249_while_identity.sequential_83/lstm_249/while/Identity:output:0"[
'sequential_83_lstm_249_while_identity_10sequential_83/lstm_249/while/Identity_1:output:0"[
'sequential_83_lstm_249_while_identity_20sequential_83/lstm_249/while/Identity_2:output:0"[
'sequential_83_lstm_249_while_identity_30sequential_83/lstm_249/while/Identity_3:output:0"[
'sequential_83_lstm_249_while_identity_40sequential_83/lstm_249/while/Identity_4:output:0"[
'sequential_83_lstm_249_while_identity_50sequential_83/lstm_249/while/Identity_5:output:0"?
Jsequential_83_lstm_249_while_lstm_cell_234_biasadd_readvariableop_resourceLsequential_83_lstm_249_while_lstm_cell_234_biasadd_readvariableop_resource_0"?
Ksequential_83_lstm_249_while_lstm_cell_234_matmul_1_readvariableop_resourceMsequential_83_lstm_249_while_lstm_cell_234_matmul_1_readvariableop_resource_0"?
Isequential_83_lstm_249_while_lstm_cell_234_matmul_readvariableop_resourceKsequential_83_lstm_249_while_lstm_cell_234_matmul_readvariableop_resource_0"?
Csequential_83_lstm_249_while_sequential_83_lstm_249_strided_slice_1Esequential_83_lstm_249_while_sequential_83_lstm_249_strided_slice_1_0"?
sequential_83_lstm_249_while_tensorarrayv2read_tensorlistgetitem_sequential_83_lstm_249_tensorarrayunstack_tensorlistfromtensor?sequential_83_lstm_249_while_tensorarrayv2read_tensorlistgetitem_sequential_83_lstm_249_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_83/lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOpAsequential_83/lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOp2?
@sequential_83/lstm_249/while/lstm_cell_234/MatMul/ReadVariableOp@sequential_83/lstm_249/while/lstm_cell_234/MatMul/ReadVariableOp2?
Bsequential_83/lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOpBsequential_83/lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_251_layer_call_and_return_conditional_losses_1433281

inputs>
,lstm_cell_236_matmul_readvariableop_resource:2(@
.lstm_cell_236_matmul_1_readvariableop_resource:
(;
-lstm_cell_236_biasadd_readvariableop_resource:(
identity??$lstm_cell_236/BiasAdd/ReadVariableOp?#lstm_cell_236/MatMul/ReadVariableOp?%lstm_cell_236/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_236/MatMul/ReadVariableOpReadVariableOp,lstm_cell_236_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_236/MatMulMatMulstrided_slice_2:output:0+lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_236_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_236/MatMul_1MatMulzeros:output:0-lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_236/addAddV2lstm_cell_236/MatMul:product:0 lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_236_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_236/BiasAddBiasAddlstm_cell_236/add:z:0,lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_236/splitSplit&lstm_cell_236/split/split_dim:output:0lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_236/SigmoidSigmoidlstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_236/Sigmoid_1Sigmoidlstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_236/mulMullstm_cell_236/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_236/ReluRelulstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_236/mul_1Mullstm_cell_236/Sigmoid:y:0 lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_236/add_1AddV2lstm_cell_236/mul:z:0lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_236/Sigmoid_2Sigmoidlstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_236/Relu_1Relulstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_236/mul_2Mullstm_cell_236/Sigmoid_2:y:0"lstm_cell_236/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_236_matmul_readvariableop_resource.lstm_cell_236_matmul_1_readvariableop_resource-lstm_cell_236_biasadd_readvariableop_resource*
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
bodyR
while_body_1433197*
condR
while_cond_1433196*K
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
NoOpNoOp%^lstm_cell_236/BiasAdd/ReadVariableOp$^lstm_cell_236/MatMul/ReadVariableOp&^lstm_cell_236/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_236/BiasAdd/ReadVariableOp$lstm_cell_236/BiasAdd/ReadVariableOp2J
#lstm_cell_236/MatMul/ReadVariableOp#lstm_cell_236/MatMul/ReadVariableOp2N
%lstm_cell_236/MatMul_1/ReadVariableOp%lstm_cell_236/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_250_layer_call_and_return_conditional_losses_1430145

inputs?
,lstm_cell_235_matmul_readvariableop_resource:	d?A
.lstm_cell_235_matmul_1_readvariableop_resource:	2?<
-lstm_cell_235_biasadd_readvariableop_resource:	?
identity??$lstm_cell_235/BiasAdd/ReadVariableOp?#lstm_cell_235/MatMul/ReadVariableOp?%lstm_cell_235/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_235/MatMul/ReadVariableOpReadVariableOp,lstm_cell_235_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_235/MatMulMatMulstrided_slice_2:output:0+lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_235_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_235/MatMul_1MatMulzeros:output:0-lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_235/addAddV2lstm_cell_235/MatMul:product:0 lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_235_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_235/BiasAddBiasAddlstm_cell_235/add:z:0,lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_235/splitSplit&lstm_cell_235/split/split_dim:output:0lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_235/SigmoidSigmoidlstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_235/Sigmoid_1Sigmoidlstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_235/mulMullstm_cell_235/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_235/ReluRelulstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_235/mul_1Mullstm_cell_235/Sigmoid:y:0 lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_235/add_1AddV2lstm_cell_235/mul:z:0lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_235/Sigmoid_2Sigmoidlstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_235/Relu_1Relulstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_235/mul_2Mullstm_cell_235/Sigmoid_2:y:0"lstm_cell_235/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_235_matmul_readvariableop_resource.lstm_cell_235_matmul_1_readvariableop_resource-lstm_cell_235_biasadd_readvariableop_resource*
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
bodyR
while_body_1430061*
condR
while_cond_1430060*K
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
NoOpNoOp%^lstm_cell_235/BiasAdd/ReadVariableOp$^lstm_cell_235/MatMul/ReadVariableOp&^lstm_cell_235/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_235/BiasAdd/ReadVariableOp$lstm_cell_235/BiasAdd/ReadVariableOp2J
#lstm_cell_235/MatMul/ReadVariableOp#lstm_cell_235/MatMul/ReadVariableOp2N
%lstm_cell_235/MatMul_1/ReadVariableOp%lstm_cell_235/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_sequential_83_layer_call_and_return_conditional_losses_1430378

inputs#
lstm_249_1430351:	?#
lstm_249_1430353:	d?
lstm_249_1430355:	?#
lstm_250_1430358:	d?#
lstm_250_1430360:	2?
lstm_250_1430362:	?"
lstm_251_1430365:2("
lstm_251_1430367:
(
lstm_251_1430369:("
dense_83_1430372:

dense_83_1430374:
identity?? dense_83/StatefulPartitionedCall? lstm_249/StatefulPartitionedCall? lstm_250/StatefulPartitionedCall? lstm_251/StatefulPartitionedCall?
 lstm_249/StatefulPartitionedCallStatefulPartitionedCallinputslstm_249_1430351lstm_249_1430353lstm_249_1430355*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_249_layer_call_and_return_conditional_losses_1430310?
 lstm_250/StatefulPartitionedCallStatefulPartitionedCall)lstm_249/StatefulPartitionedCall:output:0lstm_250_1430358lstm_250_1430360lstm_250_1430362*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_250_layer_call_and_return_conditional_losses_1430145?
 lstm_251/StatefulPartitionedCallStatefulPartitionedCall)lstm_250/StatefulPartitionedCall:output:0lstm_251_1430365lstm_251_1430367lstm_251_1430369*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_251_layer_call_and_return_conditional_losses_1429980?
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)lstm_251/StatefulPartitionedCall:output:0dense_83_1430372dense_83_1430374*
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
GPU 2J 8? *N
fIRG
E__inference_dense_83_layer_call_and_return_conditional_losses_1429782x
IdentityIdentity)dense_83/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_83/StatefulPartitionedCall!^lstm_249/StatefulPartitionedCall!^lstm_250/StatefulPartitionedCall!^lstm_251/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall2D
 lstm_249/StatefulPartitionedCall lstm_249/StatefulPartitionedCall2D
 lstm_250/StatefulPartitionedCall lstm_250/StatefulPartitionedCall2D
 lstm_251/StatefulPartitionedCall lstm_251/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_249_layer_call_and_return_conditional_losses_1429464

inputs?
,lstm_cell_234_matmul_readvariableop_resource:	?A
.lstm_cell_234_matmul_1_readvariableop_resource:	d?<
-lstm_cell_234_biasadd_readvariableop_resource:	?
identity??$lstm_cell_234/BiasAdd/ReadVariableOp?#lstm_cell_234/MatMul/ReadVariableOp?%lstm_cell_234/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_234/MatMul/ReadVariableOpReadVariableOp,lstm_cell_234_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_234/MatMulMatMulstrided_slice_2:output:0+lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_234_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_234/MatMul_1MatMulzeros:output:0-lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_234/addAddV2lstm_cell_234/MatMul:product:0 lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_234_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_234/BiasAddBiasAddlstm_cell_234/add:z:0,lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_234/splitSplit&lstm_cell_234/split/split_dim:output:0lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_234/SigmoidSigmoidlstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_234/Sigmoid_1Sigmoidlstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_234/mulMullstm_cell_234/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_234/ReluRelulstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_234/mul_1Mullstm_cell_234/Sigmoid:y:0 lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_234/add_1AddV2lstm_cell_234/mul:z:0lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_234/Sigmoid_2Sigmoidlstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_234/Relu_1Relulstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_234/mul_2Mullstm_cell_234/Sigmoid_2:y:0"lstm_cell_234/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_234_matmul_readvariableop_resource.lstm_cell_234_matmul_1_readvariableop_resource-lstm_cell_234_biasadd_readvariableop_resource*
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
bodyR
while_body_1429380*
condR
while_cond_1429379*K
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
NoOpNoOp%^lstm_cell_234/BiasAdd/ReadVariableOp$^lstm_cell_234/MatMul/ReadVariableOp&^lstm_cell_234/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_234/BiasAdd/ReadVariableOp$lstm_cell_234/BiasAdd/ReadVariableOp2J
#lstm_cell_234/MatMul/ReadVariableOp#lstm_cell_234/MatMul/ReadVariableOp2N
%lstm_cell_234/MatMul_1/ReadVariableOp%lstm_cell_234/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_251_layer_call_fn_1432676
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
GPU 2J 8? *N
fIRG
E__inference_lstm_251_layer_call_and_return_conditional_losses_1429115o
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
?8
?
E__inference_lstm_251_layer_call_and_return_conditional_losses_1429115

inputs'
lstm_cell_236_1429033:2('
lstm_cell_236_1429035:
(#
lstm_cell_236_1429037:(
identity??%lstm_cell_236/StatefulPartitionedCall?while;
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
%lstm_cell_236/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_236_1429033lstm_cell_236_1429035lstm_cell_236_1429037*
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_236_layer_call_and_return_conditional_losses_1429032n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_236_1429033lstm_cell_236_1429035lstm_cell_236_1429037*
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
bodyR
while_body_1429046*
condR
while_cond_1429045*K
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
v
NoOpNoOp&^lstm_cell_236/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_236/StatefulPartitionedCall%lstm_cell_236/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_1432581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_235_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_235_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_235_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_235_matmul_readvariableop_resource:	d?G
4while_lstm_cell_235_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_235_biasadd_readvariableop_resource:	???*while/lstm_cell_235/BiasAdd/ReadVariableOp?)while/lstm_cell_235/MatMul/ReadVariableOp?+while/lstm_cell_235/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_235/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_235_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_235/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_235_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_235/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_235/addAddV2$while/lstm_cell_235/MatMul:product:0&while/lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_235_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_235/BiasAddBiasAddwhile/lstm_cell_235/add:z:02while/lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_235/splitSplit,while/lstm_cell_235/split/split_dim:output:0$while/lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_235/SigmoidSigmoid"while/lstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_235/Sigmoid_1Sigmoid"while/lstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mulMul!while/lstm_cell_235/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_235/ReluRelu"while/lstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mul_1Mulwhile/lstm_cell_235/Sigmoid:y:0&while/lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/add_1AddV2while/lstm_cell_235/mul:z:0while/lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_235/Sigmoid_2Sigmoid"while/lstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_235/Relu_1Reluwhile/lstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mul_2Mul!while/lstm_cell_235/Sigmoid_2:y:0(while/lstm_cell_235/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_235/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_235/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_235/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_235/BiasAdd/ReadVariableOp*^while/lstm_cell_235/MatMul/ReadVariableOp,^while/lstm_cell_235/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_235_biasadd_readvariableop_resource5while_lstm_cell_235_biasadd_readvariableop_resource_0"n
4while_lstm_cell_235_matmul_1_readvariableop_resource6while_lstm_cell_235_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_235_matmul_readvariableop_resource4while_lstm_cell_235_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_235/BiasAdd/ReadVariableOp*while/lstm_cell_235/BiasAdd/ReadVariableOp2V
)while/lstm_cell_235/MatMul/ReadVariableOp)while/lstm_cell_235/MatMul/ReadVariableOp2Z
+while/lstm_cell_235/MatMul_1/ReadVariableOp+while/lstm_cell_235/MatMul_1/ReadVariableOp: 
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
?J
?
E__inference_lstm_250_layer_call_and_return_conditional_losses_1432522

inputs?
,lstm_cell_235_matmul_readvariableop_resource:	d?A
.lstm_cell_235_matmul_1_readvariableop_resource:	2?<
-lstm_cell_235_biasadd_readvariableop_resource:	?
identity??$lstm_cell_235/BiasAdd/ReadVariableOp?#lstm_cell_235/MatMul/ReadVariableOp?%lstm_cell_235/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_235/MatMul/ReadVariableOpReadVariableOp,lstm_cell_235_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_235/MatMulMatMulstrided_slice_2:output:0+lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_235_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_235/MatMul_1MatMulzeros:output:0-lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_235/addAddV2lstm_cell_235/MatMul:product:0 lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_235_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_235/BiasAddBiasAddlstm_cell_235/add:z:0,lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_235/splitSplit&lstm_cell_235/split/split_dim:output:0lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_235/SigmoidSigmoidlstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_235/Sigmoid_1Sigmoidlstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_235/mulMullstm_cell_235/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_235/ReluRelulstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_235/mul_1Mullstm_cell_235/Sigmoid:y:0 lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_235/add_1AddV2lstm_cell_235/mul:z:0lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_235/Sigmoid_2Sigmoidlstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_235/Relu_1Relulstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_235/mul_2Mullstm_cell_235/Sigmoid_2:y:0"lstm_cell_235/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_235_matmul_readvariableop_resource.lstm_cell_235_matmul_1_readvariableop_resource-lstm_cell_235_biasadd_readvariableop_resource*
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
bodyR
while_body_1432438*
condR
while_cond_1432437*K
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
NoOpNoOp%^lstm_cell_235/BiasAdd/ReadVariableOp$^lstm_cell_235/MatMul/ReadVariableOp&^lstm_cell_235/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_235/BiasAdd/ReadVariableOp$lstm_cell_235/BiasAdd/ReadVariableOp2J
#lstm_cell_235/MatMul/ReadVariableOp#lstm_cell_235/MatMul/ReadVariableOp2N
%lstm_cell_235/MatMul_1/ReadVariableOp%lstm_cell_235/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_1429380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_234_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_234_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_234_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_234_matmul_readvariableop_resource:	?G
4while_lstm_cell_234_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_234_biasadd_readvariableop_resource:	???*while/lstm_cell_234/BiasAdd/ReadVariableOp?)while/lstm_cell_234/MatMul/ReadVariableOp?+while/lstm_cell_234/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_234/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_234_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_234/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_234_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_234/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_234/addAddV2$while/lstm_cell_234/MatMul:product:0&while/lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_234_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_234/BiasAddBiasAddwhile/lstm_cell_234/add:z:02while/lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_234/splitSplit,while/lstm_cell_234/split/split_dim:output:0$while/lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_234/SigmoidSigmoid"while/lstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_234/Sigmoid_1Sigmoid"while/lstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mulMul!while/lstm_cell_234/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_234/ReluRelu"while/lstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mul_1Mulwhile/lstm_cell_234/Sigmoid:y:0&while/lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/add_1AddV2while/lstm_cell_234/mul:z:0while/lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_234/Sigmoid_2Sigmoid"while/lstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_234/Relu_1Reluwhile/lstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mul_2Mul!while/lstm_cell_234/Sigmoid_2:y:0(while/lstm_cell_234/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_234/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_234/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_234/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_234/BiasAdd/ReadVariableOp*^while/lstm_cell_234/MatMul/ReadVariableOp,^while/lstm_cell_234/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_234_biasadd_readvariableop_resource5while_lstm_cell_234_biasadd_readvariableop_resource_0"n
4while_lstm_cell_234_matmul_1_readvariableop_resource6while_lstm_cell_234_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_234_matmul_readvariableop_resource4while_lstm_cell_234_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_234/BiasAdd/ReadVariableOp*while/lstm_cell_234/BiasAdd/ReadVariableOp2V
)while/lstm_cell_234/MatMul/ReadVariableOp)while/lstm_cell_234/MatMul/ReadVariableOp2Z
+while/lstm_cell_234/MatMul_1/ReadVariableOp+while/lstm_cell_234/MatMul_1/ReadVariableOp: 
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
?8
?
while_body_1432295
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_235_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_235_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_235_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_235_matmul_readvariableop_resource:	d?G
4while_lstm_cell_235_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_235_biasadd_readvariableop_resource:	???*while/lstm_cell_235/BiasAdd/ReadVariableOp?)while/lstm_cell_235/MatMul/ReadVariableOp?+while/lstm_cell_235/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_235/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_235_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_235/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_235_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_235/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_235/addAddV2$while/lstm_cell_235/MatMul:product:0&while/lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_235_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_235/BiasAddBiasAddwhile/lstm_cell_235/add:z:02while/lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_235/splitSplit,while/lstm_cell_235/split/split_dim:output:0$while/lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_235/SigmoidSigmoid"while/lstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_235/Sigmoid_1Sigmoid"while/lstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mulMul!while/lstm_cell_235/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_235/ReluRelu"while/lstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mul_1Mulwhile/lstm_cell_235/Sigmoid:y:0&while/lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/add_1AddV2while/lstm_cell_235/mul:z:0while/lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_235/Sigmoid_2Sigmoid"while/lstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_235/Relu_1Reluwhile/lstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mul_2Mul!while/lstm_cell_235/Sigmoid_2:y:0(while/lstm_cell_235/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_235/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_235/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_235/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_235/BiasAdd/ReadVariableOp*^while/lstm_cell_235/MatMul/ReadVariableOp,^while/lstm_cell_235/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_235_biasadd_readvariableop_resource5while_lstm_cell_235_biasadd_readvariableop_resource_0"n
4while_lstm_cell_235_matmul_1_readvariableop_resource6while_lstm_cell_235_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_235_matmul_readvariableop_resource4while_lstm_cell_235_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_235/BiasAdd/ReadVariableOp*while/lstm_cell_235/BiasAdd/ReadVariableOp2V
)while/lstm_cell_235/MatMul/ReadVariableOp)while/lstm_cell_235/MatMul/ReadVariableOp2Z
+while/lstm_cell_235/MatMul_1/ReadVariableOp+while/lstm_cell_235/MatMul_1/ReadVariableOp: 
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
J__inference_lstm_cell_236_layer_call_and_return_conditional_losses_1433594

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
??
?
J__inference_sequential_83_layer_call_and_return_conditional_losses_1431433

inputsH
5lstm_249_lstm_cell_234_matmul_readvariableop_resource:	?J
7lstm_249_lstm_cell_234_matmul_1_readvariableop_resource:	d?E
6lstm_249_lstm_cell_234_biasadd_readvariableop_resource:	?H
5lstm_250_lstm_cell_235_matmul_readvariableop_resource:	d?J
7lstm_250_lstm_cell_235_matmul_1_readvariableop_resource:	2?E
6lstm_250_lstm_cell_235_biasadd_readvariableop_resource:	?G
5lstm_251_lstm_cell_236_matmul_readvariableop_resource:2(I
7lstm_251_lstm_cell_236_matmul_1_readvariableop_resource:
(D
6lstm_251_lstm_cell_236_biasadd_readvariableop_resource:(9
'dense_83_matmul_readvariableop_resource:
6
(dense_83_biasadd_readvariableop_resource:
identity??dense_83/BiasAdd/ReadVariableOp?dense_83/MatMul/ReadVariableOp?-lstm_249/lstm_cell_234/BiasAdd/ReadVariableOp?,lstm_249/lstm_cell_234/MatMul/ReadVariableOp?.lstm_249/lstm_cell_234/MatMul_1/ReadVariableOp?lstm_249/while?-lstm_250/lstm_cell_235/BiasAdd/ReadVariableOp?,lstm_250/lstm_cell_235/MatMul/ReadVariableOp?.lstm_250/lstm_cell_235/MatMul_1/ReadVariableOp?lstm_250/while?-lstm_251/lstm_cell_236/BiasAdd/ReadVariableOp?,lstm_251/lstm_cell_236/MatMul/ReadVariableOp?.lstm_251/lstm_cell_236/MatMul_1/ReadVariableOp?lstm_251/whileD
lstm_249/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_249/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_249/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_249/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_249/strided_sliceStridedSlicelstm_249/Shape:output:0%lstm_249/strided_slice/stack:output:0'lstm_249/strided_slice/stack_1:output:0'lstm_249/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_249/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_249/zeros/packedPacklstm_249/strided_slice:output:0 lstm_249/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_249/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_249/zerosFilllstm_249/zeros/packed:output:0lstm_249/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_249/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_249/zeros_1/packedPacklstm_249/strided_slice:output:0"lstm_249/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_249/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_249/zeros_1Fill lstm_249/zeros_1/packed:output:0lstm_249/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_249/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_249/transpose	Transposeinputs lstm_249/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_249/Shape_1Shapelstm_249/transpose:y:0*
T0*
_output_shapes
:h
lstm_249/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_249/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_249/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_249/strided_slice_1StridedSlicelstm_249/Shape_1:output:0'lstm_249/strided_slice_1/stack:output:0)lstm_249/strided_slice_1/stack_1:output:0)lstm_249/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_249/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_249/TensorArrayV2TensorListReserve-lstm_249/TensorArrayV2/element_shape:output:0!lstm_249/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_249/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_249/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_249/transpose:y:0Glstm_249/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_249/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_249/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_249/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_249/strided_slice_2StridedSlicelstm_249/transpose:y:0'lstm_249/strided_slice_2/stack:output:0)lstm_249/strided_slice_2/stack_1:output:0)lstm_249/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_249/lstm_cell_234/MatMul/ReadVariableOpReadVariableOp5lstm_249_lstm_cell_234_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_249/lstm_cell_234/MatMulMatMul!lstm_249/strided_slice_2:output:04lstm_249/lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_249/lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOp7lstm_249_lstm_cell_234_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_249/lstm_cell_234/MatMul_1MatMullstm_249/zeros:output:06lstm_249/lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_249/lstm_cell_234/addAddV2'lstm_249/lstm_cell_234/MatMul:product:0)lstm_249/lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_249/lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOp6lstm_249_lstm_cell_234_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_249/lstm_cell_234/BiasAddBiasAddlstm_249/lstm_cell_234/add:z:05lstm_249/lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_249/lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_249/lstm_cell_234/splitSplit/lstm_249/lstm_cell_234/split/split_dim:output:0'lstm_249/lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_249/lstm_cell_234/SigmoidSigmoid%lstm_249/lstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_249/lstm_cell_234/Sigmoid_1Sigmoid%lstm_249/lstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_249/lstm_cell_234/mulMul$lstm_249/lstm_cell_234/Sigmoid_1:y:0lstm_249/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_249/lstm_cell_234/ReluRelu%lstm_249/lstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_249/lstm_cell_234/mul_1Mul"lstm_249/lstm_cell_234/Sigmoid:y:0)lstm_249/lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_249/lstm_cell_234/add_1AddV2lstm_249/lstm_cell_234/mul:z:0 lstm_249/lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_249/lstm_cell_234/Sigmoid_2Sigmoid%lstm_249/lstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_249/lstm_cell_234/Relu_1Relu lstm_249/lstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_249/lstm_cell_234/mul_2Mul$lstm_249/lstm_cell_234/Sigmoid_2:y:0+lstm_249/lstm_cell_234/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_249/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_249/TensorArrayV2_1TensorListReserve/lstm_249/TensorArrayV2_1/element_shape:output:0!lstm_249/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_249/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_249/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_249/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_249/whileWhile$lstm_249/while/loop_counter:output:0*lstm_249/while/maximum_iterations:output:0lstm_249/time:output:0!lstm_249/TensorArrayV2_1:handle:0lstm_249/zeros:output:0lstm_249/zeros_1:output:0!lstm_249/strided_slice_1:output:0@lstm_249/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_249_lstm_cell_234_matmul_readvariableop_resource7lstm_249_lstm_cell_234_matmul_1_readvariableop_resource6lstm_249_lstm_cell_234_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_249_while_body_1431065*'
condR
lstm_249_while_cond_1431064*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_249/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_249/TensorArrayV2Stack/TensorListStackTensorListStacklstm_249/while:output:3Blstm_249/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_249/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_249/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_249/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_249/strided_slice_3StridedSlice4lstm_249/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_249/strided_slice_3/stack:output:0)lstm_249/strided_slice_3/stack_1:output:0)lstm_249/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_249/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_249/transpose_1	Transpose4lstm_249/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_249/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_249/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_250/ShapeShapelstm_249/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_250/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_250/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_250/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_250/strided_sliceStridedSlicelstm_250/Shape:output:0%lstm_250/strided_slice/stack:output:0'lstm_250/strided_slice/stack_1:output:0'lstm_250/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_250/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_250/zeros/packedPacklstm_250/strided_slice:output:0 lstm_250/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_250/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_250/zerosFilllstm_250/zeros/packed:output:0lstm_250/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_250/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_250/zeros_1/packedPacklstm_250/strided_slice:output:0"lstm_250/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_250/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_250/zeros_1Fill lstm_250/zeros_1/packed:output:0lstm_250/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_250/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_250/transpose	Transposelstm_249/transpose_1:y:0 lstm_250/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_250/Shape_1Shapelstm_250/transpose:y:0*
T0*
_output_shapes
:h
lstm_250/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_250/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_250/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_250/strided_slice_1StridedSlicelstm_250/Shape_1:output:0'lstm_250/strided_slice_1/stack:output:0)lstm_250/strided_slice_1/stack_1:output:0)lstm_250/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_250/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_250/TensorArrayV2TensorListReserve-lstm_250/TensorArrayV2/element_shape:output:0!lstm_250/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_250/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_250/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_250/transpose:y:0Glstm_250/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_250/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_250/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_250/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_250/strided_slice_2StridedSlicelstm_250/transpose:y:0'lstm_250/strided_slice_2/stack:output:0)lstm_250/strided_slice_2/stack_1:output:0)lstm_250/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_250/lstm_cell_235/MatMul/ReadVariableOpReadVariableOp5lstm_250_lstm_cell_235_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_250/lstm_cell_235/MatMulMatMul!lstm_250/strided_slice_2:output:04lstm_250/lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_250/lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOp7lstm_250_lstm_cell_235_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_250/lstm_cell_235/MatMul_1MatMullstm_250/zeros:output:06lstm_250/lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_250/lstm_cell_235/addAddV2'lstm_250/lstm_cell_235/MatMul:product:0)lstm_250/lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_250/lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOp6lstm_250_lstm_cell_235_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_250/lstm_cell_235/BiasAddBiasAddlstm_250/lstm_cell_235/add:z:05lstm_250/lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_250/lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_250/lstm_cell_235/splitSplit/lstm_250/lstm_cell_235/split/split_dim:output:0'lstm_250/lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_250/lstm_cell_235/SigmoidSigmoid%lstm_250/lstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_250/lstm_cell_235/Sigmoid_1Sigmoid%lstm_250/lstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_250/lstm_cell_235/mulMul$lstm_250/lstm_cell_235/Sigmoid_1:y:0lstm_250/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_250/lstm_cell_235/ReluRelu%lstm_250/lstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_250/lstm_cell_235/mul_1Mul"lstm_250/lstm_cell_235/Sigmoid:y:0)lstm_250/lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_250/lstm_cell_235/add_1AddV2lstm_250/lstm_cell_235/mul:z:0 lstm_250/lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_250/lstm_cell_235/Sigmoid_2Sigmoid%lstm_250/lstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_250/lstm_cell_235/Relu_1Relu lstm_250/lstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_250/lstm_cell_235/mul_2Mul$lstm_250/lstm_cell_235/Sigmoid_2:y:0+lstm_250/lstm_cell_235/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_250/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_250/TensorArrayV2_1TensorListReserve/lstm_250/TensorArrayV2_1/element_shape:output:0!lstm_250/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_250/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_250/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_250/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_250/whileWhile$lstm_250/while/loop_counter:output:0*lstm_250/while/maximum_iterations:output:0lstm_250/time:output:0!lstm_250/TensorArrayV2_1:handle:0lstm_250/zeros:output:0lstm_250/zeros_1:output:0!lstm_250/strided_slice_1:output:0@lstm_250/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_250_lstm_cell_235_matmul_readvariableop_resource7lstm_250_lstm_cell_235_matmul_1_readvariableop_resource6lstm_250_lstm_cell_235_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_250_while_body_1431204*'
condR
lstm_250_while_cond_1431203*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_250/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_250/TensorArrayV2Stack/TensorListStackTensorListStacklstm_250/while:output:3Blstm_250/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_250/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_250/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_250/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_250/strided_slice_3StridedSlice4lstm_250/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_250/strided_slice_3/stack:output:0)lstm_250/strided_slice_3/stack_1:output:0)lstm_250/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_250/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_250/transpose_1	Transpose4lstm_250/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_250/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_250/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_251/ShapeShapelstm_250/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_251/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_251/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_251/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_251/strided_sliceStridedSlicelstm_251/Shape:output:0%lstm_251/strided_slice/stack:output:0'lstm_251/strided_slice/stack_1:output:0'lstm_251/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_251/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_251/zeros/packedPacklstm_251/strided_slice:output:0 lstm_251/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_251/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_251/zerosFilllstm_251/zeros/packed:output:0lstm_251/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_251/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_251/zeros_1/packedPacklstm_251/strided_slice:output:0"lstm_251/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_251/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_251/zeros_1Fill lstm_251/zeros_1/packed:output:0lstm_251/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_251/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_251/transpose	Transposelstm_250/transpose_1:y:0 lstm_251/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_251/Shape_1Shapelstm_251/transpose:y:0*
T0*
_output_shapes
:h
lstm_251/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_251/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_251/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_251/strided_slice_1StridedSlicelstm_251/Shape_1:output:0'lstm_251/strided_slice_1/stack:output:0)lstm_251/strided_slice_1/stack_1:output:0)lstm_251/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_251/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_251/TensorArrayV2TensorListReserve-lstm_251/TensorArrayV2/element_shape:output:0!lstm_251/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_251/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_251/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_251/transpose:y:0Glstm_251/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_251/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_251/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_251/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_251/strided_slice_2StridedSlicelstm_251/transpose:y:0'lstm_251/strided_slice_2/stack:output:0)lstm_251/strided_slice_2/stack_1:output:0)lstm_251/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_251/lstm_cell_236/MatMul/ReadVariableOpReadVariableOp5lstm_251_lstm_cell_236_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_251/lstm_cell_236/MatMulMatMul!lstm_251/strided_slice_2:output:04lstm_251/lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_251/lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOp7lstm_251_lstm_cell_236_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_251/lstm_cell_236/MatMul_1MatMullstm_251/zeros:output:06lstm_251/lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_251/lstm_cell_236/addAddV2'lstm_251/lstm_cell_236/MatMul:product:0)lstm_251/lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_251/lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOp6lstm_251_lstm_cell_236_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_251/lstm_cell_236/BiasAddBiasAddlstm_251/lstm_cell_236/add:z:05lstm_251/lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_251/lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_251/lstm_cell_236/splitSplit/lstm_251/lstm_cell_236/split/split_dim:output:0'lstm_251/lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_251/lstm_cell_236/SigmoidSigmoid%lstm_251/lstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_251/lstm_cell_236/Sigmoid_1Sigmoid%lstm_251/lstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_251/lstm_cell_236/mulMul$lstm_251/lstm_cell_236/Sigmoid_1:y:0lstm_251/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_251/lstm_cell_236/ReluRelu%lstm_251/lstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_251/lstm_cell_236/mul_1Mul"lstm_251/lstm_cell_236/Sigmoid:y:0)lstm_251/lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_251/lstm_cell_236/add_1AddV2lstm_251/lstm_cell_236/mul:z:0 lstm_251/lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_251/lstm_cell_236/Sigmoid_2Sigmoid%lstm_251/lstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_251/lstm_cell_236/Relu_1Relu lstm_251/lstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_251/lstm_cell_236/mul_2Mul$lstm_251/lstm_cell_236/Sigmoid_2:y:0+lstm_251/lstm_cell_236/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_251/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_251/TensorArrayV2_1TensorListReserve/lstm_251/TensorArrayV2_1/element_shape:output:0!lstm_251/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_251/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_251/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_251/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_251/whileWhile$lstm_251/while/loop_counter:output:0*lstm_251/while/maximum_iterations:output:0lstm_251/time:output:0!lstm_251/TensorArrayV2_1:handle:0lstm_251/zeros:output:0lstm_251/zeros_1:output:0!lstm_251/strided_slice_1:output:0@lstm_251/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_251_lstm_cell_236_matmul_readvariableop_resource7lstm_251_lstm_cell_236_matmul_1_readvariableop_resource6lstm_251_lstm_cell_236_biasadd_readvariableop_resource*
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
_stateful_parallelism( *'
bodyR
lstm_251_while_body_1431343*'
condR
lstm_251_while_cond_1431342*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_251/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_251/TensorArrayV2Stack/TensorListStackTensorListStacklstm_251/while:output:3Blstm_251/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_251/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_251/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_251/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_251/strided_slice_3StridedSlice4lstm_251/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_251/strided_slice_3/stack:output:0)lstm_251/strided_slice_3/stack_1:output:0)lstm_251/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_251/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_251/transpose_1	Transpose4lstm_251/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_251/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_251/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_83/MatMul/ReadVariableOpReadVariableOp'dense_83_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_83/MatMulMatMul!lstm_251/strided_slice_3:output:0&dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_83/BiasAdd/ReadVariableOpReadVariableOp(dense_83_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_83/BiasAddBiasAdddense_83/MatMul:product:0'dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_83/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_83/BiasAdd/ReadVariableOp^dense_83/MatMul/ReadVariableOp.^lstm_249/lstm_cell_234/BiasAdd/ReadVariableOp-^lstm_249/lstm_cell_234/MatMul/ReadVariableOp/^lstm_249/lstm_cell_234/MatMul_1/ReadVariableOp^lstm_249/while.^lstm_250/lstm_cell_235/BiasAdd/ReadVariableOp-^lstm_250/lstm_cell_235/MatMul/ReadVariableOp/^lstm_250/lstm_cell_235/MatMul_1/ReadVariableOp^lstm_250/while.^lstm_251/lstm_cell_236/BiasAdd/ReadVariableOp-^lstm_251/lstm_cell_236/MatMul/ReadVariableOp/^lstm_251/lstm_cell_236/MatMul_1/ReadVariableOp^lstm_251/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_83/BiasAdd/ReadVariableOpdense_83/BiasAdd/ReadVariableOp2@
dense_83/MatMul/ReadVariableOpdense_83/MatMul/ReadVariableOp2^
-lstm_249/lstm_cell_234/BiasAdd/ReadVariableOp-lstm_249/lstm_cell_234/BiasAdd/ReadVariableOp2\
,lstm_249/lstm_cell_234/MatMul/ReadVariableOp,lstm_249/lstm_cell_234/MatMul/ReadVariableOp2`
.lstm_249/lstm_cell_234/MatMul_1/ReadVariableOp.lstm_249/lstm_cell_234/MatMul_1/ReadVariableOp2 
lstm_249/whilelstm_249/while2^
-lstm_250/lstm_cell_235/BiasAdd/ReadVariableOp-lstm_250/lstm_cell_235/BiasAdd/ReadVariableOp2\
,lstm_250/lstm_cell_235/MatMul/ReadVariableOp,lstm_250/lstm_cell_235/MatMul/ReadVariableOp2`
.lstm_250/lstm_cell_235/MatMul_1/ReadVariableOp.lstm_250/lstm_cell_235/MatMul_1/ReadVariableOp2 
lstm_250/whilelstm_250/while2^
-lstm_251/lstm_cell_236/BiasAdd/ReadVariableOp-lstm_251/lstm_cell_236/BiasAdd/ReadVariableOp2\
,lstm_251/lstm_cell_236/MatMul/ReadVariableOp,lstm_251/lstm_cell_236/MatMul/ReadVariableOp2`
.lstm_251/lstm_cell_236/MatMul_1/ReadVariableOp.lstm_251/lstm_cell_236/MatMul_1/ReadVariableOp2 
lstm_251/whilelstm_251/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1432910
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1432910___redundant_placeholder05
1while_while_cond_1432910___redundant_placeholder15
1while_while_cond_1432910___redundant_placeholder25
1while_while_cond_1432910___redundant_placeholder3
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
?

?
/__inference_sequential_83_layer_call_fn_1430430
lstm_249_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_249_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? *S
fNRL
J__inference_sequential_83_layer_call_and_return_conditional_losses_1430378o
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
_user_specified_namelstm_249_input
?
?
J__inference_lstm_cell_236_layer_call_and_return_conditional_losses_1429178

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
?
*__inference_lstm_249_layer_call_fn_1431444
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
GPU 2J 8? *N
fIRG
E__inference_lstm_249_layer_call_and_return_conditional_losses_1428415|
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
?C
?

lstm_250_while_body_1431204.
*lstm_250_while_lstm_250_while_loop_counter4
0lstm_250_while_lstm_250_while_maximum_iterations
lstm_250_while_placeholder 
lstm_250_while_placeholder_1 
lstm_250_while_placeholder_2 
lstm_250_while_placeholder_3-
)lstm_250_while_lstm_250_strided_slice_1_0i
elstm_250_while_tensorarrayv2read_tensorlistgetitem_lstm_250_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_250_while_lstm_cell_235_matmul_readvariableop_resource_0:	d?R
?lstm_250_while_lstm_cell_235_matmul_1_readvariableop_resource_0:	2?M
>lstm_250_while_lstm_cell_235_biasadd_readvariableop_resource_0:	?
lstm_250_while_identity
lstm_250_while_identity_1
lstm_250_while_identity_2
lstm_250_while_identity_3
lstm_250_while_identity_4
lstm_250_while_identity_5+
'lstm_250_while_lstm_250_strided_slice_1g
clstm_250_while_tensorarrayv2read_tensorlistgetitem_lstm_250_tensorarrayunstack_tensorlistfromtensorN
;lstm_250_while_lstm_cell_235_matmul_readvariableop_resource:	d?P
=lstm_250_while_lstm_cell_235_matmul_1_readvariableop_resource:	2?K
<lstm_250_while_lstm_cell_235_biasadd_readvariableop_resource:	???3lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOp?2lstm_250/while/lstm_cell_235/MatMul/ReadVariableOp?4lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOp?
@lstm_250/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_250/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_250_while_tensorarrayv2read_tensorlistgetitem_lstm_250_tensorarrayunstack_tensorlistfromtensor_0lstm_250_while_placeholderIlstm_250/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_250/while/lstm_cell_235/MatMul/ReadVariableOpReadVariableOp=lstm_250_while_lstm_cell_235_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_250/while/lstm_cell_235/MatMulMatMul9lstm_250/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_250/while/lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOp?lstm_250_while_lstm_cell_235_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_250/while/lstm_cell_235/MatMul_1MatMullstm_250_while_placeholder_2<lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_250/while/lstm_cell_235/addAddV2-lstm_250/while/lstm_cell_235/MatMul:product:0/lstm_250/while/lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOp>lstm_250_while_lstm_cell_235_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_250/while/lstm_cell_235/BiasAddBiasAdd$lstm_250/while/lstm_cell_235/add:z:0;lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_250/while/lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_250/while/lstm_cell_235/splitSplit5lstm_250/while/lstm_cell_235/split/split_dim:output:0-lstm_250/while/lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_250/while/lstm_cell_235/SigmoidSigmoid+lstm_250/while/lstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_250/while/lstm_cell_235/Sigmoid_1Sigmoid+lstm_250/while/lstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_250/while/lstm_cell_235/mulMul*lstm_250/while/lstm_cell_235/Sigmoid_1:y:0lstm_250_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_250/while/lstm_cell_235/ReluRelu+lstm_250/while/lstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_250/while/lstm_cell_235/mul_1Mul(lstm_250/while/lstm_cell_235/Sigmoid:y:0/lstm_250/while/lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_250/while/lstm_cell_235/add_1AddV2$lstm_250/while/lstm_cell_235/mul:z:0&lstm_250/while/lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_250/while/lstm_cell_235/Sigmoid_2Sigmoid+lstm_250/while/lstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_250/while/lstm_cell_235/Relu_1Relu&lstm_250/while/lstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_250/while/lstm_cell_235/mul_2Mul*lstm_250/while/lstm_cell_235/Sigmoid_2:y:01lstm_250/while/lstm_cell_235/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_250/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_250_while_placeholder_1lstm_250_while_placeholder&lstm_250/while/lstm_cell_235/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_250/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_250/while/addAddV2lstm_250_while_placeholderlstm_250/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_250/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_250/while/add_1AddV2*lstm_250_while_lstm_250_while_loop_counterlstm_250/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_250/while/IdentityIdentitylstm_250/while/add_1:z:0^lstm_250/while/NoOp*
T0*
_output_shapes
: ?
lstm_250/while/Identity_1Identity0lstm_250_while_lstm_250_while_maximum_iterations^lstm_250/while/NoOp*
T0*
_output_shapes
: t
lstm_250/while/Identity_2Identitylstm_250/while/add:z:0^lstm_250/while/NoOp*
T0*
_output_shapes
: ?
lstm_250/while/Identity_3IdentityClstm_250/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_250/while/NoOp*
T0*
_output_shapes
: ?
lstm_250/while/Identity_4Identity&lstm_250/while/lstm_cell_235/mul_2:z:0^lstm_250/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_250/while/Identity_5Identity&lstm_250/while/lstm_cell_235/add_1:z:0^lstm_250/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_250/while/NoOpNoOp4^lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOp3^lstm_250/while/lstm_cell_235/MatMul/ReadVariableOp5^lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_250_while_identity lstm_250/while/Identity:output:0"?
lstm_250_while_identity_1"lstm_250/while/Identity_1:output:0"?
lstm_250_while_identity_2"lstm_250/while/Identity_2:output:0"?
lstm_250_while_identity_3"lstm_250/while/Identity_3:output:0"?
lstm_250_while_identity_4"lstm_250/while/Identity_4:output:0"?
lstm_250_while_identity_5"lstm_250/while/Identity_5:output:0"T
'lstm_250_while_lstm_250_strided_slice_1)lstm_250_while_lstm_250_strided_slice_1_0"~
<lstm_250_while_lstm_cell_235_biasadd_readvariableop_resource>lstm_250_while_lstm_cell_235_biasadd_readvariableop_resource_0"?
=lstm_250_while_lstm_cell_235_matmul_1_readvariableop_resource?lstm_250_while_lstm_cell_235_matmul_1_readvariableop_resource_0"|
;lstm_250_while_lstm_cell_235_matmul_readvariableop_resource=lstm_250_while_lstm_cell_235_matmul_readvariableop_resource_0"?
clstm_250_while_tensorarrayv2read_tensorlistgetitem_lstm_250_tensorarrayunstack_tensorlistfromtensorelstm_250_while_tensorarrayv2read_tensorlistgetitem_lstm_250_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOp3lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOp2h
2lstm_250/while/lstm_cell_235/MatMul/ReadVariableOp2lstm_250/while/lstm_cell_235/MatMul/ReadVariableOp2l
4lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOp4lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOp: 
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
?K
?
E__inference_lstm_250_layer_call_and_return_conditional_losses_1432379
inputs_0?
,lstm_cell_235_matmul_readvariableop_resource:	d?A
.lstm_cell_235_matmul_1_readvariableop_resource:	2?<
-lstm_cell_235_biasadd_readvariableop_resource:	?
identity??$lstm_cell_235/BiasAdd/ReadVariableOp?#lstm_cell_235/MatMul/ReadVariableOp?%lstm_cell_235/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_235/MatMul/ReadVariableOpReadVariableOp,lstm_cell_235_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_235/MatMulMatMulstrided_slice_2:output:0+lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_235_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_235/MatMul_1MatMulzeros:output:0-lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_235/addAddV2lstm_cell_235/MatMul:product:0 lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_235_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_235/BiasAddBiasAddlstm_cell_235/add:z:0,lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_235/splitSplit&lstm_cell_235/split/split_dim:output:0lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_235/SigmoidSigmoidlstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_235/Sigmoid_1Sigmoidlstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_235/mulMullstm_cell_235/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_235/ReluRelulstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_235/mul_1Mullstm_cell_235/Sigmoid:y:0 lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_235/add_1AddV2lstm_cell_235/mul:z:0lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_235/Sigmoid_2Sigmoidlstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_235/Relu_1Relulstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_235/mul_2Mullstm_cell_235/Sigmoid_2:y:0"lstm_cell_235/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_235_matmul_readvariableop_resource.lstm_cell_235_matmul_1_readvariableop_resource-lstm_cell_235_biasadd_readvariableop_resource*
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
bodyR
while_body_1432295*
condR
while_cond_1432294*K
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
NoOpNoOp%^lstm_cell_235/BiasAdd/ReadVariableOp$^lstm_cell_235/MatMul/ReadVariableOp&^lstm_cell_235/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_235/BiasAdd/ReadVariableOp$lstm_cell_235/BiasAdd/ReadVariableOp2J
#lstm_cell_235/MatMul/ReadVariableOp#lstm_cell_235/MatMul/ReadVariableOp2N
%lstm_cell_235/MatMul_1/ReadVariableOp%lstm_cell_235/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_1428536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1428536___redundant_placeholder05
1while_while_cond_1428536___redundant_placeholder15
1while_while_cond_1428536___redundant_placeholder25
1while_while_cond_1428536___redundant_placeholder3
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
?
?
/__inference_lstm_cell_236_layer_call_fn_1433513

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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_236_layer_call_and_return_conditional_losses_1429032o
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
?8
?
while_body_1431536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_234_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_234_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_234_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_234_matmul_readvariableop_resource:	?G
4while_lstm_cell_234_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_234_biasadd_readvariableop_resource:	???*while/lstm_cell_234/BiasAdd/ReadVariableOp?)while/lstm_cell_234/MatMul/ReadVariableOp?+while/lstm_cell_234/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_234/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_234_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_234/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_234_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_234/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_234/addAddV2$while/lstm_cell_234/MatMul:product:0&while/lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_234_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_234/BiasAddBiasAddwhile/lstm_cell_234/add:z:02while/lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_234/splitSplit,while/lstm_cell_234/split/split_dim:output:0$while/lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_234/SigmoidSigmoid"while/lstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_234/Sigmoid_1Sigmoid"while/lstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mulMul!while/lstm_cell_234/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_234/ReluRelu"while/lstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mul_1Mulwhile/lstm_cell_234/Sigmoid:y:0&while/lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/add_1AddV2while/lstm_cell_234/mul:z:0while/lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_234/Sigmoid_2Sigmoid"while/lstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_234/Relu_1Reluwhile/lstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mul_2Mul!while/lstm_cell_234/Sigmoid_2:y:0(while/lstm_cell_234/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_234/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_234/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_234/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_234/BiasAdd/ReadVariableOp*^while/lstm_cell_234/MatMul/ReadVariableOp,^while/lstm_cell_234/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_234_biasadd_readvariableop_resource5while_lstm_cell_234_biasadd_readvariableop_resource_0"n
4while_lstm_cell_234_matmul_1_readvariableop_resource6while_lstm_cell_234_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_234_matmul_readvariableop_resource4while_lstm_cell_234_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_234/BiasAdd/ReadVariableOp*while/lstm_cell_234/BiasAdd/ReadVariableOp2V
)while/lstm_cell_234/MatMul/ReadVariableOp)while/lstm_cell_234/MatMul/ReadVariableOp2Z
+while/lstm_cell_234/MatMul_1/ReadVariableOp+while/lstm_cell_234/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_251_layer_call_and_return_conditional_losses_1429764

inputs>
,lstm_cell_236_matmul_readvariableop_resource:2(@
.lstm_cell_236_matmul_1_readvariableop_resource:
(;
-lstm_cell_236_biasadd_readvariableop_resource:(
identity??$lstm_cell_236/BiasAdd/ReadVariableOp?#lstm_cell_236/MatMul/ReadVariableOp?%lstm_cell_236/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_236/MatMul/ReadVariableOpReadVariableOp,lstm_cell_236_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_236/MatMulMatMulstrided_slice_2:output:0+lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_236_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_236/MatMul_1MatMulzeros:output:0-lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_236/addAddV2lstm_cell_236/MatMul:product:0 lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_236_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_236/BiasAddBiasAddlstm_cell_236/add:z:0,lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_236/splitSplit&lstm_cell_236/split/split_dim:output:0lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_236/SigmoidSigmoidlstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_236/Sigmoid_1Sigmoidlstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_236/mulMullstm_cell_236/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_236/ReluRelulstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_236/mul_1Mullstm_cell_236/Sigmoid:y:0 lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_236/add_1AddV2lstm_cell_236/mul:z:0lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_236/Sigmoid_2Sigmoidlstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_236/Relu_1Relulstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_236/mul_2Mullstm_cell_236/Sigmoid_2:y:0"lstm_cell_236/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_236_matmul_readvariableop_resource.lstm_cell_236_matmul_1_readvariableop_resource-lstm_cell_236_biasadd_readvariableop_resource*
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
bodyR
while_body_1429680*
condR
while_cond_1429679*K
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
NoOpNoOp%^lstm_cell_236/BiasAdd/ReadVariableOp$^lstm_cell_236/MatMul/ReadVariableOp&^lstm_cell_236/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_236/BiasAdd/ReadVariableOp$lstm_cell_236/BiasAdd/ReadVariableOp2J
#lstm_cell_236/MatMul/ReadVariableOp#lstm_cell_236/MatMul/ReadVariableOp2N
%lstm_cell_236/MatMul_1/ReadVariableOp%lstm_cell_236/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_1429896
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_236_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_236_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_236_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_236_matmul_readvariableop_resource:2(F
4while_lstm_cell_236_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_236_biasadd_readvariableop_resource:(??*while/lstm_cell_236/BiasAdd/ReadVariableOp?)while/lstm_cell_236/MatMul/ReadVariableOp?+while/lstm_cell_236/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_236/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_236_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_236/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_236_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_236/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_236/addAddV2$while/lstm_cell_236/MatMul:product:0&while/lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_236_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_236/BiasAddBiasAddwhile/lstm_cell_236/add:z:02while/lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_236/splitSplit,while/lstm_cell_236/split/split_dim:output:0$while/lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_236/SigmoidSigmoid"while/lstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_236/Sigmoid_1Sigmoid"while/lstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mulMul!while/lstm_cell_236/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_236/ReluRelu"while/lstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mul_1Mulwhile/lstm_cell_236/Sigmoid:y:0&while/lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/add_1AddV2while/lstm_cell_236/mul:z:0while/lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_236/Sigmoid_2Sigmoid"while/lstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_236/Relu_1Reluwhile/lstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mul_2Mul!while/lstm_cell_236/Sigmoid_2:y:0(while/lstm_cell_236/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_236/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_236/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_236/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_236/BiasAdd/ReadVariableOp*^while/lstm_cell_236/MatMul/ReadVariableOp,^while/lstm_cell_236/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_236_biasadd_readvariableop_resource5while_lstm_cell_236_biasadd_readvariableop_resource_0"n
4while_lstm_cell_236_matmul_1_readvariableop_resource6while_lstm_cell_236_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_236_matmul_readvariableop_resource4while_lstm_cell_236_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_236/BiasAdd/ReadVariableOp*while/lstm_cell_236/BiasAdd/ReadVariableOp2V
)while/lstm_cell_236/MatMul/ReadVariableOp)while/lstm_cell_236/MatMul/ReadVariableOp2Z
+while/lstm_cell_236/MatMul_1/ReadVariableOp+while/lstm_cell_236/MatMul_1/ReadVariableOp: 
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
while_cond_1431964
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1431964___redundant_placeholder05
1while_while_cond_1431964___redundant_placeholder15
1while_while_cond_1431964___redundant_placeholder25
1while_while_cond_1431964___redundant_placeholder3
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
?	
?
E__inference_dense_83_layer_call_and_return_conditional_losses_1433300

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
?
?
J__inference_lstm_cell_235_layer_call_and_return_conditional_losses_1433464

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
?C
?

lstm_251_while_body_1430916.
*lstm_251_while_lstm_251_while_loop_counter4
0lstm_251_while_lstm_251_while_maximum_iterations
lstm_251_while_placeholder 
lstm_251_while_placeholder_1 
lstm_251_while_placeholder_2 
lstm_251_while_placeholder_3-
)lstm_251_while_lstm_251_strided_slice_1_0i
elstm_251_while_tensorarrayv2read_tensorlistgetitem_lstm_251_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_251_while_lstm_cell_236_matmul_readvariableop_resource_0:2(Q
?lstm_251_while_lstm_cell_236_matmul_1_readvariableop_resource_0:
(L
>lstm_251_while_lstm_cell_236_biasadd_readvariableop_resource_0:(
lstm_251_while_identity
lstm_251_while_identity_1
lstm_251_while_identity_2
lstm_251_while_identity_3
lstm_251_while_identity_4
lstm_251_while_identity_5+
'lstm_251_while_lstm_251_strided_slice_1g
clstm_251_while_tensorarrayv2read_tensorlistgetitem_lstm_251_tensorarrayunstack_tensorlistfromtensorM
;lstm_251_while_lstm_cell_236_matmul_readvariableop_resource:2(O
=lstm_251_while_lstm_cell_236_matmul_1_readvariableop_resource:
(J
<lstm_251_while_lstm_cell_236_biasadd_readvariableop_resource:(??3lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOp?2lstm_251/while/lstm_cell_236/MatMul/ReadVariableOp?4lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOp?
@lstm_251/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_251/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_251_while_tensorarrayv2read_tensorlistgetitem_lstm_251_tensorarrayunstack_tensorlistfromtensor_0lstm_251_while_placeholderIlstm_251/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_251/while/lstm_cell_236/MatMul/ReadVariableOpReadVariableOp=lstm_251_while_lstm_cell_236_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_251/while/lstm_cell_236/MatMulMatMul9lstm_251/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_251/while/lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOp?lstm_251_while_lstm_cell_236_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_251/while/lstm_cell_236/MatMul_1MatMullstm_251_while_placeholder_2<lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_251/while/lstm_cell_236/addAddV2-lstm_251/while/lstm_cell_236/MatMul:product:0/lstm_251/while/lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOp>lstm_251_while_lstm_cell_236_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_251/while/lstm_cell_236/BiasAddBiasAdd$lstm_251/while/lstm_cell_236/add:z:0;lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_251/while/lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_251/while/lstm_cell_236/splitSplit5lstm_251/while/lstm_cell_236/split/split_dim:output:0-lstm_251/while/lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_251/while/lstm_cell_236/SigmoidSigmoid+lstm_251/while/lstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_251/while/lstm_cell_236/Sigmoid_1Sigmoid+lstm_251/while/lstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_251/while/lstm_cell_236/mulMul*lstm_251/while/lstm_cell_236/Sigmoid_1:y:0lstm_251_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_251/while/lstm_cell_236/ReluRelu+lstm_251/while/lstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_251/while/lstm_cell_236/mul_1Mul(lstm_251/while/lstm_cell_236/Sigmoid:y:0/lstm_251/while/lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_251/while/lstm_cell_236/add_1AddV2$lstm_251/while/lstm_cell_236/mul:z:0&lstm_251/while/lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_251/while/lstm_cell_236/Sigmoid_2Sigmoid+lstm_251/while/lstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_251/while/lstm_cell_236/Relu_1Relu&lstm_251/while/lstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_251/while/lstm_cell_236/mul_2Mul*lstm_251/while/lstm_cell_236/Sigmoid_2:y:01lstm_251/while/lstm_cell_236/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_251/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_251_while_placeholder_1lstm_251_while_placeholder&lstm_251/while/lstm_cell_236/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_251/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_251/while/addAddV2lstm_251_while_placeholderlstm_251/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_251/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_251/while/add_1AddV2*lstm_251_while_lstm_251_while_loop_counterlstm_251/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_251/while/IdentityIdentitylstm_251/while/add_1:z:0^lstm_251/while/NoOp*
T0*
_output_shapes
: ?
lstm_251/while/Identity_1Identity0lstm_251_while_lstm_251_while_maximum_iterations^lstm_251/while/NoOp*
T0*
_output_shapes
: t
lstm_251/while/Identity_2Identitylstm_251/while/add:z:0^lstm_251/while/NoOp*
T0*
_output_shapes
: ?
lstm_251/while/Identity_3IdentityClstm_251/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_251/while/NoOp*
T0*
_output_shapes
: ?
lstm_251/while/Identity_4Identity&lstm_251/while/lstm_cell_236/mul_2:z:0^lstm_251/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_251/while/Identity_5Identity&lstm_251/while/lstm_cell_236/add_1:z:0^lstm_251/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_251/while/NoOpNoOp4^lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOp3^lstm_251/while/lstm_cell_236/MatMul/ReadVariableOp5^lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_251_while_identity lstm_251/while/Identity:output:0"?
lstm_251_while_identity_1"lstm_251/while/Identity_1:output:0"?
lstm_251_while_identity_2"lstm_251/while/Identity_2:output:0"?
lstm_251_while_identity_3"lstm_251/while/Identity_3:output:0"?
lstm_251_while_identity_4"lstm_251/while/Identity_4:output:0"?
lstm_251_while_identity_5"lstm_251/while/Identity_5:output:0"T
'lstm_251_while_lstm_251_strided_slice_1)lstm_251_while_lstm_251_strided_slice_1_0"~
<lstm_251_while_lstm_cell_236_biasadd_readvariableop_resource>lstm_251_while_lstm_cell_236_biasadd_readvariableop_resource_0"?
=lstm_251_while_lstm_cell_236_matmul_1_readvariableop_resource?lstm_251_while_lstm_cell_236_matmul_1_readvariableop_resource_0"|
;lstm_251_while_lstm_cell_236_matmul_readvariableop_resource=lstm_251_while_lstm_cell_236_matmul_readvariableop_resource_0"?
clstm_251_while_tensorarrayv2read_tensorlistgetitem_lstm_251_tensorarrayunstack_tensorlistfromtensorelstm_251_while_tensorarrayv2read_tensorlistgetitem_lstm_251_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOp3lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOp2h
2lstm_251/while/lstm_cell_236/MatMul/ReadVariableOp2lstm_251/while/lstm_cell_236/MatMul/ReadVariableOp2l
4lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOp4lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOp: 
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
?
?
J__inference_sequential_83_layer_call_and_return_conditional_losses_1430460
lstm_249_input#
lstm_249_1430433:	?#
lstm_249_1430435:	d?
lstm_249_1430437:	?#
lstm_250_1430440:	d?#
lstm_250_1430442:	2?
lstm_250_1430444:	?"
lstm_251_1430447:2("
lstm_251_1430449:
(
lstm_251_1430451:("
dense_83_1430454:

dense_83_1430456:
identity?? dense_83/StatefulPartitionedCall? lstm_249/StatefulPartitionedCall? lstm_250/StatefulPartitionedCall? lstm_251/StatefulPartitionedCall?
 lstm_249/StatefulPartitionedCallStatefulPartitionedCalllstm_249_inputlstm_249_1430433lstm_249_1430435lstm_249_1430437*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_249_layer_call_and_return_conditional_losses_1429464?
 lstm_250/StatefulPartitionedCallStatefulPartitionedCall)lstm_249/StatefulPartitionedCall:output:0lstm_250_1430440lstm_250_1430442lstm_250_1430444*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_250_layer_call_and_return_conditional_losses_1429614?
 lstm_251/StatefulPartitionedCallStatefulPartitionedCall)lstm_250/StatefulPartitionedCall:output:0lstm_251_1430447lstm_251_1430449lstm_251_1430451*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_251_layer_call_and_return_conditional_losses_1429764?
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)lstm_251/StatefulPartitionedCall:output:0dense_83_1430454dense_83_1430456*
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
GPU 2J 8? *N
fIRG
E__inference_dense_83_layer_call_and_return_conditional_losses_1429782x
IdentityIdentity)dense_83/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_83/StatefulPartitionedCall!^lstm_249/StatefulPartitionedCall!^lstm_250/StatefulPartitionedCall!^lstm_251/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall2D
 lstm_249/StatefulPartitionedCall lstm_249/StatefulPartitionedCall2D
 lstm_250/StatefulPartitionedCall lstm_250/StatefulPartitionedCall2D
 lstm_251/StatefulPartitionedCall lstm_251/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_249_input
?

?
lstm_251_while_cond_1431342.
*lstm_251_while_lstm_251_while_loop_counter4
0lstm_251_while_lstm_251_while_maximum_iterations
lstm_251_while_placeholder 
lstm_251_while_placeholder_1 
lstm_251_while_placeholder_2 
lstm_251_while_placeholder_30
,lstm_251_while_less_lstm_251_strided_slice_1G
Clstm_251_while_lstm_251_while_cond_1431342___redundant_placeholder0G
Clstm_251_while_lstm_251_while_cond_1431342___redundant_placeholder1G
Clstm_251_while_lstm_251_while_cond_1431342___redundant_placeholder2G
Clstm_251_while_lstm_251_while_cond_1431342___redundant_placeholder3
lstm_251_while_identity
?
lstm_251/while/LessLesslstm_251_while_placeholder,lstm_251_while_less_lstm_251_strided_slice_1*
T0*
_output_shapes
: ]
lstm_251/while/IdentityIdentitylstm_251/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_251_while_identity lstm_251/while/Identity:output:0*(
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
??
?
J__inference_sequential_83_layer_call_and_return_conditional_losses_1431006

inputsH
5lstm_249_lstm_cell_234_matmul_readvariableop_resource:	?J
7lstm_249_lstm_cell_234_matmul_1_readvariableop_resource:	d?E
6lstm_249_lstm_cell_234_biasadd_readvariableop_resource:	?H
5lstm_250_lstm_cell_235_matmul_readvariableop_resource:	d?J
7lstm_250_lstm_cell_235_matmul_1_readvariableop_resource:	2?E
6lstm_250_lstm_cell_235_biasadd_readvariableop_resource:	?G
5lstm_251_lstm_cell_236_matmul_readvariableop_resource:2(I
7lstm_251_lstm_cell_236_matmul_1_readvariableop_resource:
(D
6lstm_251_lstm_cell_236_biasadd_readvariableop_resource:(9
'dense_83_matmul_readvariableop_resource:
6
(dense_83_biasadd_readvariableop_resource:
identity??dense_83/BiasAdd/ReadVariableOp?dense_83/MatMul/ReadVariableOp?-lstm_249/lstm_cell_234/BiasAdd/ReadVariableOp?,lstm_249/lstm_cell_234/MatMul/ReadVariableOp?.lstm_249/lstm_cell_234/MatMul_1/ReadVariableOp?lstm_249/while?-lstm_250/lstm_cell_235/BiasAdd/ReadVariableOp?,lstm_250/lstm_cell_235/MatMul/ReadVariableOp?.lstm_250/lstm_cell_235/MatMul_1/ReadVariableOp?lstm_250/while?-lstm_251/lstm_cell_236/BiasAdd/ReadVariableOp?,lstm_251/lstm_cell_236/MatMul/ReadVariableOp?.lstm_251/lstm_cell_236/MatMul_1/ReadVariableOp?lstm_251/whileD
lstm_249/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_249/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_249/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_249/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_249/strided_sliceStridedSlicelstm_249/Shape:output:0%lstm_249/strided_slice/stack:output:0'lstm_249/strided_slice/stack_1:output:0'lstm_249/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_249/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_249/zeros/packedPacklstm_249/strided_slice:output:0 lstm_249/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_249/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_249/zerosFilllstm_249/zeros/packed:output:0lstm_249/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_249/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_249/zeros_1/packedPacklstm_249/strided_slice:output:0"lstm_249/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_249/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_249/zeros_1Fill lstm_249/zeros_1/packed:output:0lstm_249/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_249/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_249/transpose	Transposeinputs lstm_249/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_249/Shape_1Shapelstm_249/transpose:y:0*
T0*
_output_shapes
:h
lstm_249/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_249/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_249/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_249/strided_slice_1StridedSlicelstm_249/Shape_1:output:0'lstm_249/strided_slice_1/stack:output:0)lstm_249/strided_slice_1/stack_1:output:0)lstm_249/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_249/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_249/TensorArrayV2TensorListReserve-lstm_249/TensorArrayV2/element_shape:output:0!lstm_249/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_249/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_249/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_249/transpose:y:0Glstm_249/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_249/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_249/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_249/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_249/strided_slice_2StridedSlicelstm_249/transpose:y:0'lstm_249/strided_slice_2/stack:output:0)lstm_249/strided_slice_2/stack_1:output:0)lstm_249/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_249/lstm_cell_234/MatMul/ReadVariableOpReadVariableOp5lstm_249_lstm_cell_234_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_249/lstm_cell_234/MatMulMatMul!lstm_249/strided_slice_2:output:04lstm_249/lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_249/lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOp7lstm_249_lstm_cell_234_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_249/lstm_cell_234/MatMul_1MatMullstm_249/zeros:output:06lstm_249/lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_249/lstm_cell_234/addAddV2'lstm_249/lstm_cell_234/MatMul:product:0)lstm_249/lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_249/lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOp6lstm_249_lstm_cell_234_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_249/lstm_cell_234/BiasAddBiasAddlstm_249/lstm_cell_234/add:z:05lstm_249/lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_249/lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_249/lstm_cell_234/splitSplit/lstm_249/lstm_cell_234/split/split_dim:output:0'lstm_249/lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_249/lstm_cell_234/SigmoidSigmoid%lstm_249/lstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_249/lstm_cell_234/Sigmoid_1Sigmoid%lstm_249/lstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_249/lstm_cell_234/mulMul$lstm_249/lstm_cell_234/Sigmoid_1:y:0lstm_249/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_249/lstm_cell_234/ReluRelu%lstm_249/lstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_249/lstm_cell_234/mul_1Mul"lstm_249/lstm_cell_234/Sigmoid:y:0)lstm_249/lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_249/lstm_cell_234/add_1AddV2lstm_249/lstm_cell_234/mul:z:0 lstm_249/lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_249/lstm_cell_234/Sigmoid_2Sigmoid%lstm_249/lstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_249/lstm_cell_234/Relu_1Relu lstm_249/lstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_249/lstm_cell_234/mul_2Mul$lstm_249/lstm_cell_234/Sigmoid_2:y:0+lstm_249/lstm_cell_234/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_249/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_249/TensorArrayV2_1TensorListReserve/lstm_249/TensorArrayV2_1/element_shape:output:0!lstm_249/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_249/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_249/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_249/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_249/whileWhile$lstm_249/while/loop_counter:output:0*lstm_249/while/maximum_iterations:output:0lstm_249/time:output:0!lstm_249/TensorArrayV2_1:handle:0lstm_249/zeros:output:0lstm_249/zeros_1:output:0!lstm_249/strided_slice_1:output:0@lstm_249/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_249_lstm_cell_234_matmul_readvariableop_resource7lstm_249_lstm_cell_234_matmul_1_readvariableop_resource6lstm_249_lstm_cell_234_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_249_while_body_1430638*'
condR
lstm_249_while_cond_1430637*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_249/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_249/TensorArrayV2Stack/TensorListStackTensorListStacklstm_249/while:output:3Blstm_249/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_249/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_249/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_249/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_249/strided_slice_3StridedSlice4lstm_249/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_249/strided_slice_3/stack:output:0)lstm_249/strided_slice_3/stack_1:output:0)lstm_249/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_249/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_249/transpose_1	Transpose4lstm_249/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_249/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_249/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_250/ShapeShapelstm_249/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_250/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_250/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_250/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_250/strided_sliceStridedSlicelstm_250/Shape:output:0%lstm_250/strided_slice/stack:output:0'lstm_250/strided_slice/stack_1:output:0'lstm_250/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_250/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_250/zeros/packedPacklstm_250/strided_slice:output:0 lstm_250/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_250/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_250/zerosFilllstm_250/zeros/packed:output:0lstm_250/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_250/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_250/zeros_1/packedPacklstm_250/strided_slice:output:0"lstm_250/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_250/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_250/zeros_1Fill lstm_250/zeros_1/packed:output:0lstm_250/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_250/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_250/transpose	Transposelstm_249/transpose_1:y:0 lstm_250/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_250/Shape_1Shapelstm_250/transpose:y:0*
T0*
_output_shapes
:h
lstm_250/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_250/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_250/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_250/strided_slice_1StridedSlicelstm_250/Shape_1:output:0'lstm_250/strided_slice_1/stack:output:0)lstm_250/strided_slice_1/stack_1:output:0)lstm_250/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_250/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_250/TensorArrayV2TensorListReserve-lstm_250/TensorArrayV2/element_shape:output:0!lstm_250/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_250/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_250/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_250/transpose:y:0Glstm_250/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_250/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_250/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_250/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_250/strided_slice_2StridedSlicelstm_250/transpose:y:0'lstm_250/strided_slice_2/stack:output:0)lstm_250/strided_slice_2/stack_1:output:0)lstm_250/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_250/lstm_cell_235/MatMul/ReadVariableOpReadVariableOp5lstm_250_lstm_cell_235_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_250/lstm_cell_235/MatMulMatMul!lstm_250/strided_slice_2:output:04lstm_250/lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_250/lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOp7lstm_250_lstm_cell_235_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_250/lstm_cell_235/MatMul_1MatMullstm_250/zeros:output:06lstm_250/lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_250/lstm_cell_235/addAddV2'lstm_250/lstm_cell_235/MatMul:product:0)lstm_250/lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_250/lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOp6lstm_250_lstm_cell_235_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_250/lstm_cell_235/BiasAddBiasAddlstm_250/lstm_cell_235/add:z:05lstm_250/lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_250/lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_250/lstm_cell_235/splitSplit/lstm_250/lstm_cell_235/split/split_dim:output:0'lstm_250/lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_250/lstm_cell_235/SigmoidSigmoid%lstm_250/lstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_250/lstm_cell_235/Sigmoid_1Sigmoid%lstm_250/lstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_250/lstm_cell_235/mulMul$lstm_250/lstm_cell_235/Sigmoid_1:y:0lstm_250/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_250/lstm_cell_235/ReluRelu%lstm_250/lstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_250/lstm_cell_235/mul_1Mul"lstm_250/lstm_cell_235/Sigmoid:y:0)lstm_250/lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_250/lstm_cell_235/add_1AddV2lstm_250/lstm_cell_235/mul:z:0 lstm_250/lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_250/lstm_cell_235/Sigmoid_2Sigmoid%lstm_250/lstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_250/lstm_cell_235/Relu_1Relu lstm_250/lstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_250/lstm_cell_235/mul_2Mul$lstm_250/lstm_cell_235/Sigmoid_2:y:0+lstm_250/lstm_cell_235/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_250/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_250/TensorArrayV2_1TensorListReserve/lstm_250/TensorArrayV2_1/element_shape:output:0!lstm_250/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_250/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_250/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_250/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_250/whileWhile$lstm_250/while/loop_counter:output:0*lstm_250/while/maximum_iterations:output:0lstm_250/time:output:0!lstm_250/TensorArrayV2_1:handle:0lstm_250/zeros:output:0lstm_250/zeros_1:output:0!lstm_250/strided_slice_1:output:0@lstm_250/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_250_lstm_cell_235_matmul_readvariableop_resource7lstm_250_lstm_cell_235_matmul_1_readvariableop_resource6lstm_250_lstm_cell_235_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_250_while_body_1430777*'
condR
lstm_250_while_cond_1430776*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_250/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_250/TensorArrayV2Stack/TensorListStackTensorListStacklstm_250/while:output:3Blstm_250/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_250/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_250/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_250/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_250/strided_slice_3StridedSlice4lstm_250/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_250/strided_slice_3/stack:output:0)lstm_250/strided_slice_3/stack_1:output:0)lstm_250/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_250/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_250/transpose_1	Transpose4lstm_250/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_250/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_250/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_251/ShapeShapelstm_250/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_251/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_251/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_251/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_251/strided_sliceStridedSlicelstm_251/Shape:output:0%lstm_251/strided_slice/stack:output:0'lstm_251/strided_slice/stack_1:output:0'lstm_251/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_251/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_251/zeros/packedPacklstm_251/strided_slice:output:0 lstm_251/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_251/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_251/zerosFilllstm_251/zeros/packed:output:0lstm_251/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_251/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_251/zeros_1/packedPacklstm_251/strided_slice:output:0"lstm_251/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_251/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_251/zeros_1Fill lstm_251/zeros_1/packed:output:0lstm_251/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_251/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_251/transpose	Transposelstm_250/transpose_1:y:0 lstm_251/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_251/Shape_1Shapelstm_251/transpose:y:0*
T0*
_output_shapes
:h
lstm_251/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_251/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_251/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_251/strided_slice_1StridedSlicelstm_251/Shape_1:output:0'lstm_251/strided_slice_1/stack:output:0)lstm_251/strided_slice_1/stack_1:output:0)lstm_251/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_251/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_251/TensorArrayV2TensorListReserve-lstm_251/TensorArrayV2/element_shape:output:0!lstm_251/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_251/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_251/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_251/transpose:y:0Glstm_251/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_251/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_251/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_251/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_251/strided_slice_2StridedSlicelstm_251/transpose:y:0'lstm_251/strided_slice_2/stack:output:0)lstm_251/strided_slice_2/stack_1:output:0)lstm_251/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_251/lstm_cell_236/MatMul/ReadVariableOpReadVariableOp5lstm_251_lstm_cell_236_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_251/lstm_cell_236/MatMulMatMul!lstm_251/strided_slice_2:output:04lstm_251/lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_251/lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOp7lstm_251_lstm_cell_236_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_251/lstm_cell_236/MatMul_1MatMullstm_251/zeros:output:06lstm_251/lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_251/lstm_cell_236/addAddV2'lstm_251/lstm_cell_236/MatMul:product:0)lstm_251/lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_251/lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOp6lstm_251_lstm_cell_236_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_251/lstm_cell_236/BiasAddBiasAddlstm_251/lstm_cell_236/add:z:05lstm_251/lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_251/lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_251/lstm_cell_236/splitSplit/lstm_251/lstm_cell_236/split/split_dim:output:0'lstm_251/lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_251/lstm_cell_236/SigmoidSigmoid%lstm_251/lstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_251/lstm_cell_236/Sigmoid_1Sigmoid%lstm_251/lstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_251/lstm_cell_236/mulMul$lstm_251/lstm_cell_236/Sigmoid_1:y:0lstm_251/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_251/lstm_cell_236/ReluRelu%lstm_251/lstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_251/lstm_cell_236/mul_1Mul"lstm_251/lstm_cell_236/Sigmoid:y:0)lstm_251/lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_251/lstm_cell_236/add_1AddV2lstm_251/lstm_cell_236/mul:z:0 lstm_251/lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_251/lstm_cell_236/Sigmoid_2Sigmoid%lstm_251/lstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_251/lstm_cell_236/Relu_1Relu lstm_251/lstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_251/lstm_cell_236/mul_2Mul$lstm_251/lstm_cell_236/Sigmoid_2:y:0+lstm_251/lstm_cell_236/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_251/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_251/TensorArrayV2_1TensorListReserve/lstm_251/TensorArrayV2_1/element_shape:output:0!lstm_251/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_251/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_251/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_251/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_251/whileWhile$lstm_251/while/loop_counter:output:0*lstm_251/while/maximum_iterations:output:0lstm_251/time:output:0!lstm_251/TensorArrayV2_1:handle:0lstm_251/zeros:output:0lstm_251/zeros_1:output:0!lstm_251/strided_slice_1:output:0@lstm_251/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_251_lstm_cell_236_matmul_readvariableop_resource7lstm_251_lstm_cell_236_matmul_1_readvariableop_resource6lstm_251_lstm_cell_236_biasadd_readvariableop_resource*
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
_stateful_parallelism( *'
bodyR
lstm_251_while_body_1430916*'
condR
lstm_251_while_cond_1430915*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_251/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_251/TensorArrayV2Stack/TensorListStackTensorListStacklstm_251/while:output:3Blstm_251/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_251/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_251/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_251/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_251/strided_slice_3StridedSlice4lstm_251/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_251/strided_slice_3/stack:output:0)lstm_251/strided_slice_3/stack_1:output:0)lstm_251/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_251/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_251/transpose_1	Transpose4lstm_251/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_251/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_251/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_83/MatMul/ReadVariableOpReadVariableOp'dense_83_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_83/MatMulMatMul!lstm_251/strided_slice_3:output:0&dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_83/BiasAdd/ReadVariableOpReadVariableOp(dense_83_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_83/BiasAddBiasAdddense_83/MatMul:product:0'dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_83/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_83/BiasAdd/ReadVariableOp^dense_83/MatMul/ReadVariableOp.^lstm_249/lstm_cell_234/BiasAdd/ReadVariableOp-^lstm_249/lstm_cell_234/MatMul/ReadVariableOp/^lstm_249/lstm_cell_234/MatMul_1/ReadVariableOp^lstm_249/while.^lstm_250/lstm_cell_235/BiasAdd/ReadVariableOp-^lstm_250/lstm_cell_235/MatMul/ReadVariableOp/^lstm_250/lstm_cell_235/MatMul_1/ReadVariableOp^lstm_250/while.^lstm_251/lstm_cell_236/BiasAdd/ReadVariableOp-^lstm_251/lstm_cell_236/MatMul/ReadVariableOp/^lstm_251/lstm_cell_236/MatMul_1/ReadVariableOp^lstm_251/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_83/BiasAdd/ReadVariableOpdense_83/BiasAdd/ReadVariableOp2@
dense_83/MatMul/ReadVariableOpdense_83/MatMul/ReadVariableOp2^
-lstm_249/lstm_cell_234/BiasAdd/ReadVariableOp-lstm_249/lstm_cell_234/BiasAdd/ReadVariableOp2\
,lstm_249/lstm_cell_234/MatMul/ReadVariableOp,lstm_249/lstm_cell_234/MatMul/ReadVariableOp2`
.lstm_249/lstm_cell_234/MatMul_1/ReadVariableOp.lstm_249/lstm_cell_234/MatMul_1/ReadVariableOp2 
lstm_249/whilelstm_249/while2^
-lstm_250/lstm_cell_235/BiasAdd/ReadVariableOp-lstm_250/lstm_cell_235/BiasAdd/ReadVariableOp2\
,lstm_250/lstm_cell_235/MatMul/ReadVariableOp,lstm_250/lstm_cell_235/MatMul/ReadVariableOp2`
.lstm_250/lstm_cell_235/MatMul_1/ReadVariableOp.lstm_250/lstm_cell_235/MatMul_1/ReadVariableOp2 
lstm_250/whilelstm_250/while2^
-lstm_251/lstm_cell_236/BiasAdd/ReadVariableOp-lstm_251/lstm_cell_236/BiasAdd/ReadVariableOp2\
,lstm_251/lstm_cell_236/MatMul/ReadVariableOp,lstm_251/lstm_cell_236/MatMul/ReadVariableOp2`
.lstm_251/lstm_cell_236/MatMul_1/ReadVariableOp.lstm_251/lstm_cell_236/MatMul_1/ReadVariableOp2 
lstm_251/whilelstm_251/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_250_layer_call_fn_1432093

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
GPU 2J 8? *N
fIRG
E__inference_lstm_250_layer_call_and_return_conditional_losses_1430145s
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

?
lstm_249_while_cond_1431064.
*lstm_249_while_lstm_249_while_loop_counter4
0lstm_249_while_lstm_249_while_maximum_iterations
lstm_249_while_placeholder 
lstm_249_while_placeholder_1 
lstm_249_while_placeholder_2 
lstm_249_while_placeholder_30
,lstm_249_while_less_lstm_249_strided_slice_1G
Clstm_249_while_lstm_249_while_cond_1431064___redundant_placeholder0G
Clstm_249_while_lstm_249_while_cond_1431064___redundant_placeholder1G
Clstm_249_while_lstm_249_while_cond_1431064___redundant_placeholder2G
Clstm_249_while_lstm_249_while_cond_1431064___redundant_placeholder3
lstm_249_while_identity
?
lstm_249/while/LessLesslstm_249_while_placeholder,lstm_249_while_less_lstm_249_strided_slice_1*
T0*
_output_shapes
: ]
lstm_249/while/IdentityIdentitylstm_249/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_249_while_identity lstm_249/while/Identity:output:0*(
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
?
?
*__inference_lstm_250_layer_call_fn_1432082

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
GPU 2J 8? *N
fIRG
E__inference_lstm_250_layer_call_and_return_conditional_losses_1429614s
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
?8
?
while_body_1432438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_235_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_235_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_235_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_235_matmul_readvariableop_resource:	d?G
4while_lstm_cell_235_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_235_biasadd_readvariableop_resource:	???*while/lstm_cell_235/BiasAdd/ReadVariableOp?)while/lstm_cell_235/MatMul/ReadVariableOp?+while/lstm_cell_235/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_235/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_235_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_235/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_235_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_235/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_235/addAddV2$while/lstm_cell_235/MatMul:product:0&while/lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_235_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_235/BiasAddBiasAddwhile/lstm_cell_235/add:z:02while/lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_235/splitSplit,while/lstm_cell_235/split/split_dim:output:0$while/lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_235/SigmoidSigmoid"while/lstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_235/Sigmoid_1Sigmoid"while/lstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mulMul!while/lstm_cell_235/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_235/ReluRelu"while/lstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mul_1Mulwhile/lstm_cell_235/Sigmoid:y:0&while/lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/add_1AddV2while/lstm_cell_235/mul:z:0while/lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_235/Sigmoid_2Sigmoid"while/lstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_235/Relu_1Reluwhile/lstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_235/mul_2Mul!while/lstm_cell_235/Sigmoid_2:y:0(while/lstm_cell_235/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_235/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_235/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_235/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_235/BiasAdd/ReadVariableOp*^while/lstm_cell_235/MatMul/ReadVariableOp,^while/lstm_cell_235/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_235_biasadd_readvariableop_resource5while_lstm_cell_235_biasadd_readvariableop_resource_0"n
4while_lstm_cell_235_matmul_1_readvariableop_resource6while_lstm_cell_235_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_235_matmul_readvariableop_resource4while_lstm_cell_235_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_235/BiasAdd/ReadVariableOp*while/lstm_cell_235/BiasAdd/ReadVariableOp2V
)while/lstm_cell_235/MatMul/ReadVariableOp)while/lstm_cell_235/MatMul/ReadVariableOp2Z
+while/lstm_cell_235/MatMul_1/ReadVariableOp+while/lstm_cell_235/MatMul_1/ReadVariableOp: 
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
J__inference_lstm_cell_234_layer_call_and_return_conditional_losses_1433366

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
?
)sequential_83_lstm_250_while_cond_1428035J
Fsequential_83_lstm_250_while_sequential_83_lstm_250_while_loop_counterP
Lsequential_83_lstm_250_while_sequential_83_lstm_250_while_maximum_iterations,
(sequential_83_lstm_250_while_placeholder.
*sequential_83_lstm_250_while_placeholder_1.
*sequential_83_lstm_250_while_placeholder_2.
*sequential_83_lstm_250_while_placeholder_3L
Hsequential_83_lstm_250_while_less_sequential_83_lstm_250_strided_slice_1c
_sequential_83_lstm_250_while_sequential_83_lstm_250_while_cond_1428035___redundant_placeholder0c
_sequential_83_lstm_250_while_sequential_83_lstm_250_while_cond_1428035___redundant_placeholder1c
_sequential_83_lstm_250_while_sequential_83_lstm_250_while_cond_1428035___redundant_placeholder2c
_sequential_83_lstm_250_while_sequential_83_lstm_250_while_cond_1428035___redundant_placeholder3)
%sequential_83_lstm_250_while_identity
?
!sequential_83/lstm_250/while/LessLess(sequential_83_lstm_250_while_placeholderHsequential_83_lstm_250_while_less_sequential_83_lstm_250_strided_slice_1*
T0*
_output_shapes
: y
%sequential_83/lstm_250/while/IdentityIdentity%sequential_83/lstm_250/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_83_lstm_250_while_identity.sequential_83/lstm_250/while/Identity:output:0*(
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
lstm_250_while_cond_1431203.
*lstm_250_while_lstm_250_while_loop_counter4
0lstm_250_while_lstm_250_while_maximum_iterations
lstm_250_while_placeholder 
lstm_250_while_placeholder_1 
lstm_250_while_placeholder_2 
lstm_250_while_placeholder_30
,lstm_250_while_less_lstm_250_strided_slice_1G
Clstm_250_while_lstm_250_while_cond_1431203___redundant_placeholder0G
Clstm_250_while_lstm_250_while_cond_1431203___redundant_placeholder1G
Clstm_250_while_lstm_250_while_cond_1431203___redundant_placeholder2G
Clstm_250_while_lstm_250_while_cond_1431203___redundant_placeholder3
lstm_250_while_identity
?
lstm_250/while/LessLesslstm_250_while_placeholder,lstm_250_while_less_lstm_250_strided_slice_1*
T0*
_output_shapes
: ]
lstm_250/while/IdentityIdentitylstm_250/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_250_while_identity lstm_250/while/Identity:output:0*(
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
?K
?
E__inference_lstm_249_layer_call_and_return_conditional_losses_1431620
inputs_0?
,lstm_cell_234_matmul_readvariableop_resource:	?A
.lstm_cell_234_matmul_1_readvariableop_resource:	d?<
-lstm_cell_234_biasadd_readvariableop_resource:	?
identity??$lstm_cell_234/BiasAdd/ReadVariableOp?#lstm_cell_234/MatMul/ReadVariableOp?%lstm_cell_234/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_234/MatMul/ReadVariableOpReadVariableOp,lstm_cell_234_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_234/MatMulMatMulstrided_slice_2:output:0+lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_234_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_234/MatMul_1MatMulzeros:output:0-lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_234/addAddV2lstm_cell_234/MatMul:product:0 lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_234_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_234/BiasAddBiasAddlstm_cell_234/add:z:0,lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_234/splitSplit&lstm_cell_234/split/split_dim:output:0lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_234/SigmoidSigmoidlstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_234/Sigmoid_1Sigmoidlstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_234/mulMullstm_cell_234/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_234/ReluRelulstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_234/mul_1Mullstm_cell_234/Sigmoid:y:0 lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_234/add_1AddV2lstm_cell_234/mul:z:0lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_234/Sigmoid_2Sigmoidlstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_234/Relu_1Relulstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_234/mul_2Mullstm_cell_234/Sigmoid_2:y:0"lstm_cell_234/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_234_matmul_readvariableop_resource.lstm_cell_234_matmul_1_readvariableop_resource-lstm_cell_234_biasadd_readvariableop_resource*
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
bodyR
while_body_1431536*
condR
while_cond_1431535*K
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
NoOpNoOp%^lstm_cell_234/BiasAdd/ReadVariableOp$^lstm_cell_234/MatMul/ReadVariableOp&^lstm_cell_234/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_234/BiasAdd/ReadVariableOp$lstm_cell_234/BiasAdd/ReadVariableOp2J
#lstm_cell_234/MatMul/ReadVariableOp#lstm_cell_234/MatMul/ReadVariableOp2N
%lstm_cell_234/MatMul_1/ReadVariableOp%lstm_cell_234/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_250_layer_call_and_return_conditional_losses_1432236
inputs_0?
,lstm_cell_235_matmul_readvariableop_resource:	d?A
.lstm_cell_235_matmul_1_readvariableop_resource:	2?<
-lstm_cell_235_biasadd_readvariableop_resource:	?
identity??$lstm_cell_235/BiasAdd/ReadVariableOp?#lstm_cell_235/MatMul/ReadVariableOp?%lstm_cell_235/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_235/MatMul/ReadVariableOpReadVariableOp,lstm_cell_235_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_235/MatMulMatMulstrided_slice_2:output:0+lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_235_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_235/MatMul_1MatMulzeros:output:0-lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_235/addAddV2lstm_cell_235/MatMul:product:0 lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_235_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_235/BiasAddBiasAddlstm_cell_235/add:z:0,lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_235/splitSplit&lstm_cell_235/split/split_dim:output:0lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_235/SigmoidSigmoidlstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_235/Sigmoid_1Sigmoidlstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_235/mulMullstm_cell_235/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_235/ReluRelulstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_235/mul_1Mullstm_cell_235/Sigmoid:y:0 lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_235/add_1AddV2lstm_cell_235/mul:z:0lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_235/Sigmoid_2Sigmoidlstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_235/Relu_1Relulstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_235/mul_2Mullstm_cell_235/Sigmoid_2:y:0"lstm_cell_235/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_235_matmul_readvariableop_resource.lstm_cell_235_matmul_1_readvariableop_resource-lstm_cell_235_biasadd_readvariableop_resource*
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
bodyR
while_body_1432152*
condR
while_cond_1432151*K
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
NoOpNoOp%^lstm_cell_235/BiasAdd/ReadVariableOp$^lstm_cell_235/MatMul/ReadVariableOp&^lstm_cell_235/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_235/BiasAdd/ReadVariableOp$lstm_cell_235/BiasAdd/ReadVariableOp2J
#lstm_cell_235/MatMul/ReadVariableOp#lstm_cell_235/MatMul/ReadVariableOp2N
%lstm_cell_235/MatMul_1/ReadVariableOp%lstm_cell_235/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_1432767
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1432767___redundant_placeholder05
1while_while_cond_1432767___redundant_placeholder15
1while_while_cond_1432767___redundant_placeholder25
1while_while_cond_1432767___redundant_placeholder3
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
*__inference_lstm_250_layer_call_fn_1432071
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
GPU 2J 8? *N
fIRG
E__inference_lstm_250_layer_call_and_return_conditional_losses_1428956|
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
?8
?
E__inference_lstm_249_layer_call_and_return_conditional_losses_1428415

inputs(
lstm_cell_234_1428333:	?(
lstm_cell_234_1428335:	d?$
lstm_cell_234_1428337:	?
identity??%lstm_cell_234/StatefulPartitionedCall?while;
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
%lstm_cell_234/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_234_1428333lstm_cell_234_1428335lstm_cell_234_1428337*
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_234_layer_call_and_return_conditional_losses_1428332n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_234_1428333lstm_cell_234_1428335lstm_cell_234_1428337*
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
bodyR
while_body_1428346*
condR
while_cond_1428345*K
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
 :??????????????????dv
NoOpNoOp&^lstm_cell_234/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_234/StatefulPartitionedCall%lstm_cell_234/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_249_layer_call_and_return_conditional_losses_1430310

inputs?
,lstm_cell_234_matmul_readvariableop_resource:	?A
.lstm_cell_234_matmul_1_readvariableop_resource:	d?<
-lstm_cell_234_biasadd_readvariableop_resource:	?
identity??$lstm_cell_234/BiasAdd/ReadVariableOp?#lstm_cell_234/MatMul/ReadVariableOp?%lstm_cell_234/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_234/MatMul/ReadVariableOpReadVariableOp,lstm_cell_234_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_234/MatMulMatMulstrided_slice_2:output:0+lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_234_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_234/MatMul_1MatMulzeros:output:0-lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_234/addAddV2lstm_cell_234/MatMul:product:0 lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_234_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_234/BiasAddBiasAddlstm_cell_234/add:z:0,lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_234/splitSplit&lstm_cell_234/split/split_dim:output:0lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_234/SigmoidSigmoidlstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_234/Sigmoid_1Sigmoidlstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_234/mulMullstm_cell_234/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_234/ReluRelulstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_234/mul_1Mullstm_cell_234/Sigmoid:y:0 lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_234/add_1AddV2lstm_cell_234/mul:z:0lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_234/Sigmoid_2Sigmoidlstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_234/Relu_1Relulstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_234/mul_2Mullstm_cell_234/Sigmoid_2:y:0"lstm_cell_234/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_234_matmul_readvariableop_resource.lstm_cell_234_matmul_1_readvariableop_resource-lstm_cell_234_biasadd_readvariableop_resource*
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
bodyR
while_body_1430226*
condR
while_cond_1430225*K
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
NoOpNoOp%^lstm_cell_234/BiasAdd/ReadVariableOp$^lstm_cell_234/MatMul/ReadVariableOp&^lstm_cell_234/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_234/BiasAdd/ReadVariableOp$lstm_cell_234/BiasAdd/ReadVariableOp2J
#lstm_cell_234/MatMul/ReadVariableOp#lstm_cell_234/MatMul/ReadVariableOp2N
%lstm_cell_234/MatMul_1/ReadVariableOp%lstm_cell_234/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_249_layer_call_fn_1431477

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
GPU 2J 8? *N
fIRG
E__inference_lstm_249_layer_call_and_return_conditional_losses_1430310s
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
?
?
)sequential_83_lstm_251_while_cond_1428174J
Fsequential_83_lstm_251_while_sequential_83_lstm_251_while_loop_counterP
Lsequential_83_lstm_251_while_sequential_83_lstm_251_while_maximum_iterations,
(sequential_83_lstm_251_while_placeholder.
*sequential_83_lstm_251_while_placeholder_1.
*sequential_83_lstm_251_while_placeholder_2.
*sequential_83_lstm_251_while_placeholder_3L
Hsequential_83_lstm_251_while_less_sequential_83_lstm_251_strided_slice_1c
_sequential_83_lstm_251_while_sequential_83_lstm_251_while_cond_1428174___redundant_placeholder0c
_sequential_83_lstm_251_while_sequential_83_lstm_251_while_cond_1428174___redundant_placeholder1c
_sequential_83_lstm_251_while_sequential_83_lstm_251_while_cond_1428174___redundant_placeholder2c
_sequential_83_lstm_251_while_sequential_83_lstm_251_while_cond_1428174___redundant_placeholder3)
%sequential_83_lstm_251_while_identity
?
!sequential_83/lstm_251/while/LessLess(sequential_83_lstm_251_while_placeholderHsequential_83_lstm_251_while_less_sequential_83_lstm_251_strided_slice_1*
T0*
_output_shapes
: y
%sequential_83/lstm_251/while/IdentityIdentity%sequential_83/lstm_251/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_83_lstm_251_while_identity.sequential_83/lstm_251/while/Identity:output:0*(
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
while_cond_1432437
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1432437___redundant_placeholder05
1while_while_cond_1432437___redundant_placeholder15
1while_while_cond_1432437___redundant_placeholder25
1while_while_cond_1432437___redundant_placeholder3
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
?#
?
while_body_1428696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_235_1428720_0:	d?0
while_lstm_cell_235_1428722_0:	2?,
while_lstm_cell_235_1428724_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_235_1428720:	d?.
while_lstm_cell_235_1428722:	2?*
while_lstm_cell_235_1428724:	???+while/lstm_cell_235/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_235/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_235_1428720_0while_lstm_cell_235_1428722_0while_lstm_cell_235_1428724_0*
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_235_layer_call_and_return_conditional_losses_1428682?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_235/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_235/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_235/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_235/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_235_1428720while_lstm_cell_235_1428720_0"<
while_lstm_cell_235_1428722while_lstm_cell_235_1428722_0"<
while_lstm_cell_235_1428724while_lstm_cell_235_1428724_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_235/StatefulPartitionedCall+while/lstm_cell_235/StatefulPartitionedCall: 
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
J__inference_lstm_cell_234_layer_call_and_return_conditional_losses_1428478

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
?K
?
E__inference_lstm_251_layer_call_and_return_conditional_losses_1432995
inputs_0>
,lstm_cell_236_matmul_readvariableop_resource:2(@
.lstm_cell_236_matmul_1_readvariableop_resource:
(;
-lstm_cell_236_biasadd_readvariableop_resource:(
identity??$lstm_cell_236/BiasAdd/ReadVariableOp?#lstm_cell_236/MatMul/ReadVariableOp?%lstm_cell_236/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_236/MatMul/ReadVariableOpReadVariableOp,lstm_cell_236_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_236/MatMulMatMulstrided_slice_2:output:0+lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_236_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_236/MatMul_1MatMulzeros:output:0-lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_236/addAddV2lstm_cell_236/MatMul:product:0 lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_236_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_236/BiasAddBiasAddlstm_cell_236/add:z:0,lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_236/splitSplit&lstm_cell_236/split/split_dim:output:0lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_236/SigmoidSigmoidlstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_236/Sigmoid_1Sigmoidlstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_236/mulMullstm_cell_236/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_236/ReluRelulstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_236/mul_1Mullstm_cell_236/Sigmoid:y:0 lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_236/add_1AddV2lstm_cell_236/mul:z:0lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_236/Sigmoid_2Sigmoidlstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_236/Relu_1Relulstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_236/mul_2Mullstm_cell_236/Sigmoid_2:y:0"lstm_cell_236/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_236_matmul_readvariableop_resource.lstm_cell_236_matmul_1_readvariableop_resource-lstm_cell_236_biasadd_readvariableop_resource*
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
bodyR
while_body_1432911*
condR
while_cond_1432910*K
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
NoOpNoOp%^lstm_cell_236/BiasAdd/ReadVariableOp$^lstm_cell_236/MatMul/ReadVariableOp&^lstm_cell_236/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_236/BiasAdd/ReadVariableOp$lstm_cell_236/BiasAdd/ReadVariableOp2J
#lstm_cell_236/MatMul/ReadVariableOp#lstm_cell_236/MatMul/ReadVariableOp2N
%lstm_cell_236/MatMul_1/ReadVariableOp%lstm_cell_236/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_235_layer_call_and_return_conditional_losses_1433496

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
?C
?

lstm_249_while_body_1431065.
*lstm_249_while_lstm_249_while_loop_counter4
0lstm_249_while_lstm_249_while_maximum_iterations
lstm_249_while_placeholder 
lstm_249_while_placeholder_1 
lstm_249_while_placeholder_2 
lstm_249_while_placeholder_3-
)lstm_249_while_lstm_249_strided_slice_1_0i
elstm_249_while_tensorarrayv2read_tensorlistgetitem_lstm_249_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_249_while_lstm_cell_234_matmul_readvariableop_resource_0:	?R
?lstm_249_while_lstm_cell_234_matmul_1_readvariableop_resource_0:	d?M
>lstm_249_while_lstm_cell_234_biasadd_readvariableop_resource_0:	?
lstm_249_while_identity
lstm_249_while_identity_1
lstm_249_while_identity_2
lstm_249_while_identity_3
lstm_249_while_identity_4
lstm_249_while_identity_5+
'lstm_249_while_lstm_249_strided_slice_1g
clstm_249_while_tensorarrayv2read_tensorlistgetitem_lstm_249_tensorarrayunstack_tensorlistfromtensorN
;lstm_249_while_lstm_cell_234_matmul_readvariableop_resource:	?P
=lstm_249_while_lstm_cell_234_matmul_1_readvariableop_resource:	d?K
<lstm_249_while_lstm_cell_234_biasadd_readvariableop_resource:	???3lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOp?2lstm_249/while/lstm_cell_234/MatMul/ReadVariableOp?4lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOp?
@lstm_249/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_249/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_249_while_tensorarrayv2read_tensorlistgetitem_lstm_249_tensorarrayunstack_tensorlistfromtensor_0lstm_249_while_placeholderIlstm_249/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_249/while/lstm_cell_234/MatMul/ReadVariableOpReadVariableOp=lstm_249_while_lstm_cell_234_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_249/while/lstm_cell_234/MatMulMatMul9lstm_249/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_249/while/lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOp?lstm_249_while_lstm_cell_234_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_249/while/lstm_cell_234/MatMul_1MatMullstm_249_while_placeholder_2<lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_249/while/lstm_cell_234/addAddV2-lstm_249/while/lstm_cell_234/MatMul:product:0/lstm_249/while/lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOp>lstm_249_while_lstm_cell_234_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_249/while/lstm_cell_234/BiasAddBiasAdd$lstm_249/while/lstm_cell_234/add:z:0;lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_249/while/lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_249/while/lstm_cell_234/splitSplit5lstm_249/while/lstm_cell_234/split/split_dim:output:0-lstm_249/while/lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_249/while/lstm_cell_234/SigmoidSigmoid+lstm_249/while/lstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_249/while/lstm_cell_234/Sigmoid_1Sigmoid+lstm_249/while/lstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_249/while/lstm_cell_234/mulMul*lstm_249/while/lstm_cell_234/Sigmoid_1:y:0lstm_249_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_249/while/lstm_cell_234/ReluRelu+lstm_249/while/lstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_249/while/lstm_cell_234/mul_1Mul(lstm_249/while/lstm_cell_234/Sigmoid:y:0/lstm_249/while/lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_249/while/lstm_cell_234/add_1AddV2$lstm_249/while/lstm_cell_234/mul:z:0&lstm_249/while/lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_249/while/lstm_cell_234/Sigmoid_2Sigmoid+lstm_249/while/lstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_249/while/lstm_cell_234/Relu_1Relu&lstm_249/while/lstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_249/while/lstm_cell_234/mul_2Mul*lstm_249/while/lstm_cell_234/Sigmoid_2:y:01lstm_249/while/lstm_cell_234/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_249/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_249_while_placeholder_1lstm_249_while_placeholder&lstm_249/while/lstm_cell_234/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_249/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_249/while/addAddV2lstm_249_while_placeholderlstm_249/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_249/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_249/while/add_1AddV2*lstm_249_while_lstm_249_while_loop_counterlstm_249/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_249/while/IdentityIdentitylstm_249/while/add_1:z:0^lstm_249/while/NoOp*
T0*
_output_shapes
: ?
lstm_249/while/Identity_1Identity0lstm_249_while_lstm_249_while_maximum_iterations^lstm_249/while/NoOp*
T0*
_output_shapes
: t
lstm_249/while/Identity_2Identitylstm_249/while/add:z:0^lstm_249/while/NoOp*
T0*
_output_shapes
: ?
lstm_249/while/Identity_3IdentityClstm_249/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_249/while/NoOp*
T0*
_output_shapes
: ?
lstm_249/while/Identity_4Identity&lstm_249/while/lstm_cell_234/mul_2:z:0^lstm_249/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_249/while/Identity_5Identity&lstm_249/while/lstm_cell_234/add_1:z:0^lstm_249/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_249/while/NoOpNoOp4^lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOp3^lstm_249/while/lstm_cell_234/MatMul/ReadVariableOp5^lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_249_while_identity lstm_249/while/Identity:output:0"?
lstm_249_while_identity_1"lstm_249/while/Identity_1:output:0"?
lstm_249_while_identity_2"lstm_249/while/Identity_2:output:0"?
lstm_249_while_identity_3"lstm_249/while/Identity_3:output:0"?
lstm_249_while_identity_4"lstm_249/while/Identity_4:output:0"?
lstm_249_while_identity_5"lstm_249/while/Identity_5:output:0"T
'lstm_249_while_lstm_249_strided_slice_1)lstm_249_while_lstm_249_strided_slice_1_0"~
<lstm_249_while_lstm_cell_234_biasadd_readvariableop_resource>lstm_249_while_lstm_cell_234_biasadd_readvariableop_resource_0"?
=lstm_249_while_lstm_cell_234_matmul_1_readvariableop_resource?lstm_249_while_lstm_cell_234_matmul_1_readvariableop_resource_0"|
;lstm_249_while_lstm_cell_234_matmul_readvariableop_resource=lstm_249_while_lstm_cell_234_matmul_readvariableop_resource_0"?
clstm_249_while_tensorarrayv2read_tensorlistgetitem_lstm_249_tensorarrayunstack_tensorlistfromtensorelstm_249_while_tensorarrayv2read_tensorlistgetitem_lstm_249_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOp3lstm_249/while/lstm_cell_234/BiasAdd/ReadVariableOp2h
2lstm_249/while/lstm_cell_234/MatMul/ReadVariableOp2lstm_249/while/lstm_cell_234/MatMul/ReadVariableOp2l
4lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOp4lstm_249/while/lstm_cell_234/MatMul_1/ReadVariableOp: 
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
J__inference_sequential_83_layer_call_and_return_conditional_losses_1429789

inputs#
lstm_249_1429465:	?#
lstm_249_1429467:	d?
lstm_249_1429469:	?#
lstm_250_1429615:	d?#
lstm_250_1429617:	2?
lstm_250_1429619:	?"
lstm_251_1429765:2("
lstm_251_1429767:
(
lstm_251_1429769:("
dense_83_1429783:

dense_83_1429785:
identity?? dense_83/StatefulPartitionedCall? lstm_249/StatefulPartitionedCall? lstm_250/StatefulPartitionedCall? lstm_251/StatefulPartitionedCall?
 lstm_249/StatefulPartitionedCallStatefulPartitionedCallinputslstm_249_1429465lstm_249_1429467lstm_249_1429469*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_249_layer_call_and_return_conditional_losses_1429464?
 lstm_250/StatefulPartitionedCallStatefulPartitionedCall)lstm_249/StatefulPartitionedCall:output:0lstm_250_1429615lstm_250_1429617lstm_250_1429619*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_250_layer_call_and_return_conditional_losses_1429614?
 lstm_251/StatefulPartitionedCallStatefulPartitionedCall)lstm_250/StatefulPartitionedCall:output:0lstm_251_1429765lstm_251_1429767lstm_251_1429769*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_251_layer_call_and_return_conditional_losses_1429764?
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)lstm_251/StatefulPartitionedCall:output:0dense_83_1429783dense_83_1429785*
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
GPU 2J 8? *N
fIRG
E__inference_dense_83_layer_call_and_return_conditional_losses_1429782x
IdentityIdentity)dense_83/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_83/StatefulPartitionedCall!^lstm_249/StatefulPartitionedCall!^lstm_250/StatefulPartitionedCall!^lstm_251/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall2D
 lstm_249/StatefulPartitionedCall lstm_249/StatefulPartitionedCall2D
 lstm_250/StatefulPartitionedCall lstm_250/StatefulPartitionedCall2D
 lstm_251/StatefulPartitionedCall lstm_251/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1429680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_236_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_236_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_236_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_236_matmul_readvariableop_resource:2(F
4while_lstm_cell_236_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_236_biasadd_readvariableop_resource:(??*while/lstm_cell_236/BiasAdd/ReadVariableOp?)while/lstm_cell_236/MatMul/ReadVariableOp?+while/lstm_cell_236/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_236/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_236_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_236/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_236_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_236/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_236/addAddV2$while/lstm_cell_236/MatMul:product:0&while/lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_236_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_236/BiasAddBiasAddwhile/lstm_cell_236/add:z:02while/lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_236/splitSplit,while/lstm_cell_236/split/split_dim:output:0$while/lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_236/SigmoidSigmoid"while/lstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_236/Sigmoid_1Sigmoid"while/lstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mulMul!while/lstm_cell_236/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_236/ReluRelu"while/lstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mul_1Mulwhile/lstm_cell_236/Sigmoid:y:0&while/lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/add_1AddV2while/lstm_cell_236/mul:z:0while/lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_236/Sigmoid_2Sigmoid"while/lstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_236/Relu_1Reluwhile/lstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_236/mul_2Mul!while/lstm_cell_236/Sigmoid_2:y:0(while/lstm_cell_236/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_236/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_236/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_236/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_236/BiasAdd/ReadVariableOp*^while/lstm_cell_236/MatMul/ReadVariableOp,^while/lstm_cell_236/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_236_biasadd_readvariableop_resource5while_lstm_cell_236_biasadd_readvariableop_resource_0"n
4while_lstm_cell_236_matmul_1_readvariableop_resource6while_lstm_cell_236_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_236_matmul_readvariableop_resource4while_lstm_cell_236_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_236/BiasAdd/ReadVariableOp*while/lstm_cell_236/BiasAdd/ReadVariableOp2V
)while/lstm_cell_236/MatMul/ReadVariableOp)while/lstm_cell_236/MatMul/ReadVariableOp2Z
+while/lstm_cell_236/MatMul_1/ReadVariableOp+while/lstm_cell_236/MatMul_1/ReadVariableOp: 
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
?
?
J__inference_sequential_83_layer_call_and_return_conditional_losses_1430490
lstm_249_input#
lstm_249_1430463:	?#
lstm_249_1430465:	d?
lstm_249_1430467:	?#
lstm_250_1430470:	d?#
lstm_250_1430472:	2?
lstm_250_1430474:	?"
lstm_251_1430477:2("
lstm_251_1430479:
(
lstm_251_1430481:("
dense_83_1430484:

dense_83_1430486:
identity?? dense_83/StatefulPartitionedCall? lstm_249/StatefulPartitionedCall? lstm_250/StatefulPartitionedCall? lstm_251/StatefulPartitionedCall?
 lstm_249/StatefulPartitionedCallStatefulPartitionedCalllstm_249_inputlstm_249_1430463lstm_249_1430465lstm_249_1430467*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_249_layer_call_and_return_conditional_losses_1430310?
 lstm_250/StatefulPartitionedCallStatefulPartitionedCall)lstm_249/StatefulPartitionedCall:output:0lstm_250_1430470lstm_250_1430472lstm_250_1430474*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_250_layer_call_and_return_conditional_losses_1430145?
 lstm_251/StatefulPartitionedCallStatefulPartitionedCall)lstm_250/StatefulPartitionedCall:output:0lstm_251_1430477lstm_251_1430479lstm_251_1430481*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_251_layer_call_and_return_conditional_losses_1429980?
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)lstm_251/StatefulPartitionedCall:output:0dense_83_1430484dense_83_1430486*
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
GPU 2J 8? *N
fIRG
E__inference_dense_83_layer_call_and_return_conditional_losses_1429782x
IdentityIdentity)dense_83/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_83/StatefulPartitionedCall!^lstm_249/StatefulPartitionedCall!^lstm_250/StatefulPartitionedCall!^lstm_251/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall2D
 lstm_249/StatefulPartitionedCall lstm_249/StatefulPartitionedCall2D
 lstm_250/StatefulPartitionedCall lstm_250/StatefulPartitionedCall2D
 lstm_251/StatefulPartitionedCall lstm_251/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_249_input
?J
?
E__inference_lstm_249_layer_call_and_return_conditional_losses_1431906

inputs?
,lstm_cell_234_matmul_readvariableop_resource:	?A
.lstm_cell_234_matmul_1_readvariableop_resource:	d?<
-lstm_cell_234_biasadd_readvariableop_resource:	?
identity??$lstm_cell_234/BiasAdd/ReadVariableOp?#lstm_cell_234/MatMul/ReadVariableOp?%lstm_cell_234/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_234/MatMul/ReadVariableOpReadVariableOp,lstm_cell_234_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_234/MatMulMatMulstrided_slice_2:output:0+lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_234_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_234/MatMul_1MatMulzeros:output:0-lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_234/addAddV2lstm_cell_234/MatMul:product:0 lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_234_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_234/BiasAddBiasAddlstm_cell_234/add:z:0,lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_234/splitSplit&lstm_cell_234/split/split_dim:output:0lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_234/SigmoidSigmoidlstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_234/Sigmoid_1Sigmoidlstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_234/mulMullstm_cell_234/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_234/ReluRelulstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_234/mul_1Mullstm_cell_234/Sigmoid:y:0 lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_234/add_1AddV2lstm_cell_234/mul:z:0lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_234/Sigmoid_2Sigmoidlstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_234/Relu_1Relulstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_234/mul_2Mullstm_cell_234/Sigmoid_2:y:0"lstm_cell_234/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_234_matmul_readvariableop_resource.lstm_cell_234_matmul_1_readvariableop_resource-lstm_cell_234_biasadd_readvariableop_resource*
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
bodyR
while_body_1431822*
condR
while_cond_1431821*K
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
NoOpNoOp%^lstm_cell_234/BiasAdd/ReadVariableOp$^lstm_cell_234/MatMul/ReadVariableOp&^lstm_cell_234/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_234/BiasAdd/ReadVariableOp$lstm_cell_234/BiasAdd/ReadVariableOp2J
#lstm_cell_234/MatMul/ReadVariableOp#lstm_cell_234/MatMul/ReadVariableOp2N
%lstm_cell_234/MatMul_1/ReadVariableOp%lstm_cell_234/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_235_layer_call_and_return_conditional_losses_1428682

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
?K
?
E__inference_lstm_251_layer_call_and_return_conditional_losses_1432852
inputs_0>
,lstm_cell_236_matmul_readvariableop_resource:2(@
.lstm_cell_236_matmul_1_readvariableop_resource:
(;
-lstm_cell_236_biasadd_readvariableop_resource:(
identity??$lstm_cell_236/BiasAdd/ReadVariableOp?#lstm_cell_236/MatMul/ReadVariableOp?%lstm_cell_236/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_236/MatMul/ReadVariableOpReadVariableOp,lstm_cell_236_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_236/MatMulMatMulstrided_slice_2:output:0+lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_236_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_236/MatMul_1MatMulzeros:output:0-lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_236/addAddV2lstm_cell_236/MatMul:product:0 lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_236_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_236/BiasAddBiasAddlstm_cell_236/add:z:0,lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_236/splitSplit&lstm_cell_236/split/split_dim:output:0lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_236/SigmoidSigmoidlstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_236/Sigmoid_1Sigmoidlstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_236/mulMullstm_cell_236/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_236/ReluRelulstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_236/mul_1Mullstm_cell_236/Sigmoid:y:0 lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_236/add_1AddV2lstm_cell_236/mul:z:0lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_236/Sigmoid_2Sigmoidlstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_236/Relu_1Relulstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_236/mul_2Mullstm_cell_236/Sigmoid_2:y:0"lstm_cell_236/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_236_matmul_readvariableop_resource.lstm_cell_236_matmul_1_readvariableop_resource-lstm_cell_236_biasadd_readvariableop_resource*
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
bodyR
while_body_1432768*
condR
while_cond_1432767*K
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
NoOpNoOp%^lstm_cell_236/BiasAdd/ReadVariableOp$^lstm_cell_236/MatMul/ReadVariableOp&^lstm_cell_236/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_236/BiasAdd/ReadVariableOp$lstm_cell_236/BiasAdd/ReadVariableOp2J
#lstm_cell_236/MatMul/ReadVariableOp#lstm_cell_236/MatMul/ReadVariableOp2N
%lstm_cell_236/MatMul_1/ReadVariableOp%lstm_cell_236/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_236_layer_call_and_return_conditional_losses_1429032

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
?

?
lstm_250_while_cond_1430776.
*lstm_250_while_lstm_250_while_loop_counter4
0lstm_250_while_lstm_250_while_maximum_iterations
lstm_250_while_placeholder 
lstm_250_while_placeholder_1 
lstm_250_while_placeholder_2 
lstm_250_while_placeholder_30
,lstm_250_while_less_lstm_250_strided_slice_1G
Clstm_250_while_lstm_250_while_cond_1430776___redundant_placeholder0G
Clstm_250_while_lstm_250_while_cond_1430776___redundant_placeholder1G
Clstm_250_while_lstm_250_while_cond_1430776___redundant_placeholder2G
Clstm_250_while_lstm_250_while_cond_1430776___redundant_placeholder3
lstm_250_while_identity
?
lstm_250/while/LessLesslstm_250_while_placeholder,lstm_250_while_less_lstm_250_strided_slice_1*
T0*
_output_shapes
: ]
lstm_250/while/IdentityIdentitylstm_250/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_250_while_identity lstm_250/while/Identity:output:0*(
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
?
J__inference_lstm_cell_236_layer_call_and_return_conditional_losses_1433562

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
?
?
*__inference_lstm_250_layer_call_fn_1432060
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
GPU 2J 8? *N
fIRG
E__inference_lstm_250_layer_call_and_return_conditional_losses_1428765|
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
?8
?
while_body_1431965
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_234_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_234_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_234_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_234_matmul_readvariableop_resource:	?G
4while_lstm_cell_234_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_234_biasadd_readvariableop_resource:	???*while/lstm_cell_234/BiasAdd/ReadVariableOp?)while/lstm_cell_234/MatMul/ReadVariableOp?+while/lstm_cell_234/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_234/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_234_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_234/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_234_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_234/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_234/addAddV2$while/lstm_cell_234/MatMul:product:0&while/lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_234_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_234/BiasAddBiasAddwhile/lstm_cell_234/add:z:02while/lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_234/splitSplit,while/lstm_cell_234/split/split_dim:output:0$while/lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_234/SigmoidSigmoid"while/lstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_234/Sigmoid_1Sigmoid"while/lstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mulMul!while/lstm_cell_234/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_234/ReluRelu"while/lstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mul_1Mulwhile/lstm_cell_234/Sigmoid:y:0&while/lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/add_1AddV2while/lstm_cell_234/mul:z:0while/lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_234/Sigmoid_2Sigmoid"while/lstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_234/Relu_1Reluwhile/lstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mul_2Mul!while/lstm_cell_234/Sigmoid_2:y:0(while/lstm_cell_234/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_234/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_234/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_234/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_234/BiasAdd/ReadVariableOp*^while/lstm_cell_234/MatMul/ReadVariableOp,^while/lstm_cell_234/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_234_biasadd_readvariableop_resource5while_lstm_cell_234_biasadd_readvariableop_resource_0"n
4while_lstm_cell_234_matmul_1_readvariableop_resource6while_lstm_cell_234_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_234_matmul_readvariableop_resource4while_lstm_cell_234_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_234/BiasAdd/ReadVariableOp*while/lstm_cell_234/BiasAdd/ReadVariableOp2V
)while/lstm_cell_234/MatMul/ReadVariableOp)while/lstm_cell_234/MatMul/ReadVariableOp2Z
+while/lstm_cell_234/MatMul_1/ReadVariableOp+while/lstm_cell_234/MatMul_1/ReadVariableOp: 
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
?S
?
)sequential_83_lstm_251_while_body_1428175J
Fsequential_83_lstm_251_while_sequential_83_lstm_251_while_loop_counterP
Lsequential_83_lstm_251_while_sequential_83_lstm_251_while_maximum_iterations,
(sequential_83_lstm_251_while_placeholder.
*sequential_83_lstm_251_while_placeholder_1.
*sequential_83_lstm_251_while_placeholder_2.
*sequential_83_lstm_251_while_placeholder_3I
Esequential_83_lstm_251_while_sequential_83_lstm_251_strided_slice_1_0?
?sequential_83_lstm_251_while_tensorarrayv2read_tensorlistgetitem_sequential_83_lstm_251_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_83_lstm_251_while_lstm_cell_236_matmul_readvariableop_resource_0:2(_
Msequential_83_lstm_251_while_lstm_cell_236_matmul_1_readvariableop_resource_0:
(Z
Lsequential_83_lstm_251_while_lstm_cell_236_biasadd_readvariableop_resource_0:()
%sequential_83_lstm_251_while_identity+
'sequential_83_lstm_251_while_identity_1+
'sequential_83_lstm_251_while_identity_2+
'sequential_83_lstm_251_while_identity_3+
'sequential_83_lstm_251_while_identity_4+
'sequential_83_lstm_251_while_identity_5G
Csequential_83_lstm_251_while_sequential_83_lstm_251_strided_slice_1?
sequential_83_lstm_251_while_tensorarrayv2read_tensorlistgetitem_sequential_83_lstm_251_tensorarrayunstack_tensorlistfromtensor[
Isequential_83_lstm_251_while_lstm_cell_236_matmul_readvariableop_resource:2(]
Ksequential_83_lstm_251_while_lstm_cell_236_matmul_1_readvariableop_resource:
(X
Jsequential_83_lstm_251_while_lstm_cell_236_biasadd_readvariableop_resource:(??Asequential_83/lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOp?@sequential_83/lstm_251/while/lstm_cell_236/MatMul/ReadVariableOp?Bsequential_83/lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOp?
Nsequential_83/lstm_251/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_83/lstm_251/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_83_lstm_251_while_tensorarrayv2read_tensorlistgetitem_sequential_83_lstm_251_tensorarrayunstack_tensorlistfromtensor_0(sequential_83_lstm_251_while_placeholderWsequential_83/lstm_251/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_83/lstm_251/while/lstm_cell_236/MatMul/ReadVariableOpReadVariableOpKsequential_83_lstm_251_while_lstm_cell_236_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_83/lstm_251/while/lstm_cell_236/MatMulMatMulGsequential_83/lstm_251/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_83/lstm_251/while/lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_83/lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOpMsequential_83_lstm_251_while_lstm_cell_236_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_83/lstm_251/while/lstm_cell_236/MatMul_1MatMul*sequential_83_lstm_251_while_placeholder_2Jsequential_83/lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_83/lstm_251/while/lstm_cell_236/addAddV2;sequential_83/lstm_251/while/lstm_cell_236/MatMul:product:0=sequential_83/lstm_251/while/lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_83/lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOpLsequential_83_lstm_251_while_lstm_cell_236_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_83/lstm_251/while/lstm_cell_236/BiasAddBiasAdd2sequential_83/lstm_251/while/lstm_cell_236/add:z:0Isequential_83/lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_83/lstm_251/while/lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_83/lstm_251/while/lstm_cell_236/splitSplitCsequential_83/lstm_251/while/lstm_cell_236/split/split_dim:output:0;sequential_83/lstm_251/while/lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_83/lstm_251/while/lstm_cell_236/SigmoidSigmoid9sequential_83/lstm_251/while/lstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_83/lstm_251/while/lstm_cell_236/Sigmoid_1Sigmoid9sequential_83/lstm_251/while/lstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_83/lstm_251/while/lstm_cell_236/mulMul8sequential_83/lstm_251/while/lstm_cell_236/Sigmoid_1:y:0*sequential_83_lstm_251_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_83/lstm_251/while/lstm_cell_236/ReluRelu9sequential_83/lstm_251/while/lstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_83/lstm_251/while/lstm_cell_236/mul_1Mul6sequential_83/lstm_251/while/lstm_cell_236/Sigmoid:y:0=sequential_83/lstm_251/while/lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_83/lstm_251/while/lstm_cell_236/add_1AddV22sequential_83/lstm_251/while/lstm_cell_236/mul:z:04sequential_83/lstm_251/while/lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_83/lstm_251/while/lstm_cell_236/Sigmoid_2Sigmoid9sequential_83/lstm_251/while/lstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_83/lstm_251/while/lstm_cell_236/Relu_1Relu4sequential_83/lstm_251/while/lstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_83/lstm_251/while/lstm_cell_236/mul_2Mul8sequential_83/lstm_251/while/lstm_cell_236/Sigmoid_2:y:0?sequential_83/lstm_251/while/lstm_cell_236/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_83/lstm_251/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_83_lstm_251_while_placeholder_1(sequential_83_lstm_251_while_placeholder4sequential_83/lstm_251/while/lstm_cell_236/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_83/lstm_251/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_83/lstm_251/while/addAddV2(sequential_83_lstm_251_while_placeholder+sequential_83/lstm_251/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_83/lstm_251/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_83/lstm_251/while/add_1AddV2Fsequential_83_lstm_251_while_sequential_83_lstm_251_while_loop_counter-sequential_83/lstm_251/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_83/lstm_251/while/IdentityIdentity&sequential_83/lstm_251/while/add_1:z:0"^sequential_83/lstm_251/while/NoOp*
T0*
_output_shapes
: ?
'sequential_83/lstm_251/while/Identity_1IdentityLsequential_83_lstm_251_while_sequential_83_lstm_251_while_maximum_iterations"^sequential_83/lstm_251/while/NoOp*
T0*
_output_shapes
: ?
'sequential_83/lstm_251/while/Identity_2Identity$sequential_83/lstm_251/while/add:z:0"^sequential_83/lstm_251/while/NoOp*
T0*
_output_shapes
: ?
'sequential_83/lstm_251/while/Identity_3IdentityQsequential_83/lstm_251/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_83/lstm_251/while/NoOp*
T0*
_output_shapes
: ?
'sequential_83/lstm_251/while/Identity_4Identity4sequential_83/lstm_251/while/lstm_cell_236/mul_2:z:0"^sequential_83/lstm_251/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_83/lstm_251/while/Identity_5Identity4sequential_83/lstm_251/while/lstm_cell_236/add_1:z:0"^sequential_83/lstm_251/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_83/lstm_251/while/NoOpNoOpB^sequential_83/lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOpA^sequential_83/lstm_251/while/lstm_cell_236/MatMul/ReadVariableOpC^sequential_83/lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_83_lstm_251_while_identity.sequential_83/lstm_251/while/Identity:output:0"[
'sequential_83_lstm_251_while_identity_10sequential_83/lstm_251/while/Identity_1:output:0"[
'sequential_83_lstm_251_while_identity_20sequential_83/lstm_251/while/Identity_2:output:0"[
'sequential_83_lstm_251_while_identity_30sequential_83/lstm_251/while/Identity_3:output:0"[
'sequential_83_lstm_251_while_identity_40sequential_83/lstm_251/while/Identity_4:output:0"[
'sequential_83_lstm_251_while_identity_50sequential_83/lstm_251/while/Identity_5:output:0"?
Jsequential_83_lstm_251_while_lstm_cell_236_biasadd_readvariableop_resourceLsequential_83_lstm_251_while_lstm_cell_236_biasadd_readvariableop_resource_0"?
Ksequential_83_lstm_251_while_lstm_cell_236_matmul_1_readvariableop_resourceMsequential_83_lstm_251_while_lstm_cell_236_matmul_1_readvariableop_resource_0"?
Isequential_83_lstm_251_while_lstm_cell_236_matmul_readvariableop_resourceKsequential_83_lstm_251_while_lstm_cell_236_matmul_readvariableop_resource_0"?
Csequential_83_lstm_251_while_sequential_83_lstm_251_strided_slice_1Esequential_83_lstm_251_while_sequential_83_lstm_251_strided_slice_1_0"?
sequential_83_lstm_251_while_tensorarrayv2read_tensorlistgetitem_sequential_83_lstm_251_tensorarrayunstack_tensorlistfromtensor?sequential_83_lstm_251_while_tensorarrayv2read_tensorlistgetitem_sequential_83_lstm_251_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_83/lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOpAsequential_83/lstm_251/while/lstm_cell_236/BiasAdd/ReadVariableOp2?
@sequential_83/lstm_251/while/lstm_cell_236/MatMul/ReadVariableOp@sequential_83/lstm_251/while/lstm_cell_236/MatMul/ReadVariableOp2?
Bsequential_83/lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOpBsequential_83/lstm_251/while/lstm_cell_236/MatMul_1/ReadVariableOp: 
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
?S
?
)sequential_83_lstm_250_while_body_1428036J
Fsequential_83_lstm_250_while_sequential_83_lstm_250_while_loop_counterP
Lsequential_83_lstm_250_while_sequential_83_lstm_250_while_maximum_iterations,
(sequential_83_lstm_250_while_placeholder.
*sequential_83_lstm_250_while_placeholder_1.
*sequential_83_lstm_250_while_placeholder_2.
*sequential_83_lstm_250_while_placeholder_3I
Esequential_83_lstm_250_while_sequential_83_lstm_250_strided_slice_1_0?
?sequential_83_lstm_250_while_tensorarrayv2read_tensorlistgetitem_sequential_83_lstm_250_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_83_lstm_250_while_lstm_cell_235_matmul_readvariableop_resource_0:	d?`
Msequential_83_lstm_250_while_lstm_cell_235_matmul_1_readvariableop_resource_0:	2?[
Lsequential_83_lstm_250_while_lstm_cell_235_biasadd_readvariableop_resource_0:	?)
%sequential_83_lstm_250_while_identity+
'sequential_83_lstm_250_while_identity_1+
'sequential_83_lstm_250_while_identity_2+
'sequential_83_lstm_250_while_identity_3+
'sequential_83_lstm_250_while_identity_4+
'sequential_83_lstm_250_while_identity_5G
Csequential_83_lstm_250_while_sequential_83_lstm_250_strided_slice_1?
sequential_83_lstm_250_while_tensorarrayv2read_tensorlistgetitem_sequential_83_lstm_250_tensorarrayunstack_tensorlistfromtensor\
Isequential_83_lstm_250_while_lstm_cell_235_matmul_readvariableop_resource:	d?^
Ksequential_83_lstm_250_while_lstm_cell_235_matmul_1_readvariableop_resource:	2?Y
Jsequential_83_lstm_250_while_lstm_cell_235_biasadd_readvariableop_resource:	???Asequential_83/lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOp?@sequential_83/lstm_250/while/lstm_cell_235/MatMul/ReadVariableOp?Bsequential_83/lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOp?
Nsequential_83/lstm_250/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_83/lstm_250/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_83_lstm_250_while_tensorarrayv2read_tensorlistgetitem_sequential_83_lstm_250_tensorarrayunstack_tensorlistfromtensor_0(sequential_83_lstm_250_while_placeholderWsequential_83/lstm_250/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_83/lstm_250/while/lstm_cell_235/MatMul/ReadVariableOpReadVariableOpKsequential_83_lstm_250_while_lstm_cell_235_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_83/lstm_250/while/lstm_cell_235/MatMulMatMulGsequential_83/lstm_250/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_83/lstm_250/while/lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_83/lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOpMsequential_83_lstm_250_while_lstm_cell_235_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_83/lstm_250/while/lstm_cell_235/MatMul_1MatMul*sequential_83_lstm_250_while_placeholder_2Jsequential_83/lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_83/lstm_250/while/lstm_cell_235/addAddV2;sequential_83/lstm_250/while/lstm_cell_235/MatMul:product:0=sequential_83/lstm_250/while/lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_83/lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOpLsequential_83_lstm_250_while_lstm_cell_235_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_83/lstm_250/while/lstm_cell_235/BiasAddBiasAdd2sequential_83/lstm_250/while/lstm_cell_235/add:z:0Isequential_83/lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_83/lstm_250/while/lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_83/lstm_250/while/lstm_cell_235/splitSplitCsequential_83/lstm_250/while/lstm_cell_235/split/split_dim:output:0;sequential_83/lstm_250/while/lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_83/lstm_250/while/lstm_cell_235/SigmoidSigmoid9sequential_83/lstm_250/while/lstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_83/lstm_250/while/lstm_cell_235/Sigmoid_1Sigmoid9sequential_83/lstm_250/while/lstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_83/lstm_250/while/lstm_cell_235/mulMul8sequential_83/lstm_250/while/lstm_cell_235/Sigmoid_1:y:0*sequential_83_lstm_250_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_83/lstm_250/while/lstm_cell_235/ReluRelu9sequential_83/lstm_250/while/lstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_83/lstm_250/while/lstm_cell_235/mul_1Mul6sequential_83/lstm_250/while/lstm_cell_235/Sigmoid:y:0=sequential_83/lstm_250/while/lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_83/lstm_250/while/lstm_cell_235/add_1AddV22sequential_83/lstm_250/while/lstm_cell_235/mul:z:04sequential_83/lstm_250/while/lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_83/lstm_250/while/lstm_cell_235/Sigmoid_2Sigmoid9sequential_83/lstm_250/while/lstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_83/lstm_250/while/lstm_cell_235/Relu_1Relu4sequential_83/lstm_250/while/lstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_83/lstm_250/while/lstm_cell_235/mul_2Mul8sequential_83/lstm_250/while/lstm_cell_235/Sigmoid_2:y:0?sequential_83/lstm_250/while/lstm_cell_235/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_83/lstm_250/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_83_lstm_250_while_placeholder_1(sequential_83_lstm_250_while_placeholder4sequential_83/lstm_250/while/lstm_cell_235/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_83/lstm_250/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_83/lstm_250/while/addAddV2(sequential_83_lstm_250_while_placeholder+sequential_83/lstm_250/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_83/lstm_250/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_83/lstm_250/while/add_1AddV2Fsequential_83_lstm_250_while_sequential_83_lstm_250_while_loop_counter-sequential_83/lstm_250/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_83/lstm_250/while/IdentityIdentity&sequential_83/lstm_250/while/add_1:z:0"^sequential_83/lstm_250/while/NoOp*
T0*
_output_shapes
: ?
'sequential_83/lstm_250/while/Identity_1IdentityLsequential_83_lstm_250_while_sequential_83_lstm_250_while_maximum_iterations"^sequential_83/lstm_250/while/NoOp*
T0*
_output_shapes
: ?
'sequential_83/lstm_250/while/Identity_2Identity$sequential_83/lstm_250/while/add:z:0"^sequential_83/lstm_250/while/NoOp*
T0*
_output_shapes
: ?
'sequential_83/lstm_250/while/Identity_3IdentityQsequential_83/lstm_250/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_83/lstm_250/while/NoOp*
T0*
_output_shapes
: ?
'sequential_83/lstm_250/while/Identity_4Identity4sequential_83/lstm_250/while/lstm_cell_235/mul_2:z:0"^sequential_83/lstm_250/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_83/lstm_250/while/Identity_5Identity4sequential_83/lstm_250/while/lstm_cell_235/add_1:z:0"^sequential_83/lstm_250/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_83/lstm_250/while/NoOpNoOpB^sequential_83/lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOpA^sequential_83/lstm_250/while/lstm_cell_235/MatMul/ReadVariableOpC^sequential_83/lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_83_lstm_250_while_identity.sequential_83/lstm_250/while/Identity:output:0"[
'sequential_83_lstm_250_while_identity_10sequential_83/lstm_250/while/Identity_1:output:0"[
'sequential_83_lstm_250_while_identity_20sequential_83/lstm_250/while/Identity_2:output:0"[
'sequential_83_lstm_250_while_identity_30sequential_83/lstm_250/while/Identity_3:output:0"[
'sequential_83_lstm_250_while_identity_40sequential_83/lstm_250/while/Identity_4:output:0"[
'sequential_83_lstm_250_while_identity_50sequential_83/lstm_250/while/Identity_5:output:0"?
Jsequential_83_lstm_250_while_lstm_cell_235_biasadd_readvariableop_resourceLsequential_83_lstm_250_while_lstm_cell_235_biasadd_readvariableop_resource_0"?
Ksequential_83_lstm_250_while_lstm_cell_235_matmul_1_readvariableop_resourceMsequential_83_lstm_250_while_lstm_cell_235_matmul_1_readvariableop_resource_0"?
Isequential_83_lstm_250_while_lstm_cell_235_matmul_readvariableop_resourceKsequential_83_lstm_250_while_lstm_cell_235_matmul_readvariableop_resource_0"?
Csequential_83_lstm_250_while_sequential_83_lstm_250_strided_slice_1Esequential_83_lstm_250_while_sequential_83_lstm_250_strided_slice_1_0"?
sequential_83_lstm_250_while_tensorarrayv2read_tensorlistgetitem_sequential_83_lstm_250_tensorarrayunstack_tensorlistfromtensor?sequential_83_lstm_250_while_tensorarrayv2read_tensorlistgetitem_sequential_83_lstm_250_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_83/lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOpAsequential_83/lstm_250/while/lstm_cell_235/BiasAdd/ReadVariableOp2?
@sequential_83/lstm_250/while/lstm_cell_235/MatMul/ReadVariableOp@sequential_83/lstm_250/while/lstm_cell_235/MatMul/ReadVariableOp2?
Bsequential_83/lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOpBsequential_83/lstm_250/while/lstm_cell_235/MatMul_1/ReadVariableOp: 
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
lstm_251_while_cond_1430915.
*lstm_251_while_lstm_251_while_loop_counter4
0lstm_251_while_lstm_251_while_maximum_iterations
lstm_251_while_placeholder 
lstm_251_while_placeholder_1 
lstm_251_while_placeholder_2 
lstm_251_while_placeholder_30
,lstm_251_while_less_lstm_251_strided_slice_1G
Clstm_251_while_lstm_251_while_cond_1430915___redundant_placeholder0G
Clstm_251_while_lstm_251_while_cond_1430915___redundant_placeholder1G
Clstm_251_while_lstm_251_while_cond_1430915___redundant_placeholder2G
Clstm_251_while_lstm_251_while_cond_1430915___redundant_placeholder3
lstm_251_while_identity
?
lstm_251/while/LessLesslstm_251_while_placeholder,lstm_251_while_less_lstm_251_strided_slice_1*
T0*
_output_shapes
: ]
lstm_251/while/IdentityIdentitylstm_251/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_251_while_identity lstm_251/while/Identity:output:0*(
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
??
?
"__inference__wrapped_model_1428265
lstm_249_inputV
Csequential_83_lstm_249_lstm_cell_234_matmul_readvariableop_resource:	?X
Esequential_83_lstm_249_lstm_cell_234_matmul_1_readvariableop_resource:	d?S
Dsequential_83_lstm_249_lstm_cell_234_biasadd_readvariableop_resource:	?V
Csequential_83_lstm_250_lstm_cell_235_matmul_readvariableop_resource:	d?X
Esequential_83_lstm_250_lstm_cell_235_matmul_1_readvariableop_resource:	2?S
Dsequential_83_lstm_250_lstm_cell_235_biasadd_readvariableop_resource:	?U
Csequential_83_lstm_251_lstm_cell_236_matmul_readvariableop_resource:2(W
Esequential_83_lstm_251_lstm_cell_236_matmul_1_readvariableop_resource:
(R
Dsequential_83_lstm_251_lstm_cell_236_biasadd_readvariableop_resource:(G
5sequential_83_dense_83_matmul_readvariableop_resource:
D
6sequential_83_dense_83_biasadd_readvariableop_resource:
identity??-sequential_83/dense_83/BiasAdd/ReadVariableOp?,sequential_83/dense_83/MatMul/ReadVariableOp?;sequential_83/lstm_249/lstm_cell_234/BiasAdd/ReadVariableOp?:sequential_83/lstm_249/lstm_cell_234/MatMul/ReadVariableOp?<sequential_83/lstm_249/lstm_cell_234/MatMul_1/ReadVariableOp?sequential_83/lstm_249/while?;sequential_83/lstm_250/lstm_cell_235/BiasAdd/ReadVariableOp?:sequential_83/lstm_250/lstm_cell_235/MatMul/ReadVariableOp?<sequential_83/lstm_250/lstm_cell_235/MatMul_1/ReadVariableOp?sequential_83/lstm_250/while?;sequential_83/lstm_251/lstm_cell_236/BiasAdd/ReadVariableOp?:sequential_83/lstm_251/lstm_cell_236/MatMul/ReadVariableOp?<sequential_83/lstm_251/lstm_cell_236/MatMul_1/ReadVariableOp?sequential_83/lstm_251/whileZ
sequential_83/lstm_249/ShapeShapelstm_249_input*
T0*
_output_shapes
:t
*sequential_83/lstm_249/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_83/lstm_249/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_83/lstm_249/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_83/lstm_249/strided_sliceStridedSlice%sequential_83/lstm_249/Shape:output:03sequential_83/lstm_249/strided_slice/stack:output:05sequential_83/lstm_249/strided_slice/stack_1:output:05sequential_83/lstm_249/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_83/lstm_249/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_83/lstm_249/zeros/packedPack-sequential_83/lstm_249/strided_slice:output:0.sequential_83/lstm_249/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_83/lstm_249/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_83/lstm_249/zerosFill,sequential_83/lstm_249/zeros/packed:output:0+sequential_83/lstm_249/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_83/lstm_249/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_83/lstm_249/zeros_1/packedPack-sequential_83/lstm_249/strided_slice:output:00sequential_83/lstm_249/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_83/lstm_249/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_83/lstm_249/zeros_1Fill.sequential_83/lstm_249/zeros_1/packed:output:0-sequential_83/lstm_249/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_83/lstm_249/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_83/lstm_249/transpose	Transposelstm_249_input.sequential_83/lstm_249/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_83/lstm_249/Shape_1Shape$sequential_83/lstm_249/transpose:y:0*
T0*
_output_shapes
:v
,sequential_83/lstm_249/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_83/lstm_249/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_83/lstm_249/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_83/lstm_249/strided_slice_1StridedSlice'sequential_83/lstm_249/Shape_1:output:05sequential_83/lstm_249/strided_slice_1/stack:output:07sequential_83/lstm_249/strided_slice_1/stack_1:output:07sequential_83/lstm_249/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_83/lstm_249/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_83/lstm_249/TensorArrayV2TensorListReserve;sequential_83/lstm_249/TensorArrayV2/element_shape:output:0/sequential_83/lstm_249/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_83/lstm_249/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_83/lstm_249/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_83/lstm_249/transpose:y:0Usequential_83/lstm_249/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_83/lstm_249/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_83/lstm_249/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_83/lstm_249/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_83/lstm_249/strided_slice_2StridedSlice$sequential_83/lstm_249/transpose:y:05sequential_83/lstm_249/strided_slice_2/stack:output:07sequential_83/lstm_249/strided_slice_2/stack_1:output:07sequential_83/lstm_249/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_83/lstm_249/lstm_cell_234/MatMul/ReadVariableOpReadVariableOpCsequential_83_lstm_249_lstm_cell_234_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_83/lstm_249/lstm_cell_234/MatMulMatMul/sequential_83/lstm_249/strided_slice_2:output:0Bsequential_83/lstm_249/lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_83/lstm_249/lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOpEsequential_83_lstm_249_lstm_cell_234_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_83/lstm_249/lstm_cell_234/MatMul_1MatMul%sequential_83/lstm_249/zeros:output:0Dsequential_83/lstm_249/lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_83/lstm_249/lstm_cell_234/addAddV25sequential_83/lstm_249/lstm_cell_234/MatMul:product:07sequential_83/lstm_249/lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_83/lstm_249/lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOpDsequential_83_lstm_249_lstm_cell_234_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_83/lstm_249/lstm_cell_234/BiasAddBiasAdd,sequential_83/lstm_249/lstm_cell_234/add:z:0Csequential_83/lstm_249/lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_83/lstm_249/lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_83/lstm_249/lstm_cell_234/splitSplit=sequential_83/lstm_249/lstm_cell_234/split/split_dim:output:05sequential_83/lstm_249/lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_83/lstm_249/lstm_cell_234/SigmoidSigmoid3sequential_83/lstm_249/lstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_83/lstm_249/lstm_cell_234/Sigmoid_1Sigmoid3sequential_83/lstm_249/lstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_83/lstm_249/lstm_cell_234/mulMul2sequential_83/lstm_249/lstm_cell_234/Sigmoid_1:y:0'sequential_83/lstm_249/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_83/lstm_249/lstm_cell_234/ReluRelu3sequential_83/lstm_249/lstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_83/lstm_249/lstm_cell_234/mul_1Mul0sequential_83/lstm_249/lstm_cell_234/Sigmoid:y:07sequential_83/lstm_249/lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_83/lstm_249/lstm_cell_234/add_1AddV2,sequential_83/lstm_249/lstm_cell_234/mul:z:0.sequential_83/lstm_249/lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_83/lstm_249/lstm_cell_234/Sigmoid_2Sigmoid3sequential_83/lstm_249/lstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_83/lstm_249/lstm_cell_234/Relu_1Relu.sequential_83/lstm_249/lstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_83/lstm_249/lstm_cell_234/mul_2Mul2sequential_83/lstm_249/lstm_cell_234/Sigmoid_2:y:09sequential_83/lstm_249/lstm_cell_234/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_83/lstm_249/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_83/lstm_249/TensorArrayV2_1TensorListReserve=sequential_83/lstm_249/TensorArrayV2_1/element_shape:output:0/sequential_83/lstm_249/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_83/lstm_249/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_83/lstm_249/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_83/lstm_249/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_83/lstm_249/whileWhile2sequential_83/lstm_249/while/loop_counter:output:08sequential_83/lstm_249/while/maximum_iterations:output:0$sequential_83/lstm_249/time:output:0/sequential_83/lstm_249/TensorArrayV2_1:handle:0%sequential_83/lstm_249/zeros:output:0'sequential_83/lstm_249/zeros_1:output:0/sequential_83/lstm_249/strided_slice_1:output:0Nsequential_83/lstm_249/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_83_lstm_249_lstm_cell_234_matmul_readvariableop_resourceEsequential_83_lstm_249_lstm_cell_234_matmul_1_readvariableop_resourceDsequential_83_lstm_249_lstm_cell_234_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????d:?????????d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_83_lstm_249_while_body_1427897*5
cond-R+
)sequential_83_lstm_249_while_cond_1427896*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_83/lstm_249/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_83/lstm_249/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_83/lstm_249/while:output:3Psequential_83/lstm_249/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_83/lstm_249/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_83/lstm_249/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_83/lstm_249/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_83/lstm_249/strided_slice_3StridedSliceBsequential_83/lstm_249/TensorArrayV2Stack/TensorListStack:tensor:05sequential_83/lstm_249/strided_slice_3/stack:output:07sequential_83/lstm_249/strided_slice_3/stack_1:output:07sequential_83/lstm_249/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_83/lstm_249/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_83/lstm_249/transpose_1	TransposeBsequential_83/lstm_249/TensorArrayV2Stack/TensorListStack:tensor:00sequential_83/lstm_249/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_83/lstm_249/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_83/lstm_250/ShapeShape&sequential_83/lstm_249/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_83/lstm_250/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_83/lstm_250/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_83/lstm_250/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_83/lstm_250/strided_sliceStridedSlice%sequential_83/lstm_250/Shape:output:03sequential_83/lstm_250/strided_slice/stack:output:05sequential_83/lstm_250/strided_slice/stack_1:output:05sequential_83/lstm_250/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_83/lstm_250/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_83/lstm_250/zeros/packedPack-sequential_83/lstm_250/strided_slice:output:0.sequential_83/lstm_250/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_83/lstm_250/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_83/lstm_250/zerosFill,sequential_83/lstm_250/zeros/packed:output:0+sequential_83/lstm_250/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_83/lstm_250/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_83/lstm_250/zeros_1/packedPack-sequential_83/lstm_250/strided_slice:output:00sequential_83/lstm_250/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_83/lstm_250/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_83/lstm_250/zeros_1Fill.sequential_83/lstm_250/zeros_1/packed:output:0-sequential_83/lstm_250/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_83/lstm_250/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_83/lstm_250/transpose	Transpose&sequential_83/lstm_249/transpose_1:y:0.sequential_83/lstm_250/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_83/lstm_250/Shape_1Shape$sequential_83/lstm_250/transpose:y:0*
T0*
_output_shapes
:v
,sequential_83/lstm_250/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_83/lstm_250/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_83/lstm_250/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_83/lstm_250/strided_slice_1StridedSlice'sequential_83/lstm_250/Shape_1:output:05sequential_83/lstm_250/strided_slice_1/stack:output:07sequential_83/lstm_250/strided_slice_1/stack_1:output:07sequential_83/lstm_250/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_83/lstm_250/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_83/lstm_250/TensorArrayV2TensorListReserve;sequential_83/lstm_250/TensorArrayV2/element_shape:output:0/sequential_83/lstm_250/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_83/lstm_250/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_83/lstm_250/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_83/lstm_250/transpose:y:0Usequential_83/lstm_250/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_83/lstm_250/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_83/lstm_250/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_83/lstm_250/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_83/lstm_250/strided_slice_2StridedSlice$sequential_83/lstm_250/transpose:y:05sequential_83/lstm_250/strided_slice_2/stack:output:07sequential_83/lstm_250/strided_slice_2/stack_1:output:07sequential_83/lstm_250/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_83/lstm_250/lstm_cell_235/MatMul/ReadVariableOpReadVariableOpCsequential_83_lstm_250_lstm_cell_235_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_83/lstm_250/lstm_cell_235/MatMulMatMul/sequential_83/lstm_250/strided_slice_2:output:0Bsequential_83/lstm_250/lstm_cell_235/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_83/lstm_250/lstm_cell_235/MatMul_1/ReadVariableOpReadVariableOpEsequential_83_lstm_250_lstm_cell_235_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_83/lstm_250/lstm_cell_235/MatMul_1MatMul%sequential_83/lstm_250/zeros:output:0Dsequential_83/lstm_250/lstm_cell_235/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_83/lstm_250/lstm_cell_235/addAddV25sequential_83/lstm_250/lstm_cell_235/MatMul:product:07sequential_83/lstm_250/lstm_cell_235/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_83/lstm_250/lstm_cell_235/BiasAdd/ReadVariableOpReadVariableOpDsequential_83_lstm_250_lstm_cell_235_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_83/lstm_250/lstm_cell_235/BiasAddBiasAdd,sequential_83/lstm_250/lstm_cell_235/add:z:0Csequential_83/lstm_250/lstm_cell_235/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_83/lstm_250/lstm_cell_235/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_83/lstm_250/lstm_cell_235/splitSplit=sequential_83/lstm_250/lstm_cell_235/split/split_dim:output:05sequential_83/lstm_250/lstm_cell_235/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_83/lstm_250/lstm_cell_235/SigmoidSigmoid3sequential_83/lstm_250/lstm_cell_235/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_83/lstm_250/lstm_cell_235/Sigmoid_1Sigmoid3sequential_83/lstm_250/lstm_cell_235/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_83/lstm_250/lstm_cell_235/mulMul2sequential_83/lstm_250/lstm_cell_235/Sigmoid_1:y:0'sequential_83/lstm_250/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_83/lstm_250/lstm_cell_235/ReluRelu3sequential_83/lstm_250/lstm_cell_235/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_83/lstm_250/lstm_cell_235/mul_1Mul0sequential_83/lstm_250/lstm_cell_235/Sigmoid:y:07sequential_83/lstm_250/lstm_cell_235/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_83/lstm_250/lstm_cell_235/add_1AddV2,sequential_83/lstm_250/lstm_cell_235/mul:z:0.sequential_83/lstm_250/lstm_cell_235/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_83/lstm_250/lstm_cell_235/Sigmoid_2Sigmoid3sequential_83/lstm_250/lstm_cell_235/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_83/lstm_250/lstm_cell_235/Relu_1Relu.sequential_83/lstm_250/lstm_cell_235/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_83/lstm_250/lstm_cell_235/mul_2Mul2sequential_83/lstm_250/lstm_cell_235/Sigmoid_2:y:09sequential_83/lstm_250/lstm_cell_235/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_83/lstm_250/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_83/lstm_250/TensorArrayV2_1TensorListReserve=sequential_83/lstm_250/TensorArrayV2_1/element_shape:output:0/sequential_83/lstm_250/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_83/lstm_250/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_83/lstm_250/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_83/lstm_250/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_83/lstm_250/whileWhile2sequential_83/lstm_250/while/loop_counter:output:08sequential_83/lstm_250/while/maximum_iterations:output:0$sequential_83/lstm_250/time:output:0/sequential_83/lstm_250/TensorArrayV2_1:handle:0%sequential_83/lstm_250/zeros:output:0'sequential_83/lstm_250/zeros_1:output:0/sequential_83/lstm_250/strided_slice_1:output:0Nsequential_83/lstm_250/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_83_lstm_250_lstm_cell_235_matmul_readvariableop_resourceEsequential_83_lstm_250_lstm_cell_235_matmul_1_readvariableop_resourceDsequential_83_lstm_250_lstm_cell_235_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :?????????2:?????????2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_83_lstm_250_while_body_1428036*5
cond-R+
)sequential_83_lstm_250_while_cond_1428035*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_83/lstm_250/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_83/lstm_250/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_83/lstm_250/while:output:3Psequential_83/lstm_250/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_83/lstm_250/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_83/lstm_250/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_83/lstm_250/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_83/lstm_250/strided_slice_3StridedSliceBsequential_83/lstm_250/TensorArrayV2Stack/TensorListStack:tensor:05sequential_83/lstm_250/strided_slice_3/stack:output:07sequential_83/lstm_250/strided_slice_3/stack_1:output:07sequential_83/lstm_250/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_83/lstm_250/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_83/lstm_250/transpose_1	TransposeBsequential_83/lstm_250/TensorArrayV2Stack/TensorListStack:tensor:00sequential_83/lstm_250/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_83/lstm_250/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_83/lstm_251/ShapeShape&sequential_83/lstm_250/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_83/lstm_251/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_83/lstm_251/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_83/lstm_251/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_83/lstm_251/strided_sliceStridedSlice%sequential_83/lstm_251/Shape:output:03sequential_83/lstm_251/strided_slice/stack:output:05sequential_83/lstm_251/strided_slice/stack_1:output:05sequential_83/lstm_251/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_83/lstm_251/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_83/lstm_251/zeros/packedPack-sequential_83/lstm_251/strided_slice:output:0.sequential_83/lstm_251/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_83/lstm_251/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_83/lstm_251/zerosFill,sequential_83/lstm_251/zeros/packed:output:0+sequential_83/lstm_251/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_83/lstm_251/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_83/lstm_251/zeros_1/packedPack-sequential_83/lstm_251/strided_slice:output:00sequential_83/lstm_251/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_83/lstm_251/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_83/lstm_251/zeros_1Fill.sequential_83/lstm_251/zeros_1/packed:output:0-sequential_83/lstm_251/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_83/lstm_251/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_83/lstm_251/transpose	Transpose&sequential_83/lstm_250/transpose_1:y:0.sequential_83/lstm_251/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_83/lstm_251/Shape_1Shape$sequential_83/lstm_251/transpose:y:0*
T0*
_output_shapes
:v
,sequential_83/lstm_251/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_83/lstm_251/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_83/lstm_251/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_83/lstm_251/strided_slice_1StridedSlice'sequential_83/lstm_251/Shape_1:output:05sequential_83/lstm_251/strided_slice_1/stack:output:07sequential_83/lstm_251/strided_slice_1/stack_1:output:07sequential_83/lstm_251/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_83/lstm_251/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_83/lstm_251/TensorArrayV2TensorListReserve;sequential_83/lstm_251/TensorArrayV2/element_shape:output:0/sequential_83/lstm_251/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_83/lstm_251/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_83/lstm_251/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_83/lstm_251/transpose:y:0Usequential_83/lstm_251/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_83/lstm_251/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_83/lstm_251/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_83/lstm_251/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_83/lstm_251/strided_slice_2StridedSlice$sequential_83/lstm_251/transpose:y:05sequential_83/lstm_251/strided_slice_2/stack:output:07sequential_83/lstm_251/strided_slice_2/stack_1:output:07sequential_83/lstm_251/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_83/lstm_251/lstm_cell_236/MatMul/ReadVariableOpReadVariableOpCsequential_83_lstm_251_lstm_cell_236_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_83/lstm_251/lstm_cell_236/MatMulMatMul/sequential_83/lstm_251/strided_slice_2:output:0Bsequential_83/lstm_251/lstm_cell_236/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_83/lstm_251/lstm_cell_236/MatMul_1/ReadVariableOpReadVariableOpEsequential_83_lstm_251_lstm_cell_236_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_83/lstm_251/lstm_cell_236/MatMul_1MatMul%sequential_83/lstm_251/zeros:output:0Dsequential_83/lstm_251/lstm_cell_236/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_83/lstm_251/lstm_cell_236/addAddV25sequential_83/lstm_251/lstm_cell_236/MatMul:product:07sequential_83/lstm_251/lstm_cell_236/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_83/lstm_251/lstm_cell_236/BiasAdd/ReadVariableOpReadVariableOpDsequential_83_lstm_251_lstm_cell_236_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_83/lstm_251/lstm_cell_236/BiasAddBiasAdd,sequential_83/lstm_251/lstm_cell_236/add:z:0Csequential_83/lstm_251/lstm_cell_236/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_83/lstm_251/lstm_cell_236/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_83/lstm_251/lstm_cell_236/splitSplit=sequential_83/lstm_251/lstm_cell_236/split/split_dim:output:05sequential_83/lstm_251/lstm_cell_236/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_83/lstm_251/lstm_cell_236/SigmoidSigmoid3sequential_83/lstm_251/lstm_cell_236/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_83/lstm_251/lstm_cell_236/Sigmoid_1Sigmoid3sequential_83/lstm_251/lstm_cell_236/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_83/lstm_251/lstm_cell_236/mulMul2sequential_83/lstm_251/lstm_cell_236/Sigmoid_1:y:0'sequential_83/lstm_251/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_83/lstm_251/lstm_cell_236/ReluRelu3sequential_83/lstm_251/lstm_cell_236/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_83/lstm_251/lstm_cell_236/mul_1Mul0sequential_83/lstm_251/lstm_cell_236/Sigmoid:y:07sequential_83/lstm_251/lstm_cell_236/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_83/lstm_251/lstm_cell_236/add_1AddV2,sequential_83/lstm_251/lstm_cell_236/mul:z:0.sequential_83/lstm_251/lstm_cell_236/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_83/lstm_251/lstm_cell_236/Sigmoid_2Sigmoid3sequential_83/lstm_251/lstm_cell_236/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_83/lstm_251/lstm_cell_236/Relu_1Relu.sequential_83/lstm_251/lstm_cell_236/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_83/lstm_251/lstm_cell_236/mul_2Mul2sequential_83/lstm_251/lstm_cell_236/Sigmoid_2:y:09sequential_83/lstm_251/lstm_cell_236/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_83/lstm_251/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_83/lstm_251/TensorArrayV2_1TensorListReserve=sequential_83/lstm_251/TensorArrayV2_1/element_shape:output:0/sequential_83/lstm_251/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_83/lstm_251/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_83/lstm_251/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_83/lstm_251/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_83/lstm_251/whileWhile2sequential_83/lstm_251/while/loop_counter:output:08sequential_83/lstm_251/while/maximum_iterations:output:0$sequential_83/lstm_251/time:output:0/sequential_83/lstm_251/TensorArrayV2_1:handle:0%sequential_83/lstm_251/zeros:output:0'sequential_83/lstm_251/zeros_1:output:0/sequential_83/lstm_251/strided_slice_1:output:0Nsequential_83/lstm_251/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_83_lstm_251_lstm_cell_236_matmul_readvariableop_resourceEsequential_83_lstm_251_lstm_cell_236_matmul_1_readvariableop_resourceDsequential_83_lstm_251_lstm_cell_236_biasadd_readvariableop_resource*
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
_stateful_parallelism( *5
body-R+
)sequential_83_lstm_251_while_body_1428175*5
cond-R+
)sequential_83_lstm_251_while_cond_1428174*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_83/lstm_251/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_83/lstm_251/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_83/lstm_251/while:output:3Psequential_83/lstm_251/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_83/lstm_251/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_83/lstm_251/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_83/lstm_251/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_83/lstm_251/strided_slice_3StridedSliceBsequential_83/lstm_251/TensorArrayV2Stack/TensorListStack:tensor:05sequential_83/lstm_251/strided_slice_3/stack:output:07sequential_83/lstm_251/strided_slice_3/stack_1:output:07sequential_83/lstm_251/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_83/lstm_251/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_83/lstm_251/transpose_1	TransposeBsequential_83/lstm_251/TensorArrayV2Stack/TensorListStack:tensor:00sequential_83/lstm_251/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_83/lstm_251/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_83/dense_83/MatMul/ReadVariableOpReadVariableOp5sequential_83_dense_83_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_83/dense_83/MatMulMatMul/sequential_83/lstm_251/strided_slice_3:output:04sequential_83/dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_83/dense_83/BiasAdd/ReadVariableOpReadVariableOp6sequential_83_dense_83_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_83/dense_83/BiasAddBiasAdd'sequential_83/dense_83/MatMul:product:05sequential_83/dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_83/dense_83/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_83/dense_83/BiasAdd/ReadVariableOp-^sequential_83/dense_83/MatMul/ReadVariableOp<^sequential_83/lstm_249/lstm_cell_234/BiasAdd/ReadVariableOp;^sequential_83/lstm_249/lstm_cell_234/MatMul/ReadVariableOp=^sequential_83/lstm_249/lstm_cell_234/MatMul_1/ReadVariableOp^sequential_83/lstm_249/while<^sequential_83/lstm_250/lstm_cell_235/BiasAdd/ReadVariableOp;^sequential_83/lstm_250/lstm_cell_235/MatMul/ReadVariableOp=^sequential_83/lstm_250/lstm_cell_235/MatMul_1/ReadVariableOp^sequential_83/lstm_250/while<^sequential_83/lstm_251/lstm_cell_236/BiasAdd/ReadVariableOp;^sequential_83/lstm_251/lstm_cell_236/MatMul/ReadVariableOp=^sequential_83/lstm_251/lstm_cell_236/MatMul_1/ReadVariableOp^sequential_83/lstm_251/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_83/dense_83/BiasAdd/ReadVariableOp-sequential_83/dense_83/BiasAdd/ReadVariableOp2\
,sequential_83/dense_83/MatMul/ReadVariableOp,sequential_83/dense_83/MatMul/ReadVariableOp2z
;sequential_83/lstm_249/lstm_cell_234/BiasAdd/ReadVariableOp;sequential_83/lstm_249/lstm_cell_234/BiasAdd/ReadVariableOp2x
:sequential_83/lstm_249/lstm_cell_234/MatMul/ReadVariableOp:sequential_83/lstm_249/lstm_cell_234/MatMul/ReadVariableOp2|
<sequential_83/lstm_249/lstm_cell_234/MatMul_1/ReadVariableOp<sequential_83/lstm_249/lstm_cell_234/MatMul_1/ReadVariableOp2<
sequential_83/lstm_249/whilesequential_83/lstm_249/while2z
;sequential_83/lstm_250/lstm_cell_235/BiasAdd/ReadVariableOp;sequential_83/lstm_250/lstm_cell_235/BiasAdd/ReadVariableOp2x
:sequential_83/lstm_250/lstm_cell_235/MatMul/ReadVariableOp:sequential_83/lstm_250/lstm_cell_235/MatMul/ReadVariableOp2|
<sequential_83/lstm_250/lstm_cell_235/MatMul_1/ReadVariableOp<sequential_83/lstm_250/lstm_cell_235/MatMul_1/ReadVariableOp2<
sequential_83/lstm_250/whilesequential_83/lstm_250/while2z
;sequential_83/lstm_251/lstm_cell_236/BiasAdd/ReadVariableOp;sequential_83/lstm_251/lstm_cell_236/BiasAdd/ReadVariableOp2x
:sequential_83/lstm_251/lstm_cell_236/MatMul/ReadVariableOp:sequential_83/lstm_251/lstm_cell_236/MatMul/ReadVariableOp2|
<sequential_83/lstm_251/lstm_cell_236/MatMul_1/ReadVariableOp<sequential_83/lstm_251/lstm_cell_236/MatMul_1/ReadVariableOp2<
sequential_83/lstm_251/whilesequential_83/lstm_251/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_249_input
?
?
while_cond_1429236
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1429236___redundant_placeholder05
1while_while_cond_1429236___redundant_placeholder15
1while_while_cond_1429236___redundant_placeholder25
1while_while_cond_1429236___redundant_placeholder3
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
?

?
/__inference_sequential_83_layer_call_fn_1429814
lstm_249_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_249_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8? *S
fNRL
J__inference_sequential_83_layer_call_and_return_conditional_losses_1429789o
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
_user_specified_namelstm_249_input
?

?
/__inference_sequential_83_layer_call_fn_1430552

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
GPU 2J 8? *S
fNRL
J__inference_sequential_83_layer_call_and_return_conditional_losses_1429789o
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
?K
?
E__inference_lstm_249_layer_call_and_return_conditional_losses_1431763
inputs_0?
,lstm_cell_234_matmul_readvariableop_resource:	?A
.lstm_cell_234_matmul_1_readvariableop_resource:	d?<
-lstm_cell_234_biasadd_readvariableop_resource:	?
identity??$lstm_cell_234/BiasAdd/ReadVariableOp?#lstm_cell_234/MatMul/ReadVariableOp?%lstm_cell_234/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_234/MatMul/ReadVariableOpReadVariableOp,lstm_cell_234_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_234/MatMulMatMulstrided_slice_2:output:0+lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_234_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_234/MatMul_1MatMulzeros:output:0-lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_234/addAddV2lstm_cell_234/MatMul:product:0 lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_234_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_234/BiasAddBiasAddlstm_cell_234/add:z:0,lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_234/splitSplit&lstm_cell_234/split/split_dim:output:0lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_234/SigmoidSigmoidlstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_234/Sigmoid_1Sigmoidlstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_234/mulMullstm_cell_234/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_234/ReluRelulstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_234/mul_1Mullstm_cell_234/Sigmoid:y:0 lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_234/add_1AddV2lstm_cell_234/mul:z:0lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_234/Sigmoid_2Sigmoidlstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_234/Relu_1Relulstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_234/mul_2Mullstm_cell_234/Sigmoid_2:y:0"lstm_cell_234/Relu_1:activations:0*
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
value	B : ?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_234_matmul_readvariableop_resource.lstm_cell_234_matmul_1_readvariableop_resource-lstm_cell_234_biasadd_readvariableop_resource*
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
bodyR
while_body_1431679*
condR
while_cond_1431678*K
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
NoOpNoOp%^lstm_cell_234/BiasAdd/ReadVariableOp$^lstm_cell_234/MatMul/ReadVariableOp&^lstm_cell_234/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_234/BiasAdd/ReadVariableOp$lstm_cell_234/BiasAdd/ReadVariableOp2J
#lstm_cell_234/MatMul/ReadVariableOp#lstm_cell_234/MatMul/ReadVariableOp2N
%lstm_cell_234/MatMul_1/ReadVariableOp%lstm_cell_234/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_1431822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_234_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_234_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_234_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_234_matmul_readvariableop_resource:	?G
4while_lstm_cell_234_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_234_biasadd_readvariableop_resource:	???*while/lstm_cell_234/BiasAdd/ReadVariableOp?)while/lstm_cell_234/MatMul/ReadVariableOp?+while/lstm_cell_234/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_234/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_234_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_234/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_234/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_234/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_234_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_234/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_234/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_234/addAddV2$while/lstm_cell_234/MatMul:product:0&while/lstm_cell_234/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_234/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_234_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_234/BiasAddBiasAddwhile/lstm_cell_234/add:z:02while/lstm_cell_234/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_234/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_234/splitSplit,while/lstm_cell_234/split/split_dim:output:0$while/lstm_cell_234/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_234/SigmoidSigmoid"while/lstm_cell_234/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_234/Sigmoid_1Sigmoid"while/lstm_cell_234/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mulMul!while/lstm_cell_234/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_234/ReluRelu"while/lstm_cell_234/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mul_1Mulwhile/lstm_cell_234/Sigmoid:y:0&while/lstm_cell_234/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/add_1AddV2while/lstm_cell_234/mul:z:0while/lstm_cell_234/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_234/Sigmoid_2Sigmoid"while/lstm_cell_234/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_234/Relu_1Reluwhile/lstm_cell_234/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_234/mul_2Mul!while/lstm_cell_234/Sigmoid_2:y:0(while/lstm_cell_234/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_234/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_234/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_234/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_234/BiasAdd/ReadVariableOp*^while/lstm_cell_234/MatMul/ReadVariableOp,^while/lstm_cell_234/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_234_biasadd_readvariableop_resource5while_lstm_cell_234_biasadd_readvariableop_resource_0"n
4while_lstm_cell_234_matmul_1_readvariableop_resource6while_lstm_cell_234_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_234_matmul_readvariableop_resource4while_lstm_cell_234_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_234/BiasAdd/ReadVariableOp*while/lstm_cell_234/BiasAdd/ReadVariableOp2V
)while/lstm_cell_234/MatMul/ReadVariableOp)while/lstm_cell_234/MatMul/ReadVariableOp2Z
+while/lstm_cell_234/MatMul_1/ReadVariableOp+while/lstm_cell_234/MatMul_1/ReadVariableOp: 
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
?
?
J__inference_lstm_cell_234_layer_call_and_return_conditional_losses_1428332

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
while_cond_1430225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1430225___redundant_placeholder05
1while_while_cond_1430225___redundant_placeholder15
1while_while_cond_1430225___redundant_placeholder25
1while_while_cond_1430225___redundant_placeholder3
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
?8
?
E__inference_lstm_250_layer_call_and_return_conditional_losses_1428956

inputs(
lstm_cell_235_1428874:	d?(
lstm_cell_235_1428876:	2?$
lstm_cell_235_1428878:	?
identity??%lstm_cell_235/StatefulPartitionedCall?while;
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
%lstm_cell_235/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_235_1428874lstm_cell_235_1428876lstm_cell_235_1428878*
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_235_layer_call_and_return_conditional_losses_1428828n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_235_1428874lstm_cell_235_1428876lstm_cell_235_1428878*
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
bodyR
while_body_1428887*
condR
while_cond_1428886*K
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
 :??????????????????2v
NoOpNoOp&^lstm_cell_235/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_235/StatefulPartitionedCall%lstm_cell_235/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_235_layer_call_fn_1433415

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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_235_layer_call_and_return_conditional_losses_1428682o
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
?
?
)sequential_83_lstm_249_while_cond_1427896J
Fsequential_83_lstm_249_while_sequential_83_lstm_249_while_loop_counterP
Lsequential_83_lstm_249_while_sequential_83_lstm_249_while_maximum_iterations,
(sequential_83_lstm_249_while_placeholder.
*sequential_83_lstm_249_while_placeholder_1.
*sequential_83_lstm_249_while_placeholder_2.
*sequential_83_lstm_249_while_placeholder_3L
Hsequential_83_lstm_249_while_less_sequential_83_lstm_249_strided_slice_1c
_sequential_83_lstm_249_while_sequential_83_lstm_249_while_cond_1427896___redundant_placeholder0c
_sequential_83_lstm_249_while_sequential_83_lstm_249_while_cond_1427896___redundant_placeholder1c
_sequential_83_lstm_249_while_sequential_83_lstm_249_while_cond_1427896___redundant_placeholder2c
_sequential_83_lstm_249_while_sequential_83_lstm_249_while_cond_1427896___redundant_placeholder3)
%sequential_83_lstm_249_while_identity
?
!sequential_83/lstm_249/while/LessLess(sequential_83_lstm_249_while_placeholderHsequential_83_lstm_249_while_less_sequential_83_lstm_249_strided_slice_1*
T0*
_output_shapes
: y
%sequential_83/lstm_249/while/IdentityIdentity%sequential_83/lstm_249/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_83_lstm_249_while_identity.sequential_83/lstm_249/while/Identity:output:0*(
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
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_249_input;
 serving_default_lstm_249_input:0?????????<
dense_830
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
2dense_83/kernel
:2dense_83/bias
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
0:.	?2lstm_249/lstm_cell_249/kernel
::8	d?2'lstm_249/lstm_cell_249/recurrent_kernel
*:(?2lstm_249/lstm_cell_249/bias
0:.	d?2lstm_250/lstm_cell_250/kernel
::8	2?2'lstm_250/lstm_cell_250/recurrent_kernel
*:(?2lstm_250/lstm_cell_250/bias
/:-2(2lstm_251/lstm_cell_251/kernel
9:7
(2'lstm_251/lstm_cell_251/recurrent_kernel
):'(2lstm_251/lstm_cell_251/bias
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
2Adam/dense_83/kernel/m
 :2Adam/dense_83/bias/m
5:3	?2$Adam/lstm_249/lstm_cell_249/kernel/m
?:=	d?2.Adam/lstm_249/lstm_cell_249/recurrent_kernel/m
/:-?2"Adam/lstm_249/lstm_cell_249/bias/m
5:3	d?2$Adam/lstm_250/lstm_cell_250/kernel/m
?:=	2?2.Adam/lstm_250/lstm_cell_250/recurrent_kernel/m
/:-?2"Adam/lstm_250/lstm_cell_250/bias/m
4:22(2$Adam/lstm_251/lstm_cell_251/kernel/m
>:<
(2.Adam/lstm_251/lstm_cell_251/recurrent_kernel/m
.:,(2"Adam/lstm_251/lstm_cell_251/bias/m
&:$
2Adam/dense_83/kernel/v
 :2Adam/dense_83/bias/v
5:3	?2$Adam/lstm_249/lstm_cell_249/kernel/v
?:=	d?2.Adam/lstm_249/lstm_cell_249/recurrent_kernel/v
/:-?2"Adam/lstm_249/lstm_cell_249/bias/v
5:3	d?2$Adam/lstm_250/lstm_cell_250/kernel/v
?:=	2?2.Adam/lstm_250/lstm_cell_250/recurrent_kernel/v
/:-?2"Adam/lstm_250/lstm_cell_250/bias/v
4:22(2$Adam/lstm_251/lstm_cell_251/kernel/v
>:<
(2.Adam/lstm_251/lstm_cell_251/recurrent_kernel/v
.:,(2"Adam/lstm_251/lstm_cell_251/bias/v
?2?
/__inference_sequential_83_layer_call_fn_1429814
/__inference_sequential_83_layer_call_fn_1430552
/__inference_sequential_83_layer_call_fn_1430579
/__inference_sequential_83_layer_call_fn_1430430?
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
J__inference_sequential_83_layer_call_and_return_conditional_losses_1431006
J__inference_sequential_83_layer_call_and_return_conditional_losses_1431433
J__inference_sequential_83_layer_call_and_return_conditional_losses_1430460
J__inference_sequential_83_layer_call_and_return_conditional_losses_1430490?
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
"__inference__wrapped_model_1428265lstm_249_input"?
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
*__inference_lstm_249_layer_call_fn_1431444
*__inference_lstm_249_layer_call_fn_1431455
*__inference_lstm_249_layer_call_fn_1431466
*__inference_lstm_249_layer_call_fn_1431477?
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
E__inference_lstm_249_layer_call_and_return_conditional_losses_1431620
E__inference_lstm_249_layer_call_and_return_conditional_losses_1431763
E__inference_lstm_249_layer_call_and_return_conditional_losses_1431906
E__inference_lstm_249_layer_call_and_return_conditional_losses_1432049?
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
*__inference_lstm_250_layer_call_fn_1432060
*__inference_lstm_250_layer_call_fn_1432071
*__inference_lstm_250_layer_call_fn_1432082
*__inference_lstm_250_layer_call_fn_1432093?
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
E__inference_lstm_250_layer_call_and_return_conditional_losses_1432236
E__inference_lstm_250_layer_call_and_return_conditional_losses_1432379
E__inference_lstm_250_layer_call_and_return_conditional_losses_1432522
E__inference_lstm_250_layer_call_and_return_conditional_losses_1432665?
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
*__inference_lstm_251_layer_call_fn_1432676
*__inference_lstm_251_layer_call_fn_1432687
*__inference_lstm_251_layer_call_fn_1432698
*__inference_lstm_251_layer_call_fn_1432709?
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
E__inference_lstm_251_layer_call_and_return_conditional_losses_1432852
E__inference_lstm_251_layer_call_and_return_conditional_losses_1432995
E__inference_lstm_251_layer_call_and_return_conditional_losses_1433138
E__inference_lstm_251_layer_call_and_return_conditional_losses_1433281?
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
*__inference_dense_83_layer_call_fn_1433290?
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
E__inference_dense_83_layer_call_and_return_conditional_losses_1433300?
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
%__inference_signature_wrapper_1430525lstm_249_input"?
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
/__inference_lstm_cell_234_layer_call_fn_1433317
/__inference_lstm_cell_234_layer_call_fn_1433334?
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
J__inference_lstm_cell_234_layer_call_and_return_conditional_losses_1433366
J__inference_lstm_cell_234_layer_call_and_return_conditional_losses_1433398?
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
/__inference_lstm_cell_235_layer_call_fn_1433415
/__inference_lstm_cell_235_layer_call_fn_1433432?
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
J__inference_lstm_cell_235_layer_call_and_return_conditional_losses_1433464
J__inference_lstm_cell_235_layer_call_and_return_conditional_losses_1433496?
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
/__inference_lstm_cell_236_layer_call_fn_1433513
/__inference_lstm_cell_236_layer_call_fn_1433530?
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
J__inference_lstm_cell_236_layer_call_and_return_conditional_losses_1433562
J__inference_lstm_cell_236_layer_call_and_return_conditional_losses_1433594?
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
"__inference__wrapped_model_1428265-./012345!";?8
1?.
,?)
lstm_249_input?????????
? "3?0
.
dense_83"?
dense_83??????????
E__inference_dense_83_layer_call_and_return_conditional_losses_1433300\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_83_layer_call_fn_1433290O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_249_layer_call_and_return_conditional_losses_1431620?-./O?L
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
E__inference_lstm_249_layer_call_and_return_conditional_losses_1431763?-./O?L
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
E__inference_lstm_249_layer_call_and_return_conditional_losses_1431906q-./??<
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
E__inference_lstm_249_layer_call_and_return_conditional_losses_1432049q-./??<
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
*__inference_lstm_249_layer_call_fn_1431444}-./O?L
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
*__inference_lstm_249_layer_call_fn_1431455}-./O?L
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
*__inference_lstm_249_layer_call_fn_1431466d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_249_layer_call_fn_1431477d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_250_layer_call_and_return_conditional_losses_1432236?012O?L
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
E__inference_lstm_250_layer_call_and_return_conditional_losses_1432379?012O?L
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
E__inference_lstm_250_layer_call_and_return_conditional_losses_1432522q012??<
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
E__inference_lstm_250_layer_call_and_return_conditional_losses_1432665q012??<
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
*__inference_lstm_250_layer_call_fn_1432060}012O?L
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
*__inference_lstm_250_layer_call_fn_1432071}012O?L
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
*__inference_lstm_250_layer_call_fn_1432082d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_250_layer_call_fn_1432093d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_251_layer_call_and_return_conditional_losses_1432852}345O?L
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
E__inference_lstm_251_layer_call_and_return_conditional_losses_1432995}345O?L
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
E__inference_lstm_251_layer_call_and_return_conditional_losses_1433138m345??<
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
E__inference_lstm_251_layer_call_and_return_conditional_losses_1433281m345??<
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
*__inference_lstm_251_layer_call_fn_1432676p345O?L
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
*__inference_lstm_251_layer_call_fn_1432687p345O?L
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
*__inference_lstm_251_layer_call_fn_1432698`345??<
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
*__inference_lstm_251_layer_call_fn_1432709`345??<
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
J__inference_lstm_cell_234_layer_call_and_return_conditional_losses_1433366?-./??}
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
J__inference_lstm_cell_234_layer_call_and_return_conditional_losses_1433398?-./??}
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
/__inference_lstm_cell_234_layer_call_fn_1433317?-./??}
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
/__inference_lstm_cell_234_layer_call_fn_1433334?-./??}
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
1/1?????????d?
J__inference_lstm_cell_235_layer_call_and_return_conditional_losses_1433464?012??}
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
J__inference_lstm_cell_235_layer_call_and_return_conditional_losses_1433496?012??}
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
/__inference_lstm_cell_235_layer_call_fn_1433415?012??}
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
/__inference_lstm_cell_235_layer_call_fn_1433432?012??}
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
J__inference_lstm_cell_236_layer_call_and_return_conditional_losses_1433562?345??}
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
J__inference_lstm_cell_236_layer_call_and_return_conditional_losses_1433594?345??}
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
/__inference_lstm_cell_236_layer_call_fn_1433513?345??}
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
/__inference_lstm_cell_236_layer_call_fn_1433530?345??}
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
?
J__inference_sequential_83_layer_call_and_return_conditional_losses_1430460y-./012345!"C?@
9?6
,?)
lstm_249_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_83_layer_call_and_return_conditional_losses_1430490y-./012345!"C?@
9?6
,?)
lstm_249_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_83_layer_call_and_return_conditional_losses_1431006q-./012345!";?8
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
J__inference_sequential_83_layer_call_and_return_conditional_losses_1431433q-./012345!";?8
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
/__inference_sequential_83_layer_call_fn_1429814l-./012345!"C?@
9?6
,?)
lstm_249_input?????????
p 

 
? "???????????
/__inference_sequential_83_layer_call_fn_1430430l-./012345!"C?@
9?6
,?)
lstm_249_input?????????
p

 
? "???????????
/__inference_sequential_83_layer_call_fn_1430552d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_83_layer_call_fn_1430579d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1430525?-./012345!"M?J
? 
C?@
>
lstm_249_input,?)
lstm_249_input?????????"3?0
.
dense_83"?
dense_83?????????