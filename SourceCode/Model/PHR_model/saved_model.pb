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
dense_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_62/kernel
s
#dense_62/kernel/Read/ReadVariableOpReadVariableOpdense_62/kernel*
_output_shapes

:
*
dtype0
r
dense_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_62/bias
k
!dense_62/bias/Read/ReadVariableOpReadVariableOpdense_62/bias*
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
lstm_186/lstm_cell_186/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_186/lstm_cell_186/kernel
?
1lstm_186/lstm_cell_186/kernel/Read/ReadVariableOpReadVariableOplstm_186/lstm_cell_186/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_186/lstm_cell_186/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_186/lstm_cell_186/recurrent_kernel
?
;lstm_186/lstm_cell_186/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_186/lstm_cell_186/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_186/lstm_cell_186/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_186/lstm_cell_186/bias
?
/lstm_186/lstm_cell_186/bias/Read/ReadVariableOpReadVariableOplstm_186/lstm_cell_186/bias*
_output_shapes	
:?*
dtype0
?
lstm_187/lstm_cell_187/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_187/lstm_cell_187/kernel
?
1lstm_187/lstm_cell_187/kernel/Read/ReadVariableOpReadVariableOplstm_187/lstm_cell_187/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_187/lstm_cell_187/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_187/lstm_cell_187/recurrent_kernel
?
;lstm_187/lstm_cell_187/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_187/lstm_cell_187/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_187/lstm_cell_187/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_187/lstm_cell_187/bias
?
/lstm_187/lstm_cell_187/bias/Read/ReadVariableOpReadVariableOplstm_187/lstm_cell_187/bias*
_output_shapes	
:?*
dtype0
?
lstm_188/lstm_cell_188/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_188/lstm_cell_188/kernel
?
1lstm_188/lstm_cell_188/kernel/Read/ReadVariableOpReadVariableOplstm_188/lstm_cell_188/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_188/lstm_cell_188/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_188/lstm_cell_188/recurrent_kernel
?
;lstm_188/lstm_cell_188/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_188/lstm_cell_188/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_188/lstm_cell_188/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_188/lstm_cell_188/bias
?
/lstm_188/lstm_cell_188/bias/Read/ReadVariableOpReadVariableOplstm_188/lstm_cell_188/bias*
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
Adam/dense_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_62/kernel/m
?
*Adam/dense_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_62/bias/m
y
(Adam/dense_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_186/lstm_cell_186/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_186/lstm_cell_186/kernel/m
?
8Adam/lstm_186/lstm_cell_186/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_186/lstm_cell_186/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_186/lstm_cell_186/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_186/lstm_cell_186/recurrent_kernel/m
?
BAdam/lstm_186/lstm_cell_186/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_186/lstm_cell_186/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_186/lstm_cell_186/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_186/lstm_cell_186/bias/m
?
6Adam/lstm_186/lstm_cell_186/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_186/lstm_cell_186/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_187/lstm_cell_187/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_187/lstm_cell_187/kernel/m
?
8Adam/lstm_187/lstm_cell_187/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_187/lstm_cell_187/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_187/lstm_cell_187/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_187/lstm_cell_187/recurrent_kernel/m
?
BAdam/lstm_187/lstm_cell_187/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_187/lstm_cell_187/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_187/lstm_cell_187/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_187/lstm_cell_187/bias/m
?
6Adam/lstm_187/lstm_cell_187/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_187/lstm_cell_187/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_188/lstm_cell_188/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_188/lstm_cell_188/kernel/m
?
8Adam/lstm_188/lstm_cell_188/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_188/lstm_cell_188/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_188/lstm_cell_188/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_188/lstm_cell_188/recurrent_kernel/m
?
BAdam/lstm_188/lstm_cell_188/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_188/lstm_cell_188/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_188/lstm_cell_188/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_188/lstm_cell_188/bias/m
?
6Adam/lstm_188/lstm_cell_188/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_188/lstm_cell_188/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_62/kernel/v
?
*Adam/dense_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_62/bias/v
y
(Adam/dense_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_186/lstm_cell_186/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_186/lstm_cell_186/kernel/v
?
8Adam/lstm_186/lstm_cell_186/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_186/lstm_cell_186/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_186/lstm_cell_186/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_186/lstm_cell_186/recurrent_kernel/v
?
BAdam/lstm_186/lstm_cell_186/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_186/lstm_cell_186/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_186/lstm_cell_186/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_186/lstm_cell_186/bias/v
?
6Adam/lstm_186/lstm_cell_186/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_186/lstm_cell_186/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_187/lstm_cell_187/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_187/lstm_cell_187/kernel/v
?
8Adam/lstm_187/lstm_cell_187/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_187/lstm_cell_187/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_187/lstm_cell_187/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_187/lstm_cell_187/recurrent_kernel/v
?
BAdam/lstm_187/lstm_cell_187/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_187/lstm_cell_187/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_187/lstm_cell_187/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_187/lstm_cell_187/bias/v
?
6Adam/lstm_187/lstm_cell_187/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_187/lstm_cell_187/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_188/lstm_cell_188/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_188/lstm_cell_188/kernel/v
?
8Adam/lstm_188/lstm_cell_188/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_188/lstm_cell_188/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_188/lstm_cell_188/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_188/lstm_cell_188/recurrent_kernel/v
?
BAdam/lstm_188/lstm_cell_188/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_188/lstm_cell_188/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_188/lstm_cell_188/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_188/lstm_cell_188/bias/v
?
6Adam/lstm_188/lstm_cell_188/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_188/lstm_cell_188/bias/v*
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
VARIABLE_VALUEdense_62/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_62/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_186/lstm_cell_186/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_186/lstm_cell_186/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_186/lstm_cell_186/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_187/lstm_cell_187/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_187/lstm_cell_187/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_187/lstm_cell_187/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_188/lstm_cell_188/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_188/lstm_cell_188/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_188/lstm_cell_188/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_62/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_62/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_186/lstm_cell_186/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_186/lstm_cell_186/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_186/lstm_cell_186/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_187/lstm_cell_187/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_187/lstm_cell_187/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_187/lstm_cell_187/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_188/lstm_cell_188/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_188/lstm_cell_188/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_188/lstm_cell_188/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_62/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_62/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_186/lstm_cell_186/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_186/lstm_cell_186/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_186/lstm_cell_186/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_187/lstm_cell_187/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_187/lstm_cell_187/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_187/lstm_cell_187/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_188/lstm_cell_188/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_188/lstm_cell_188/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_188/lstm_cell_188/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_186_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_186_inputlstm_186/lstm_cell_186/kernel'lstm_186/lstm_cell_186/recurrent_kernellstm_186/lstm_cell_186/biaslstm_187/lstm_cell_187/kernel'lstm_187/lstm_cell_187/recurrent_kernellstm_187/lstm_cell_187/biaslstm_188/lstm_cell_188/kernel'lstm_188/lstm_cell_188/recurrent_kernellstm_188/lstm_cell_188/biasdense_62/kerneldense_62/bias*
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
%__inference_signature_wrapper_3062354
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_62/kernel/Read/ReadVariableOp!dense_62/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_186/lstm_cell_186/kernel/Read/ReadVariableOp;lstm_186/lstm_cell_186/recurrent_kernel/Read/ReadVariableOp/lstm_186/lstm_cell_186/bias/Read/ReadVariableOp1lstm_187/lstm_cell_187/kernel/Read/ReadVariableOp;lstm_187/lstm_cell_187/recurrent_kernel/Read/ReadVariableOp/lstm_187/lstm_cell_187/bias/Read/ReadVariableOp1lstm_188/lstm_cell_188/kernel/Read/ReadVariableOp;lstm_188/lstm_cell_188/recurrent_kernel/Read/ReadVariableOp/lstm_188/lstm_cell_188/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_62/kernel/m/Read/ReadVariableOp(Adam/dense_62/bias/m/Read/ReadVariableOp8Adam/lstm_186/lstm_cell_186/kernel/m/Read/ReadVariableOpBAdam/lstm_186/lstm_cell_186/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_186/lstm_cell_186/bias/m/Read/ReadVariableOp8Adam/lstm_187/lstm_cell_187/kernel/m/Read/ReadVariableOpBAdam/lstm_187/lstm_cell_187/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_187/lstm_cell_187/bias/m/Read/ReadVariableOp8Adam/lstm_188/lstm_cell_188/kernel/m/Read/ReadVariableOpBAdam/lstm_188/lstm_cell_188/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_188/lstm_cell_188/bias/m/Read/ReadVariableOp*Adam/dense_62/kernel/v/Read/ReadVariableOp(Adam/dense_62/bias/v/Read/ReadVariableOp8Adam/lstm_186/lstm_cell_186/kernel/v/Read/ReadVariableOpBAdam/lstm_186/lstm_cell_186/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_186/lstm_cell_186/bias/v/Read/ReadVariableOp8Adam/lstm_187/lstm_cell_187/kernel/v/Read/ReadVariableOpBAdam/lstm_187/lstm_cell_187/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_187/lstm_cell_187/bias/v/Read/ReadVariableOp8Adam/lstm_188/lstm_cell_188/kernel/v/Read/ReadVariableOpBAdam/lstm_188/lstm_cell_188/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_188/lstm_cell_188/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3065566
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_62/kerneldense_62/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_186/lstm_cell_186/kernel'lstm_186/lstm_cell_186/recurrent_kernellstm_186/lstm_cell_186/biaslstm_187/lstm_cell_187/kernel'lstm_187/lstm_cell_187/recurrent_kernellstm_187/lstm_cell_187/biaslstm_188/lstm_cell_188/kernel'lstm_188/lstm_cell_188/recurrent_kernellstm_188/lstm_cell_188/biastotalcountAdam/dense_62/kernel/mAdam/dense_62/bias/m$Adam/lstm_186/lstm_cell_186/kernel/m.Adam/lstm_186/lstm_cell_186/recurrent_kernel/m"Adam/lstm_186/lstm_cell_186/bias/m$Adam/lstm_187/lstm_cell_187/kernel/m.Adam/lstm_187/lstm_cell_187/recurrent_kernel/m"Adam/lstm_187/lstm_cell_187/bias/m$Adam/lstm_188/lstm_cell_188/kernel/m.Adam/lstm_188/lstm_cell_188/recurrent_kernel/m"Adam/lstm_188/lstm_cell_188/bias/mAdam/dense_62/kernel/vAdam/dense_62/bias/v$Adam/lstm_186/lstm_cell_186/kernel/v.Adam/lstm_186/lstm_cell_186/recurrent_kernel/v"Adam/lstm_186/lstm_cell_186/bias/v$Adam/lstm_187/lstm_cell_187/kernel/v.Adam/lstm_187/lstm_cell_187/recurrent_kernel/v"Adam/lstm_187/lstm_cell_187/bias/v$Adam/lstm_188/lstm_cell_188/kernel/v.Adam/lstm_188/lstm_cell_188/recurrent_kernel/v"Adam/lstm_188/lstm_cell_188/bias/v*4
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
#__inference__traced_restore_3065696??+
??
?
"__inference__wrapped_model_3060094
lstm_186_inputV
Csequential_62_lstm_186_lstm_cell_504_matmul_readvariableop_resource:	?X
Esequential_62_lstm_186_lstm_cell_504_matmul_1_readvariableop_resource:	d?S
Dsequential_62_lstm_186_lstm_cell_504_biasadd_readvariableop_resource:	?V
Csequential_62_lstm_187_lstm_cell_505_matmul_readvariableop_resource:	d?X
Esequential_62_lstm_187_lstm_cell_505_matmul_1_readvariableop_resource:	2?S
Dsequential_62_lstm_187_lstm_cell_505_biasadd_readvariableop_resource:	?U
Csequential_62_lstm_188_lstm_cell_506_matmul_readvariableop_resource:2(W
Esequential_62_lstm_188_lstm_cell_506_matmul_1_readvariableop_resource:
(R
Dsequential_62_lstm_188_lstm_cell_506_biasadd_readvariableop_resource:(G
5sequential_62_dense_62_matmul_readvariableop_resource:
D
6sequential_62_dense_62_biasadd_readvariableop_resource:
identity??-sequential_62/dense_62/BiasAdd/ReadVariableOp?,sequential_62/dense_62/MatMul/ReadVariableOp?;sequential_62/lstm_186/lstm_cell_504/BiasAdd/ReadVariableOp?:sequential_62/lstm_186/lstm_cell_504/MatMul/ReadVariableOp?<sequential_62/lstm_186/lstm_cell_504/MatMul_1/ReadVariableOp?sequential_62/lstm_186/while?;sequential_62/lstm_187/lstm_cell_505/BiasAdd/ReadVariableOp?:sequential_62/lstm_187/lstm_cell_505/MatMul/ReadVariableOp?<sequential_62/lstm_187/lstm_cell_505/MatMul_1/ReadVariableOp?sequential_62/lstm_187/while?;sequential_62/lstm_188/lstm_cell_506/BiasAdd/ReadVariableOp?:sequential_62/lstm_188/lstm_cell_506/MatMul/ReadVariableOp?<sequential_62/lstm_188/lstm_cell_506/MatMul_1/ReadVariableOp?sequential_62/lstm_188/whileZ
sequential_62/lstm_186/ShapeShapelstm_186_input*
T0*
_output_shapes
:t
*sequential_62/lstm_186/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_62/lstm_186/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_62/lstm_186/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_62/lstm_186/strided_sliceStridedSlice%sequential_62/lstm_186/Shape:output:03sequential_62/lstm_186/strided_slice/stack:output:05sequential_62/lstm_186/strided_slice/stack_1:output:05sequential_62/lstm_186/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_62/lstm_186/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_62/lstm_186/zeros/packedPack-sequential_62/lstm_186/strided_slice:output:0.sequential_62/lstm_186/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_62/lstm_186/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_62/lstm_186/zerosFill,sequential_62/lstm_186/zeros/packed:output:0+sequential_62/lstm_186/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_62/lstm_186/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_62/lstm_186/zeros_1/packedPack-sequential_62/lstm_186/strided_slice:output:00sequential_62/lstm_186/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_62/lstm_186/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_62/lstm_186/zeros_1Fill.sequential_62/lstm_186/zeros_1/packed:output:0-sequential_62/lstm_186/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_62/lstm_186/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_62/lstm_186/transpose	Transposelstm_186_input.sequential_62/lstm_186/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_62/lstm_186/Shape_1Shape$sequential_62/lstm_186/transpose:y:0*
T0*
_output_shapes
:v
,sequential_62/lstm_186/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_62/lstm_186/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_62/lstm_186/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_62/lstm_186/strided_slice_1StridedSlice'sequential_62/lstm_186/Shape_1:output:05sequential_62/lstm_186/strided_slice_1/stack:output:07sequential_62/lstm_186/strided_slice_1/stack_1:output:07sequential_62/lstm_186/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_62/lstm_186/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_62/lstm_186/TensorArrayV2TensorListReserve;sequential_62/lstm_186/TensorArrayV2/element_shape:output:0/sequential_62/lstm_186/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_62/lstm_186/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_62/lstm_186/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_62/lstm_186/transpose:y:0Usequential_62/lstm_186/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_62/lstm_186/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_62/lstm_186/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_62/lstm_186/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_62/lstm_186/strided_slice_2StridedSlice$sequential_62/lstm_186/transpose:y:05sequential_62/lstm_186/strided_slice_2/stack:output:07sequential_62/lstm_186/strided_slice_2/stack_1:output:07sequential_62/lstm_186/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_62/lstm_186/lstm_cell_504/MatMul/ReadVariableOpReadVariableOpCsequential_62_lstm_186_lstm_cell_504_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_62/lstm_186/lstm_cell_504/MatMulMatMul/sequential_62/lstm_186/strided_slice_2:output:0Bsequential_62/lstm_186/lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_62/lstm_186/lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOpEsequential_62_lstm_186_lstm_cell_504_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_62/lstm_186/lstm_cell_504/MatMul_1MatMul%sequential_62/lstm_186/zeros:output:0Dsequential_62/lstm_186/lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_62/lstm_186/lstm_cell_504/addAddV25sequential_62/lstm_186/lstm_cell_504/MatMul:product:07sequential_62/lstm_186/lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_62/lstm_186/lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOpDsequential_62_lstm_186_lstm_cell_504_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_62/lstm_186/lstm_cell_504/BiasAddBiasAdd,sequential_62/lstm_186/lstm_cell_504/add:z:0Csequential_62/lstm_186/lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_62/lstm_186/lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_62/lstm_186/lstm_cell_504/splitSplit=sequential_62/lstm_186/lstm_cell_504/split/split_dim:output:05sequential_62/lstm_186/lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_62/lstm_186/lstm_cell_504/SigmoidSigmoid3sequential_62/lstm_186/lstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_62/lstm_186/lstm_cell_504/Sigmoid_1Sigmoid3sequential_62/lstm_186/lstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_62/lstm_186/lstm_cell_504/mulMul2sequential_62/lstm_186/lstm_cell_504/Sigmoid_1:y:0'sequential_62/lstm_186/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_62/lstm_186/lstm_cell_504/ReluRelu3sequential_62/lstm_186/lstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_62/lstm_186/lstm_cell_504/mul_1Mul0sequential_62/lstm_186/lstm_cell_504/Sigmoid:y:07sequential_62/lstm_186/lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_62/lstm_186/lstm_cell_504/add_1AddV2,sequential_62/lstm_186/lstm_cell_504/mul:z:0.sequential_62/lstm_186/lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_62/lstm_186/lstm_cell_504/Sigmoid_2Sigmoid3sequential_62/lstm_186/lstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_62/lstm_186/lstm_cell_504/Relu_1Relu.sequential_62/lstm_186/lstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_62/lstm_186/lstm_cell_504/mul_2Mul2sequential_62/lstm_186/lstm_cell_504/Sigmoid_2:y:09sequential_62/lstm_186/lstm_cell_504/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_62/lstm_186/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_62/lstm_186/TensorArrayV2_1TensorListReserve=sequential_62/lstm_186/TensorArrayV2_1/element_shape:output:0/sequential_62/lstm_186/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_62/lstm_186/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_62/lstm_186/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_62/lstm_186/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_62/lstm_186/whileWhile2sequential_62/lstm_186/while/loop_counter:output:08sequential_62/lstm_186/while/maximum_iterations:output:0$sequential_62/lstm_186/time:output:0/sequential_62/lstm_186/TensorArrayV2_1:handle:0%sequential_62/lstm_186/zeros:output:0'sequential_62/lstm_186/zeros_1:output:0/sequential_62/lstm_186/strided_slice_1:output:0Nsequential_62/lstm_186/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_62_lstm_186_lstm_cell_504_matmul_readvariableop_resourceEsequential_62_lstm_186_lstm_cell_504_matmul_1_readvariableop_resourceDsequential_62_lstm_186_lstm_cell_504_biasadd_readvariableop_resource*
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
)sequential_62_lstm_186_while_body_3059726*5
cond-R+
)sequential_62_lstm_186_while_cond_3059725*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_62/lstm_186/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_62/lstm_186/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_62/lstm_186/while:output:3Psequential_62/lstm_186/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_62/lstm_186/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_62/lstm_186/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_62/lstm_186/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_62/lstm_186/strided_slice_3StridedSliceBsequential_62/lstm_186/TensorArrayV2Stack/TensorListStack:tensor:05sequential_62/lstm_186/strided_slice_3/stack:output:07sequential_62/lstm_186/strided_slice_3/stack_1:output:07sequential_62/lstm_186/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_62/lstm_186/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_62/lstm_186/transpose_1	TransposeBsequential_62/lstm_186/TensorArrayV2Stack/TensorListStack:tensor:00sequential_62/lstm_186/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_62/lstm_186/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_62/lstm_187/ShapeShape&sequential_62/lstm_186/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_62/lstm_187/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_62/lstm_187/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_62/lstm_187/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_62/lstm_187/strided_sliceStridedSlice%sequential_62/lstm_187/Shape:output:03sequential_62/lstm_187/strided_slice/stack:output:05sequential_62/lstm_187/strided_slice/stack_1:output:05sequential_62/lstm_187/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_62/lstm_187/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_62/lstm_187/zeros/packedPack-sequential_62/lstm_187/strided_slice:output:0.sequential_62/lstm_187/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_62/lstm_187/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_62/lstm_187/zerosFill,sequential_62/lstm_187/zeros/packed:output:0+sequential_62/lstm_187/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_62/lstm_187/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_62/lstm_187/zeros_1/packedPack-sequential_62/lstm_187/strided_slice:output:00sequential_62/lstm_187/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_62/lstm_187/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_62/lstm_187/zeros_1Fill.sequential_62/lstm_187/zeros_1/packed:output:0-sequential_62/lstm_187/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_62/lstm_187/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_62/lstm_187/transpose	Transpose&sequential_62/lstm_186/transpose_1:y:0.sequential_62/lstm_187/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_62/lstm_187/Shape_1Shape$sequential_62/lstm_187/transpose:y:0*
T0*
_output_shapes
:v
,sequential_62/lstm_187/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_62/lstm_187/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_62/lstm_187/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_62/lstm_187/strided_slice_1StridedSlice'sequential_62/lstm_187/Shape_1:output:05sequential_62/lstm_187/strided_slice_1/stack:output:07sequential_62/lstm_187/strided_slice_1/stack_1:output:07sequential_62/lstm_187/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_62/lstm_187/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_62/lstm_187/TensorArrayV2TensorListReserve;sequential_62/lstm_187/TensorArrayV2/element_shape:output:0/sequential_62/lstm_187/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_62/lstm_187/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_62/lstm_187/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_62/lstm_187/transpose:y:0Usequential_62/lstm_187/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_62/lstm_187/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_62/lstm_187/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_62/lstm_187/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_62/lstm_187/strided_slice_2StridedSlice$sequential_62/lstm_187/transpose:y:05sequential_62/lstm_187/strided_slice_2/stack:output:07sequential_62/lstm_187/strided_slice_2/stack_1:output:07sequential_62/lstm_187/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_62/lstm_187/lstm_cell_505/MatMul/ReadVariableOpReadVariableOpCsequential_62_lstm_187_lstm_cell_505_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_62/lstm_187/lstm_cell_505/MatMulMatMul/sequential_62/lstm_187/strided_slice_2:output:0Bsequential_62/lstm_187/lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_62/lstm_187/lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOpEsequential_62_lstm_187_lstm_cell_505_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_62/lstm_187/lstm_cell_505/MatMul_1MatMul%sequential_62/lstm_187/zeros:output:0Dsequential_62/lstm_187/lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_62/lstm_187/lstm_cell_505/addAddV25sequential_62/lstm_187/lstm_cell_505/MatMul:product:07sequential_62/lstm_187/lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_62/lstm_187/lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOpDsequential_62_lstm_187_lstm_cell_505_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_62/lstm_187/lstm_cell_505/BiasAddBiasAdd,sequential_62/lstm_187/lstm_cell_505/add:z:0Csequential_62/lstm_187/lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_62/lstm_187/lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_62/lstm_187/lstm_cell_505/splitSplit=sequential_62/lstm_187/lstm_cell_505/split/split_dim:output:05sequential_62/lstm_187/lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_62/lstm_187/lstm_cell_505/SigmoidSigmoid3sequential_62/lstm_187/lstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_62/lstm_187/lstm_cell_505/Sigmoid_1Sigmoid3sequential_62/lstm_187/lstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_62/lstm_187/lstm_cell_505/mulMul2sequential_62/lstm_187/lstm_cell_505/Sigmoid_1:y:0'sequential_62/lstm_187/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_62/lstm_187/lstm_cell_505/ReluRelu3sequential_62/lstm_187/lstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_62/lstm_187/lstm_cell_505/mul_1Mul0sequential_62/lstm_187/lstm_cell_505/Sigmoid:y:07sequential_62/lstm_187/lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_62/lstm_187/lstm_cell_505/add_1AddV2,sequential_62/lstm_187/lstm_cell_505/mul:z:0.sequential_62/lstm_187/lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_62/lstm_187/lstm_cell_505/Sigmoid_2Sigmoid3sequential_62/lstm_187/lstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_62/lstm_187/lstm_cell_505/Relu_1Relu.sequential_62/lstm_187/lstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_62/lstm_187/lstm_cell_505/mul_2Mul2sequential_62/lstm_187/lstm_cell_505/Sigmoid_2:y:09sequential_62/lstm_187/lstm_cell_505/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_62/lstm_187/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_62/lstm_187/TensorArrayV2_1TensorListReserve=sequential_62/lstm_187/TensorArrayV2_1/element_shape:output:0/sequential_62/lstm_187/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_62/lstm_187/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_62/lstm_187/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_62/lstm_187/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_62/lstm_187/whileWhile2sequential_62/lstm_187/while/loop_counter:output:08sequential_62/lstm_187/while/maximum_iterations:output:0$sequential_62/lstm_187/time:output:0/sequential_62/lstm_187/TensorArrayV2_1:handle:0%sequential_62/lstm_187/zeros:output:0'sequential_62/lstm_187/zeros_1:output:0/sequential_62/lstm_187/strided_slice_1:output:0Nsequential_62/lstm_187/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_62_lstm_187_lstm_cell_505_matmul_readvariableop_resourceEsequential_62_lstm_187_lstm_cell_505_matmul_1_readvariableop_resourceDsequential_62_lstm_187_lstm_cell_505_biasadd_readvariableop_resource*
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
)sequential_62_lstm_187_while_body_3059865*5
cond-R+
)sequential_62_lstm_187_while_cond_3059864*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_62/lstm_187/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_62/lstm_187/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_62/lstm_187/while:output:3Psequential_62/lstm_187/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_62/lstm_187/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_62/lstm_187/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_62/lstm_187/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_62/lstm_187/strided_slice_3StridedSliceBsequential_62/lstm_187/TensorArrayV2Stack/TensorListStack:tensor:05sequential_62/lstm_187/strided_slice_3/stack:output:07sequential_62/lstm_187/strided_slice_3/stack_1:output:07sequential_62/lstm_187/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_62/lstm_187/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_62/lstm_187/transpose_1	TransposeBsequential_62/lstm_187/TensorArrayV2Stack/TensorListStack:tensor:00sequential_62/lstm_187/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_62/lstm_187/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_62/lstm_188/ShapeShape&sequential_62/lstm_187/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_62/lstm_188/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_62/lstm_188/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_62/lstm_188/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_62/lstm_188/strided_sliceStridedSlice%sequential_62/lstm_188/Shape:output:03sequential_62/lstm_188/strided_slice/stack:output:05sequential_62/lstm_188/strided_slice/stack_1:output:05sequential_62/lstm_188/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_62/lstm_188/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_62/lstm_188/zeros/packedPack-sequential_62/lstm_188/strided_slice:output:0.sequential_62/lstm_188/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_62/lstm_188/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_62/lstm_188/zerosFill,sequential_62/lstm_188/zeros/packed:output:0+sequential_62/lstm_188/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_62/lstm_188/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_62/lstm_188/zeros_1/packedPack-sequential_62/lstm_188/strided_slice:output:00sequential_62/lstm_188/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_62/lstm_188/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_62/lstm_188/zeros_1Fill.sequential_62/lstm_188/zeros_1/packed:output:0-sequential_62/lstm_188/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_62/lstm_188/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_62/lstm_188/transpose	Transpose&sequential_62/lstm_187/transpose_1:y:0.sequential_62/lstm_188/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_62/lstm_188/Shape_1Shape$sequential_62/lstm_188/transpose:y:0*
T0*
_output_shapes
:v
,sequential_62/lstm_188/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_62/lstm_188/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_62/lstm_188/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_62/lstm_188/strided_slice_1StridedSlice'sequential_62/lstm_188/Shape_1:output:05sequential_62/lstm_188/strided_slice_1/stack:output:07sequential_62/lstm_188/strided_slice_1/stack_1:output:07sequential_62/lstm_188/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_62/lstm_188/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_62/lstm_188/TensorArrayV2TensorListReserve;sequential_62/lstm_188/TensorArrayV2/element_shape:output:0/sequential_62/lstm_188/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_62/lstm_188/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_62/lstm_188/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_62/lstm_188/transpose:y:0Usequential_62/lstm_188/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_62/lstm_188/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_62/lstm_188/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_62/lstm_188/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_62/lstm_188/strided_slice_2StridedSlice$sequential_62/lstm_188/transpose:y:05sequential_62/lstm_188/strided_slice_2/stack:output:07sequential_62/lstm_188/strided_slice_2/stack_1:output:07sequential_62/lstm_188/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_62/lstm_188/lstm_cell_506/MatMul/ReadVariableOpReadVariableOpCsequential_62_lstm_188_lstm_cell_506_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_62/lstm_188/lstm_cell_506/MatMulMatMul/sequential_62/lstm_188/strided_slice_2:output:0Bsequential_62/lstm_188/lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_62/lstm_188/lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOpEsequential_62_lstm_188_lstm_cell_506_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_62/lstm_188/lstm_cell_506/MatMul_1MatMul%sequential_62/lstm_188/zeros:output:0Dsequential_62/lstm_188/lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_62/lstm_188/lstm_cell_506/addAddV25sequential_62/lstm_188/lstm_cell_506/MatMul:product:07sequential_62/lstm_188/lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_62/lstm_188/lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOpDsequential_62_lstm_188_lstm_cell_506_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_62/lstm_188/lstm_cell_506/BiasAddBiasAdd,sequential_62/lstm_188/lstm_cell_506/add:z:0Csequential_62/lstm_188/lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_62/lstm_188/lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_62/lstm_188/lstm_cell_506/splitSplit=sequential_62/lstm_188/lstm_cell_506/split/split_dim:output:05sequential_62/lstm_188/lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_62/lstm_188/lstm_cell_506/SigmoidSigmoid3sequential_62/lstm_188/lstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_62/lstm_188/lstm_cell_506/Sigmoid_1Sigmoid3sequential_62/lstm_188/lstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_62/lstm_188/lstm_cell_506/mulMul2sequential_62/lstm_188/lstm_cell_506/Sigmoid_1:y:0'sequential_62/lstm_188/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_62/lstm_188/lstm_cell_506/ReluRelu3sequential_62/lstm_188/lstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_62/lstm_188/lstm_cell_506/mul_1Mul0sequential_62/lstm_188/lstm_cell_506/Sigmoid:y:07sequential_62/lstm_188/lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_62/lstm_188/lstm_cell_506/add_1AddV2,sequential_62/lstm_188/lstm_cell_506/mul:z:0.sequential_62/lstm_188/lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_62/lstm_188/lstm_cell_506/Sigmoid_2Sigmoid3sequential_62/lstm_188/lstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_62/lstm_188/lstm_cell_506/Relu_1Relu.sequential_62/lstm_188/lstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_62/lstm_188/lstm_cell_506/mul_2Mul2sequential_62/lstm_188/lstm_cell_506/Sigmoid_2:y:09sequential_62/lstm_188/lstm_cell_506/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_62/lstm_188/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_62/lstm_188/TensorArrayV2_1TensorListReserve=sequential_62/lstm_188/TensorArrayV2_1/element_shape:output:0/sequential_62/lstm_188/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_62/lstm_188/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_62/lstm_188/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_62/lstm_188/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_62/lstm_188/whileWhile2sequential_62/lstm_188/while/loop_counter:output:08sequential_62/lstm_188/while/maximum_iterations:output:0$sequential_62/lstm_188/time:output:0/sequential_62/lstm_188/TensorArrayV2_1:handle:0%sequential_62/lstm_188/zeros:output:0'sequential_62/lstm_188/zeros_1:output:0/sequential_62/lstm_188/strided_slice_1:output:0Nsequential_62/lstm_188/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_62_lstm_188_lstm_cell_506_matmul_readvariableop_resourceEsequential_62_lstm_188_lstm_cell_506_matmul_1_readvariableop_resourceDsequential_62_lstm_188_lstm_cell_506_biasadd_readvariableop_resource*
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
)sequential_62_lstm_188_while_body_3060004*5
cond-R+
)sequential_62_lstm_188_while_cond_3060003*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_62/lstm_188/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_62/lstm_188/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_62/lstm_188/while:output:3Psequential_62/lstm_188/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_62/lstm_188/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_62/lstm_188/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_62/lstm_188/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_62/lstm_188/strided_slice_3StridedSliceBsequential_62/lstm_188/TensorArrayV2Stack/TensorListStack:tensor:05sequential_62/lstm_188/strided_slice_3/stack:output:07sequential_62/lstm_188/strided_slice_3/stack_1:output:07sequential_62/lstm_188/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_62/lstm_188/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_62/lstm_188/transpose_1	TransposeBsequential_62/lstm_188/TensorArrayV2Stack/TensorListStack:tensor:00sequential_62/lstm_188/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_62/lstm_188/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_62/dense_62/MatMul/ReadVariableOpReadVariableOp5sequential_62_dense_62_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_62/dense_62/MatMulMatMul/sequential_62/lstm_188/strided_slice_3:output:04sequential_62/dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_62/dense_62/BiasAdd/ReadVariableOpReadVariableOp6sequential_62_dense_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_62/dense_62/BiasAddBiasAdd'sequential_62/dense_62/MatMul:product:05sequential_62/dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_62/dense_62/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_62/dense_62/BiasAdd/ReadVariableOp-^sequential_62/dense_62/MatMul/ReadVariableOp<^sequential_62/lstm_186/lstm_cell_504/BiasAdd/ReadVariableOp;^sequential_62/lstm_186/lstm_cell_504/MatMul/ReadVariableOp=^sequential_62/lstm_186/lstm_cell_504/MatMul_1/ReadVariableOp^sequential_62/lstm_186/while<^sequential_62/lstm_187/lstm_cell_505/BiasAdd/ReadVariableOp;^sequential_62/lstm_187/lstm_cell_505/MatMul/ReadVariableOp=^sequential_62/lstm_187/lstm_cell_505/MatMul_1/ReadVariableOp^sequential_62/lstm_187/while<^sequential_62/lstm_188/lstm_cell_506/BiasAdd/ReadVariableOp;^sequential_62/lstm_188/lstm_cell_506/MatMul/ReadVariableOp=^sequential_62/lstm_188/lstm_cell_506/MatMul_1/ReadVariableOp^sequential_62/lstm_188/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_62/dense_62/BiasAdd/ReadVariableOp-sequential_62/dense_62/BiasAdd/ReadVariableOp2\
,sequential_62/dense_62/MatMul/ReadVariableOp,sequential_62/dense_62/MatMul/ReadVariableOp2z
;sequential_62/lstm_186/lstm_cell_504/BiasAdd/ReadVariableOp;sequential_62/lstm_186/lstm_cell_504/BiasAdd/ReadVariableOp2x
:sequential_62/lstm_186/lstm_cell_504/MatMul/ReadVariableOp:sequential_62/lstm_186/lstm_cell_504/MatMul/ReadVariableOp2|
<sequential_62/lstm_186/lstm_cell_504/MatMul_1/ReadVariableOp<sequential_62/lstm_186/lstm_cell_504/MatMul_1/ReadVariableOp2<
sequential_62/lstm_186/whilesequential_62/lstm_186/while2z
;sequential_62/lstm_187/lstm_cell_505/BiasAdd/ReadVariableOp;sequential_62/lstm_187/lstm_cell_505/BiasAdd/ReadVariableOp2x
:sequential_62/lstm_187/lstm_cell_505/MatMul/ReadVariableOp:sequential_62/lstm_187/lstm_cell_505/MatMul/ReadVariableOp2|
<sequential_62/lstm_187/lstm_cell_505/MatMul_1/ReadVariableOp<sequential_62/lstm_187/lstm_cell_505/MatMul_1/ReadVariableOp2<
sequential_62/lstm_187/whilesequential_62/lstm_187/while2z
;sequential_62/lstm_188/lstm_cell_506/BiasAdd/ReadVariableOp;sequential_62/lstm_188/lstm_cell_506/BiasAdd/ReadVariableOp2x
:sequential_62/lstm_188/lstm_cell_506/MatMul/ReadVariableOp:sequential_62/lstm_188/lstm_cell_506/MatMul/ReadVariableOp2|
<sequential_62/lstm_188/lstm_cell_506/MatMul_1/ReadVariableOp<sequential_62/lstm_188/lstm_cell_506/MatMul_1/ReadVariableOp2<
sequential_62/lstm_188/whilesequential_62/lstm_188/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_186_input
?
?
J__inference_lstm_cell_505_layer_call_and_return_conditional_losses_3065293

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
?
?
J__inference_lstm_cell_505_layer_call_and_return_conditional_losses_3060511

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
?8
?
while_body_3063981
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_505_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_505_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_505_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_505_matmul_readvariableop_resource:	d?G
4while_lstm_cell_505_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_505_biasadd_readvariableop_resource:	???*while/lstm_cell_505/BiasAdd/ReadVariableOp?)while/lstm_cell_505/MatMul/ReadVariableOp?+while/lstm_cell_505/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_505/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_505_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_505/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_505_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_505/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_505/addAddV2$while/lstm_cell_505/MatMul:product:0&while/lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_505_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_505/BiasAddBiasAddwhile/lstm_cell_505/add:z:02while/lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_505/splitSplit,while/lstm_cell_505/split/split_dim:output:0$while/lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_505/SigmoidSigmoid"while/lstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_505/Sigmoid_1Sigmoid"while/lstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mulMul!while/lstm_cell_505/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_505/ReluRelu"while/lstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mul_1Mulwhile/lstm_cell_505/Sigmoid:y:0&while/lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/add_1AddV2while/lstm_cell_505/mul:z:0while/lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_505/Sigmoid_2Sigmoid"while/lstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_505/Relu_1Reluwhile/lstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mul_2Mul!while/lstm_cell_505/Sigmoid_2:y:0(while/lstm_cell_505/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_505/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_505/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_505/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_505/BiasAdd/ReadVariableOp*^while/lstm_cell_505/MatMul/ReadVariableOp,^while/lstm_cell_505/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_505_biasadd_readvariableop_resource5while_lstm_cell_505_biasadd_readvariableop_resource_0"n
4while_lstm_cell_505_matmul_1_readvariableop_resource6while_lstm_cell_505_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_505_matmul_readvariableop_resource4while_lstm_cell_505_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_505/BiasAdd/ReadVariableOp*while/lstm_cell_505/BiasAdd/ReadVariableOp2V
)while/lstm_cell_505/MatMul/ReadVariableOp)while/lstm_cell_505/MatMul/ReadVariableOp2Z
+while/lstm_cell_505/MatMul_1/ReadVariableOp+while/lstm_cell_505/MatMul_1/ReadVariableOp: 
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
while_cond_3063793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3063793___redundant_placeholder05
1while_while_cond_3063793___redundant_placeholder15
1while_while_cond_3063793___redundant_placeholder25
1while_while_cond_3063793___redundant_placeholder3
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
?
*__inference_lstm_188_layer_call_fn_3064505
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
E__inference_lstm_188_layer_call_and_return_conditional_losses_3060944o
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
??
?
#__inference__traced_restore_3065696
file_prefix2
 assignvariableop_dense_62_kernel:
.
 assignvariableop_1_dense_62_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_186_lstm_cell_186_kernel:	?M
:assignvariableop_8_lstm_186_lstm_cell_186_recurrent_kernel:	d?=
.assignvariableop_9_lstm_186_lstm_cell_186_bias:	?D
1assignvariableop_10_lstm_187_lstm_cell_187_kernel:	d?N
;assignvariableop_11_lstm_187_lstm_cell_187_recurrent_kernel:	2?>
/assignvariableop_12_lstm_187_lstm_cell_187_bias:	?C
1assignvariableop_13_lstm_188_lstm_cell_188_kernel:2(M
;assignvariableop_14_lstm_188_lstm_cell_188_recurrent_kernel:
(=
/assignvariableop_15_lstm_188_lstm_cell_188_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_62_kernel_m:
6
(assignvariableop_19_adam_dense_62_bias_m:K
8assignvariableop_20_adam_lstm_186_lstm_cell_186_kernel_m:	?U
Bassignvariableop_21_adam_lstm_186_lstm_cell_186_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_186_lstm_cell_186_bias_m:	?K
8assignvariableop_23_adam_lstm_187_lstm_cell_187_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_187_lstm_cell_187_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_187_lstm_cell_187_bias_m:	?J
8assignvariableop_26_adam_lstm_188_lstm_cell_188_kernel_m:2(T
Bassignvariableop_27_adam_lstm_188_lstm_cell_188_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_188_lstm_cell_188_bias_m:(<
*assignvariableop_29_adam_dense_62_kernel_v:
6
(assignvariableop_30_adam_dense_62_bias_v:K
8assignvariableop_31_adam_lstm_186_lstm_cell_186_kernel_v:	?U
Bassignvariableop_32_adam_lstm_186_lstm_cell_186_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_186_lstm_cell_186_bias_v:	?K
8assignvariableop_34_adam_lstm_187_lstm_cell_187_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_187_lstm_cell_187_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_187_lstm_cell_187_bias_v:	?J
8assignvariableop_37_adam_lstm_188_lstm_cell_188_kernel_v:2(T
Bassignvariableop_38_adam_lstm_188_lstm_cell_188_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_188_lstm_cell_188_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_62_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_62_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_186_lstm_cell_186_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_186_lstm_cell_186_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_186_lstm_cell_186_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_187_lstm_cell_187_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_187_lstm_cell_187_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_187_lstm_cell_187_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_188_lstm_cell_188_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_188_lstm_cell_188_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_188_lstm_cell_188_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_62_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_62_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_186_lstm_cell_186_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_186_lstm_cell_186_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_186_lstm_cell_186_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_187_lstm_cell_187_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_187_lstm_cell_187_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_187_lstm_cell_187_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_188_lstm_cell_188_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_188_lstm_cell_188_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_188_lstm_cell_188_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_62_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_62_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_186_lstm_cell_186_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_186_lstm_cell_186_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_186_lstm_cell_186_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_187_lstm_cell_187_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_187_lstm_cell_187_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_187_lstm_cell_187_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_188_lstm_cell_188_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_188_lstm_cell_188_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_188_lstm_cell_188_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
while_cond_3065025
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3065025___redundant_placeholder05
1while_while_cond_3065025___redundant_placeholder15
1while_while_cond_3065025___redundant_placeholder25
1while_while_cond_3065025___redundant_placeholder3
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
?
?
J__inference_lstm_cell_506_layer_call_and_return_conditional_losses_3065423

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
*__inference_lstm_187_layer_call_fn_3063922

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
E__inference_lstm_187_layer_call_and_return_conditional_losses_3061974s
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
?
/__inference_lstm_cell_506_layer_call_fn_3065359

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
J__inference_lstm_cell_506_layer_call_and_return_conditional_losses_3061007o
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
?
while_cond_3061358
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3061358___redundant_placeholder05
1while_while_cond_3061358___redundant_placeholder15
1while_while_cond_3061358___redundant_placeholder25
1while_while_cond_3061358___redundant_placeholder3
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
?K
?
E__inference_lstm_187_layer_call_and_return_conditional_losses_3064065
inputs_0?
,lstm_cell_505_matmul_readvariableop_resource:	d?A
.lstm_cell_505_matmul_1_readvariableop_resource:	2?<
-lstm_cell_505_biasadd_readvariableop_resource:	?
identity??$lstm_cell_505/BiasAdd/ReadVariableOp?#lstm_cell_505/MatMul/ReadVariableOp?%lstm_cell_505/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_505/MatMul/ReadVariableOpReadVariableOp,lstm_cell_505_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_505/MatMulMatMulstrided_slice_2:output:0+lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_505_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_505/MatMul_1MatMulzeros:output:0-lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_505/addAddV2lstm_cell_505/MatMul:product:0 lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_505_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_505/BiasAddBiasAddlstm_cell_505/add:z:0,lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_505/splitSplit&lstm_cell_505/split/split_dim:output:0lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_505/SigmoidSigmoidlstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_505/Sigmoid_1Sigmoidlstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_505/mulMullstm_cell_505/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_505/ReluRelulstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_505/mul_1Mullstm_cell_505/Sigmoid:y:0 lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_505/add_1AddV2lstm_cell_505/mul:z:0lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_505/Sigmoid_2Sigmoidlstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_505/Relu_1Relulstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_505/mul_2Mullstm_cell_505/Sigmoid_2:y:0"lstm_cell_505/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_505_matmul_readvariableop_resource.lstm_cell_505_matmul_1_readvariableop_resource-lstm_cell_505_biasadd_readvariableop_resource*
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
while_body_3063981*
condR
while_cond_3063980*K
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
NoOpNoOp%^lstm_cell_505/BiasAdd/ReadVariableOp$^lstm_cell_505/MatMul/ReadVariableOp&^lstm_cell_505/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_505/BiasAdd/ReadVariableOp$lstm_cell_505/BiasAdd/ReadVariableOp2J
#lstm_cell_505/MatMul/ReadVariableOp#lstm_cell_505/MatMul/ReadVariableOp2N
%lstm_cell_505/MatMul_1/ReadVariableOp%lstm_cell_505/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_sequential_62_layer_call_and_return_conditional_losses_3062289
lstm_186_input#
lstm_186_3062262:	?#
lstm_186_3062264:	d?
lstm_186_3062266:	?#
lstm_187_3062269:	d?#
lstm_187_3062271:	2?
lstm_187_3062273:	?"
lstm_188_3062276:2("
lstm_188_3062278:
(
lstm_188_3062280:("
dense_62_3062283:

dense_62_3062285:
identity?? dense_62/StatefulPartitionedCall? lstm_186/StatefulPartitionedCall? lstm_187/StatefulPartitionedCall? lstm_188/StatefulPartitionedCall?
 lstm_186/StatefulPartitionedCallStatefulPartitionedCalllstm_186_inputlstm_186_3062262lstm_186_3062264lstm_186_3062266*
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
E__inference_lstm_186_layer_call_and_return_conditional_losses_3061293?
 lstm_187/StatefulPartitionedCallStatefulPartitionedCall)lstm_186/StatefulPartitionedCall:output:0lstm_187_3062269lstm_187_3062271lstm_187_3062273*
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
E__inference_lstm_187_layer_call_and_return_conditional_losses_3061443?
 lstm_188/StatefulPartitionedCallStatefulPartitionedCall)lstm_187/StatefulPartitionedCall:output:0lstm_188_3062276lstm_188_3062278lstm_188_3062280*
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
E__inference_lstm_188_layer_call_and_return_conditional_losses_3061593?
 dense_62/StatefulPartitionedCallStatefulPartitionedCall)lstm_188/StatefulPartitionedCall:output:0dense_62_3062283dense_62_3062285*
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
E__inference_dense_62_layer_call_and_return_conditional_losses_3061611x
IdentityIdentity)dense_62/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_62/StatefulPartitionedCall!^lstm_186/StatefulPartitionedCall!^lstm_187/StatefulPartitionedCall!^lstm_188/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 lstm_186/StatefulPartitionedCall lstm_186/StatefulPartitionedCall2D
 lstm_187/StatefulPartitionedCall lstm_187/StatefulPartitionedCall2D
 lstm_188/StatefulPartitionedCall lstm_188/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_186_input
?
?
while_cond_3063980
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3063980___redundant_placeholder05
1while_while_cond_3063980___redundant_placeholder15
1while_while_cond_3063980___redundant_placeholder25
1while_while_cond_3063980___redundant_placeholder3
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
?K
?
E__inference_lstm_187_layer_call_and_return_conditional_losses_3064208
inputs_0?
,lstm_cell_505_matmul_readvariableop_resource:	d?A
.lstm_cell_505_matmul_1_readvariableop_resource:	2?<
-lstm_cell_505_biasadd_readvariableop_resource:	?
identity??$lstm_cell_505/BiasAdd/ReadVariableOp?#lstm_cell_505/MatMul/ReadVariableOp?%lstm_cell_505/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_505/MatMul/ReadVariableOpReadVariableOp,lstm_cell_505_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_505/MatMulMatMulstrided_slice_2:output:0+lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_505_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_505/MatMul_1MatMulzeros:output:0-lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_505/addAddV2lstm_cell_505/MatMul:product:0 lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_505_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_505/BiasAddBiasAddlstm_cell_505/add:z:0,lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_505/splitSplit&lstm_cell_505/split/split_dim:output:0lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_505/SigmoidSigmoidlstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_505/Sigmoid_1Sigmoidlstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_505/mulMullstm_cell_505/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_505/ReluRelulstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_505/mul_1Mullstm_cell_505/Sigmoid:y:0 lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_505/add_1AddV2lstm_cell_505/mul:z:0lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_505/Sigmoid_2Sigmoidlstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_505/Relu_1Relulstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_505/mul_2Mullstm_cell_505/Sigmoid_2:y:0"lstm_cell_505/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_505_matmul_readvariableop_resource.lstm_cell_505_matmul_1_readvariableop_resource-lstm_cell_505_biasadd_readvariableop_resource*
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
while_body_3064124*
condR
while_cond_3064123*K
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
NoOpNoOp%^lstm_cell_505/BiasAdd/ReadVariableOp$^lstm_cell_505/MatMul/ReadVariableOp&^lstm_cell_505/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_505/BiasAdd/ReadVariableOp$lstm_cell_505/BiasAdd/ReadVariableOp2J
#lstm_cell_505/MatMul/ReadVariableOp#lstm_cell_505/MatMul/ReadVariableOp2N
%lstm_cell_505/MatMul_1/ReadVariableOp%lstm_cell_505/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_188_layer_call_and_return_conditional_losses_3065110

inputs>
,lstm_cell_506_matmul_readvariableop_resource:2(@
.lstm_cell_506_matmul_1_readvariableop_resource:
(;
-lstm_cell_506_biasadd_readvariableop_resource:(
identity??$lstm_cell_506/BiasAdd/ReadVariableOp?#lstm_cell_506/MatMul/ReadVariableOp?%lstm_cell_506/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_506/MatMul/ReadVariableOpReadVariableOp,lstm_cell_506_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_506/MatMulMatMulstrided_slice_2:output:0+lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_506_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_506/MatMul_1MatMulzeros:output:0-lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_506/addAddV2lstm_cell_506/MatMul:product:0 lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_506_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_506/BiasAddBiasAddlstm_cell_506/add:z:0,lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_506/splitSplit&lstm_cell_506/split/split_dim:output:0lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_506/SigmoidSigmoidlstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_506/Sigmoid_1Sigmoidlstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_506/mulMullstm_cell_506/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_506/ReluRelulstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_506/mul_1Mullstm_cell_506/Sigmoid:y:0 lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_506/add_1AddV2lstm_cell_506/mul:z:0lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_506/Sigmoid_2Sigmoidlstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_506/Relu_1Relulstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_506/mul_2Mullstm_cell_506/Sigmoid_2:y:0"lstm_cell_506/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_506_matmul_readvariableop_resource.lstm_cell_506_matmul_1_readvariableop_resource-lstm_cell_506_biasadd_readvariableop_resource*
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
while_body_3065026*
condR
while_cond_3065025*K
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
NoOpNoOp%^lstm_cell_506/BiasAdd/ReadVariableOp$^lstm_cell_506/MatMul/ReadVariableOp&^lstm_cell_506/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_506/BiasAdd/ReadVariableOp$lstm_cell_506/BiasAdd/ReadVariableOp2J
#lstm_cell_506/MatMul/ReadVariableOp#lstm_cell_506/MatMul/ReadVariableOp2N
%lstm_cell_506/MatMul_1/ReadVariableOp%lstm_cell_506/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?S
?
)sequential_62_lstm_186_while_body_3059726J
Fsequential_62_lstm_186_while_sequential_62_lstm_186_while_loop_counterP
Lsequential_62_lstm_186_while_sequential_62_lstm_186_while_maximum_iterations,
(sequential_62_lstm_186_while_placeholder.
*sequential_62_lstm_186_while_placeholder_1.
*sequential_62_lstm_186_while_placeholder_2.
*sequential_62_lstm_186_while_placeholder_3I
Esequential_62_lstm_186_while_sequential_62_lstm_186_strided_slice_1_0?
?sequential_62_lstm_186_while_tensorarrayv2read_tensorlistgetitem_sequential_62_lstm_186_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_62_lstm_186_while_lstm_cell_504_matmul_readvariableop_resource_0:	?`
Msequential_62_lstm_186_while_lstm_cell_504_matmul_1_readvariableop_resource_0:	d?[
Lsequential_62_lstm_186_while_lstm_cell_504_biasadd_readvariableop_resource_0:	?)
%sequential_62_lstm_186_while_identity+
'sequential_62_lstm_186_while_identity_1+
'sequential_62_lstm_186_while_identity_2+
'sequential_62_lstm_186_while_identity_3+
'sequential_62_lstm_186_while_identity_4+
'sequential_62_lstm_186_while_identity_5G
Csequential_62_lstm_186_while_sequential_62_lstm_186_strided_slice_1?
sequential_62_lstm_186_while_tensorarrayv2read_tensorlistgetitem_sequential_62_lstm_186_tensorarrayunstack_tensorlistfromtensor\
Isequential_62_lstm_186_while_lstm_cell_504_matmul_readvariableop_resource:	?^
Ksequential_62_lstm_186_while_lstm_cell_504_matmul_1_readvariableop_resource:	d?Y
Jsequential_62_lstm_186_while_lstm_cell_504_biasadd_readvariableop_resource:	???Asequential_62/lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOp?@sequential_62/lstm_186/while/lstm_cell_504/MatMul/ReadVariableOp?Bsequential_62/lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOp?
Nsequential_62/lstm_186/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_62/lstm_186/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_62_lstm_186_while_tensorarrayv2read_tensorlistgetitem_sequential_62_lstm_186_tensorarrayunstack_tensorlistfromtensor_0(sequential_62_lstm_186_while_placeholderWsequential_62/lstm_186/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_62/lstm_186/while/lstm_cell_504/MatMul/ReadVariableOpReadVariableOpKsequential_62_lstm_186_while_lstm_cell_504_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_62/lstm_186/while/lstm_cell_504/MatMulMatMulGsequential_62/lstm_186/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_62/lstm_186/while/lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_62/lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOpMsequential_62_lstm_186_while_lstm_cell_504_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_62/lstm_186/while/lstm_cell_504/MatMul_1MatMul*sequential_62_lstm_186_while_placeholder_2Jsequential_62/lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_62/lstm_186/while/lstm_cell_504/addAddV2;sequential_62/lstm_186/while/lstm_cell_504/MatMul:product:0=sequential_62/lstm_186/while/lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_62/lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOpLsequential_62_lstm_186_while_lstm_cell_504_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_62/lstm_186/while/lstm_cell_504/BiasAddBiasAdd2sequential_62/lstm_186/while/lstm_cell_504/add:z:0Isequential_62/lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_62/lstm_186/while/lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_62/lstm_186/while/lstm_cell_504/splitSplitCsequential_62/lstm_186/while/lstm_cell_504/split/split_dim:output:0;sequential_62/lstm_186/while/lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_62/lstm_186/while/lstm_cell_504/SigmoidSigmoid9sequential_62/lstm_186/while/lstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_62/lstm_186/while/lstm_cell_504/Sigmoid_1Sigmoid9sequential_62/lstm_186/while/lstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_62/lstm_186/while/lstm_cell_504/mulMul8sequential_62/lstm_186/while/lstm_cell_504/Sigmoid_1:y:0*sequential_62_lstm_186_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_62/lstm_186/while/lstm_cell_504/ReluRelu9sequential_62/lstm_186/while/lstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_62/lstm_186/while/lstm_cell_504/mul_1Mul6sequential_62/lstm_186/while/lstm_cell_504/Sigmoid:y:0=sequential_62/lstm_186/while/lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_62/lstm_186/while/lstm_cell_504/add_1AddV22sequential_62/lstm_186/while/lstm_cell_504/mul:z:04sequential_62/lstm_186/while/lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_62/lstm_186/while/lstm_cell_504/Sigmoid_2Sigmoid9sequential_62/lstm_186/while/lstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_62/lstm_186/while/lstm_cell_504/Relu_1Relu4sequential_62/lstm_186/while/lstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_62/lstm_186/while/lstm_cell_504/mul_2Mul8sequential_62/lstm_186/while/lstm_cell_504/Sigmoid_2:y:0?sequential_62/lstm_186/while/lstm_cell_504/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_62/lstm_186/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_62_lstm_186_while_placeholder_1(sequential_62_lstm_186_while_placeholder4sequential_62/lstm_186/while/lstm_cell_504/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_62/lstm_186/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_62/lstm_186/while/addAddV2(sequential_62_lstm_186_while_placeholder+sequential_62/lstm_186/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_62/lstm_186/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_62/lstm_186/while/add_1AddV2Fsequential_62_lstm_186_while_sequential_62_lstm_186_while_loop_counter-sequential_62/lstm_186/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_62/lstm_186/while/IdentityIdentity&sequential_62/lstm_186/while/add_1:z:0"^sequential_62/lstm_186/while/NoOp*
T0*
_output_shapes
: ?
'sequential_62/lstm_186/while/Identity_1IdentityLsequential_62_lstm_186_while_sequential_62_lstm_186_while_maximum_iterations"^sequential_62/lstm_186/while/NoOp*
T0*
_output_shapes
: ?
'sequential_62/lstm_186/while/Identity_2Identity$sequential_62/lstm_186/while/add:z:0"^sequential_62/lstm_186/while/NoOp*
T0*
_output_shapes
: ?
'sequential_62/lstm_186/while/Identity_3IdentityQsequential_62/lstm_186/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_62/lstm_186/while/NoOp*
T0*
_output_shapes
: ?
'sequential_62/lstm_186/while/Identity_4Identity4sequential_62/lstm_186/while/lstm_cell_504/mul_2:z:0"^sequential_62/lstm_186/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_62/lstm_186/while/Identity_5Identity4sequential_62/lstm_186/while/lstm_cell_504/add_1:z:0"^sequential_62/lstm_186/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_62/lstm_186/while/NoOpNoOpB^sequential_62/lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOpA^sequential_62/lstm_186/while/lstm_cell_504/MatMul/ReadVariableOpC^sequential_62/lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_62_lstm_186_while_identity.sequential_62/lstm_186/while/Identity:output:0"[
'sequential_62_lstm_186_while_identity_10sequential_62/lstm_186/while/Identity_1:output:0"[
'sequential_62_lstm_186_while_identity_20sequential_62/lstm_186/while/Identity_2:output:0"[
'sequential_62_lstm_186_while_identity_30sequential_62/lstm_186/while/Identity_3:output:0"[
'sequential_62_lstm_186_while_identity_40sequential_62/lstm_186/while/Identity_4:output:0"[
'sequential_62_lstm_186_while_identity_50sequential_62/lstm_186/while/Identity_5:output:0"?
Jsequential_62_lstm_186_while_lstm_cell_504_biasadd_readvariableop_resourceLsequential_62_lstm_186_while_lstm_cell_504_biasadd_readvariableop_resource_0"?
Ksequential_62_lstm_186_while_lstm_cell_504_matmul_1_readvariableop_resourceMsequential_62_lstm_186_while_lstm_cell_504_matmul_1_readvariableop_resource_0"?
Isequential_62_lstm_186_while_lstm_cell_504_matmul_readvariableop_resourceKsequential_62_lstm_186_while_lstm_cell_504_matmul_readvariableop_resource_0"?
Csequential_62_lstm_186_while_sequential_62_lstm_186_strided_slice_1Esequential_62_lstm_186_while_sequential_62_lstm_186_strided_slice_1_0"?
sequential_62_lstm_186_while_tensorarrayv2read_tensorlistgetitem_sequential_62_lstm_186_tensorarrayunstack_tensorlistfromtensor?sequential_62_lstm_186_while_tensorarrayv2read_tensorlistgetitem_sequential_62_lstm_186_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_62/lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOpAsequential_62/lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOp2?
@sequential_62/lstm_186/while/lstm_cell_504/MatMul/ReadVariableOp@sequential_62/lstm_186/while/lstm_cell_504/MatMul/ReadVariableOp2?
Bsequential_62/lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOpBsequential_62/lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOp: 
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
while_body_3063365
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_504_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_504_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_504_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_504_matmul_readvariableop_resource:	?G
4while_lstm_cell_504_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_504_biasadd_readvariableop_resource:	???*while/lstm_cell_504/BiasAdd/ReadVariableOp?)while/lstm_cell_504/MatMul/ReadVariableOp?+while/lstm_cell_504/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_504/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_504_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_504/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_504_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_504/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_504/addAddV2$while/lstm_cell_504/MatMul:product:0&while/lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_504_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_504/BiasAddBiasAddwhile/lstm_cell_504/add:z:02while/lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_504/splitSplit,while/lstm_cell_504/split/split_dim:output:0$while/lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_504/SigmoidSigmoid"while/lstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_504/Sigmoid_1Sigmoid"while/lstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mulMul!while/lstm_cell_504/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_504/ReluRelu"while/lstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mul_1Mulwhile/lstm_cell_504/Sigmoid:y:0&while/lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/add_1AddV2while/lstm_cell_504/mul:z:0while/lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_504/Sigmoid_2Sigmoid"while/lstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_504/Relu_1Reluwhile/lstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mul_2Mul!while/lstm_cell_504/Sigmoid_2:y:0(while/lstm_cell_504/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_504/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_504/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_504/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_504/BiasAdd/ReadVariableOp*^while/lstm_cell_504/MatMul/ReadVariableOp,^while/lstm_cell_504/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_504_biasadd_readvariableop_resource5while_lstm_cell_504_biasadd_readvariableop_resource_0"n
4while_lstm_cell_504_matmul_1_readvariableop_resource6while_lstm_cell_504_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_504_matmul_readvariableop_resource4while_lstm_cell_504_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_504/BiasAdd/ReadVariableOp*while/lstm_cell_504/BiasAdd/ReadVariableOp2V
)while/lstm_cell_504/MatMul/ReadVariableOp)while/lstm_cell_504/MatMul/ReadVariableOp2Z
+while/lstm_cell_504/MatMul_1/ReadVariableOp+while/lstm_cell_504/MatMul_1/ReadVariableOp: 
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
J__inference_lstm_cell_504_layer_call_and_return_conditional_losses_3065195

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
?
?
J__inference_lstm_cell_505_layer_call_and_return_conditional_losses_3065325

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
?

?
lstm_188_while_cond_3063171.
*lstm_188_while_lstm_188_while_loop_counter4
0lstm_188_while_lstm_188_while_maximum_iterations
lstm_188_while_placeholder 
lstm_188_while_placeholder_1 
lstm_188_while_placeholder_2 
lstm_188_while_placeholder_30
,lstm_188_while_less_lstm_188_strided_slice_1G
Clstm_188_while_lstm_188_while_cond_3063171___redundant_placeholder0G
Clstm_188_while_lstm_188_while_cond_3063171___redundant_placeholder1G
Clstm_188_while_lstm_188_while_cond_3063171___redundant_placeholder2G
Clstm_188_while_lstm_188_while_cond_3063171___redundant_placeholder3
lstm_188_while_identity
?
lstm_188/while/LessLesslstm_188_while_placeholder,lstm_188_while_less_lstm_188_strided_slice_1*
T0*
_output_shapes
: ]
lstm_188/while/IdentityIdentitylstm_188/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_188_while_identity lstm_188/while/Identity:output:0*(
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
while_body_3065026
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_506_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_506_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_506_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_506_matmul_readvariableop_resource:2(F
4while_lstm_cell_506_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_506_biasadd_readvariableop_resource:(??*while/lstm_cell_506/BiasAdd/ReadVariableOp?)while/lstm_cell_506/MatMul/ReadVariableOp?+while/lstm_cell_506/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_506/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_506_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_506/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_506_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_506/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_506/addAddV2$while/lstm_cell_506/MatMul:product:0&while/lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_506_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_506/BiasAddBiasAddwhile/lstm_cell_506/add:z:02while/lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_506/splitSplit,while/lstm_cell_506/split/split_dim:output:0$while/lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_506/SigmoidSigmoid"while/lstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_506/Sigmoid_1Sigmoid"while/lstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mulMul!while/lstm_cell_506/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_506/ReluRelu"while/lstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mul_1Mulwhile/lstm_cell_506/Sigmoid:y:0&while/lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/add_1AddV2while/lstm_cell_506/mul:z:0while/lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_506/Sigmoid_2Sigmoid"while/lstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_506/Relu_1Reluwhile/lstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mul_2Mul!while/lstm_cell_506/Sigmoid_2:y:0(while/lstm_cell_506/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_506/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_506/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_506/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_506/BiasAdd/ReadVariableOp*^while/lstm_cell_506/MatMul/ReadVariableOp,^while/lstm_cell_506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_506_biasadd_readvariableop_resource5while_lstm_cell_506_biasadd_readvariableop_resource_0"n
4while_lstm_cell_506_matmul_1_readvariableop_resource6while_lstm_cell_506_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_506_matmul_readvariableop_resource4while_lstm_cell_506_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_506/BiasAdd/ReadVariableOp*while/lstm_cell_506/BiasAdd/ReadVariableOp2V
)while/lstm_cell_506/MatMul/ReadVariableOp)while/lstm_cell_506/MatMul/ReadVariableOp2Z
+while/lstm_cell_506/MatMul_1/ReadVariableOp+while/lstm_cell_506/MatMul_1/ReadVariableOp: 
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
?C
?

lstm_186_while_body_3062467.
*lstm_186_while_lstm_186_while_loop_counter4
0lstm_186_while_lstm_186_while_maximum_iterations
lstm_186_while_placeholder 
lstm_186_while_placeholder_1 
lstm_186_while_placeholder_2 
lstm_186_while_placeholder_3-
)lstm_186_while_lstm_186_strided_slice_1_0i
elstm_186_while_tensorarrayv2read_tensorlistgetitem_lstm_186_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_186_while_lstm_cell_504_matmul_readvariableop_resource_0:	?R
?lstm_186_while_lstm_cell_504_matmul_1_readvariableop_resource_0:	d?M
>lstm_186_while_lstm_cell_504_biasadd_readvariableop_resource_0:	?
lstm_186_while_identity
lstm_186_while_identity_1
lstm_186_while_identity_2
lstm_186_while_identity_3
lstm_186_while_identity_4
lstm_186_while_identity_5+
'lstm_186_while_lstm_186_strided_slice_1g
clstm_186_while_tensorarrayv2read_tensorlistgetitem_lstm_186_tensorarrayunstack_tensorlistfromtensorN
;lstm_186_while_lstm_cell_504_matmul_readvariableop_resource:	?P
=lstm_186_while_lstm_cell_504_matmul_1_readvariableop_resource:	d?K
<lstm_186_while_lstm_cell_504_biasadd_readvariableop_resource:	???3lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOp?2lstm_186/while/lstm_cell_504/MatMul/ReadVariableOp?4lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOp?
@lstm_186/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_186/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_186_while_tensorarrayv2read_tensorlistgetitem_lstm_186_tensorarrayunstack_tensorlistfromtensor_0lstm_186_while_placeholderIlstm_186/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_186/while/lstm_cell_504/MatMul/ReadVariableOpReadVariableOp=lstm_186_while_lstm_cell_504_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_186/while/lstm_cell_504/MatMulMatMul9lstm_186/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_186/while/lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOp?lstm_186_while_lstm_cell_504_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_186/while/lstm_cell_504/MatMul_1MatMullstm_186_while_placeholder_2<lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_186/while/lstm_cell_504/addAddV2-lstm_186/while/lstm_cell_504/MatMul:product:0/lstm_186/while/lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOp>lstm_186_while_lstm_cell_504_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_186/while/lstm_cell_504/BiasAddBiasAdd$lstm_186/while/lstm_cell_504/add:z:0;lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_186/while/lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_186/while/lstm_cell_504/splitSplit5lstm_186/while/lstm_cell_504/split/split_dim:output:0-lstm_186/while/lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_186/while/lstm_cell_504/SigmoidSigmoid+lstm_186/while/lstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_186/while/lstm_cell_504/Sigmoid_1Sigmoid+lstm_186/while/lstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_186/while/lstm_cell_504/mulMul*lstm_186/while/lstm_cell_504/Sigmoid_1:y:0lstm_186_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_186/while/lstm_cell_504/ReluRelu+lstm_186/while/lstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_186/while/lstm_cell_504/mul_1Mul(lstm_186/while/lstm_cell_504/Sigmoid:y:0/lstm_186/while/lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_186/while/lstm_cell_504/add_1AddV2$lstm_186/while/lstm_cell_504/mul:z:0&lstm_186/while/lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_186/while/lstm_cell_504/Sigmoid_2Sigmoid+lstm_186/while/lstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_186/while/lstm_cell_504/Relu_1Relu&lstm_186/while/lstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_186/while/lstm_cell_504/mul_2Mul*lstm_186/while/lstm_cell_504/Sigmoid_2:y:01lstm_186/while/lstm_cell_504/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_186/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_186_while_placeholder_1lstm_186_while_placeholder&lstm_186/while/lstm_cell_504/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_186/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_186/while/addAddV2lstm_186_while_placeholderlstm_186/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_186/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_186/while/add_1AddV2*lstm_186_while_lstm_186_while_loop_counterlstm_186/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_186/while/IdentityIdentitylstm_186/while/add_1:z:0^lstm_186/while/NoOp*
T0*
_output_shapes
: ?
lstm_186/while/Identity_1Identity0lstm_186_while_lstm_186_while_maximum_iterations^lstm_186/while/NoOp*
T0*
_output_shapes
: t
lstm_186/while/Identity_2Identitylstm_186/while/add:z:0^lstm_186/while/NoOp*
T0*
_output_shapes
: ?
lstm_186/while/Identity_3IdentityClstm_186/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_186/while/NoOp*
T0*
_output_shapes
: ?
lstm_186/while/Identity_4Identity&lstm_186/while/lstm_cell_504/mul_2:z:0^lstm_186/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_186/while/Identity_5Identity&lstm_186/while/lstm_cell_504/add_1:z:0^lstm_186/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_186/while/NoOpNoOp4^lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOp3^lstm_186/while/lstm_cell_504/MatMul/ReadVariableOp5^lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_186_while_identity lstm_186/while/Identity:output:0"?
lstm_186_while_identity_1"lstm_186/while/Identity_1:output:0"?
lstm_186_while_identity_2"lstm_186/while/Identity_2:output:0"?
lstm_186_while_identity_3"lstm_186/while/Identity_3:output:0"?
lstm_186_while_identity_4"lstm_186/while/Identity_4:output:0"?
lstm_186_while_identity_5"lstm_186/while/Identity_5:output:0"T
'lstm_186_while_lstm_186_strided_slice_1)lstm_186_while_lstm_186_strided_slice_1_0"~
<lstm_186_while_lstm_cell_504_biasadd_readvariableop_resource>lstm_186_while_lstm_cell_504_biasadd_readvariableop_resource_0"?
=lstm_186_while_lstm_cell_504_matmul_1_readvariableop_resource?lstm_186_while_lstm_cell_504_matmul_1_readvariableop_resource_0"|
;lstm_186_while_lstm_cell_504_matmul_readvariableop_resource=lstm_186_while_lstm_cell_504_matmul_readvariableop_resource_0"?
clstm_186_while_tensorarrayv2read_tensorlistgetitem_lstm_186_tensorarrayunstack_tensorlistfromtensorelstm_186_while_tensorarrayv2read_tensorlistgetitem_lstm_186_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOp3lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOp2h
2lstm_186/while/lstm_cell_504/MatMul/ReadVariableOp2lstm_186/while/lstm_cell_504/MatMul/ReadVariableOp2l
4lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOp4lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOp: 
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
?
*__inference_lstm_187_layer_call_fn_3063889
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
E__inference_lstm_187_layer_call_and_return_conditional_losses_3060594|
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
?
?
*__inference_lstm_187_layer_call_fn_3063911

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
E__inference_lstm_187_layer_call_and_return_conditional_losses_3061443s
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
?C
?

lstm_188_while_body_3062745.
*lstm_188_while_lstm_188_while_loop_counter4
0lstm_188_while_lstm_188_while_maximum_iterations
lstm_188_while_placeholder 
lstm_188_while_placeholder_1 
lstm_188_while_placeholder_2 
lstm_188_while_placeholder_3-
)lstm_188_while_lstm_188_strided_slice_1_0i
elstm_188_while_tensorarrayv2read_tensorlistgetitem_lstm_188_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_188_while_lstm_cell_506_matmul_readvariableop_resource_0:2(Q
?lstm_188_while_lstm_cell_506_matmul_1_readvariableop_resource_0:
(L
>lstm_188_while_lstm_cell_506_biasadd_readvariableop_resource_0:(
lstm_188_while_identity
lstm_188_while_identity_1
lstm_188_while_identity_2
lstm_188_while_identity_3
lstm_188_while_identity_4
lstm_188_while_identity_5+
'lstm_188_while_lstm_188_strided_slice_1g
clstm_188_while_tensorarrayv2read_tensorlistgetitem_lstm_188_tensorarrayunstack_tensorlistfromtensorM
;lstm_188_while_lstm_cell_506_matmul_readvariableop_resource:2(O
=lstm_188_while_lstm_cell_506_matmul_1_readvariableop_resource:
(J
<lstm_188_while_lstm_cell_506_biasadd_readvariableop_resource:(??3lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOp?2lstm_188/while/lstm_cell_506/MatMul/ReadVariableOp?4lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOp?
@lstm_188/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_188/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_188_while_tensorarrayv2read_tensorlistgetitem_lstm_188_tensorarrayunstack_tensorlistfromtensor_0lstm_188_while_placeholderIlstm_188/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_188/while/lstm_cell_506/MatMul/ReadVariableOpReadVariableOp=lstm_188_while_lstm_cell_506_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_188/while/lstm_cell_506/MatMulMatMul9lstm_188/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_188/while/lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOp?lstm_188_while_lstm_cell_506_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_188/while/lstm_cell_506/MatMul_1MatMullstm_188_while_placeholder_2<lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_188/while/lstm_cell_506/addAddV2-lstm_188/while/lstm_cell_506/MatMul:product:0/lstm_188/while/lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOp>lstm_188_while_lstm_cell_506_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_188/while/lstm_cell_506/BiasAddBiasAdd$lstm_188/while/lstm_cell_506/add:z:0;lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_188/while/lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_188/while/lstm_cell_506/splitSplit5lstm_188/while/lstm_cell_506/split/split_dim:output:0-lstm_188/while/lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_188/while/lstm_cell_506/SigmoidSigmoid+lstm_188/while/lstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_188/while/lstm_cell_506/Sigmoid_1Sigmoid+lstm_188/while/lstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_188/while/lstm_cell_506/mulMul*lstm_188/while/lstm_cell_506/Sigmoid_1:y:0lstm_188_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_188/while/lstm_cell_506/ReluRelu+lstm_188/while/lstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_188/while/lstm_cell_506/mul_1Mul(lstm_188/while/lstm_cell_506/Sigmoid:y:0/lstm_188/while/lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_188/while/lstm_cell_506/add_1AddV2$lstm_188/while/lstm_cell_506/mul:z:0&lstm_188/while/lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_188/while/lstm_cell_506/Sigmoid_2Sigmoid+lstm_188/while/lstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_188/while/lstm_cell_506/Relu_1Relu&lstm_188/while/lstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_188/while/lstm_cell_506/mul_2Mul*lstm_188/while/lstm_cell_506/Sigmoid_2:y:01lstm_188/while/lstm_cell_506/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_188/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_188_while_placeholder_1lstm_188_while_placeholder&lstm_188/while/lstm_cell_506/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_188/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_188/while/addAddV2lstm_188_while_placeholderlstm_188/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_188/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_188/while/add_1AddV2*lstm_188_while_lstm_188_while_loop_counterlstm_188/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_188/while/IdentityIdentitylstm_188/while/add_1:z:0^lstm_188/while/NoOp*
T0*
_output_shapes
: ?
lstm_188/while/Identity_1Identity0lstm_188_while_lstm_188_while_maximum_iterations^lstm_188/while/NoOp*
T0*
_output_shapes
: t
lstm_188/while/Identity_2Identitylstm_188/while/add:z:0^lstm_188/while/NoOp*
T0*
_output_shapes
: ?
lstm_188/while/Identity_3IdentityClstm_188/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_188/while/NoOp*
T0*
_output_shapes
: ?
lstm_188/while/Identity_4Identity&lstm_188/while/lstm_cell_506/mul_2:z:0^lstm_188/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_188/while/Identity_5Identity&lstm_188/while/lstm_cell_506/add_1:z:0^lstm_188/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_188/while/NoOpNoOp4^lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOp3^lstm_188/while/lstm_cell_506/MatMul/ReadVariableOp5^lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_188_while_identity lstm_188/while/Identity:output:0"?
lstm_188_while_identity_1"lstm_188/while/Identity_1:output:0"?
lstm_188_while_identity_2"lstm_188/while/Identity_2:output:0"?
lstm_188_while_identity_3"lstm_188/while/Identity_3:output:0"?
lstm_188_while_identity_4"lstm_188/while/Identity_4:output:0"?
lstm_188_while_identity_5"lstm_188/while/Identity_5:output:0"T
'lstm_188_while_lstm_188_strided_slice_1)lstm_188_while_lstm_188_strided_slice_1_0"~
<lstm_188_while_lstm_cell_506_biasadd_readvariableop_resource>lstm_188_while_lstm_cell_506_biasadd_readvariableop_resource_0"?
=lstm_188_while_lstm_cell_506_matmul_1_readvariableop_resource?lstm_188_while_lstm_cell_506_matmul_1_readvariableop_resource_0"|
;lstm_188_while_lstm_cell_506_matmul_readvariableop_resource=lstm_188_while_lstm_cell_506_matmul_readvariableop_resource_0"?
clstm_188_while_tensorarrayv2read_tensorlistgetitem_lstm_188_tensorarrayunstack_tensorlistfromtensorelstm_188_while_tensorarrayv2read_tensorlistgetitem_lstm_188_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOp3lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOp2h
2lstm_188/while/lstm_cell_506/MatMul/ReadVariableOp2lstm_188/while/lstm_cell_506/MatMul/ReadVariableOp2l
4lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOp4lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOp: 
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
?C
?

lstm_188_while_body_3063172.
*lstm_188_while_lstm_188_while_loop_counter4
0lstm_188_while_lstm_188_while_maximum_iterations
lstm_188_while_placeholder 
lstm_188_while_placeholder_1 
lstm_188_while_placeholder_2 
lstm_188_while_placeholder_3-
)lstm_188_while_lstm_188_strided_slice_1_0i
elstm_188_while_tensorarrayv2read_tensorlistgetitem_lstm_188_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_188_while_lstm_cell_506_matmul_readvariableop_resource_0:2(Q
?lstm_188_while_lstm_cell_506_matmul_1_readvariableop_resource_0:
(L
>lstm_188_while_lstm_cell_506_biasadd_readvariableop_resource_0:(
lstm_188_while_identity
lstm_188_while_identity_1
lstm_188_while_identity_2
lstm_188_while_identity_3
lstm_188_while_identity_4
lstm_188_while_identity_5+
'lstm_188_while_lstm_188_strided_slice_1g
clstm_188_while_tensorarrayv2read_tensorlistgetitem_lstm_188_tensorarrayunstack_tensorlistfromtensorM
;lstm_188_while_lstm_cell_506_matmul_readvariableop_resource:2(O
=lstm_188_while_lstm_cell_506_matmul_1_readvariableop_resource:
(J
<lstm_188_while_lstm_cell_506_biasadd_readvariableop_resource:(??3lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOp?2lstm_188/while/lstm_cell_506/MatMul/ReadVariableOp?4lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOp?
@lstm_188/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_188/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_188_while_tensorarrayv2read_tensorlistgetitem_lstm_188_tensorarrayunstack_tensorlistfromtensor_0lstm_188_while_placeholderIlstm_188/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_188/while/lstm_cell_506/MatMul/ReadVariableOpReadVariableOp=lstm_188_while_lstm_cell_506_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_188/while/lstm_cell_506/MatMulMatMul9lstm_188/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_188/while/lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOp?lstm_188_while_lstm_cell_506_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_188/while/lstm_cell_506/MatMul_1MatMullstm_188_while_placeholder_2<lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_188/while/lstm_cell_506/addAddV2-lstm_188/while/lstm_cell_506/MatMul:product:0/lstm_188/while/lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOp>lstm_188_while_lstm_cell_506_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_188/while/lstm_cell_506/BiasAddBiasAdd$lstm_188/while/lstm_cell_506/add:z:0;lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_188/while/lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_188/while/lstm_cell_506/splitSplit5lstm_188/while/lstm_cell_506/split/split_dim:output:0-lstm_188/while/lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_188/while/lstm_cell_506/SigmoidSigmoid+lstm_188/while/lstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_188/while/lstm_cell_506/Sigmoid_1Sigmoid+lstm_188/while/lstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_188/while/lstm_cell_506/mulMul*lstm_188/while/lstm_cell_506/Sigmoid_1:y:0lstm_188_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_188/while/lstm_cell_506/ReluRelu+lstm_188/while/lstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_188/while/lstm_cell_506/mul_1Mul(lstm_188/while/lstm_cell_506/Sigmoid:y:0/lstm_188/while/lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_188/while/lstm_cell_506/add_1AddV2$lstm_188/while/lstm_cell_506/mul:z:0&lstm_188/while/lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_188/while/lstm_cell_506/Sigmoid_2Sigmoid+lstm_188/while/lstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_188/while/lstm_cell_506/Relu_1Relu&lstm_188/while/lstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_188/while/lstm_cell_506/mul_2Mul*lstm_188/while/lstm_cell_506/Sigmoid_2:y:01lstm_188/while/lstm_cell_506/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_188/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_188_while_placeholder_1lstm_188_while_placeholder&lstm_188/while/lstm_cell_506/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_188/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_188/while/addAddV2lstm_188_while_placeholderlstm_188/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_188/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_188/while/add_1AddV2*lstm_188_while_lstm_188_while_loop_counterlstm_188/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_188/while/IdentityIdentitylstm_188/while/add_1:z:0^lstm_188/while/NoOp*
T0*
_output_shapes
: ?
lstm_188/while/Identity_1Identity0lstm_188_while_lstm_188_while_maximum_iterations^lstm_188/while/NoOp*
T0*
_output_shapes
: t
lstm_188/while/Identity_2Identitylstm_188/while/add:z:0^lstm_188/while/NoOp*
T0*
_output_shapes
: ?
lstm_188/while/Identity_3IdentityClstm_188/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_188/while/NoOp*
T0*
_output_shapes
: ?
lstm_188/while/Identity_4Identity&lstm_188/while/lstm_cell_506/mul_2:z:0^lstm_188/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_188/while/Identity_5Identity&lstm_188/while/lstm_cell_506/add_1:z:0^lstm_188/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_188/while/NoOpNoOp4^lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOp3^lstm_188/while/lstm_cell_506/MatMul/ReadVariableOp5^lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_188_while_identity lstm_188/while/Identity:output:0"?
lstm_188_while_identity_1"lstm_188/while/Identity_1:output:0"?
lstm_188_while_identity_2"lstm_188/while/Identity_2:output:0"?
lstm_188_while_identity_3"lstm_188/while/Identity_3:output:0"?
lstm_188_while_identity_4"lstm_188/while/Identity_4:output:0"?
lstm_188_while_identity_5"lstm_188/while/Identity_5:output:0"T
'lstm_188_while_lstm_188_strided_slice_1)lstm_188_while_lstm_188_strided_slice_1_0"~
<lstm_188_while_lstm_cell_506_biasadd_readvariableop_resource>lstm_188_while_lstm_cell_506_biasadd_readvariableop_resource_0"?
=lstm_188_while_lstm_cell_506_matmul_1_readvariableop_resource?lstm_188_while_lstm_cell_506_matmul_1_readvariableop_resource_0"|
;lstm_188_while_lstm_cell_506_matmul_readvariableop_resource=lstm_188_while_lstm_cell_506_matmul_readvariableop_resource_0"?
clstm_188_while_tensorarrayv2read_tensorlistgetitem_lstm_188_tensorarrayunstack_tensorlistfromtensorelstm_188_while_tensorarrayv2read_tensorlistgetitem_lstm_188_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOp3lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOp2h
2lstm_188/while/lstm_cell_506/MatMul/ReadVariableOp2lstm_188/while/lstm_cell_506/MatMul/ReadVariableOp2l
4lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOp4lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOp: 
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
?
*__inference_lstm_186_layer_call_fn_3063295

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
E__inference_lstm_186_layer_call_and_return_conditional_losses_3061293s
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
?J
?
E__inference_lstm_187_layer_call_and_return_conditional_losses_3064494

inputs?
,lstm_cell_505_matmul_readvariableop_resource:	d?A
.lstm_cell_505_matmul_1_readvariableop_resource:	2?<
-lstm_cell_505_biasadd_readvariableop_resource:	?
identity??$lstm_cell_505/BiasAdd/ReadVariableOp?#lstm_cell_505/MatMul/ReadVariableOp?%lstm_cell_505/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_505/MatMul/ReadVariableOpReadVariableOp,lstm_cell_505_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_505/MatMulMatMulstrided_slice_2:output:0+lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_505_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_505/MatMul_1MatMulzeros:output:0-lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_505/addAddV2lstm_cell_505/MatMul:product:0 lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_505_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_505/BiasAddBiasAddlstm_cell_505/add:z:0,lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_505/splitSplit&lstm_cell_505/split/split_dim:output:0lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_505/SigmoidSigmoidlstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_505/Sigmoid_1Sigmoidlstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_505/mulMullstm_cell_505/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_505/ReluRelulstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_505/mul_1Mullstm_cell_505/Sigmoid:y:0 lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_505/add_1AddV2lstm_cell_505/mul:z:0lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_505/Sigmoid_2Sigmoidlstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_505/Relu_1Relulstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_505/mul_2Mullstm_cell_505/Sigmoid_2:y:0"lstm_cell_505/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_505_matmul_readvariableop_resource.lstm_cell_505_matmul_1_readvariableop_resource-lstm_cell_505_biasadd_readvariableop_resource*
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
while_body_3064410*
condR
while_cond_3064409*K
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
NoOpNoOp%^lstm_cell_505/BiasAdd/ReadVariableOp$^lstm_cell_505/MatMul/ReadVariableOp&^lstm_cell_505/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_505/BiasAdd/ReadVariableOp$lstm_cell_505/BiasAdd/ReadVariableOp2J
#lstm_cell_505/MatMul/ReadVariableOp#lstm_cell_505/MatMul/ReadVariableOp2N
%lstm_cell_505/MatMul_1/ReadVariableOp%lstm_cell_505/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3061065
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3061065___redundant_placeholder05
1while_while_cond_3061065___redundant_placeholder15
1while_while_cond_3061065___redundant_placeholder25
1while_while_cond_3061065___redundant_placeholder3
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
while_body_3063508
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_504_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_504_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_504_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_504_matmul_readvariableop_resource:	?G
4while_lstm_cell_504_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_504_biasadd_readvariableop_resource:	???*while/lstm_cell_504/BiasAdd/ReadVariableOp?)while/lstm_cell_504/MatMul/ReadVariableOp?+while/lstm_cell_504/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_504/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_504_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_504/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_504_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_504/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_504/addAddV2$while/lstm_cell_504/MatMul:product:0&while/lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_504_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_504/BiasAddBiasAddwhile/lstm_cell_504/add:z:02while/lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_504/splitSplit,while/lstm_cell_504/split/split_dim:output:0$while/lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_504/SigmoidSigmoid"while/lstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_504/Sigmoid_1Sigmoid"while/lstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mulMul!while/lstm_cell_504/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_504/ReluRelu"while/lstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mul_1Mulwhile/lstm_cell_504/Sigmoid:y:0&while/lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/add_1AddV2while/lstm_cell_504/mul:z:0while/lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_504/Sigmoid_2Sigmoid"while/lstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_504/Relu_1Reluwhile/lstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mul_2Mul!while/lstm_cell_504/Sigmoid_2:y:0(while/lstm_cell_504/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_504/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_504/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_504/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_504/BiasAdd/ReadVariableOp*^while/lstm_cell_504/MatMul/ReadVariableOp,^while/lstm_cell_504/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_504_biasadd_readvariableop_resource5while_lstm_cell_504_biasadd_readvariableop_resource_0"n
4while_lstm_cell_504_matmul_1_readvariableop_resource6while_lstm_cell_504_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_504_matmul_readvariableop_resource4while_lstm_cell_504_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_504/BiasAdd/ReadVariableOp*while/lstm_cell_504/BiasAdd/ReadVariableOp2V
)while/lstm_cell_504/MatMul/ReadVariableOp)while/lstm_cell_504/MatMul/ReadVariableOp2Z
+while/lstm_cell_504/MatMul_1/ReadVariableOp+while/lstm_cell_504/MatMul_1/ReadVariableOp: 
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
while_body_3060366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_504_3060390_0:	?0
while_lstm_cell_504_3060392_0:	d?,
while_lstm_cell_504_3060394_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_504_3060390:	?.
while_lstm_cell_504_3060392:	d?*
while_lstm_cell_504_3060394:	???+while/lstm_cell_504/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_504/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_504_3060390_0while_lstm_cell_504_3060392_0while_lstm_cell_504_3060394_0*
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
J__inference_lstm_cell_504_layer_call_and_return_conditional_losses_3060307?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_504/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_504/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_504/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_504/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_504_3060390while_lstm_cell_504_3060390_0"<
while_lstm_cell_504_3060392while_lstm_cell_504_3060392_0"<
while_lstm_cell_504_3060394while_lstm_cell_504_3060394_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_504/StatefulPartitionedCall+while/lstm_cell_504/StatefulPartitionedCall: 
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
while_cond_3064596
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3064596___redundant_placeholder05
1while_while_cond_3064596___redundant_placeholder15
1while_while_cond_3064596___redundant_placeholder25
1while_while_cond_3064596___redundant_placeholder3
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
?
)sequential_62_lstm_188_while_cond_3060003J
Fsequential_62_lstm_188_while_sequential_62_lstm_188_while_loop_counterP
Lsequential_62_lstm_188_while_sequential_62_lstm_188_while_maximum_iterations,
(sequential_62_lstm_188_while_placeholder.
*sequential_62_lstm_188_while_placeholder_1.
*sequential_62_lstm_188_while_placeholder_2.
*sequential_62_lstm_188_while_placeholder_3L
Hsequential_62_lstm_188_while_less_sequential_62_lstm_188_strided_slice_1c
_sequential_62_lstm_188_while_sequential_62_lstm_188_while_cond_3060003___redundant_placeholder0c
_sequential_62_lstm_188_while_sequential_62_lstm_188_while_cond_3060003___redundant_placeholder1c
_sequential_62_lstm_188_while_sequential_62_lstm_188_while_cond_3060003___redundant_placeholder2c
_sequential_62_lstm_188_while_sequential_62_lstm_188_while_cond_3060003___redundant_placeholder3)
%sequential_62_lstm_188_while_identity
?
!sequential_62/lstm_188/while/LessLess(sequential_62_lstm_188_while_placeholderHsequential_62_lstm_188_while_less_sequential_62_lstm_188_strided_slice_1*
T0*
_output_shapes
: y
%sequential_62/lstm_188/while/IdentityIdentity%sequential_62/lstm_188/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_62_lstm_188_while_identity.sequential_62/lstm_188/while/Identity:output:0*(
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
while_body_3064597
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_506_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_506_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_506_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_506_matmul_readvariableop_resource:2(F
4while_lstm_cell_506_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_506_biasadd_readvariableop_resource:(??*while/lstm_cell_506/BiasAdd/ReadVariableOp?)while/lstm_cell_506/MatMul/ReadVariableOp?+while/lstm_cell_506/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_506/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_506_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_506/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_506_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_506/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_506/addAddV2$while/lstm_cell_506/MatMul:product:0&while/lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_506_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_506/BiasAddBiasAddwhile/lstm_cell_506/add:z:02while/lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_506/splitSplit,while/lstm_cell_506/split/split_dim:output:0$while/lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_506/SigmoidSigmoid"while/lstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_506/Sigmoid_1Sigmoid"while/lstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mulMul!while/lstm_cell_506/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_506/ReluRelu"while/lstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mul_1Mulwhile/lstm_cell_506/Sigmoid:y:0&while/lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/add_1AddV2while/lstm_cell_506/mul:z:0while/lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_506/Sigmoid_2Sigmoid"while/lstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_506/Relu_1Reluwhile/lstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mul_2Mul!while/lstm_cell_506/Sigmoid_2:y:0(while/lstm_cell_506/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_506/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_506/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_506/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_506/BiasAdd/ReadVariableOp*^while/lstm_cell_506/MatMul/ReadVariableOp,^while/lstm_cell_506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_506_biasadd_readvariableop_resource5while_lstm_cell_506_biasadd_readvariableop_resource_0"n
4while_lstm_cell_506_matmul_1_readvariableop_resource6while_lstm_cell_506_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_506_matmul_readvariableop_resource4while_lstm_cell_506_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_506/BiasAdd/ReadVariableOp*while/lstm_cell_506/BiasAdd/ReadVariableOp2V
)while/lstm_cell_506/MatMul/ReadVariableOp)while/lstm_cell_506/MatMul/ReadVariableOp2Z
+while/lstm_cell_506/MatMul_1/ReadVariableOp+while/lstm_cell_506/MatMul_1/ReadVariableOp: 
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
?
E__inference_lstm_188_layer_call_and_return_conditional_losses_3060944

inputs'
lstm_cell_506_3060862:2('
lstm_cell_506_3060864:
(#
lstm_cell_506_3060866:(
identity??%lstm_cell_506/StatefulPartitionedCall?while;
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
%lstm_cell_506/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_506_3060862lstm_cell_506_3060864lstm_cell_506_3060866*
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
J__inference_lstm_cell_506_layer_call_and_return_conditional_losses_3060861n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_506_3060862lstm_cell_506_3060864lstm_cell_506_3060866*
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
while_body_3060875*
condR
while_cond_3060874*K
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
NoOpNoOp&^lstm_cell_506/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_506/StatefulPartitionedCall%lstm_cell_506/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_3064124
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_505_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_505_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_505_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_505_matmul_readvariableop_resource:	d?G
4while_lstm_cell_505_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_505_biasadd_readvariableop_resource:	???*while/lstm_cell_505/BiasAdd/ReadVariableOp?)while/lstm_cell_505/MatMul/ReadVariableOp?+while/lstm_cell_505/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_505/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_505_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_505/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_505_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_505/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_505/addAddV2$while/lstm_cell_505/MatMul:product:0&while/lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_505_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_505/BiasAddBiasAddwhile/lstm_cell_505/add:z:02while/lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_505/splitSplit,while/lstm_cell_505/split/split_dim:output:0$while/lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_505/SigmoidSigmoid"while/lstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_505/Sigmoid_1Sigmoid"while/lstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mulMul!while/lstm_cell_505/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_505/ReluRelu"while/lstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mul_1Mulwhile/lstm_cell_505/Sigmoid:y:0&while/lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/add_1AddV2while/lstm_cell_505/mul:z:0while/lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_505/Sigmoid_2Sigmoid"while/lstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_505/Relu_1Reluwhile/lstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mul_2Mul!while/lstm_cell_505/Sigmoid_2:y:0(while/lstm_cell_505/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_505/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_505/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_505/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_505/BiasAdd/ReadVariableOp*^while/lstm_cell_505/MatMul/ReadVariableOp,^while/lstm_cell_505/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_505_biasadd_readvariableop_resource5while_lstm_cell_505_biasadd_readvariableop_resource_0"n
4while_lstm_cell_505_matmul_1_readvariableop_resource6while_lstm_cell_505_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_505_matmul_readvariableop_resource4while_lstm_cell_505_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_505/BiasAdd/ReadVariableOp*while/lstm_cell_505/BiasAdd/ReadVariableOp2V
)while/lstm_cell_505/MatMul/ReadVariableOp)while/lstm_cell_505/MatMul/ReadVariableOp2Z
+while/lstm_cell_505/MatMul_1/ReadVariableOp+while/lstm_cell_505/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_186_layer_call_and_return_conditional_losses_3063449
inputs_0?
,lstm_cell_504_matmul_readvariableop_resource:	?A
.lstm_cell_504_matmul_1_readvariableop_resource:	d?<
-lstm_cell_504_biasadd_readvariableop_resource:	?
identity??$lstm_cell_504/BiasAdd/ReadVariableOp?#lstm_cell_504/MatMul/ReadVariableOp?%lstm_cell_504/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_504/MatMul/ReadVariableOpReadVariableOp,lstm_cell_504_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_504/MatMulMatMulstrided_slice_2:output:0+lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_504_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_504/MatMul_1MatMulzeros:output:0-lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_504/addAddV2lstm_cell_504/MatMul:product:0 lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_504_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_504/BiasAddBiasAddlstm_cell_504/add:z:0,lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_504/splitSplit&lstm_cell_504/split/split_dim:output:0lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_504/SigmoidSigmoidlstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_504/Sigmoid_1Sigmoidlstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_504/mulMullstm_cell_504/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_504/ReluRelulstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_504/mul_1Mullstm_cell_504/Sigmoid:y:0 lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_504/add_1AddV2lstm_cell_504/mul:z:0lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_504/Sigmoid_2Sigmoidlstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_504/Relu_1Relulstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_504/mul_2Mullstm_cell_504/Sigmoid_2:y:0"lstm_cell_504/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_504_matmul_readvariableop_resource.lstm_cell_504_matmul_1_readvariableop_resource-lstm_cell_504_biasadd_readvariableop_resource*
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
while_body_3063365*
condR
while_cond_3063364*K
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
NoOpNoOp%^lstm_cell_504/BiasAdd/ReadVariableOp$^lstm_cell_504/MatMul/ReadVariableOp&^lstm_cell_504/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_504/BiasAdd/ReadVariableOp$lstm_cell_504/BiasAdd/ReadVariableOp2J
#lstm_cell_504/MatMul/ReadVariableOp#lstm_cell_504/MatMul/ReadVariableOp2N
%lstm_cell_504/MatMul_1/ReadVariableOp%lstm_cell_504/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_186_while_cond_3062466.
*lstm_186_while_lstm_186_while_loop_counter4
0lstm_186_while_lstm_186_while_maximum_iterations
lstm_186_while_placeholder 
lstm_186_while_placeholder_1 
lstm_186_while_placeholder_2 
lstm_186_while_placeholder_30
,lstm_186_while_less_lstm_186_strided_slice_1G
Clstm_186_while_lstm_186_while_cond_3062466___redundant_placeholder0G
Clstm_186_while_lstm_186_while_cond_3062466___redundant_placeholder1G
Clstm_186_while_lstm_186_while_cond_3062466___redundant_placeholder2G
Clstm_186_while_lstm_186_while_cond_3062466___redundant_placeholder3
lstm_186_while_identity
?
lstm_186/while/LessLesslstm_186_while_placeholder,lstm_186_while_less_lstm_186_strided_slice_1*
T0*
_output_shapes
: ]
lstm_186/while/IdentityIdentitylstm_186/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_186_while_identity lstm_186/while/Identity:output:0*(
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
??
?
J__inference_sequential_62_layer_call_and_return_conditional_losses_3063262

inputsH
5lstm_186_lstm_cell_504_matmul_readvariableop_resource:	?J
7lstm_186_lstm_cell_504_matmul_1_readvariableop_resource:	d?E
6lstm_186_lstm_cell_504_biasadd_readvariableop_resource:	?H
5lstm_187_lstm_cell_505_matmul_readvariableop_resource:	d?J
7lstm_187_lstm_cell_505_matmul_1_readvariableop_resource:	2?E
6lstm_187_lstm_cell_505_biasadd_readvariableop_resource:	?G
5lstm_188_lstm_cell_506_matmul_readvariableop_resource:2(I
7lstm_188_lstm_cell_506_matmul_1_readvariableop_resource:
(D
6lstm_188_lstm_cell_506_biasadd_readvariableop_resource:(9
'dense_62_matmul_readvariableop_resource:
6
(dense_62_biasadd_readvariableop_resource:
identity??dense_62/BiasAdd/ReadVariableOp?dense_62/MatMul/ReadVariableOp?-lstm_186/lstm_cell_504/BiasAdd/ReadVariableOp?,lstm_186/lstm_cell_504/MatMul/ReadVariableOp?.lstm_186/lstm_cell_504/MatMul_1/ReadVariableOp?lstm_186/while?-lstm_187/lstm_cell_505/BiasAdd/ReadVariableOp?,lstm_187/lstm_cell_505/MatMul/ReadVariableOp?.lstm_187/lstm_cell_505/MatMul_1/ReadVariableOp?lstm_187/while?-lstm_188/lstm_cell_506/BiasAdd/ReadVariableOp?,lstm_188/lstm_cell_506/MatMul/ReadVariableOp?.lstm_188/lstm_cell_506/MatMul_1/ReadVariableOp?lstm_188/whileD
lstm_186/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_186/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_186/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_186/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_186/strided_sliceStridedSlicelstm_186/Shape:output:0%lstm_186/strided_slice/stack:output:0'lstm_186/strided_slice/stack_1:output:0'lstm_186/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_186/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_186/zeros/packedPacklstm_186/strided_slice:output:0 lstm_186/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_186/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_186/zerosFilllstm_186/zeros/packed:output:0lstm_186/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_186/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_186/zeros_1/packedPacklstm_186/strided_slice:output:0"lstm_186/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_186/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_186/zeros_1Fill lstm_186/zeros_1/packed:output:0lstm_186/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_186/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_186/transpose	Transposeinputs lstm_186/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_186/Shape_1Shapelstm_186/transpose:y:0*
T0*
_output_shapes
:h
lstm_186/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_186/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_186/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_186/strided_slice_1StridedSlicelstm_186/Shape_1:output:0'lstm_186/strided_slice_1/stack:output:0)lstm_186/strided_slice_1/stack_1:output:0)lstm_186/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_186/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_186/TensorArrayV2TensorListReserve-lstm_186/TensorArrayV2/element_shape:output:0!lstm_186/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_186/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_186/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_186/transpose:y:0Glstm_186/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_186/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_186/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_186/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_186/strided_slice_2StridedSlicelstm_186/transpose:y:0'lstm_186/strided_slice_2/stack:output:0)lstm_186/strided_slice_2/stack_1:output:0)lstm_186/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_186/lstm_cell_504/MatMul/ReadVariableOpReadVariableOp5lstm_186_lstm_cell_504_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_186/lstm_cell_504/MatMulMatMul!lstm_186/strided_slice_2:output:04lstm_186/lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_186/lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOp7lstm_186_lstm_cell_504_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_186/lstm_cell_504/MatMul_1MatMullstm_186/zeros:output:06lstm_186/lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_186/lstm_cell_504/addAddV2'lstm_186/lstm_cell_504/MatMul:product:0)lstm_186/lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_186/lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOp6lstm_186_lstm_cell_504_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_186/lstm_cell_504/BiasAddBiasAddlstm_186/lstm_cell_504/add:z:05lstm_186/lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_186/lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_186/lstm_cell_504/splitSplit/lstm_186/lstm_cell_504/split/split_dim:output:0'lstm_186/lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_186/lstm_cell_504/SigmoidSigmoid%lstm_186/lstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_186/lstm_cell_504/Sigmoid_1Sigmoid%lstm_186/lstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_186/lstm_cell_504/mulMul$lstm_186/lstm_cell_504/Sigmoid_1:y:0lstm_186/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_186/lstm_cell_504/ReluRelu%lstm_186/lstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_186/lstm_cell_504/mul_1Mul"lstm_186/lstm_cell_504/Sigmoid:y:0)lstm_186/lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_186/lstm_cell_504/add_1AddV2lstm_186/lstm_cell_504/mul:z:0 lstm_186/lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_186/lstm_cell_504/Sigmoid_2Sigmoid%lstm_186/lstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_186/lstm_cell_504/Relu_1Relu lstm_186/lstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_186/lstm_cell_504/mul_2Mul$lstm_186/lstm_cell_504/Sigmoid_2:y:0+lstm_186/lstm_cell_504/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_186/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_186/TensorArrayV2_1TensorListReserve/lstm_186/TensorArrayV2_1/element_shape:output:0!lstm_186/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_186/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_186/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_186/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_186/whileWhile$lstm_186/while/loop_counter:output:0*lstm_186/while/maximum_iterations:output:0lstm_186/time:output:0!lstm_186/TensorArrayV2_1:handle:0lstm_186/zeros:output:0lstm_186/zeros_1:output:0!lstm_186/strided_slice_1:output:0@lstm_186/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_186_lstm_cell_504_matmul_readvariableop_resource7lstm_186_lstm_cell_504_matmul_1_readvariableop_resource6lstm_186_lstm_cell_504_biasadd_readvariableop_resource*
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
lstm_186_while_body_3062894*'
condR
lstm_186_while_cond_3062893*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_186/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_186/TensorArrayV2Stack/TensorListStackTensorListStacklstm_186/while:output:3Blstm_186/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_186/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_186/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_186/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_186/strided_slice_3StridedSlice4lstm_186/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_186/strided_slice_3/stack:output:0)lstm_186/strided_slice_3/stack_1:output:0)lstm_186/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_186/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_186/transpose_1	Transpose4lstm_186/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_186/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_186/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_187/ShapeShapelstm_186/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_187/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_187/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_187/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_187/strided_sliceStridedSlicelstm_187/Shape:output:0%lstm_187/strided_slice/stack:output:0'lstm_187/strided_slice/stack_1:output:0'lstm_187/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_187/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_187/zeros/packedPacklstm_187/strided_slice:output:0 lstm_187/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_187/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_187/zerosFilllstm_187/zeros/packed:output:0lstm_187/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_187/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_187/zeros_1/packedPacklstm_187/strided_slice:output:0"lstm_187/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_187/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_187/zeros_1Fill lstm_187/zeros_1/packed:output:0lstm_187/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_187/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_187/transpose	Transposelstm_186/transpose_1:y:0 lstm_187/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_187/Shape_1Shapelstm_187/transpose:y:0*
T0*
_output_shapes
:h
lstm_187/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_187/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_187/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_187/strided_slice_1StridedSlicelstm_187/Shape_1:output:0'lstm_187/strided_slice_1/stack:output:0)lstm_187/strided_slice_1/stack_1:output:0)lstm_187/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_187/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_187/TensorArrayV2TensorListReserve-lstm_187/TensorArrayV2/element_shape:output:0!lstm_187/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_187/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_187/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_187/transpose:y:0Glstm_187/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_187/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_187/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_187/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_187/strided_slice_2StridedSlicelstm_187/transpose:y:0'lstm_187/strided_slice_2/stack:output:0)lstm_187/strided_slice_2/stack_1:output:0)lstm_187/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_187/lstm_cell_505/MatMul/ReadVariableOpReadVariableOp5lstm_187_lstm_cell_505_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_187/lstm_cell_505/MatMulMatMul!lstm_187/strided_slice_2:output:04lstm_187/lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_187/lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOp7lstm_187_lstm_cell_505_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_187/lstm_cell_505/MatMul_1MatMullstm_187/zeros:output:06lstm_187/lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_187/lstm_cell_505/addAddV2'lstm_187/lstm_cell_505/MatMul:product:0)lstm_187/lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_187/lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOp6lstm_187_lstm_cell_505_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_187/lstm_cell_505/BiasAddBiasAddlstm_187/lstm_cell_505/add:z:05lstm_187/lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_187/lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_187/lstm_cell_505/splitSplit/lstm_187/lstm_cell_505/split/split_dim:output:0'lstm_187/lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_187/lstm_cell_505/SigmoidSigmoid%lstm_187/lstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_187/lstm_cell_505/Sigmoid_1Sigmoid%lstm_187/lstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_187/lstm_cell_505/mulMul$lstm_187/lstm_cell_505/Sigmoid_1:y:0lstm_187/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_187/lstm_cell_505/ReluRelu%lstm_187/lstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_187/lstm_cell_505/mul_1Mul"lstm_187/lstm_cell_505/Sigmoid:y:0)lstm_187/lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_187/lstm_cell_505/add_1AddV2lstm_187/lstm_cell_505/mul:z:0 lstm_187/lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_187/lstm_cell_505/Sigmoid_2Sigmoid%lstm_187/lstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_187/lstm_cell_505/Relu_1Relu lstm_187/lstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_187/lstm_cell_505/mul_2Mul$lstm_187/lstm_cell_505/Sigmoid_2:y:0+lstm_187/lstm_cell_505/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_187/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_187/TensorArrayV2_1TensorListReserve/lstm_187/TensorArrayV2_1/element_shape:output:0!lstm_187/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_187/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_187/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_187/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_187/whileWhile$lstm_187/while/loop_counter:output:0*lstm_187/while/maximum_iterations:output:0lstm_187/time:output:0!lstm_187/TensorArrayV2_1:handle:0lstm_187/zeros:output:0lstm_187/zeros_1:output:0!lstm_187/strided_slice_1:output:0@lstm_187/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_187_lstm_cell_505_matmul_readvariableop_resource7lstm_187_lstm_cell_505_matmul_1_readvariableop_resource6lstm_187_lstm_cell_505_biasadd_readvariableop_resource*
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
lstm_187_while_body_3063033*'
condR
lstm_187_while_cond_3063032*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_187/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_187/TensorArrayV2Stack/TensorListStackTensorListStacklstm_187/while:output:3Blstm_187/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_187/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_187/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_187/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_187/strided_slice_3StridedSlice4lstm_187/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_187/strided_slice_3/stack:output:0)lstm_187/strided_slice_3/stack_1:output:0)lstm_187/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_187/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_187/transpose_1	Transpose4lstm_187/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_187/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_187/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_188/ShapeShapelstm_187/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_188/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_188/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_188/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_188/strided_sliceStridedSlicelstm_188/Shape:output:0%lstm_188/strided_slice/stack:output:0'lstm_188/strided_slice/stack_1:output:0'lstm_188/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_188/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_188/zeros/packedPacklstm_188/strided_slice:output:0 lstm_188/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_188/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_188/zerosFilllstm_188/zeros/packed:output:0lstm_188/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_188/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_188/zeros_1/packedPacklstm_188/strided_slice:output:0"lstm_188/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_188/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_188/zeros_1Fill lstm_188/zeros_1/packed:output:0lstm_188/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_188/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_188/transpose	Transposelstm_187/transpose_1:y:0 lstm_188/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_188/Shape_1Shapelstm_188/transpose:y:0*
T0*
_output_shapes
:h
lstm_188/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_188/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_188/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_188/strided_slice_1StridedSlicelstm_188/Shape_1:output:0'lstm_188/strided_slice_1/stack:output:0)lstm_188/strided_slice_1/stack_1:output:0)lstm_188/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_188/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_188/TensorArrayV2TensorListReserve-lstm_188/TensorArrayV2/element_shape:output:0!lstm_188/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_188/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_188/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_188/transpose:y:0Glstm_188/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_188/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_188/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_188/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_188/strided_slice_2StridedSlicelstm_188/transpose:y:0'lstm_188/strided_slice_2/stack:output:0)lstm_188/strided_slice_2/stack_1:output:0)lstm_188/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_188/lstm_cell_506/MatMul/ReadVariableOpReadVariableOp5lstm_188_lstm_cell_506_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_188/lstm_cell_506/MatMulMatMul!lstm_188/strided_slice_2:output:04lstm_188/lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_188/lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOp7lstm_188_lstm_cell_506_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_188/lstm_cell_506/MatMul_1MatMullstm_188/zeros:output:06lstm_188/lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_188/lstm_cell_506/addAddV2'lstm_188/lstm_cell_506/MatMul:product:0)lstm_188/lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_188/lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOp6lstm_188_lstm_cell_506_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_188/lstm_cell_506/BiasAddBiasAddlstm_188/lstm_cell_506/add:z:05lstm_188/lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_188/lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_188/lstm_cell_506/splitSplit/lstm_188/lstm_cell_506/split/split_dim:output:0'lstm_188/lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_188/lstm_cell_506/SigmoidSigmoid%lstm_188/lstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_188/lstm_cell_506/Sigmoid_1Sigmoid%lstm_188/lstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_188/lstm_cell_506/mulMul$lstm_188/lstm_cell_506/Sigmoid_1:y:0lstm_188/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_188/lstm_cell_506/ReluRelu%lstm_188/lstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_188/lstm_cell_506/mul_1Mul"lstm_188/lstm_cell_506/Sigmoid:y:0)lstm_188/lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_188/lstm_cell_506/add_1AddV2lstm_188/lstm_cell_506/mul:z:0 lstm_188/lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_188/lstm_cell_506/Sigmoid_2Sigmoid%lstm_188/lstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_188/lstm_cell_506/Relu_1Relu lstm_188/lstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_188/lstm_cell_506/mul_2Mul$lstm_188/lstm_cell_506/Sigmoid_2:y:0+lstm_188/lstm_cell_506/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_188/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_188/TensorArrayV2_1TensorListReserve/lstm_188/TensorArrayV2_1/element_shape:output:0!lstm_188/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_188/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_188/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_188/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_188/whileWhile$lstm_188/while/loop_counter:output:0*lstm_188/while/maximum_iterations:output:0lstm_188/time:output:0!lstm_188/TensorArrayV2_1:handle:0lstm_188/zeros:output:0lstm_188/zeros_1:output:0!lstm_188/strided_slice_1:output:0@lstm_188/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_188_lstm_cell_506_matmul_readvariableop_resource7lstm_188_lstm_cell_506_matmul_1_readvariableop_resource6lstm_188_lstm_cell_506_biasadd_readvariableop_resource*
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
lstm_188_while_body_3063172*'
condR
lstm_188_while_cond_3063171*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_188/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_188/TensorArrayV2Stack/TensorListStackTensorListStacklstm_188/while:output:3Blstm_188/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_188/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_188/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_188/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_188/strided_slice_3StridedSlice4lstm_188/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_188/strided_slice_3/stack:output:0)lstm_188/strided_slice_3/stack_1:output:0)lstm_188/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_188/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_188/transpose_1	Transpose4lstm_188/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_188/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_188/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_62/MatMulMatMul!lstm_188/strided_slice_3:output:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_62/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp.^lstm_186/lstm_cell_504/BiasAdd/ReadVariableOp-^lstm_186/lstm_cell_504/MatMul/ReadVariableOp/^lstm_186/lstm_cell_504/MatMul_1/ReadVariableOp^lstm_186/while.^lstm_187/lstm_cell_505/BiasAdd/ReadVariableOp-^lstm_187/lstm_cell_505/MatMul/ReadVariableOp/^lstm_187/lstm_cell_505/MatMul_1/ReadVariableOp^lstm_187/while.^lstm_188/lstm_cell_506/BiasAdd/ReadVariableOp-^lstm_188/lstm_cell_506/MatMul/ReadVariableOp/^lstm_188/lstm_cell_506/MatMul_1/ReadVariableOp^lstm_188/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2^
-lstm_186/lstm_cell_504/BiasAdd/ReadVariableOp-lstm_186/lstm_cell_504/BiasAdd/ReadVariableOp2\
,lstm_186/lstm_cell_504/MatMul/ReadVariableOp,lstm_186/lstm_cell_504/MatMul/ReadVariableOp2`
.lstm_186/lstm_cell_504/MatMul_1/ReadVariableOp.lstm_186/lstm_cell_504/MatMul_1/ReadVariableOp2 
lstm_186/whilelstm_186/while2^
-lstm_187/lstm_cell_505/BiasAdd/ReadVariableOp-lstm_187/lstm_cell_505/BiasAdd/ReadVariableOp2\
,lstm_187/lstm_cell_505/MatMul/ReadVariableOp,lstm_187/lstm_cell_505/MatMul/ReadVariableOp2`
.lstm_187/lstm_cell_505/MatMul_1/ReadVariableOp.lstm_187/lstm_cell_505/MatMul_1/ReadVariableOp2 
lstm_187/whilelstm_187/while2^
-lstm_188/lstm_cell_506/BiasAdd/ReadVariableOp-lstm_188/lstm_cell_506/BiasAdd/ReadVariableOp2\
,lstm_188/lstm_cell_506/MatMul/ReadVariableOp,lstm_188/lstm_cell_506/MatMul/ReadVariableOp2`
.lstm_188/lstm_cell_506/MatMul_1/ReadVariableOp.lstm_188/lstm_cell_506/MatMul_1/ReadVariableOp2 
lstm_188/whilelstm_188/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_187_layer_call_and_return_conditional_losses_3060594

inputs(
lstm_cell_505_3060512:	d?(
lstm_cell_505_3060514:	2?$
lstm_cell_505_3060516:	?
identity??%lstm_cell_505/StatefulPartitionedCall?while;
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
%lstm_cell_505/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_505_3060512lstm_cell_505_3060514lstm_cell_505_3060516*
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
J__inference_lstm_cell_505_layer_call_and_return_conditional_losses_3060511n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_505_3060512lstm_cell_505_3060514lstm_cell_505_3060516*
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
while_body_3060525*
condR
while_cond_3060524*K
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
NoOpNoOp&^lstm_cell_505/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_505/StatefulPartitionedCall%lstm_cell_505/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
??
?
J__inference_sequential_62_layer_call_and_return_conditional_losses_3062835

inputsH
5lstm_186_lstm_cell_504_matmul_readvariableop_resource:	?J
7lstm_186_lstm_cell_504_matmul_1_readvariableop_resource:	d?E
6lstm_186_lstm_cell_504_biasadd_readvariableop_resource:	?H
5lstm_187_lstm_cell_505_matmul_readvariableop_resource:	d?J
7lstm_187_lstm_cell_505_matmul_1_readvariableop_resource:	2?E
6lstm_187_lstm_cell_505_biasadd_readvariableop_resource:	?G
5lstm_188_lstm_cell_506_matmul_readvariableop_resource:2(I
7lstm_188_lstm_cell_506_matmul_1_readvariableop_resource:
(D
6lstm_188_lstm_cell_506_biasadd_readvariableop_resource:(9
'dense_62_matmul_readvariableop_resource:
6
(dense_62_biasadd_readvariableop_resource:
identity??dense_62/BiasAdd/ReadVariableOp?dense_62/MatMul/ReadVariableOp?-lstm_186/lstm_cell_504/BiasAdd/ReadVariableOp?,lstm_186/lstm_cell_504/MatMul/ReadVariableOp?.lstm_186/lstm_cell_504/MatMul_1/ReadVariableOp?lstm_186/while?-lstm_187/lstm_cell_505/BiasAdd/ReadVariableOp?,lstm_187/lstm_cell_505/MatMul/ReadVariableOp?.lstm_187/lstm_cell_505/MatMul_1/ReadVariableOp?lstm_187/while?-lstm_188/lstm_cell_506/BiasAdd/ReadVariableOp?,lstm_188/lstm_cell_506/MatMul/ReadVariableOp?.lstm_188/lstm_cell_506/MatMul_1/ReadVariableOp?lstm_188/whileD
lstm_186/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_186/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_186/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_186/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_186/strided_sliceStridedSlicelstm_186/Shape:output:0%lstm_186/strided_slice/stack:output:0'lstm_186/strided_slice/stack_1:output:0'lstm_186/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_186/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_186/zeros/packedPacklstm_186/strided_slice:output:0 lstm_186/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_186/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_186/zerosFilllstm_186/zeros/packed:output:0lstm_186/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_186/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_186/zeros_1/packedPacklstm_186/strided_slice:output:0"lstm_186/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_186/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_186/zeros_1Fill lstm_186/zeros_1/packed:output:0lstm_186/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_186/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_186/transpose	Transposeinputs lstm_186/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_186/Shape_1Shapelstm_186/transpose:y:0*
T0*
_output_shapes
:h
lstm_186/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_186/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_186/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_186/strided_slice_1StridedSlicelstm_186/Shape_1:output:0'lstm_186/strided_slice_1/stack:output:0)lstm_186/strided_slice_1/stack_1:output:0)lstm_186/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_186/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_186/TensorArrayV2TensorListReserve-lstm_186/TensorArrayV2/element_shape:output:0!lstm_186/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_186/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_186/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_186/transpose:y:0Glstm_186/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_186/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_186/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_186/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_186/strided_slice_2StridedSlicelstm_186/transpose:y:0'lstm_186/strided_slice_2/stack:output:0)lstm_186/strided_slice_2/stack_1:output:0)lstm_186/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_186/lstm_cell_504/MatMul/ReadVariableOpReadVariableOp5lstm_186_lstm_cell_504_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_186/lstm_cell_504/MatMulMatMul!lstm_186/strided_slice_2:output:04lstm_186/lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_186/lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOp7lstm_186_lstm_cell_504_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_186/lstm_cell_504/MatMul_1MatMullstm_186/zeros:output:06lstm_186/lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_186/lstm_cell_504/addAddV2'lstm_186/lstm_cell_504/MatMul:product:0)lstm_186/lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_186/lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOp6lstm_186_lstm_cell_504_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_186/lstm_cell_504/BiasAddBiasAddlstm_186/lstm_cell_504/add:z:05lstm_186/lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_186/lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_186/lstm_cell_504/splitSplit/lstm_186/lstm_cell_504/split/split_dim:output:0'lstm_186/lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_186/lstm_cell_504/SigmoidSigmoid%lstm_186/lstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_186/lstm_cell_504/Sigmoid_1Sigmoid%lstm_186/lstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_186/lstm_cell_504/mulMul$lstm_186/lstm_cell_504/Sigmoid_1:y:0lstm_186/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_186/lstm_cell_504/ReluRelu%lstm_186/lstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_186/lstm_cell_504/mul_1Mul"lstm_186/lstm_cell_504/Sigmoid:y:0)lstm_186/lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_186/lstm_cell_504/add_1AddV2lstm_186/lstm_cell_504/mul:z:0 lstm_186/lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_186/lstm_cell_504/Sigmoid_2Sigmoid%lstm_186/lstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_186/lstm_cell_504/Relu_1Relu lstm_186/lstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_186/lstm_cell_504/mul_2Mul$lstm_186/lstm_cell_504/Sigmoid_2:y:0+lstm_186/lstm_cell_504/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_186/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_186/TensorArrayV2_1TensorListReserve/lstm_186/TensorArrayV2_1/element_shape:output:0!lstm_186/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_186/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_186/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_186/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_186/whileWhile$lstm_186/while/loop_counter:output:0*lstm_186/while/maximum_iterations:output:0lstm_186/time:output:0!lstm_186/TensorArrayV2_1:handle:0lstm_186/zeros:output:0lstm_186/zeros_1:output:0!lstm_186/strided_slice_1:output:0@lstm_186/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_186_lstm_cell_504_matmul_readvariableop_resource7lstm_186_lstm_cell_504_matmul_1_readvariableop_resource6lstm_186_lstm_cell_504_biasadd_readvariableop_resource*
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
lstm_186_while_body_3062467*'
condR
lstm_186_while_cond_3062466*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_186/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_186/TensorArrayV2Stack/TensorListStackTensorListStacklstm_186/while:output:3Blstm_186/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_186/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_186/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_186/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_186/strided_slice_3StridedSlice4lstm_186/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_186/strided_slice_3/stack:output:0)lstm_186/strided_slice_3/stack_1:output:0)lstm_186/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_186/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_186/transpose_1	Transpose4lstm_186/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_186/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_186/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_187/ShapeShapelstm_186/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_187/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_187/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_187/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_187/strided_sliceStridedSlicelstm_187/Shape:output:0%lstm_187/strided_slice/stack:output:0'lstm_187/strided_slice/stack_1:output:0'lstm_187/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_187/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_187/zeros/packedPacklstm_187/strided_slice:output:0 lstm_187/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_187/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_187/zerosFilllstm_187/zeros/packed:output:0lstm_187/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_187/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_187/zeros_1/packedPacklstm_187/strided_slice:output:0"lstm_187/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_187/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_187/zeros_1Fill lstm_187/zeros_1/packed:output:0lstm_187/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_187/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_187/transpose	Transposelstm_186/transpose_1:y:0 lstm_187/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_187/Shape_1Shapelstm_187/transpose:y:0*
T0*
_output_shapes
:h
lstm_187/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_187/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_187/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_187/strided_slice_1StridedSlicelstm_187/Shape_1:output:0'lstm_187/strided_slice_1/stack:output:0)lstm_187/strided_slice_1/stack_1:output:0)lstm_187/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_187/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_187/TensorArrayV2TensorListReserve-lstm_187/TensorArrayV2/element_shape:output:0!lstm_187/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_187/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_187/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_187/transpose:y:0Glstm_187/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_187/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_187/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_187/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_187/strided_slice_2StridedSlicelstm_187/transpose:y:0'lstm_187/strided_slice_2/stack:output:0)lstm_187/strided_slice_2/stack_1:output:0)lstm_187/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_187/lstm_cell_505/MatMul/ReadVariableOpReadVariableOp5lstm_187_lstm_cell_505_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_187/lstm_cell_505/MatMulMatMul!lstm_187/strided_slice_2:output:04lstm_187/lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_187/lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOp7lstm_187_lstm_cell_505_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_187/lstm_cell_505/MatMul_1MatMullstm_187/zeros:output:06lstm_187/lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_187/lstm_cell_505/addAddV2'lstm_187/lstm_cell_505/MatMul:product:0)lstm_187/lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_187/lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOp6lstm_187_lstm_cell_505_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_187/lstm_cell_505/BiasAddBiasAddlstm_187/lstm_cell_505/add:z:05lstm_187/lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_187/lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_187/lstm_cell_505/splitSplit/lstm_187/lstm_cell_505/split/split_dim:output:0'lstm_187/lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_187/lstm_cell_505/SigmoidSigmoid%lstm_187/lstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_187/lstm_cell_505/Sigmoid_1Sigmoid%lstm_187/lstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_187/lstm_cell_505/mulMul$lstm_187/lstm_cell_505/Sigmoid_1:y:0lstm_187/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_187/lstm_cell_505/ReluRelu%lstm_187/lstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_187/lstm_cell_505/mul_1Mul"lstm_187/lstm_cell_505/Sigmoid:y:0)lstm_187/lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_187/lstm_cell_505/add_1AddV2lstm_187/lstm_cell_505/mul:z:0 lstm_187/lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_187/lstm_cell_505/Sigmoid_2Sigmoid%lstm_187/lstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_187/lstm_cell_505/Relu_1Relu lstm_187/lstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_187/lstm_cell_505/mul_2Mul$lstm_187/lstm_cell_505/Sigmoid_2:y:0+lstm_187/lstm_cell_505/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_187/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_187/TensorArrayV2_1TensorListReserve/lstm_187/TensorArrayV2_1/element_shape:output:0!lstm_187/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_187/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_187/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_187/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_187/whileWhile$lstm_187/while/loop_counter:output:0*lstm_187/while/maximum_iterations:output:0lstm_187/time:output:0!lstm_187/TensorArrayV2_1:handle:0lstm_187/zeros:output:0lstm_187/zeros_1:output:0!lstm_187/strided_slice_1:output:0@lstm_187/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_187_lstm_cell_505_matmul_readvariableop_resource7lstm_187_lstm_cell_505_matmul_1_readvariableop_resource6lstm_187_lstm_cell_505_biasadd_readvariableop_resource*
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
lstm_187_while_body_3062606*'
condR
lstm_187_while_cond_3062605*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_187/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_187/TensorArrayV2Stack/TensorListStackTensorListStacklstm_187/while:output:3Blstm_187/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_187/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_187/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_187/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_187/strided_slice_3StridedSlice4lstm_187/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_187/strided_slice_3/stack:output:0)lstm_187/strided_slice_3/stack_1:output:0)lstm_187/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_187/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_187/transpose_1	Transpose4lstm_187/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_187/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_187/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_188/ShapeShapelstm_187/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_188/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_188/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_188/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_188/strided_sliceStridedSlicelstm_188/Shape:output:0%lstm_188/strided_slice/stack:output:0'lstm_188/strided_slice/stack_1:output:0'lstm_188/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_188/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_188/zeros/packedPacklstm_188/strided_slice:output:0 lstm_188/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_188/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_188/zerosFilllstm_188/zeros/packed:output:0lstm_188/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_188/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_188/zeros_1/packedPacklstm_188/strided_slice:output:0"lstm_188/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_188/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_188/zeros_1Fill lstm_188/zeros_1/packed:output:0lstm_188/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_188/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_188/transpose	Transposelstm_187/transpose_1:y:0 lstm_188/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_188/Shape_1Shapelstm_188/transpose:y:0*
T0*
_output_shapes
:h
lstm_188/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_188/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_188/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_188/strided_slice_1StridedSlicelstm_188/Shape_1:output:0'lstm_188/strided_slice_1/stack:output:0)lstm_188/strided_slice_1/stack_1:output:0)lstm_188/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_188/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_188/TensorArrayV2TensorListReserve-lstm_188/TensorArrayV2/element_shape:output:0!lstm_188/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_188/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_188/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_188/transpose:y:0Glstm_188/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_188/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_188/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_188/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_188/strided_slice_2StridedSlicelstm_188/transpose:y:0'lstm_188/strided_slice_2/stack:output:0)lstm_188/strided_slice_2/stack_1:output:0)lstm_188/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_188/lstm_cell_506/MatMul/ReadVariableOpReadVariableOp5lstm_188_lstm_cell_506_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_188/lstm_cell_506/MatMulMatMul!lstm_188/strided_slice_2:output:04lstm_188/lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_188/lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOp7lstm_188_lstm_cell_506_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_188/lstm_cell_506/MatMul_1MatMullstm_188/zeros:output:06lstm_188/lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_188/lstm_cell_506/addAddV2'lstm_188/lstm_cell_506/MatMul:product:0)lstm_188/lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_188/lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOp6lstm_188_lstm_cell_506_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_188/lstm_cell_506/BiasAddBiasAddlstm_188/lstm_cell_506/add:z:05lstm_188/lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_188/lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_188/lstm_cell_506/splitSplit/lstm_188/lstm_cell_506/split/split_dim:output:0'lstm_188/lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_188/lstm_cell_506/SigmoidSigmoid%lstm_188/lstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_188/lstm_cell_506/Sigmoid_1Sigmoid%lstm_188/lstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_188/lstm_cell_506/mulMul$lstm_188/lstm_cell_506/Sigmoid_1:y:0lstm_188/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_188/lstm_cell_506/ReluRelu%lstm_188/lstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_188/lstm_cell_506/mul_1Mul"lstm_188/lstm_cell_506/Sigmoid:y:0)lstm_188/lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_188/lstm_cell_506/add_1AddV2lstm_188/lstm_cell_506/mul:z:0 lstm_188/lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_188/lstm_cell_506/Sigmoid_2Sigmoid%lstm_188/lstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_188/lstm_cell_506/Relu_1Relu lstm_188/lstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_188/lstm_cell_506/mul_2Mul$lstm_188/lstm_cell_506/Sigmoid_2:y:0+lstm_188/lstm_cell_506/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_188/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_188/TensorArrayV2_1TensorListReserve/lstm_188/TensorArrayV2_1/element_shape:output:0!lstm_188/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_188/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_188/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_188/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_188/whileWhile$lstm_188/while/loop_counter:output:0*lstm_188/while/maximum_iterations:output:0lstm_188/time:output:0!lstm_188/TensorArrayV2_1:handle:0lstm_188/zeros:output:0lstm_188/zeros_1:output:0!lstm_188/strided_slice_1:output:0@lstm_188/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_188_lstm_cell_506_matmul_readvariableop_resource7lstm_188_lstm_cell_506_matmul_1_readvariableop_resource6lstm_188_lstm_cell_506_biasadd_readvariableop_resource*
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
lstm_188_while_body_3062745*'
condR
lstm_188_while_cond_3062744*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_188/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_188/TensorArrayV2Stack/TensorListStackTensorListStacklstm_188/while:output:3Blstm_188/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_188/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_188/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_188/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_188/strided_slice_3StridedSlice4lstm_188/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_188/strided_slice_3/stack:output:0)lstm_188/strided_slice_3/stack_1:output:0)lstm_188/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_188/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_188/transpose_1	Transpose4lstm_188/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_188/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_188/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_62/MatMulMatMul!lstm_188/strided_slice_3:output:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_62/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp.^lstm_186/lstm_cell_504/BiasAdd/ReadVariableOp-^lstm_186/lstm_cell_504/MatMul/ReadVariableOp/^lstm_186/lstm_cell_504/MatMul_1/ReadVariableOp^lstm_186/while.^lstm_187/lstm_cell_505/BiasAdd/ReadVariableOp-^lstm_187/lstm_cell_505/MatMul/ReadVariableOp/^lstm_187/lstm_cell_505/MatMul_1/ReadVariableOp^lstm_187/while.^lstm_188/lstm_cell_506/BiasAdd/ReadVariableOp-^lstm_188/lstm_cell_506/MatMul/ReadVariableOp/^lstm_188/lstm_cell_506/MatMul_1/ReadVariableOp^lstm_188/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2^
-lstm_186/lstm_cell_504/BiasAdd/ReadVariableOp-lstm_186/lstm_cell_504/BiasAdd/ReadVariableOp2\
,lstm_186/lstm_cell_504/MatMul/ReadVariableOp,lstm_186/lstm_cell_504/MatMul/ReadVariableOp2`
.lstm_186/lstm_cell_504/MatMul_1/ReadVariableOp.lstm_186/lstm_cell_504/MatMul_1/ReadVariableOp2 
lstm_186/whilelstm_186/while2^
-lstm_187/lstm_cell_505/BiasAdd/ReadVariableOp-lstm_187/lstm_cell_505/BiasAdd/ReadVariableOp2\
,lstm_187/lstm_cell_505/MatMul/ReadVariableOp,lstm_187/lstm_cell_505/MatMul/ReadVariableOp2`
.lstm_187/lstm_cell_505/MatMul_1/ReadVariableOp.lstm_187/lstm_cell_505/MatMul_1/ReadVariableOp2 
lstm_187/whilelstm_187/while2^
-lstm_188/lstm_cell_506/BiasAdd/ReadVariableOp-lstm_188/lstm_cell_506/BiasAdd/ReadVariableOp2\
,lstm_188/lstm_cell_506/MatMul/ReadVariableOp,lstm_188/lstm_cell_506/MatMul/ReadVariableOp2`
.lstm_188/lstm_cell_506/MatMul_1/ReadVariableOp.lstm_188/lstm_cell_506/MatMul_1/ReadVariableOp2 
lstm_188/whilelstm_188/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_187_while_body_3063033.
*lstm_187_while_lstm_187_while_loop_counter4
0lstm_187_while_lstm_187_while_maximum_iterations
lstm_187_while_placeholder 
lstm_187_while_placeholder_1 
lstm_187_while_placeholder_2 
lstm_187_while_placeholder_3-
)lstm_187_while_lstm_187_strided_slice_1_0i
elstm_187_while_tensorarrayv2read_tensorlistgetitem_lstm_187_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_187_while_lstm_cell_505_matmul_readvariableop_resource_0:	d?R
?lstm_187_while_lstm_cell_505_matmul_1_readvariableop_resource_0:	2?M
>lstm_187_while_lstm_cell_505_biasadd_readvariableop_resource_0:	?
lstm_187_while_identity
lstm_187_while_identity_1
lstm_187_while_identity_2
lstm_187_while_identity_3
lstm_187_while_identity_4
lstm_187_while_identity_5+
'lstm_187_while_lstm_187_strided_slice_1g
clstm_187_while_tensorarrayv2read_tensorlistgetitem_lstm_187_tensorarrayunstack_tensorlistfromtensorN
;lstm_187_while_lstm_cell_505_matmul_readvariableop_resource:	d?P
=lstm_187_while_lstm_cell_505_matmul_1_readvariableop_resource:	2?K
<lstm_187_while_lstm_cell_505_biasadd_readvariableop_resource:	???3lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOp?2lstm_187/while/lstm_cell_505/MatMul/ReadVariableOp?4lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOp?
@lstm_187/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_187/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_187_while_tensorarrayv2read_tensorlistgetitem_lstm_187_tensorarrayunstack_tensorlistfromtensor_0lstm_187_while_placeholderIlstm_187/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_187/while/lstm_cell_505/MatMul/ReadVariableOpReadVariableOp=lstm_187_while_lstm_cell_505_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_187/while/lstm_cell_505/MatMulMatMul9lstm_187/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_187/while/lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOp?lstm_187_while_lstm_cell_505_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_187/while/lstm_cell_505/MatMul_1MatMullstm_187_while_placeholder_2<lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_187/while/lstm_cell_505/addAddV2-lstm_187/while/lstm_cell_505/MatMul:product:0/lstm_187/while/lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOp>lstm_187_while_lstm_cell_505_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_187/while/lstm_cell_505/BiasAddBiasAdd$lstm_187/while/lstm_cell_505/add:z:0;lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_187/while/lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_187/while/lstm_cell_505/splitSplit5lstm_187/while/lstm_cell_505/split/split_dim:output:0-lstm_187/while/lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_187/while/lstm_cell_505/SigmoidSigmoid+lstm_187/while/lstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_187/while/lstm_cell_505/Sigmoid_1Sigmoid+lstm_187/while/lstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_187/while/lstm_cell_505/mulMul*lstm_187/while/lstm_cell_505/Sigmoid_1:y:0lstm_187_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_187/while/lstm_cell_505/ReluRelu+lstm_187/while/lstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_187/while/lstm_cell_505/mul_1Mul(lstm_187/while/lstm_cell_505/Sigmoid:y:0/lstm_187/while/lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_187/while/lstm_cell_505/add_1AddV2$lstm_187/while/lstm_cell_505/mul:z:0&lstm_187/while/lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_187/while/lstm_cell_505/Sigmoid_2Sigmoid+lstm_187/while/lstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_187/while/lstm_cell_505/Relu_1Relu&lstm_187/while/lstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_187/while/lstm_cell_505/mul_2Mul*lstm_187/while/lstm_cell_505/Sigmoid_2:y:01lstm_187/while/lstm_cell_505/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_187/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_187_while_placeholder_1lstm_187_while_placeholder&lstm_187/while/lstm_cell_505/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_187/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_187/while/addAddV2lstm_187_while_placeholderlstm_187/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_187/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_187/while/add_1AddV2*lstm_187_while_lstm_187_while_loop_counterlstm_187/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_187/while/IdentityIdentitylstm_187/while/add_1:z:0^lstm_187/while/NoOp*
T0*
_output_shapes
: ?
lstm_187/while/Identity_1Identity0lstm_187_while_lstm_187_while_maximum_iterations^lstm_187/while/NoOp*
T0*
_output_shapes
: t
lstm_187/while/Identity_2Identitylstm_187/while/add:z:0^lstm_187/while/NoOp*
T0*
_output_shapes
: ?
lstm_187/while/Identity_3IdentityClstm_187/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_187/while/NoOp*
T0*
_output_shapes
: ?
lstm_187/while/Identity_4Identity&lstm_187/while/lstm_cell_505/mul_2:z:0^lstm_187/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_187/while/Identity_5Identity&lstm_187/while/lstm_cell_505/add_1:z:0^lstm_187/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_187/while/NoOpNoOp4^lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOp3^lstm_187/while/lstm_cell_505/MatMul/ReadVariableOp5^lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_187_while_identity lstm_187/while/Identity:output:0"?
lstm_187_while_identity_1"lstm_187/while/Identity_1:output:0"?
lstm_187_while_identity_2"lstm_187/while/Identity_2:output:0"?
lstm_187_while_identity_3"lstm_187/while/Identity_3:output:0"?
lstm_187_while_identity_4"lstm_187/while/Identity_4:output:0"?
lstm_187_while_identity_5"lstm_187/while/Identity_5:output:0"T
'lstm_187_while_lstm_187_strided_slice_1)lstm_187_while_lstm_187_strided_slice_1_0"~
<lstm_187_while_lstm_cell_505_biasadd_readvariableop_resource>lstm_187_while_lstm_cell_505_biasadd_readvariableop_resource_0"?
=lstm_187_while_lstm_cell_505_matmul_1_readvariableop_resource?lstm_187_while_lstm_cell_505_matmul_1_readvariableop_resource_0"|
;lstm_187_while_lstm_cell_505_matmul_readvariableop_resource=lstm_187_while_lstm_cell_505_matmul_readvariableop_resource_0"?
clstm_187_while_tensorarrayv2read_tensorlistgetitem_lstm_187_tensorarrayunstack_tensorlistfromtensorelstm_187_while_tensorarrayv2read_tensorlistgetitem_lstm_187_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOp3lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOp2h
2lstm_187/while/lstm_cell_505/MatMul/ReadVariableOp2lstm_187/while/lstm_cell_505/MatMul/ReadVariableOp2l
4lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOp4lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOp: 
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
while_cond_3061724
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3061724___redundant_placeholder05
1while_while_cond_3061724___redundant_placeholder15
1while_while_cond_3061724___redundant_placeholder25
1while_while_cond_3061724___redundant_placeholder3
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
*__inference_lstm_186_layer_call_fn_3063273
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
E__inference_lstm_186_layer_call_and_return_conditional_losses_3060244|
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
?
?
/__inference_lstm_cell_505_layer_call_fn_3065244

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
J__inference_lstm_cell_505_layer_call_and_return_conditional_losses_3060511o
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
while_cond_3060365
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3060365___redundant_placeholder05
1while_while_cond_3060365___redundant_placeholder15
1while_while_cond_3060365___redundant_placeholder25
1while_while_cond_3060365___redundant_placeholder3
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
?
while_body_3062055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_504_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_504_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_504_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_504_matmul_readvariableop_resource:	?G
4while_lstm_cell_504_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_504_biasadd_readvariableop_resource:	???*while/lstm_cell_504/BiasAdd/ReadVariableOp?)while/lstm_cell_504/MatMul/ReadVariableOp?+while/lstm_cell_504/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_504/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_504_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_504/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_504_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_504/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_504/addAddV2$while/lstm_cell_504/MatMul:product:0&while/lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_504_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_504/BiasAddBiasAddwhile/lstm_cell_504/add:z:02while/lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_504/splitSplit,while/lstm_cell_504/split/split_dim:output:0$while/lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_504/SigmoidSigmoid"while/lstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_504/Sigmoid_1Sigmoid"while/lstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mulMul!while/lstm_cell_504/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_504/ReluRelu"while/lstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mul_1Mulwhile/lstm_cell_504/Sigmoid:y:0&while/lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/add_1AddV2while/lstm_cell_504/mul:z:0while/lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_504/Sigmoid_2Sigmoid"while/lstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_504/Relu_1Reluwhile/lstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mul_2Mul!while/lstm_cell_504/Sigmoid_2:y:0(while/lstm_cell_504/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_504/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_504/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_504/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_504/BiasAdd/ReadVariableOp*^while/lstm_cell_504/MatMul/ReadVariableOp,^while/lstm_cell_504/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_504_biasadd_readvariableop_resource5while_lstm_cell_504_biasadd_readvariableop_resource_0"n
4while_lstm_cell_504_matmul_1_readvariableop_resource6while_lstm_cell_504_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_504_matmul_readvariableop_resource4while_lstm_cell_504_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_504/BiasAdd/ReadVariableOp*while/lstm_cell_504/BiasAdd/ReadVariableOp2V
)while/lstm_cell_504/MatMul/ReadVariableOp)while/lstm_cell_504/MatMul/ReadVariableOp2Z
+while/lstm_cell_504/MatMul_1/ReadVariableOp+while/lstm_cell_504/MatMul_1/ReadVariableOp: 
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
/__inference_lstm_cell_505_layer_call_fn_3065261

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
J__inference_lstm_cell_505_layer_call_and_return_conditional_losses_3060657o
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
)sequential_62_lstm_186_while_cond_3059725J
Fsequential_62_lstm_186_while_sequential_62_lstm_186_while_loop_counterP
Lsequential_62_lstm_186_while_sequential_62_lstm_186_while_maximum_iterations,
(sequential_62_lstm_186_while_placeholder.
*sequential_62_lstm_186_while_placeholder_1.
*sequential_62_lstm_186_while_placeholder_2.
*sequential_62_lstm_186_while_placeholder_3L
Hsequential_62_lstm_186_while_less_sequential_62_lstm_186_strided_slice_1c
_sequential_62_lstm_186_while_sequential_62_lstm_186_while_cond_3059725___redundant_placeholder0c
_sequential_62_lstm_186_while_sequential_62_lstm_186_while_cond_3059725___redundant_placeholder1c
_sequential_62_lstm_186_while_sequential_62_lstm_186_while_cond_3059725___redundant_placeholder2c
_sequential_62_lstm_186_while_sequential_62_lstm_186_while_cond_3059725___redundant_placeholder3)
%sequential_62_lstm_186_while_identity
?
!sequential_62/lstm_186/while/LessLess(sequential_62_lstm_186_while_placeholderHsequential_62_lstm_186_while_less_sequential_62_lstm_186_strided_slice_1*
T0*
_output_shapes
: y
%sequential_62/lstm_186/while/IdentityIdentity%sequential_62/lstm_186/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_62_lstm_186_while_identity.sequential_62/lstm_186/while/Identity:output:0*(
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
*__inference_lstm_186_layer_call_fn_3063284
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
E__inference_lstm_186_layer_call_and_return_conditional_losses_3060435|
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
?J
?
E__inference_lstm_186_layer_call_and_return_conditional_losses_3062139

inputs?
,lstm_cell_504_matmul_readvariableop_resource:	?A
.lstm_cell_504_matmul_1_readvariableop_resource:	d?<
-lstm_cell_504_biasadd_readvariableop_resource:	?
identity??$lstm_cell_504/BiasAdd/ReadVariableOp?#lstm_cell_504/MatMul/ReadVariableOp?%lstm_cell_504/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_504/MatMul/ReadVariableOpReadVariableOp,lstm_cell_504_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_504/MatMulMatMulstrided_slice_2:output:0+lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_504_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_504/MatMul_1MatMulzeros:output:0-lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_504/addAddV2lstm_cell_504/MatMul:product:0 lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_504_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_504/BiasAddBiasAddlstm_cell_504/add:z:0,lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_504/splitSplit&lstm_cell_504/split/split_dim:output:0lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_504/SigmoidSigmoidlstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_504/Sigmoid_1Sigmoidlstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_504/mulMullstm_cell_504/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_504/ReluRelulstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_504/mul_1Mullstm_cell_504/Sigmoid:y:0 lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_504/add_1AddV2lstm_cell_504/mul:z:0lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_504/Sigmoid_2Sigmoidlstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_504/Relu_1Relulstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_504/mul_2Mullstm_cell_504/Sigmoid_2:y:0"lstm_cell_504/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_504_matmul_readvariableop_resource.lstm_cell_504_matmul_1_readvariableop_resource-lstm_cell_504_biasadd_readvariableop_resource*
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
while_body_3062055*
condR
while_cond_3062054*K
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
NoOpNoOp%^lstm_cell_504/BiasAdd/ReadVariableOp$^lstm_cell_504/MatMul/ReadVariableOp&^lstm_cell_504/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_504/BiasAdd/ReadVariableOp$lstm_cell_504/BiasAdd/ReadVariableOp2J
#lstm_cell_504/MatMul/ReadVariableOp#lstm_cell_504/MatMul/ReadVariableOp2N
%lstm_cell_504/MatMul_1/ReadVariableOp%lstm_cell_504/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3064123
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3064123___redundant_placeholder05
1while_while_cond_3064123___redundant_placeholder15
1while_while_cond_3064123___redundant_placeholder25
1while_while_cond_3064123___redundant_placeholder3
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
?
)sequential_62_lstm_187_while_cond_3059864J
Fsequential_62_lstm_187_while_sequential_62_lstm_187_while_loop_counterP
Lsequential_62_lstm_187_while_sequential_62_lstm_187_while_maximum_iterations,
(sequential_62_lstm_187_while_placeholder.
*sequential_62_lstm_187_while_placeholder_1.
*sequential_62_lstm_187_while_placeholder_2.
*sequential_62_lstm_187_while_placeholder_3L
Hsequential_62_lstm_187_while_less_sequential_62_lstm_187_strided_slice_1c
_sequential_62_lstm_187_while_sequential_62_lstm_187_while_cond_3059864___redundant_placeholder0c
_sequential_62_lstm_187_while_sequential_62_lstm_187_while_cond_3059864___redundant_placeholder1c
_sequential_62_lstm_187_while_sequential_62_lstm_187_while_cond_3059864___redundant_placeholder2c
_sequential_62_lstm_187_while_sequential_62_lstm_187_while_cond_3059864___redundant_placeholder3)
%sequential_62_lstm_187_while_identity
?
!sequential_62/lstm_187/while/LessLess(sequential_62_lstm_187_while_placeholderHsequential_62_lstm_187_while_less_sequential_62_lstm_187_strided_slice_1*
T0*
_output_shapes
: y
%sequential_62/lstm_187/while/IdentityIdentity%sequential_62/lstm_187/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_62_lstm_187_while_identity.sequential_62/lstm_187/while/Identity:output:0*(
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
?
E__inference_dense_62_layer_call_and_return_conditional_losses_3061611

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
?J
?
E__inference_lstm_186_layer_call_and_return_conditional_losses_3063878

inputs?
,lstm_cell_504_matmul_readvariableop_resource:	?A
.lstm_cell_504_matmul_1_readvariableop_resource:	d?<
-lstm_cell_504_biasadd_readvariableop_resource:	?
identity??$lstm_cell_504/BiasAdd/ReadVariableOp?#lstm_cell_504/MatMul/ReadVariableOp?%lstm_cell_504/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_504/MatMul/ReadVariableOpReadVariableOp,lstm_cell_504_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_504/MatMulMatMulstrided_slice_2:output:0+lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_504_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_504/MatMul_1MatMulzeros:output:0-lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_504/addAddV2lstm_cell_504/MatMul:product:0 lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_504_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_504/BiasAddBiasAddlstm_cell_504/add:z:0,lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_504/splitSplit&lstm_cell_504/split/split_dim:output:0lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_504/SigmoidSigmoidlstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_504/Sigmoid_1Sigmoidlstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_504/mulMullstm_cell_504/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_504/ReluRelulstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_504/mul_1Mullstm_cell_504/Sigmoid:y:0 lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_504/add_1AddV2lstm_cell_504/mul:z:0lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_504/Sigmoid_2Sigmoidlstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_504/Relu_1Relulstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_504/mul_2Mullstm_cell_504/Sigmoid_2:y:0"lstm_cell_504/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_504_matmul_readvariableop_resource.lstm_cell_504_matmul_1_readvariableop_resource-lstm_cell_504_biasadd_readvariableop_resource*
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
while_body_3063794*
condR
while_cond_3063793*K
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
NoOpNoOp%^lstm_cell_504/BiasAdd/ReadVariableOp$^lstm_cell_504/MatMul/ReadVariableOp&^lstm_cell_504/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_504/BiasAdd/ReadVariableOp$lstm_cell_504/BiasAdd/ReadVariableOp2J
#lstm_cell_504/MatMul/ReadVariableOp#lstm_cell_504/MatMul/ReadVariableOp2N
%lstm_cell_504/MatMul_1/ReadVariableOp%lstm_cell_504/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?S
?
)sequential_62_lstm_187_while_body_3059865J
Fsequential_62_lstm_187_while_sequential_62_lstm_187_while_loop_counterP
Lsequential_62_lstm_187_while_sequential_62_lstm_187_while_maximum_iterations,
(sequential_62_lstm_187_while_placeholder.
*sequential_62_lstm_187_while_placeholder_1.
*sequential_62_lstm_187_while_placeholder_2.
*sequential_62_lstm_187_while_placeholder_3I
Esequential_62_lstm_187_while_sequential_62_lstm_187_strided_slice_1_0?
?sequential_62_lstm_187_while_tensorarrayv2read_tensorlistgetitem_sequential_62_lstm_187_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_62_lstm_187_while_lstm_cell_505_matmul_readvariableop_resource_0:	d?`
Msequential_62_lstm_187_while_lstm_cell_505_matmul_1_readvariableop_resource_0:	2?[
Lsequential_62_lstm_187_while_lstm_cell_505_biasadd_readvariableop_resource_0:	?)
%sequential_62_lstm_187_while_identity+
'sequential_62_lstm_187_while_identity_1+
'sequential_62_lstm_187_while_identity_2+
'sequential_62_lstm_187_while_identity_3+
'sequential_62_lstm_187_while_identity_4+
'sequential_62_lstm_187_while_identity_5G
Csequential_62_lstm_187_while_sequential_62_lstm_187_strided_slice_1?
sequential_62_lstm_187_while_tensorarrayv2read_tensorlistgetitem_sequential_62_lstm_187_tensorarrayunstack_tensorlistfromtensor\
Isequential_62_lstm_187_while_lstm_cell_505_matmul_readvariableop_resource:	d?^
Ksequential_62_lstm_187_while_lstm_cell_505_matmul_1_readvariableop_resource:	2?Y
Jsequential_62_lstm_187_while_lstm_cell_505_biasadd_readvariableop_resource:	???Asequential_62/lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOp?@sequential_62/lstm_187/while/lstm_cell_505/MatMul/ReadVariableOp?Bsequential_62/lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOp?
Nsequential_62/lstm_187/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_62/lstm_187/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_62_lstm_187_while_tensorarrayv2read_tensorlistgetitem_sequential_62_lstm_187_tensorarrayunstack_tensorlistfromtensor_0(sequential_62_lstm_187_while_placeholderWsequential_62/lstm_187/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_62/lstm_187/while/lstm_cell_505/MatMul/ReadVariableOpReadVariableOpKsequential_62_lstm_187_while_lstm_cell_505_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_62/lstm_187/while/lstm_cell_505/MatMulMatMulGsequential_62/lstm_187/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_62/lstm_187/while/lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_62/lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOpMsequential_62_lstm_187_while_lstm_cell_505_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_62/lstm_187/while/lstm_cell_505/MatMul_1MatMul*sequential_62_lstm_187_while_placeholder_2Jsequential_62/lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_62/lstm_187/while/lstm_cell_505/addAddV2;sequential_62/lstm_187/while/lstm_cell_505/MatMul:product:0=sequential_62/lstm_187/while/lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_62/lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOpLsequential_62_lstm_187_while_lstm_cell_505_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_62/lstm_187/while/lstm_cell_505/BiasAddBiasAdd2sequential_62/lstm_187/while/lstm_cell_505/add:z:0Isequential_62/lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_62/lstm_187/while/lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_62/lstm_187/while/lstm_cell_505/splitSplitCsequential_62/lstm_187/while/lstm_cell_505/split/split_dim:output:0;sequential_62/lstm_187/while/lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_62/lstm_187/while/lstm_cell_505/SigmoidSigmoid9sequential_62/lstm_187/while/lstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_62/lstm_187/while/lstm_cell_505/Sigmoid_1Sigmoid9sequential_62/lstm_187/while/lstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_62/lstm_187/while/lstm_cell_505/mulMul8sequential_62/lstm_187/while/lstm_cell_505/Sigmoid_1:y:0*sequential_62_lstm_187_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_62/lstm_187/while/lstm_cell_505/ReluRelu9sequential_62/lstm_187/while/lstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_62/lstm_187/while/lstm_cell_505/mul_1Mul6sequential_62/lstm_187/while/lstm_cell_505/Sigmoid:y:0=sequential_62/lstm_187/while/lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_62/lstm_187/while/lstm_cell_505/add_1AddV22sequential_62/lstm_187/while/lstm_cell_505/mul:z:04sequential_62/lstm_187/while/lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_62/lstm_187/while/lstm_cell_505/Sigmoid_2Sigmoid9sequential_62/lstm_187/while/lstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_62/lstm_187/while/lstm_cell_505/Relu_1Relu4sequential_62/lstm_187/while/lstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_62/lstm_187/while/lstm_cell_505/mul_2Mul8sequential_62/lstm_187/while/lstm_cell_505/Sigmoid_2:y:0?sequential_62/lstm_187/while/lstm_cell_505/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_62/lstm_187/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_62_lstm_187_while_placeholder_1(sequential_62_lstm_187_while_placeholder4sequential_62/lstm_187/while/lstm_cell_505/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_62/lstm_187/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_62/lstm_187/while/addAddV2(sequential_62_lstm_187_while_placeholder+sequential_62/lstm_187/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_62/lstm_187/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_62/lstm_187/while/add_1AddV2Fsequential_62_lstm_187_while_sequential_62_lstm_187_while_loop_counter-sequential_62/lstm_187/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_62/lstm_187/while/IdentityIdentity&sequential_62/lstm_187/while/add_1:z:0"^sequential_62/lstm_187/while/NoOp*
T0*
_output_shapes
: ?
'sequential_62/lstm_187/while/Identity_1IdentityLsequential_62_lstm_187_while_sequential_62_lstm_187_while_maximum_iterations"^sequential_62/lstm_187/while/NoOp*
T0*
_output_shapes
: ?
'sequential_62/lstm_187/while/Identity_2Identity$sequential_62/lstm_187/while/add:z:0"^sequential_62/lstm_187/while/NoOp*
T0*
_output_shapes
: ?
'sequential_62/lstm_187/while/Identity_3IdentityQsequential_62/lstm_187/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_62/lstm_187/while/NoOp*
T0*
_output_shapes
: ?
'sequential_62/lstm_187/while/Identity_4Identity4sequential_62/lstm_187/while/lstm_cell_505/mul_2:z:0"^sequential_62/lstm_187/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_62/lstm_187/while/Identity_5Identity4sequential_62/lstm_187/while/lstm_cell_505/add_1:z:0"^sequential_62/lstm_187/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_62/lstm_187/while/NoOpNoOpB^sequential_62/lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOpA^sequential_62/lstm_187/while/lstm_cell_505/MatMul/ReadVariableOpC^sequential_62/lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_62_lstm_187_while_identity.sequential_62/lstm_187/while/Identity:output:0"[
'sequential_62_lstm_187_while_identity_10sequential_62/lstm_187/while/Identity_1:output:0"[
'sequential_62_lstm_187_while_identity_20sequential_62/lstm_187/while/Identity_2:output:0"[
'sequential_62_lstm_187_while_identity_30sequential_62/lstm_187/while/Identity_3:output:0"[
'sequential_62_lstm_187_while_identity_40sequential_62/lstm_187/while/Identity_4:output:0"[
'sequential_62_lstm_187_while_identity_50sequential_62/lstm_187/while/Identity_5:output:0"?
Jsequential_62_lstm_187_while_lstm_cell_505_biasadd_readvariableop_resourceLsequential_62_lstm_187_while_lstm_cell_505_biasadd_readvariableop_resource_0"?
Ksequential_62_lstm_187_while_lstm_cell_505_matmul_1_readvariableop_resourceMsequential_62_lstm_187_while_lstm_cell_505_matmul_1_readvariableop_resource_0"?
Isequential_62_lstm_187_while_lstm_cell_505_matmul_readvariableop_resourceKsequential_62_lstm_187_while_lstm_cell_505_matmul_readvariableop_resource_0"?
Csequential_62_lstm_187_while_sequential_62_lstm_187_strided_slice_1Esequential_62_lstm_187_while_sequential_62_lstm_187_strided_slice_1_0"?
sequential_62_lstm_187_while_tensorarrayv2read_tensorlistgetitem_sequential_62_lstm_187_tensorarrayunstack_tensorlistfromtensor?sequential_62_lstm_187_while_tensorarrayv2read_tensorlistgetitem_sequential_62_lstm_187_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_62/lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOpAsequential_62/lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOp2?
@sequential_62/lstm_187/while/lstm_cell_505/MatMul/ReadVariableOp@sequential_62/lstm_187/while/lstm_cell_505/MatMul/ReadVariableOp2?
Bsequential_62/lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOpBsequential_62/lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOp: 
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
while_cond_3060715
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3060715___redundant_placeholder05
1while_while_cond_3060715___redundant_placeholder15
1while_while_cond_3060715___redundant_placeholder25
1while_while_cond_3060715___redundant_placeholder3
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
while_cond_3061208
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3061208___redundant_placeholder05
1while_while_cond_3061208___redundant_placeholder15
1while_while_cond_3061208___redundant_placeholder25
1while_while_cond_3061208___redundant_placeholder3
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
?
while_body_3061209
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_504_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_504_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_504_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_504_matmul_readvariableop_resource:	?G
4while_lstm_cell_504_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_504_biasadd_readvariableop_resource:	???*while/lstm_cell_504/BiasAdd/ReadVariableOp?)while/lstm_cell_504/MatMul/ReadVariableOp?+while/lstm_cell_504/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_504/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_504_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_504/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_504_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_504/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_504/addAddV2$while/lstm_cell_504/MatMul:product:0&while/lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_504_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_504/BiasAddBiasAddwhile/lstm_cell_504/add:z:02while/lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_504/splitSplit,while/lstm_cell_504/split/split_dim:output:0$while/lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_504/SigmoidSigmoid"while/lstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_504/Sigmoid_1Sigmoid"while/lstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mulMul!while/lstm_cell_504/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_504/ReluRelu"while/lstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mul_1Mulwhile/lstm_cell_504/Sigmoid:y:0&while/lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/add_1AddV2while/lstm_cell_504/mul:z:0while/lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_504/Sigmoid_2Sigmoid"while/lstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_504/Relu_1Reluwhile/lstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mul_2Mul!while/lstm_cell_504/Sigmoid_2:y:0(while/lstm_cell_504/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_504/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_504/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_504/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_504/BiasAdd/ReadVariableOp*^while/lstm_cell_504/MatMul/ReadVariableOp,^while/lstm_cell_504/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_504_biasadd_readvariableop_resource5while_lstm_cell_504_biasadd_readvariableop_resource_0"n
4while_lstm_cell_504_matmul_1_readvariableop_resource6while_lstm_cell_504_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_504_matmul_readvariableop_resource4while_lstm_cell_504_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_504/BiasAdd/ReadVariableOp*while/lstm_cell_504/BiasAdd/ReadVariableOp2V
)while/lstm_cell_504/MatMul/ReadVariableOp)while/lstm_cell_504/MatMul/ReadVariableOp2Z
+while/lstm_cell_504/MatMul_1/ReadVariableOp+while/lstm_cell_504/MatMul_1/ReadVariableOp: 
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
/__inference_lstm_cell_504_layer_call_fn_3065146

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
J__inference_lstm_cell_504_layer_call_and_return_conditional_losses_3060161o
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
?J
?
E__inference_lstm_188_layer_call_and_return_conditional_losses_3061593

inputs>
,lstm_cell_506_matmul_readvariableop_resource:2(@
.lstm_cell_506_matmul_1_readvariableop_resource:
(;
-lstm_cell_506_biasadd_readvariableop_resource:(
identity??$lstm_cell_506/BiasAdd/ReadVariableOp?#lstm_cell_506/MatMul/ReadVariableOp?%lstm_cell_506/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_506/MatMul/ReadVariableOpReadVariableOp,lstm_cell_506_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_506/MatMulMatMulstrided_slice_2:output:0+lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_506_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_506/MatMul_1MatMulzeros:output:0-lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_506/addAddV2lstm_cell_506/MatMul:product:0 lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_506_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_506/BiasAddBiasAddlstm_cell_506/add:z:0,lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_506/splitSplit&lstm_cell_506/split/split_dim:output:0lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_506/SigmoidSigmoidlstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_506/Sigmoid_1Sigmoidlstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_506/mulMullstm_cell_506/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_506/ReluRelulstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_506/mul_1Mullstm_cell_506/Sigmoid:y:0 lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_506/add_1AddV2lstm_cell_506/mul:z:0lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_506/Sigmoid_2Sigmoidlstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_506/Relu_1Relulstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_506/mul_2Mullstm_cell_506/Sigmoid_2:y:0"lstm_cell_506/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_506_matmul_readvariableop_resource.lstm_cell_506_matmul_1_readvariableop_resource-lstm_cell_506_biasadd_readvariableop_resource*
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
while_body_3061509*
condR
while_cond_3061508*K
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
NoOpNoOp%^lstm_cell_506/BiasAdd/ReadVariableOp$^lstm_cell_506/MatMul/ReadVariableOp&^lstm_cell_506/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_506/BiasAdd/ReadVariableOp$lstm_cell_506/BiasAdd/ReadVariableOp2J
#lstm_cell_506/MatMul/ReadVariableOp#lstm_cell_506/MatMul/ReadVariableOp2N
%lstm_cell_506/MatMul_1/ReadVariableOp%lstm_cell_506/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_3063651
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_504_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_504_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_504_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_504_matmul_readvariableop_resource:	?G
4while_lstm_cell_504_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_504_biasadd_readvariableop_resource:	???*while/lstm_cell_504/BiasAdd/ReadVariableOp?)while/lstm_cell_504/MatMul/ReadVariableOp?+while/lstm_cell_504/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_504/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_504_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_504/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_504_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_504/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_504/addAddV2$while/lstm_cell_504/MatMul:product:0&while/lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_504_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_504/BiasAddBiasAddwhile/lstm_cell_504/add:z:02while/lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_504/splitSplit,while/lstm_cell_504/split/split_dim:output:0$while/lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_504/SigmoidSigmoid"while/lstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_504/Sigmoid_1Sigmoid"while/lstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mulMul!while/lstm_cell_504/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_504/ReluRelu"while/lstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mul_1Mulwhile/lstm_cell_504/Sigmoid:y:0&while/lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/add_1AddV2while/lstm_cell_504/mul:z:0while/lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_504/Sigmoid_2Sigmoid"while/lstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_504/Relu_1Reluwhile/lstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mul_2Mul!while/lstm_cell_504/Sigmoid_2:y:0(while/lstm_cell_504/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_504/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_504/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_504/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_504/BiasAdd/ReadVariableOp*^while/lstm_cell_504/MatMul/ReadVariableOp,^while/lstm_cell_504/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_504_biasadd_readvariableop_resource5while_lstm_cell_504_biasadd_readvariableop_resource_0"n
4while_lstm_cell_504_matmul_1_readvariableop_resource6while_lstm_cell_504_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_504_matmul_readvariableop_resource4while_lstm_cell_504_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_504/BiasAdd/ReadVariableOp*while/lstm_cell_504/BiasAdd/ReadVariableOp2V
)while/lstm_cell_504/MatMul/ReadVariableOp)while/lstm_cell_504/MatMul/ReadVariableOp2Z
+while/lstm_cell_504/MatMul_1/ReadVariableOp+while/lstm_cell_504/MatMul_1/ReadVariableOp: 
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

?
lstm_187_while_cond_3063032.
*lstm_187_while_lstm_187_while_loop_counter4
0lstm_187_while_lstm_187_while_maximum_iterations
lstm_187_while_placeholder 
lstm_187_while_placeholder_1 
lstm_187_while_placeholder_2 
lstm_187_while_placeholder_30
,lstm_187_while_less_lstm_187_strided_slice_1G
Clstm_187_while_lstm_187_while_cond_3063032___redundant_placeholder0G
Clstm_187_while_lstm_187_while_cond_3063032___redundant_placeholder1G
Clstm_187_while_lstm_187_while_cond_3063032___redundant_placeholder2G
Clstm_187_while_lstm_187_while_cond_3063032___redundant_placeholder3
lstm_187_while_identity
?
lstm_187/while/LessLesslstm_187_while_placeholder,lstm_187_while_less_lstm_187_strided_slice_1*
T0*
_output_shapes
: ]
lstm_187/while/IdentityIdentitylstm_187/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_187_while_identity lstm_187/while/Identity:output:0*(
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
J__inference_lstm_cell_504_layer_call_and_return_conditional_losses_3060161

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
?8
?
while_body_3061725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_506_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_506_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_506_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_506_matmul_readvariableop_resource:2(F
4while_lstm_cell_506_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_506_biasadd_readvariableop_resource:(??*while/lstm_cell_506/BiasAdd/ReadVariableOp?)while/lstm_cell_506/MatMul/ReadVariableOp?+while/lstm_cell_506/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_506/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_506_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_506/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_506_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_506/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_506/addAddV2$while/lstm_cell_506/MatMul:product:0&while/lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_506_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_506/BiasAddBiasAddwhile/lstm_cell_506/add:z:02while/lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_506/splitSplit,while/lstm_cell_506/split/split_dim:output:0$while/lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_506/SigmoidSigmoid"while/lstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_506/Sigmoid_1Sigmoid"while/lstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mulMul!while/lstm_cell_506/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_506/ReluRelu"while/lstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mul_1Mulwhile/lstm_cell_506/Sigmoid:y:0&while/lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/add_1AddV2while/lstm_cell_506/mul:z:0while/lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_506/Sigmoid_2Sigmoid"while/lstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_506/Relu_1Reluwhile/lstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mul_2Mul!while/lstm_cell_506/Sigmoid_2:y:0(while/lstm_cell_506/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_506/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_506/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_506/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_506/BiasAdd/ReadVariableOp*^while/lstm_cell_506/MatMul/ReadVariableOp,^while/lstm_cell_506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_506_biasadd_readvariableop_resource5while_lstm_cell_506_biasadd_readvariableop_resource_0"n
4while_lstm_cell_506_matmul_1_readvariableop_resource6while_lstm_cell_506_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_506_matmul_readvariableop_resource4while_lstm_cell_506_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_506/BiasAdd/ReadVariableOp*while/lstm_cell_506/BiasAdd/ReadVariableOp2V
)while/lstm_cell_506/MatMul/ReadVariableOp)while/lstm_cell_506/MatMul/ReadVariableOp2Z
+while/lstm_cell_506/MatMul_1/ReadVariableOp+while/lstm_cell_506/MatMul_1/ReadVariableOp: 
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
while_cond_3060874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3060874___redundant_placeholder05
1while_while_cond_3060874___redundant_placeholder15
1while_while_cond_3060874___redundant_placeholder25
1while_while_cond_3060874___redundant_placeholder3
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
while_cond_3064882
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3064882___redundant_placeholder05
1while_while_cond_3064882___redundant_placeholder15
1while_while_cond_3064882___redundant_placeholder25
1while_while_cond_3064882___redundant_placeholder3
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
?J
?
E__inference_lstm_188_layer_call_and_return_conditional_losses_3064967

inputs>
,lstm_cell_506_matmul_readvariableop_resource:2(@
.lstm_cell_506_matmul_1_readvariableop_resource:
(;
-lstm_cell_506_biasadd_readvariableop_resource:(
identity??$lstm_cell_506/BiasAdd/ReadVariableOp?#lstm_cell_506/MatMul/ReadVariableOp?%lstm_cell_506/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_506/MatMul/ReadVariableOpReadVariableOp,lstm_cell_506_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_506/MatMulMatMulstrided_slice_2:output:0+lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_506_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_506/MatMul_1MatMulzeros:output:0-lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_506/addAddV2lstm_cell_506/MatMul:product:0 lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_506_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_506/BiasAddBiasAddlstm_cell_506/add:z:0,lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_506/splitSplit&lstm_cell_506/split/split_dim:output:0lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_506/SigmoidSigmoidlstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_506/Sigmoid_1Sigmoidlstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_506/mulMullstm_cell_506/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_506/ReluRelulstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_506/mul_1Mullstm_cell_506/Sigmoid:y:0 lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_506/add_1AddV2lstm_cell_506/mul:z:0lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_506/Sigmoid_2Sigmoidlstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_506/Relu_1Relulstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_506/mul_2Mullstm_cell_506/Sigmoid_2:y:0"lstm_cell_506/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_506_matmul_readvariableop_resource.lstm_cell_506_matmul_1_readvariableop_resource-lstm_cell_506_biasadd_readvariableop_resource*
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
while_body_3064883*
condR
while_cond_3064882*K
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
NoOpNoOp%^lstm_cell_506/BiasAdd/ReadVariableOp$^lstm_cell_506/MatMul/ReadVariableOp&^lstm_cell_506/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_506/BiasAdd/ReadVariableOp$lstm_cell_506/BiasAdd/ReadVariableOp2J
#lstm_cell_506/MatMul/ReadVariableOp#lstm_cell_506/MatMul/ReadVariableOp2N
%lstm_cell_506/MatMul_1/ReadVariableOp%lstm_cell_506/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_188_layer_call_and_return_conditional_losses_3064824
inputs_0>
,lstm_cell_506_matmul_readvariableop_resource:2(@
.lstm_cell_506_matmul_1_readvariableop_resource:
(;
-lstm_cell_506_biasadd_readvariableop_resource:(
identity??$lstm_cell_506/BiasAdd/ReadVariableOp?#lstm_cell_506/MatMul/ReadVariableOp?%lstm_cell_506/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_506/MatMul/ReadVariableOpReadVariableOp,lstm_cell_506_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_506/MatMulMatMulstrided_slice_2:output:0+lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_506_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_506/MatMul_1MatMulzeros:output:0-lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_506/addAddV2lstm_cell_506/MatMul:product:0 lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_506_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_506/BiasAddBiasAddlstm_cell_506/add:z:0,lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_506/splitSplit&lstm_cell_506/split/split_dim:output:0lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_506/SigmoidSigmoidlstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_506/Sigmoid_1Sigmoidlstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_506/mulMullstm_cell_506/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_506/ReluRelulstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_506/mul_1Mullstm_cell_506/Sigmoid:y:0 lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_506/add_1AddV2lstm_cell_506/mul:z:0lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_506/Sigmoid_2Sigmoidlstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_506/Relu_1Relulstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_506/mul_2Mullstm_cell_506/Sigmoid_2:y:0"lstm_cell_506/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_506_matmul_readvariableop_resource.lstm_cell_506_matmul_1_readvariableop_resource-lstm_cell_506_biasadd_readvariableop_resource*
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
while_body_3064740*
condR
while_cond_3064739*K
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
NoOpNoOp%^lstm_cell_506/BiasAdd/ReadVariableOp$^lstm_cell_506/MatMul/ReadVariableOp&^lstm_cell_506/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_506/BiasAdd/ReadVariableOp$lstm_cell_506/BiasAdd/ReadVariableOp2J
#lstm_cell_506/MatMul/ReadVariableOp#lstm_cell_506/MatMul/ReadVariableOp2N
%lstm_cell_506/MatMul_1/ReadVariableOp%lstm_cell_506/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_186_layer_call_and_return_conditional_losses_3061293

inputs?
,lstm_cell_504_matmul_readvariableop_resource:	?A
.lstm_cell_504_matmul_1_readvariableop_resource:	d?<
-lstm_cell_504_biasadd_readvariableop_resource:	?
identity??$lstm_cell_504/BiasAdd/ReadVariableOp?#lstm_cell_504/MatMul/ReadVariableOp?%lstm_cell_504/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_504/MatMul/ReadVariableOpReadVariableOp,lstm_cell_504_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_504/MatMulMatMulstrided_slice_2:output:0+lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_504_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_504/MatMul_1MatMulzeros:output:0-lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_504/addAddV2lstm_cell_504/MatMul:product:0 lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_504_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_504/BiasAddBiasAddlstm_cell_504/add:z:0,lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_504/splitSplit&lstm_cell_504/split/split_dim:output:0lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_504/SigmoidSigmoidlstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_504/Sigmoid_1Sigmoidlstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_504/mulMullstm_cell_504/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_504/ReluRelulstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_504/mul_1Mullstm_cell_504/Sigmoid:y:0 lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_504/add_1AddV2lstm_cell_504/mul:z:0lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_504/Sigmoid_2Sigmoidlstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_504/Relu_1Relulstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_504/mul_2Mullstm_cell_504/Sigmoid_2:y:0"lstm_cell_504/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_504_matmul_readvariableop_resource.lstm_cell_504_matmul_1_readvariableop_resource-lstm_cell_504_biasadd_readvariableop_resource*
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
while_body_3061209*
condR
while_cond_3061208*K
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
NoOpNoOp%^lstm_cell_504/BiasAdd/ReadVariableOp$^lstm_cell_504/MatMul/ReadVariableOp&^lstm_cell_504/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_504/BiasAdd/ReadVariableOp$lstm_cell_504/BiasAdd/ReadVariableOp2J
#lstm_cell_504/MatMul/ReadVariableOp#lstm_cell_504/MatMul/ReadVariableOp2N
%lstm_cell_504/MatMul_1/ReadVariableOp%lstm_cell_504/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_188_layer_call_and_return_conditional_losses_3061135

inputs'
lstm_cell_506_3061053:2('
lstm_cell_506_3061055:
(#
lstm_cell_506_3061057:(
identity??%lstm_cell_506/StatefulPartitionedCall?while;
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
%lstm_cell_506/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_506_3061053lstm_cell_506_3061055lstm_cell_506_3061057*
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
J__inference_lstm_cell_506_layer_call_and_return_conditional_losses_3061007n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_506_3061053lstm_cell_506_3061055lstm_cell_506_3061057*
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
while_body_3061066*
condR
while_cond_3061065*K
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
NoOpNoOp&^lstm_cell_506/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_506/StatefulPartitionedCall%lstm_cell_506/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_188_layer_call_fn_3064527

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
E__inference_lstm_188_layer_call_and_return_conditional_losses_3061593o
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
?

?
/__inference_sequential_62_layer_call_fn_3061643
lstm_186_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_186_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_62_layer_call_and_return_conditional_losses_3061618o
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
_user_specified_namelstm_186_input
?
?
while_cond_3063364
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3063364___redundant_placeholder05
1while_while_cond_3063364___redundant_placeholder15
1while_while_cond_3063364___redundant_placeholder25
1while_while_cond_3063364___redundant_placeholder3
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
J__inference_lstm_cell_504_layer_call_and_return_conditional_losses_3065227

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
?#
?
while_body_3060875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_506_3060899_0:2(/
while_lstm_cell_506_3060901_0:
(+
while_lstm_cell_506_3060903_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_506_3060899:2(-
while_lstm_cell_506_3060901:
()
while_lstm_cell_506_3060903:(??+while/lstm_cell_506/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_506/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_506_3060899_0while_lstm_cell_506_3060901_0while_lstm_cell_506_3060903_0*
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
J__inference_lstm_cell_506_layer_call_and_return_conditional_losses_3060861?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_506/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_506/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_506/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_506/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_506_3060899while_lstm_cell_506_3060899_0"<
while_lstm_cell_506_3060901while_lstm_cell_506_3060901_0"<
while_lstm_cell_506_3060903while_lstm_cell_506_3060903_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_506/StatefulPartitionedCall+while/lstm_cell_506/StatefulPartitionedCall: 
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
?
E__inference_lstm_187_layer_call_and_return_conditional_losses_3060785

inputs(
lstm_cell_505_3060703:	d?(
lstm_cell_505_3060705:	2?$
lstm_cell_505_3060707:	?
identity??%lstm_cell_505/StatefulPartitionedCall?while;
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
%lstm_cell_505/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_505_3060703lstm_cell_505_3060705lstm_cell_505_3060707*
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
J__inference_lstm_cell_505_layer_call_and_return_conditional_losses_3060657n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_505_3060703lstm_cell_505_3060705lstm_cell_505_3060707*
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
while_body_3060716*
condR
while_cond_3060715*K
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
NoOpNoOp&^lstm_cell_505/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_505/StatefulPartitionedCall%lstm_cell_505/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?#
?
while_body_3061066
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_506_3061090_0:2(/
while_lstm_cell_506_3061092_0:
(+
while_lstm_cell_506_3061094_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_506_3061090:2(-
while_lstm_cell_506_3061092:
()
while_lstm_cell_506_3061094:(??+while/lstm_cell_506/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_506/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_506_3061090_0while_lstm_cell_506_3061092_0while_lstm_cell_506_3061094_0*
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
J__inference_lstm_cell_506_layer_call_and_return_conditional_losses_3061007?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_506/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_506/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_506/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_506/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_506_3061090while_lstm_cell_506_3061090_0"<
while_lstm_cell_506_3061092while_lstm_cell_506_3061092_0"<
while_lstm_cell_506_3061094while_lstm_cell_506_3061094_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_506/StatefulPartitionedCall+while/lstm_cell_506/StatefulPartitionedCall: 
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

?
lstm_188_while_cond_3062744.
*lstm_188_while_lstm_188_while_loop_counter4
0lstm_188_while_lstm_188_while_maximum_iterations
lstm_188_while_placeholder 
lstm_188_while_placeholder_1 
lstm_188_while_placeholder_2 
lstm_188_while_placeholder_30
,lstm_188_while_less_lstm_188_strided_slice_1G
Clstm_188_while_lstm_188_while_cond_3062744___redundant_placeholder0G
Clstm_188_while_lstm_188_while_cond_3062744___redundant_placeholder1G
Clstm_188_while_lstm_188_while_cond_3062744___redundant_placeholder2G
Clstm_188_while_lstm_188_while_cond_3062744___redundant_placeholder3
lstm_188_while_identity
?
lstm_188/while/LessLesslstm_188_while_placeholder,lstm_188_while_less_lstm_188_strided_slice_1*
T0*
_output_shapes
: ]
lstm_188/while/IdentityIdentitylstm_188/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_188_while_identity lstm_188/while/Identity:output:0*(
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
while_body_3064267
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_505_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_505_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_505_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_505_matmul_readvariableop_resource:	d?G
4while_lstm_cell_505_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_505_biasadd_readvariableop_resource:	???*while/lstm_cell_505/BiasAdd/ReadVariableOp?)while/lstm_cell_505/MatMul/ReadVariableOp?+while/lstm_cell_505/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_505/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_505_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_505/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_505_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_505/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_505/addAddV2$while/lstm_cell_505/MatMul:product:0&while/lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_505_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_505/BiasAddBiasAddwhile/lstm_cell_505/add:z:02while/lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_505/splitSplit,while/lstm_cell_505/split/split_dim:output:0$while/lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_505/SigmoidSigmoid"while/lstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_505/Sigmoid_1Sigmoid"while/lstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mulMul!while/lstm_cell_505/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_505/ReluRelu"while/lstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mul_1Mulwhile/lstm_cell_505/Sigmoid:y:0&while/lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/add_1AddV2while/lstm_cell_505/mul:z:0while/lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_505/Sigmoid_2Sigmoid"while/lstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_505/Relu_1Reluwhile/lstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mul_2Mul!while/lstm_cell_505/Sigmoid_2:y:0(while/lstm_cell_505/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_505/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_505/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_505/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_505/BiasAdd/ReadVariableOp*^while/lstm_cell_505/MatMul/ReadVariableOp,^while/lstm_cell_505/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_505_biasadd_readvariableop_resource5while_lstm_cell_505_biasadd_readvariableop_resource_0"n
4while_lstm_cell_505_matmul_1_readvariableop_resource6while_lstm_cell_505_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_505_matmul_readvariableop_resource4while_lstm_cell_505_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_505/BiasAdd/ReadVariableOp*while/lstm_cell_505/BiasAdd/ReadVariableOp2V
)while/lstm_cell_505/MatMul/ReadVariableOp)while/lstm_cell_505/MatMul/ReadVariableOp2Z
+while/lstm_cell_505/MatMul_1/ReadVariableOp+while/lstm_cell_505/MatMul_1/ReadVariableOp: 
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
?
/__inference_lstm_cell_504_layer_call_fn_3065163

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
J__inference_lstm_cell_504_layer_call_and_return_conditional_losses_3060307o
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
?

?
/__inference_sequential_62_layer_call_fn_3062381

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
J__inference_sequential_62_layer_call_and_return_conditional_losses_3061618o
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
?#
?
while_body_3060525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_505_3060549_0:	d?0
while_lstm_cell_505_3060551_0:	2?,
while_lstm_cell_505_3060553_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_505_3060549:	d?.
while_lstm_cell_505_3060551:	2?*
while_lstm_cell_505_3060553:	???+while/lstm_cell_505/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_505/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_505_3060549_0while_lstm_cell_505_3060551_0while_lstm_cell_505_3060553_0*
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
J__inference_lstm_cell_505_layer_call_and_return_conditional_losses_3060511?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_505/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_505/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_505/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_505/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_505_3060549while_lstm_cell_505_3060549_0"<
while_lstm_cell_505_3060551while_lstm_cell_505_3060551_0"<
while_lstm_cell_505_3060553while_lstm_cell_505_3060553_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_505/StatefulPartitionedCall+while/lstm_cell_505/StatefulPartitionedCall: 
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

?
/__inference_sequential_62_layer_call_fn_3062408

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
J__inference_sequential_62_layer_call_and_return_conditional_losses_3062207o
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
E__inference_lstm_188_layer_call_and_return_conditional_losses_3064681
inputs_0>
,lstm_cell_506_matmul_readvariableop_resource:2(@
.lstm_cell_506_matmul_1_readvariableop_resource:
(;
-lstm_cell_506_biasadd_readvariableop_resource:(
identity??$lstm_cell_506/BiasAdd/ReadVariableOp?#lstm_cell_506/MatMul/ReadVariableOp?%lstm_cell_506/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_506/MatMul/ReadVariableOpReadVariableOp,lstm_cell_506_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_506/MatMulMatMulstrided_slice_2:output:0+lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_506_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_506/MatMul_1MatMulzeros:output:0-lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_506/addAddV2lstm_cell_506/MatMul:product:0 lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_506_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_506/BiasAddBiasAddlstm_cell_506/add:z:0,lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_506/splitSplit&lstm_cell_506/split/split_dim:output:0lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_506/SigmoidSigmoidlstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_506/Sigmoid_1Sigmoidlstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_506/mulMullstm_cell_506/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_506/ReluRelulstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_506/mul_1Mullstm_cell_506/Sigmoid:y:0 lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_506/add_1AddV2lstm_cell_506/mul:z:0lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_506/Sigmoid_2Sigmoidlstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_506/Relu_1Relulstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_506/mul_2Mullstm_cell_506/Sigmoid_2:y:0"lstm_cell_506/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_506_matmul_readvariableop_resource.lstm_cell_506_matmul_1_readvariableop_resource-lstm_cell_506_biasadd_readvariableop_resource*
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
while_body_3064597*
condR
while_cond_3064596*K
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
NoOpNoOp%^lstm_cell_506/BiasAdd/ReadVariableOp$^lstm_cell_506/MatMul/ReadVariableOp&^lstm_cell_506/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_506/BiasAdd/ReadVariableOp$lstm_cell_506/BiasAdd/ReadVariableOp2J
#lstm_cell_506/MatMul/ReadVariableOp#lstm_cell_506/MatMul/ReadVariableOp2N
%lstm_cell_506/MatMul_1/ReadVariableOp%lstm_cell_506/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_3064410
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_505_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_505_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_505_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_505_matmul_readvariableop_resource:	d?G
4while_lstm_cell_505_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_505_biasadd_readvariableop_resource:	???*while/lstm_cell_505/BiasAdd/ReadVariableOp?)while/lstm_cell_505/MatMul/ReadVariableOp?+while/lstm_cell_505/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_505/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_505_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_505/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_505_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_505/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_505/addAddV2$while/lstm_cell_505/MatMul:product:0&while/lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_505_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_505/BiasAddBiasAddwhile/lstm_cell_505/add:z:02while/lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_505/splitSplit,while/lstm_cell_505/split/split_dim:output:0$while/lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_505/SigmoidSigmoid"while/lstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_505/Sigmoid_1Sigmoid"while/lstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mulMul!while/lstm_cell_505/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_505/ReluRelu"while/lstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mul_1Mulwhile/lstm_cell_505/Sigmoid:y:0&while/lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/add_1AddV2while/lstm_cell_505/mul:z:0while/lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_505/Sigmoid_2Sigmoid"while/lstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_505/Relu_1Reluwhile/lstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mul_2Mul!while/lstm_cell_505/Sigmoid_2:y:0(while/lstm_cell_505/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_505/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_505/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_505/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_505/BiasAdd/ReadVariableOp*^while/lstm_cell_505/MatMul/ReadVariableOp,^while/lstm_cell_505/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_505_biasadd_readvariableop_resource5while_lstm_cell_505_biasadd_readvariableop_resource_0"n
4while_lstm_cell_505_matmul_1_readvariableop_resource6while_lstm_cell_505_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_505_matmul_readvariableop_resource4while_lstm_cell_505_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_505/BiasAdd/ReadVariableOp*while/lstm_cell_505/BiasAdd/ReadVariableOp2V
)while/lstm_cell_505/MatMul/ReadVariableOp)while/lstm_cell_505/MatMul/ReadVariableOp2Z
+while/lstm_cell_505/MatMul_1/ReadVariableOp+while/lstm_cell_505/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_187_layer_call_and_return_conditional_losses_3061974

inputs?
,lstm_cell_505_matmul_readvariableop_resource:	d?A
.lstm_cell_505_matmul_1_readvariableop_resource:	2?<
-lstm_cell_505_biasadd_readvariableop_resource:	?
identity??$lstm_cell_505/BiasAdd/ReadVariableOp?#lstm_cell_505/MatMul/ReadVariableOp?%lstm_cell_505/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_505/MatMul/ReadVariableOpReadVariableOp,lstm_cell_505_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_505/MatMulMatMulstrided_slice_2:output:0+lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_505_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_505/MatMul_1MatMulzeros:output:0-lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_505/addAddV2lstm_cell_505/MatMul:product:0 lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_505_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_505/BiasAddBiasAddlstm_cell_505/add:z:0,lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_505/splitSplit&lstm_cell_505/split/split_dim:output:0lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_505/SigmoidSigmoidlstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_505/Sigmoid_1Sigmoidlstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_505/mulMullstm_cell_505/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_505/ReluRelulstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_505/mul_1Mullstm_cell_505/Sigmoid:y:0 lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_505/add_1AddV2lstm_cell_505/mul:z:0lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_505/Sigmoid_2Sigmoidlstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_505/Relu_1Relulstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_505/mul_2Mullstm_cell_505/Sigmoid_2:y:0"lstm_cell_505/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_505_matmul_readvariableop_resource.lstm_cell_505_matmul_1_readvariableop_resource-lstm_cell_505_biasadd_readvariableop_resource*
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
while_body_3061890*
condR
while_cond_3061889*K
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
NoOpNoOp%^lstm_cell_505/BiasAdd/ReadVariableOp$^lstm_cell_505/MatMul/ReadVariableOp&^lstm_cell_505/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_505/BiasAdd/ReadVariableOp$lstm_cell_505/BiasAdd/ReadVariableOp2J
#lstm_cell_505/MatMul/ReadVariableOp#lstm_cell_505/MatMul/ReadVariableOp2N
%lstm_cell_505/MatMul_1/ReadVariableOp%lstm_cell_505/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_506_layer_call_and_return_conditional_losses_3060861

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
?8
?
while_body_3064883
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_506_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_506_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_506_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_506_matmul_readvariableop_resource:2(F
4while_lstm_cell_506_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_506_biasadd_readvariableop_resource:(??*while/lstm_cell_506/BiasAdd/ReadVariableOp?)while/lstm_cell_506/MatMul/ReadVariableOp?+while/lstm_cell_506/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_506/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_506_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_506/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_506_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_506/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_506/addAddV2$while/lstm_cell_506/MatMul:product:0&while/lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_506_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_506/BiasAddBiasAddwhile/lstm_cell_506/add:z:02while/lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_506/splitSplit,while/lstm_cell_506/split/split_dim:output:0$while/lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_506/SigmoidSigmoid"while/lstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_506/Sigmoid_1Sigmoid"while/lstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mulMul!while/lstm_cell_506/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_506/ReluRelu"while/lstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mul_1Mulwhile/lstm_cell_506/Sigmoid:y:0&while/lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/add_1AddV2while/lstm_cell_506/mul:z:0while/lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_506/Sigmoid_2Sigmoid"while/lstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_506/Relu_1Reluwhile/lstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mul_2Mul!while/lstm_cell_506/Sigmoid_2:y:0(while/lstm_cell_506/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_506/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_506/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_506/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_506/BiasAdd/ReadVariableOp*^while/lstm_cell_506/MatMul/ReadVariableOp,^while/lstm_cell_506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_506_biasadd_readvariableop_resource5while_lstm_cell_506_biasadd_readvariableop_resource_0"n
4while_lstm_cell_506_matmul_1_readvariableop_resource6while_lstm_cell_506_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_506_matmul_readvariableop_resource4while_lstm_cell_506_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_506/BiasAdd/ReadVariableOp*while/lstm_cell_506/BiasAdd/ReadVariableOp2V
)while/lstm_cell_506/MatMul/ReadVariableOp)while/lstm_cell_506/MatMul/ReadVariableOp2Z
+while/lstm_cell_506/MatMul_1/ReadVariableOp+while/lstm_cell_506/MatMul_1/ReadVariableOp: 
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
?
*__inference_lstm_188_layer_call_fn_3064516
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
E__inference_lstm_188_layer_call_and_return_conditional_losses_3061135o
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
E__inference_dense_62_layer_call_and_return_conditional_losses_3065129

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
while_body_3064740
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_506_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_506_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_506_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_506_matmul_readvariableop_resource:2(F
4while_lstm_cell_506_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_506_biasadd_readvariableop_resource:(??*while/lstm_cell_506/BiasAdd/ReadVariableOp?)while/lstm_cell_506/MatMul/ReadVariableOp?+while/lstm_cell_506/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_506/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_506_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_506/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_506_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_506/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_506/addAddV2$while/lstm_cell_506/MatMul:product:0&while/lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_506_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_506/BiasAddBiasAddwhile/lstm_cell_506/add:z:02while/lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_506/splitSplit,while/lstm_cell_506/split/split_dim:output:0$while/lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_506/SigmoidSigmoid"while/lstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_506/Sigmoid_1Sigmoid"while/lstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mulMul!while/lstm_cell_506/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_506/ReluRelu"while/lstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mul_1Mulwhile/lstm_cell_506/Sigmoid:y:0&while/lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/add_1AddV2while/lstm_cell_506/mul:z:0while/lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_506/Sigmoid_2Sigmoid"while/lstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_506/Relu_1Reluwhile/lstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mul_2Mul!while/lstm_cell_506/Sigmoid_2:y:0(while/lstm_cell_506/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_506/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_506/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_506/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_506/BiasAdd/ReadVariableOp*^while/lstm_cell_506/MatMul/ReadVariableOp,^while/lstm_cell_506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_506_biasadd_readvariableop_resource5while_lstm_cell_506_biasadd_readvariableop_resource_0"n
4while_lstm_cell_506_matmul_1_readvariableop_resource6while_lstm_cell_506_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_506_matmul_readvariableop_resource4while_lstm_cell_506_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_506/BiasAdd/ReadVariableOp*while/lstm_cell_506/BiasAdd/ReadVariableOp2V
)while/lstm_cell_506/MatMul/ReadVariableOp)while/lstm_cell_506/MatMul/ReadVariableOp2Z
+while/lstm_cell_506/MatMul_1/ReadVariableOp+while/lstm_cell_506/MatMul_1/ReadVariableOp: 
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
?
E__inference_lstm_186_layer_call_and_return_conditional_losses_3060244

inputs(
lstm_cell_504_3060162:	?(
lstm_cell_504_3060164:	d?$
lstm_cell_504_3060166:	?
identity??%lstm_cell_504/StatefulPartitionedCall?while;
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
%lstm_cell_504/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_504_3060162lstm_cell_504_3060164lstm_cell_504_3060166*
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
J__inference_lstm_cell_504_layer_call_and_return_conditional_losses_3060161n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_504_3060162lstm_cell_504_3060164lstm_cell_504_3060166*
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
while_body_3060175*
condR
while_cond_3060174*K
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
NoOpNoOp&^lstm_cell_504/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_504/StatefulPartitionedCall%lstm_cell_504/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_187_layer_call_fn_3063900
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
E__inference_lstm_187_layer_call_and_return_conditional_losses_3060785|
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
?#
?
while_body_3060716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_505_3060740_0:	d?0
while_lstm_cell_505_3060742_0:	2?,
while_lstm_cell_505_3060744_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_505_3060740:	d?.
while_lstm_cell_505_3060742:	2?*
while_lstm_cell_505_3060744:	???+while/lstm_cell_505/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_505/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_505_3060740_0while_lstm_cell_505_3060742_0while_lstm_cell_505_3060744_0*
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
J__inference_lstm_cell_505_layer_call_and_return_conditional_losses_3060657?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_505/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_505/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_505/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_505/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_505_3060740while_lstm_cell_505_3060740_0"<
while_lstm_cell_505_3060742while_lstm_cell_505_3060742_0"<
while_lstm_cell_505_3060744while_lstm_cell_505_3060744_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_505/StatefulPartitionedCall+while/lstm_cell_505/StatefulPartitionedCall: 
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
while_cond_3064266
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3064266___redundant_placeholder05
1while_while_cond_3064266___redundant_placeholder15
1while_while_cond_3064266___redundant_placeholder25
1while_while_cond_3064266___redundant_placeholder3
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
while_cond_3060524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3060524___redundant_placeholder05
1while_while_cond_3060524___redundant_placeholder15
1while_while_cond_3060524___redundant_placeholder25
1while_while_cond_3060524___redundant_placeholder3
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
*__inference_lstm_186_layer_call_fn_3063306

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
E__inference_lstm_186_layer_call_and_return_conditional_losses_3062139s
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
while_cond_3064409
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3064409___redundant_placeholder05
1while_while_cond_3064409___redundant_placeholder15
1while_while_cond_3064409___redundant_placeholder25
1while_while_cond_3064409___redundant_placeholder3
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
?
?
*__inference_lstm_188_layer_call_fn_3064538

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
E__inference_lstm_188_layer_call_and_return_conditional_losses_3061809o
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
?

?
lstm_186_while_cond_3062893.
*lstm_186_while_lstm_186_while_loop_counter4
0lstm_186_while_lstm_186_while_maximum_iterations
lstm_186_while_placeholder 
lstm_186_while_placeholder_1 
lstm_186_while_placeholder_2 
lstm_186_while_placeholder_30
,lstm_186_while_less_lstm_186_strided_slice_1G
Clstm_186_while_lstm_186_while_cond_3062893___redundant_placeholder0G
Clstm_186_while_lstm_186_while_cond_3062893___redundant_placeholder1G
Clstm_186_while_lstm_186_while_cond_3062893___redundant_placeholder2G
Clstm_186_while_lstm_186_while_cond_3062893___redundant_placeholder3
lstm_186_while_identity
?
lstm_186/while/LessLesslstm_186_while_placeholder,lstm_186_while_less_lstm_186_strided_slice_1*
T0*
_output_shapes
: ]
lstm_186/while/IdentityIdentitylstm_186/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_186_while_identity lstm_186/while/Identity:output:0*(
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
while_cond_3060174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3060174___redundant_placeholder05
1while_while_cond_3060174___redundant_placeholder15
1while_while_cond_3060174___redundant_placeholder25
1while_while_cond_3060174___redundant_placeholder3
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
?#
?
while_body_3060175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_504_3060199_0:	?0
while_lstm_cell_504_3060201_0:	d?,
while_lstm_cell_504_3060203_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_504_3060199:	?.
while_lstm_cell_504_3060201:	d?*
while_lstm_cell_504_3060203:	???+while/lstm_cell_504/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_504/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_504_3060199_0while_lstm_cell_504_3060201_0while_lstm_cell_504_3060203_0*
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
J__inference_lstm_cell_504_layer_call_and_return_conditional_losses_3060161?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_504/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_504/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_504/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_504/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_504_3060199while_lstm_cell_504_3060199_0"<
while_lstm_cell_504_3060201while_lstm_cell_504_3060201_0"<
while_lstm_cell_504_3060203while_lstm_cell_504_3060203_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_504/StatefulPartitionedCall+while/lstm_cell_504/StatefulPartitionedCall: 
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
while_cond_3063650
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3063650___redundant_placeholder05
1while_while_cond_3063650___redundant_placeholder15
1while_while_cond_3063650___redundant_placeholder25
1while_while_cond_3063650___redundant_placeholder3
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
)sequential_62_lstm_188_while_body_3060004J
Fsequential_62_lstm_188_while_sequential_62_lstm_188_while_loop_counterP
Lsequential_62_lstm_188_while_sequential_62_lstm_188_while_maximum_iterations,
(sequential_62_lstm_188_while_placeholder.
*sequential_62_lstm_188_while_placeholder_1.
*sequential_62_lstm_188_while_placeholder_2.
*sequential_62_lstm_188_while_placeholder_3I
Esequential_62_lstm_188_while_sequential_62_lstm_188_strided_slice_1_0?
?sequential_62_lstm_188_while_tensorarrayv2read_tensorlistgetitem_sequential_62_lstm_188_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_62_lstm_188_while_lstm_cell_506_matmul_readvariableop_resource_0:2(_
Msequential_62_lstm_188_while_lstm_cell_506_matmul_1_readvariableop_resource_0:
(Z
Lsequential_62_lstm_188_while_lstm_cell_506_biasadd_readvariableop_resource_0:()
%sequential_62_lstm_188_while_identity+
'sequential_62_lstm_188_while_identity_1+
'sequential_62_lstm_188_while_identity_2+
'sequential_62_lstm_188_while_identity_3+
'sequential_62_lstm_188_while_identity_4+
'sequential_62_lstm_188_while_identity_5G
Csequential_62_lstm_188_while_sequential_62_lstm_188_strided_slice_1?
sequential_62_lstm_188_while_tensorarrayv2read_tensorlistgetitem_sequential_62_lstm_188_tensorarrayunstack_tensorlistfromtensor[
Isequential_62_lstm_188_while_lstm_cell_506_matmul_readvariableop_resource:2(]
Ksequential_62_lstm_188_while_lstm_cell_506_matmul_1_readvariableop_resource:
(X
Jsequential_62_lstm_188_while_lstm_cell_506_biasadd_readvariableop_resource:(??Asequential_62/lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOp?@sequential_62/lstm_188/while/lstm_cell_506/MatMul/ReadVariableOp?Bsequential_62/lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOp?
Nsequential_62/lstm_188/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_62/lstm_188/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_62_lstm_188_while_tensorarrayv2read_tensorlistgetitem_sequential_62_lstm_188_tensorarrayunstack_tensorlistfromtensor_0(sequential_62_lstm_188_while_placeholderWsequential_62/lstm_188/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_62/lstm_188/while/lstm_cell_506/MatMul/ReadVariableOpReadVariableOpKsequential_62_lstm_188_while_lstm_cell_506_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_62/lstm_188/while/lstm_cell_506/MatMulMatMulGsequential_62/lstm_188/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_62/lstm_188/while/lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_62/lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOpMsequential_62_lstm_188_while_lstm_cell_506_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_62/lstm_188/while/lstm_cell_506/MatMul_1MatMul*sequential_62_lstm_188_while_placeholder_2Jsequential_62/lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_62/lstm_188/while/lstm_cell_506/addAddV2;sequential_62/lstm_188/while/lstm_cell_506/MatMul:product:0=sequential_62/lstm_188/while/lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_62/lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOpLsequential_62_lstm_188_while_lstm_cell_506_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_62/lstm_188/while/lstm_cell_506/BiasAddBiasAdd2sequential_62/lstm_188/while/lstm_cell_506/add:z:0Isequential_62/lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_62/lstm_188/while/lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_62/lstm_188/while/lstm_cell_506/splitSplitCsequential_62/lstm_188/while/lstm_cell_506/split/split_dim:output:0;sequential_62/lstm_188/while/lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_62/lstm_188/while/lstm_cell_506/SigmoidSigmoid9sequential_62/lstm_188/while/lstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_62/lstm_188/while/lstm_cell_506/Sigmoid_1Sigmoid9sequential_62/lstm_188/while/lstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_62/lstm_188/while/lstm_cell_506/mulMul8sequential_62/lstm_188/while/lstm_cell_506/Sigmoid_1:y:0*sequential_62_lstm_188_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_62/lstm_188/while/lstm_cell_506/ReluRelu9sequential_62/lstm_188/while/lstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_62/lstm_188/while/lstm_cell_506/mul_1Mul6sequential_62/lstm_188/while/lstm_cell_506/Sigmoid:y:0=sequential_62/lstm_188/while/lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_62/lstm_188/while/lstm_cell_506/add_1AddV22sequential_62/lstm_188/while/lstm_cell_506/mul:z:04sequential_62/lstm_188/while/lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_62/lstm_188/while/lstm_cell_506/Sigmoid_2Sigmoid9sequential_62/lstm_188/while/lstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_62/lstm_188/while/lstm_cell_506/Relu_1Relu4sequential_62/lstm_188/while/lstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_62/lstm_188/while/lstm_cell_506/mul_2Mul8sequential_62/lstm_188/while/lstm_cell_506/Sigmoid_2:y:0?sequential_62/lstm_188/while/lstm_cell_506/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_62/lstm_188/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_62_lstm_188_while_placeholder_1(sequential_62_lstm_188_while_placeholder4sequential_62/lstm_188/while/lstm_cell_506/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_62/lstm_188/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_62/lstm_188/while/addAddV2(sequential_62_lstm_188_while_placeholder+sequential_62/lstm_188/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_62/lstm_188/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_62/lstm_188/while/add_1AddV2Fsequential_62_lstm_188_while_sequential_62_lstm_188_while_loop_counter-sequential_62/lstm_188/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_62/lstm_188/while/IdentityIdentity&sequential_62/lstm_188/while/add_1:z:0"^sequential_62/lstm_188/while/NoOp*
T0*
_output_shapes
: ?
'sequential_62/lstm_188/while/Identity_1IdentityLsequential_62_lstm_188_while_sequential_62_lstm_188_while_maximum_iterations"^sequential_62/lstm_188/while/NoOp*
T0*
_output_shapes
: ?
'sequential_62/lstm_188/while/Identity_2Identity$sequential_62/lstm_188/while/add:z:0"^sequential_62/lstm_188/while/NoOp*
T0*
_output_shapes
: ?
'sequential_62/lstm_188/while/Identity_3IdentityQsequential_62/lstm_188/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_62/lstm_188/while/NoOp*
T0*
_output_shapes
: ?
'sequential_62/lstm_188/while/Identity_4Identity4sequential_62/lstm_188/while/lstm_cell_506/mul_2:z:0"^sequential_62/lstm_188/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_62/lstm_188/while/Identity_5Identity4sequential_62/lstm_188/while/lstm_cell_506/add_1:z:0"^sequential_62/lstm_188/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_62/lstm_188/while/NoOpNoOpB^sequential_62/lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOpA^sequential_62/lstm_188/while/lstm_cell_506/MatMul/ReadVariableOpC^sequential_62/lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_62_lstm_188_while_identity.sequential_62/lstm_188/while/Identity:output:0"[
'sequential_62_lstm_188_while_identity_10sequential_62/lstm_188/while/Identity_1:output:0"[
'sequential_62_lstm_188_while_identity_20sequential_62/lstm_188/while/Identity_2:output:0"[
'sequential_62_lstm_188_while_identity_30sequential_62/lstm_188/while/Identity_3:output:0"[
'sequential_62_lstm_188_while_identity_40sequential_62/lstm_188/while/Identity_4:output:0"[
'sequential_62_lstm_188_while_identity_50sequential_62/lstm_188/while/Identity_5:output:0"?
Jsequential_62_lstm_188_while_lstm_cell_506_biasadd_readvariableop_resourceLsequential_62_lstm_188_while_lstm_cell_506_biasadd_readvariableop_resource_0"?
Ksequential_62_lstm_188_while_lstm_cell_506_matmul_1_readvariableop_resourceMsequential_62_lstm_188_while_lstm_cell_506_matmul_1_readvariableop_resource_0"?
Isequential_62_lstm_188_while_lstm_cell_506_matmul_readvariableop_resourceKsequential_62_lstm_188_while_lstm_cell_506_matmul_readvariableop_resource_0"?
Csequential_62_lstm_188_while_sequential_62_lstm_188_strided_slice_1Esequential_62_lstm_188_while_sequential_62_lstm_188_strided_slice_1_0"?
sequential_62_lstm_188_while_tensorarrayv2read_tensorlistgetitem_sequential_62_lstm_188_tensorarrayunstack_tensorlistfromtensor?sequential_62_lstm_188_while_tensorarrayv2read_tensorlistgetitem_sequential_62_lstm_188_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_62/lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOpAsequential_62/lstm_188/while/lstm_cell_506/BiasAdd/ReadVariableOp2?
@sequential_62/lstm_188/while/lstm_cell_506/MatMul/ReadVariableOp@sequential_62/lstm_188/while/lstm_cell_506/MatMul/ReadVariableOp2?
Bsequential_62/lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOpBsequential_62/lstm_188/while/lstm_cell_506/MatMul_1/ReadVariableOp: 
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
J__inference_lstm_cell_506_layer_call_and_return_conditional_losses_3061007

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
E__inference_lstm_187_layer_call_and_return_conditional_losses_3064351

inputs?
,lstm_cell_505_matmul_readvariableop_resource:	d?A
.lstm_cell_505_matmul_1_readvariableop_resource:	2?<
-lstm_cell_505_biasadd_readvariableop_resource:	?
identity??$lstm_cell_505/BiasAdd/ReadVariableOp?#lstm_cell_505/MatMul/ReadVariableOp?%lstm_cell_505/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_505/MatMul/ReadVariableOpReadVariableOp,lstm_cell_505_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_505/MatMulMatMulstrided_slice_2:output:0+lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_505_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_505/MatMul_1MatMulzeros:output:0-lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_505/addAddV2lstm_cell_505/MatMul:product:0 lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_505_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_505/BiasAddBiasAddlstm_cell_505/add:z:0,lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_505/splitSplit&lstm_cell_505/split/split_dim:output:0lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_505/SigmoidSigmoidlstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_505/Sigmoid_1Sigmoidlstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_505/mulMullstm_cell_505/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_505/ReluRelulstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_505/mul_1Mullstm_cell_505/Sigmoid:y:0 lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_505/add_1AddV2lstm_cell_505/mul:z:0lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_505/Sigmoid_2Sigmoidlstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_505/Relu_1Relulstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_505/mul_2Mullstm_cell_505/Sigmoid_2:y:0"lstm_cell_505/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_505_matmul_readvariableop_resource.lstm_cell_505_matmul_1_readvariableop_resource-lstm_cell_505_biasadd_readvariableop_resource*
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
while_body_3064267*
condR
while_cond_3064266*K
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
NoOpNoOp%^lstm_cell_505/BiasAdd/ReadVariableOp$^lstm_cell_505/MatMul/ReadVariableOp&^lstm_cell_505/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_505/BiasAdd/ReadVariableOp$lstm_cell_505/BiasAdd/ReadVariableOp2J
#lstm_cell_505/MatMul/ReadVariableOp#lstm_cell_505/MatMul/ReadVariableOp2N
%lstm_cell_505/MatMul_1/ReadVariableOp%lstm_cell_505/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_3065566
file_prefix.
*savev2_dense_62_kernel_read_readvariableop,
(savev2_dense_62_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_186_lstm_cell_186_kernel_read_readvariableopF
Bsavev2_lstm_186_lstm_cell_186_recurrent_kernel_read_readvariableop:
6savev2_lstm_186_lstm_cell_186_bias_read_readvariableop<
8savev2_lstm_187_lstm_cell_187_kernel_read_readvariableopF
Bsavev2_lstm_187_lstm_cell_187_recurrent_kernel_read_readvariableop:
6savev2_lstm_187_lstm_cell_187_bias_read_readvariableop<
8savev2_lstm_188_lstm_cell_188_kernel_read_readvariableopF
Bsavev2_lstm_188_lstm_cell_188_recurrent_kernel_read_readvariableop:
6savev2_lstm_188_lstm_cell_188_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_62_kernel_m_read_readvariableop3
/savev2_adam_dense_62_bias_m_read_readvariableopC
?savev2_adam_lstm_186_lstm_cell_186_kernel_m_read_readvariableopM
Isavev2_adam_lstm_186_lstm_cell_186_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_186_lstm_cell_186_bias_m_read_readvariableopC
?savev2_adam_lstm_187_lstm_cell_187_kernel_m_read_readvariableopM
Isavev2_adam_lstm_187_lstm_cell_187_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_187_lstm_cell_187_bias_m_read_readvariableopC
?savev2_adam_lstm_188_lstm_cell_188_kernel_m_read_readvariableopM
Isavev2_adam_lstm_188_lstm_cell_188_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_188_lstm_cell_188_bias_m_read_readvariableop5
1savev2_adam_dense_62_kernel_v_read_readvariableop3
/savev2_adam_dense_62_bias_v_read_readvariableopC
?savev2_adam_lstm_186_lstm_cell_186_kernel_v_read_readvariableopM
Isavev2_adam_lstm_186_lstm_cell_186_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_186_lstm_cell_186_bias_v_read_readvariableopC
?savev2_adam_lstm_187_lstm_cell_187_kernel_v_read_readvariableopM
Isavev2_adam_lstm_187_lstm_cell_187_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_187_lstm_cell_187_bias_v_read_readvariableopC
?savev2_adam_lstm_188_lstm_cell_188_kernel_v_read_readvariableopM
Isavev2_adam_lstm_188_lstm_cell_188_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_188_lstm_cell_188_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_62_kernel_read_readvariableop(savev2_dense_62_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_186_lstm_cell_186_kernel_read_readvariableopBsavev2_lstm_186_lstm_cell_186_recurrent_kernel_read_readvariableop6savev2_lstm_186_lstm_cell_186_bias_read_readvariableop8savev2_lstm_187_lstm_cell_187_kernel_read_readvariableopBsavev2_lstm_187_lstm_cell_187_recurrent_kernel_read_readvariableop6savev2_lstm_187_lstm_cell_187_bias_read_readvariableop8savev2_lstm_188_lstm_cell_188_kernel_read_readvariableopBsavev2_lstm_188_lstm_cell_188_recurrent_kernel_read_readvariableop6savev2_lstm_188_lstm_cell_188_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_62_kernel_m_read_readvariableop/savev2_adam_dense_62_bias_m_read_readvariableop?savev2_adam_lstm_186_lstm_cell_186_kernel_m_read_readvariableopIsavev2_adam_lstm_186_lstm_cell_186_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_186_lstm_cell_186_bias_m_read_readvariableop?savev2_adam_lstm_187_lstm_cell_187_kernel_m_read_readvariableopIsavev2_adam_lstm_187_lstm_cell_187_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_187_lstm_cell_187_bias_m_read_readvariableop?savev2_adam_lstm_188_lstm_cell_188_kernel_m_read_readvariableopIsavev2_adam_lstm_188_lstm_cell_188_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_188_lstm_cell_188_bias_m_read_readvariableop1savev2_adam_dense_62_kernel_v_read_readvariableop/savev2_adam_dense_62_bias_v_read_readvariableop?savev2_adam_lstm_186_lstm_cell_186_kernel_v_read_readvariableopIsavev2_adam_lstm_186_lstm_cell_186_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_186_lstm_cell_186_bias_v_read_readvariableop?savev2_adam_lstm_187_lstm_cell_187_kernel_v_read_readvariableopIsavev2_adam_lstm_187_lstm_cell_187_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_187_lstm_cell_187_bias_v_read_readvariableop?savev2_adam_lstm_188_lstm_cell_188_kernel_v_read_readvariableopIsavev2_adam_lstm_188_lstm_cell_188_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_188_lstm_cell_188_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

?
lstm_187_while_cond_3062605.
*lstm_187_while_lstm_187_while_loop_counter4
0lstm_187_while_lstm_187_while_maximum_iterations
lstm_187_while_placeholder 
lstm_187_while_placeholder_1 
lstm_187_while_placeholder_2 
lstm_187_while_placeholder_30
,lstm_187_while_less_lstm_187_strided_slice_1G
Clstm_187_while_lstm_187_while_cond_3062605___redundant_placeholder0G
Clstm_187_while_lstm_187_while_cond_3062605___redundant_placeholder1G
Clstm_187_while_lstm_187_while_cond_3062605___redundant_placeholder2G
Clstm_187_while_lstm_187_while_cond_3062605___redundant_placeholder3
lstm_187_while_identity
?
lstm_187/while/LessLesslstm_187_while_placeholder,lstm_187_while_less_lstm_187_strided_slice_1*
T0*
_output_shapes
: ]
lstm_187/while/IdentityIdentitylstm_187/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_187_while_identity lstm_187/while/Identity:output:0*(
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
E__inference_lstm_186_layer_call_and_return_conditional_losses_3063592
inputs_0?
,lstm_cell_504_matmul_readvariableop_resource:	?A
.lstm_cell_504_matmul_1_readvariableop_resource:	d?<
-lstm_cell_504_biasadd_readvariableop_resource:	?
identity??$lstm_cell_504/BiasAdd/ReadVariableOp?#lstm_cell_504/MatMul/ReadVariableOp?%lstm_cell_504/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_504/MatMul/ReadVariableOpReadVariableOp,lstm_cell_504_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_504/MatMulMatMulstrided_slice_2:output:0+lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_504_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_504/MatMul_1MatMulzeros:output:0-lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_504/addAddV2lstm_cell_504/MatMul:product:0 lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_504_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_504/BiasAddBiasAddlstm_cell_504/add:z:0,lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_504/splitSplit&lstm_cell_504/split/split_dim:output:0lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_504/SigmoidSigmoidlstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_504/Sigmoid_1Sigmoidlstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_504/mulMullstm_cell_504/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_504/ReluRelulstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_504/mul_1Mullstm_cell_504/Sigmoid:y:0 lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_504/add_1AddV2lstm_cell_504/mul:z:0lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_504/Sigmoid_2Sigmoidlstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_504/Relu_1Relulstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_504/mul_2Mullstm_cell_504/Sigmoid_2:y:0"lstm_cell_504/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_504_matmul_readvariableop_resource.lstm_cell_504_matmul_1_readvariableop_resource-lstm_cell_504_biasadd_readvariableop_resource*
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
while_body_3063508*
condR
while_cond_3063507*K
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
NoOpNoOp%^lstm_cell_504/BiasAdd/ReadVariableOp$^lstm_cell_504/MatMul/ReadVariableOp&^lstm_cell_504/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_504/BiasAdd/ReadVariableOp$lstm_cell_504/BiasAdd/ReadVariableOp2J
#lstm_cell_504/MatMul/ReadVariableOp#lstm_cell_504/MatMul/ReadVariableOp2N
%lstm_cell_504/MatMul_1/ReadVariableOp%lstm_cell_504/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3063507
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3063507___redundant_placeholder05
1while_while_cond_3063507___redundant_placeholder15
1while_while_cond_3063507___redundant_placeholder25
1while_while_cond_3063507___redundant_placeholder3
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
E__inference_lstm_187_layer_call_and_return_conditional_losses_3061443

inputs?
,lstm_cell_505_matmul_readvariableop_resource:	d?A
.lstm_cell_505_matmul_1_readvariableop_resource:	2?<
-lstm_cell_505_biasadd_readvariableop_resource:	?
identity??$lstm_cell_505/BiasAdd/ReadVariableOp?#lstm_cell_505/MatMul/ReadVariableOp?%lstm_cell_505/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_505/MatMul/ReadVariableOpReadVariableOp,lstm_cell_505_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_505/MatMulMatMulstrided_slice_2:output:0+lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_505_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_505/MatMul_1MatMulzeros:output:0-lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_505/addAddV2lstm_cell_505/MatMul:product:0 lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_505_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_505/BiasAddBiasAddlstm_cell_505/add:z:0,lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_505/splitSplit&lstm_cell_505/split/split_dim:output:0lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_505/SigmoidSigmoidlstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_505/Sigmoid_1Sigmoidlstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_505/mulMullstm_cell_505/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_505/ReluRelulstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_505/mul_1Mullstm_cell_505/Sigmoid:y:0 lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_505/add_1AddV2lstm_cell_505/mul:z:0lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_505/Sigmoid_2Sigmoidlstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_505/Relu_1Relulstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_505/mul_2Mullstm_cell_505/Sigmoid_2:y:0"lstm_cell_505/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_505_matmul_readvariableop_resource.lstm_cell_505_matmul_1_readvariableop_resource-lstm_cell_505_biasadd_readvariableop_resource*
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
while_body_3061359*
condR
while_cond_3061358*K
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
NoOpNoOp%^lstm_cell_505/BiasAdd/ReadVariableOp$^lstm_cell_505/MatMul/ReadVariableOp&^lstm_cell_505/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_505/BiasAdd/ReadVariableOp$lstm_cell_505/BiasAdd/ReadVariableOp2J
#lstm_cell_505/MatMul/ReadVariableOp#lstm_cell_505/MatMul/ReadVariableOp2N
%lstm_cell_505/MatMul_1/ReadVariableOp%lstm_cell_505/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3061889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3061889___redundant_placeholder05
1while_while_cond_3061889___redundant_placeholder15
1while_while_cond_3061889___redundant_placeholder25
1while_while_cond_3061889___redundant_placeholder3
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
J__inference_lstm_cell_504_layer_call_and_return_conditional_losses_3060307

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
while_cond_3062054
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3062054___redundant_placeholder05
1while_while_cond_3062054___redundant_placeholder15
1while_while_cond_3062054___redundant_placeholder25
1while_while_cond_3062054___redundant_placeholder3
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
?
?
J__inference_sequential_62_layer_call_and_return_conditional_losses_3062319
lstm_186_input#
lstm_186_3062292:	?#
lstm_186_3062294:	d?
lstm_186_3062296:	?#
lstm_187_3062299:	d?#
lstm_187_3062301:	2?
lstm_187_3062303:	?"
lstm_188_3062306:2("
lstm_188_3062308:
(
lstm_188_3062310:("
dense_62_3062313:

dense_62_3062315:
identity?? dense_62/StatefulPartitionedCall? lstm_186/StatefulPartitionedCall? lstm_187/StatefulPartitionedCall? lstm_188/StatefulPartitionedCall?
 lstm_186/StatefulPartitionedCallStatefulPartitionedCalllstm_186_inputlstm_186_3062292lstm_186_3062294lstm_186_3062296*
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
E__inference_lstm_186_layer_call_and_return_conditional_losses_3062139?
 lstm_187/StatefulPartitionedCallStatefulPartitionedCall)lstm_186/StatefulPartitionedCall:output:0lstm_187_3062299lstm_187_3062301lstm_187_3062303*
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
E__inference_lstm_187_layer_call_and_return_conditional_losses_3061974?
 lstm_188/StatefulPartitionedCallStatefulPartitionedCall)lstm_187/StatefulPartitionedCall:output:0lstm_188_3062306lstm_188_3062308lstm_188_3062310*
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
E__inference_lstm_188_layer_call_and_return_conditional_losses_3061809?
 dense_62/StatefulPartitionedCallStatefulPartitionedCall)lstm_188/StatefulPartitionedCall:output:0dense_62_3062313dense_62_3062315*
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
E__inference_dense_62_layer_call_and_return_conditional_losses_3061611x
IdentityIdentity)dense_62/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_62/StatefulPartitionedCall!^lstm_186/StatefulPartitionedCall!^lstm_187/StatefulPartitionedCall!^lstm_188/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 lstm_186/StatefulPartitionedCall lstm_186/StatefulPartitionedCall2D
 lstm_187/StatefulPartitionedCall lstm_187/StatefulPartitionedCall2D
 lstm_188/StatefulPartitionedCall lstm_188/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_186_input
?
?
J__inference_sequential_62_layer_call_and_return_conditional_losses_3061618

inputs#
lstm_186_3061294:	?#
lstm_186_3061296:	d?
lstm_186_3061298:	?#
lstm_187_3061444:	d?#
lstm_187_3061446:	2?
lstm_187_3061448:	?"
lstm_188_3061594:2("
lstm_188_3061596:
(
lstm_188_3061598:("
dense_62_3061612:

dense_62_3061614:
identity?? dense_62/StatefulPartitionedCall? lstm_186/StatefulPartitionedCall? lstm_187/StatefulPartitionedCall? lstm_188/StatefulPartitionedCall?
 lstm_186/StatefulPartitionedCallStatefulPartitionedCallinputslstm_186_3061294lstm_186_3061296lstm_186_3061298*
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
E__inference_lstm_186_layer_call_and_return_conditional_losses_3061293?
 lstm_187/StatefulPartitionedCallStatefulPartitionedCall)lstm_186/StatefulPartitionedCall:output:0lstm_187_3061444lstm_187_3061446lstm_187_3061448*
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
E__inference_lstm_187_layer_call_and_return_conditional_losses_3061443?
 lstm_188/StatefulPartitionedCallStatefulPartitionedCall)lstm_187/StatefulPartitionedCall:output:0lstm_188_3061594lstm_188_3061596lstm_188_3061598*
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
E__inference_lstm_188_layer_call_and_return_conditional_losses_3061593?
 dense_62/StatefulPartitionedCallStatefulPartitionedCall)lstm_188/StatefulPartitionedCall:output:0dense_62_3061612dense_62_3061614*
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
E__inference_dense_62_layer_call_and_return_conditional_losses_3061611x
IdentityIdentity)dense_62/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_62/StatefulPartitionedCall!^lstm_186/StatefulPartitionedCall!^lstm_187/StatefulPartitionedCall!^lstm_188/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 lstm_186/StatefulPartitionedCall lstm_186/StatefulPartitionedCall2D
 lstm_187/StatefulPartitionedCall lstm_187/StatefulPartitionedCall2D
 lstm_188/StatefulPartitionedCall lstm_188/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
/__inference_sequential_62_layer_call_fn_3062259
lstm_186_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_186_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_62_layer_call_and_return_conditional_losses_3062207o
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
_user_specified_namelstm_186_input
?C
?

lstm_186_while_body_3062894.
*lstm_186_while_lstm_186_while_loop_counter4
0lstm_186_while_lstm_186_while_maximum_iterations
lstm_186_while_placeholder 
lstm_186_while_placeholder_1 
lstm_186_while_placeholder_2 
lstm_186_while_placeholder_3-
)lstm_186_while_lstm_186_strided_slice_1_0i
elstm_186_while_tensorarrayv2read_tensorlistgetitem_lstm_186_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_186_while_lstm_cell_504_matmul_readvariableop_resource_0:	?R
?lstm_186_while_lstm_cell_504_matmul_1_readvariableop_resource_0:	d?M
>lstm_186_while_lstm_cell_504_biasadd_readvariableop_resource_0:	?
lstm_186_while_identity
lstm_186_while_identity_1
lstm_186_while_identity_2
lstm_186_while_identity_3
lstm_186_while_identity_4
lstm_186_while_identity_5+
'lstm_186_while_lstm_186_strided_slice_1g
clstm_186_while_tensorarrayv2read_tensorlistgetitem_lstm_186_tensorarrayunstack_tensorlistfromtensorN
;lstm_186_while_lstm_cell_504_matmul_readvariableop_resource:	?P
=lstm_186_while_lstm_cell_504_matmul_1_readvariableop_resource:	d?K
<lstm_186_while_lstm_cell_504_biasadd_readvariableop_resource:	???3lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOp?2lstm_186/while/lstm_cell_504/MatMul/ReadVariableOp?4lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOp?
@lstm_186/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_186/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_186_while_tensorarrayv2read_tensorlistgetitem_lstm_186_tensorarrayunstack_tensorlistfromtensor_0lstm_186_while_placeholderIlstm_186/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_186/while/lstm_cell_504/MatMul/ReadVariableOpReadVariableOp=lstm_186_while_lstm_cell_504_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_186/while/lstm_cell_504/MatMulMatMul9lstm_186/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_186/while/lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOp?lstm_186_while_lstm_cell_504_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_186/while/lstm_cell_504/MatMul_1MatMullstm_186_while_placeholder_2<lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_186/while/lstm_cell_504/addAddV2-lstm_186/while/lstm_cell_504/MatMul:product:0/lstm_186/while/lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOp>lstm_186_while_lstm_cell_504_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_186/while/lstm_cell_504/BiasAddBiasAdd$lstm_186/while/lstm_cell_504/add:z:0;lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_186/while/lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_186/while/lstm_cell_504/splitSplit5lstm_186/while/lstm_cell_504/split/split_dim:output:0-lstm_186/while/lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_186/while/lstm_cell_504/SigmoidSigmoid+lstm_186/while/lstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_186/while/lstm_cell_504/Sigmoid_1Sigmoid+lstm_186/while/lstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_186/while/lstm_cell_504/mulMul*lstm_186/while/lstm_cell_504/Sigmoid_1:y:0lstm_186_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_186/while/lstm_cell_504/ReluRelu+lstm_186/while/lstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_186/while/lstm_cell_504/mul_1Mul(lstm_186/while/lstm_cell_504/Sigmoid:y:0/lstm_186/while/lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_186/while/lstm_cell_504/add_1AddV2$lstm_186/while/lstm_cell_504/mul:z:0&lstm_186/while/lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_186/while/lstm_cell_504/Sigmoid_2Sigmoid+lstm_186/while/lstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_186/while/lstm_cell_504/Relu_1Relu&lstm_186/while/lstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_186/while/lstm_cell_504/mul_2Mul*lstm_186/while/lstm_cell_504/Sigmoid_2:y:01lstm_186/while/lstm_cell_504/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_186/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_186_while_placeholder_1lstm_186_while_placeholder&lstm_186/while/lstm_cell_504/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_186/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_186/while/addAddV2lstm_186_while_placeholderlstm_186/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_186/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_186/while/add_1AddV2*lstm_186_while_lstm_186_while_loop_counterlstm_186/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_186/while/IdentityIdentitylstm_186/while/add_1:z:0^lstm_186/while/NoOp*
T0*
_output_shapes
: ?
lstm_186/while/Identity_1Identity0lstm_186_while_lstm_186_while_maximum_iterations^lstm_186/while/NoOp*
T0*
_output_shapes
: t
lstm_186/while/Identity_2Identitylstm_186/while/add:z:0^lstm_186/while/NoOp*
T0*
_output_shapes
: ?
lstm_186/while/Identity_3IdentityClstm_186/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_186/while/NoOp*
T0*
_output_shapes
: ?
lstm_186/while/Identity_4Identity&lstm_186/while/lstm_cell_504/mul_2:z:0^lstm_186/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_186/while/Identity_5Identity&lstm_186/while/lstm_cell_504/add_1:z:0^lstm_186/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_186/while/NoOpNoOp4^lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOp3^lstm_186/while/lstm_cell_504/MatMul/ReadVariableOp5^lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_186_while_identity lstm_186/while/Identity:output:0"?
lstm_186_while_identity_1"lstm_186/while/Identity_1:output:0"?
lstm_186_while_identity_2"lstm_186/while/Identity_2:output:0"?
lstm_186_while_identity_3"lstm_186/while/Identity_3:output:0"?
lstm_186_while_identity_4"lstm_186/while/Identity_4:output:0"?
lstm_186_while_identity_5"lstm_186/while/Identity_5:output:0"T
'lstm_186_while_lstm_186_strided_slice_1)lstm_186_while_lstm_186_strided_slice_1_0"~
<lstm_186_while_lstm_cell_504_biasadd_readvariableop_resource>lstm_186_while_lstm_cell_504_biasadd_readvariableop_resource_0"?
=lstm_186_while_lstm_cell_504_matmul_1_readvariableop_resource?lstm_186_while_lstm_cell_504_matmul_1_readvariableop_resource_0"|
;lstm_186_while_lstm_cell_504_matmul_readvariableop_resource=lstm_186_while_lstm_cell_504_matmul_readvariableop_resource_0"?
clstm_186_while_tensorarrayv2read_tensorlistgetitem_lstm_186_tensorarrayunstack_tensorlistfromtensorelstm_186_while_tensorarrayv2read_tensorlistgetitem_lstm_186_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOp3lstm_186/while/lstm_cell_504/BiasAdd/ReadVariableOp2h
2lstm_186/while/lstm_cell_504/MatMul/ReadVariableOp2lstm_186/while/lstm_cell_504/MatMul/ReadVariableOp2l
4lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOp4lstm_186/while/lstm_cell_504/MatMul_1/ReadVariableOp: 
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
?C
?

lstm_187_while_body_3062606.
*lstm_187_while_lstm_187_while_loop_counter4
0lstm_187_while_lstm_187_while_maximum_iterations
lstm_187_while_placeholder 
lstm_187_while_placeholder_1 
lstm_187_while_placeholder_2 
lstm_187_while_placeholder_3-
)lstm_187_while_lstm_187_strided_slice_1_0i
elstm_187_while_tensorarrayv2read_tensorlistgetitem_lstm_187_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_187_while_lstm_cell_505_matmul_readvariableop_resource_0:	d?R
?lstm_187_while_lstm_cell_505_matmul_1_readvariableop_resource_0:	2?M
>lstm_187_while_lstm_cell_505_biasadd_readvariableop_resource_0:	?
lstm_187_while_identity
lstm_187_while_identity_1
lstm_187_while_identity_2
lstm_187_while_identity_3
lstm_187_while_identity_4
lstm_187_while_identity_5+
'lstm_187_while_lstm_187_strided_slice_1g
clstm_187_while_tensorarrayv2read_tensorlistgetitem_lstm_187_tensorarrayunstack_tensorlistfromtensorN
;lstm_187_while_lstm_cell_505_matmul_readvariableop_resource:	d?P
=lstm_187_while_lstm_cell_505_matmul_1_readvariableop_resource:	2?K
<lstm_187_while_lstm_cell_505_biasadd_readvariableop_resource:	???3lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOp?2lstm_187/while/lstm_cell_505/MatMul/ReadVariableOp?4lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOp?
@lstm_187/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_187/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_187_while_tensorarrayv2read_tensorlistgetitem_lstm_187_tensorarrayunstack_tensorlistfromtensor_0lstm_187_while_placeholderIlstm_187/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_187/while/lstm_cell_505/MatMul/ReadVariableOpReadVariableOp=lstm_187_while_lstm_cell_505_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_187/while/lstm_cell_505/MatMulMatMul9lstm_187/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_187/while/lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOp?lstm_187_while_lstm_cell_505_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_187/while/lstm_cell_505/MatMul_1MatMullstm_187_while_placeholder_2<lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_187/while/lstm_cell_505/addAddV2-lstm_187/while/lstm_cell_505/MatMul:product:0/lstm_187/while/lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOp>lstm_187_while_lstm_cell_505_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_187/while/lstm_cell_505/BiasAddBiasAdd$lstm_187/while/lstm_cell_505/add:z:0;lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_187/while/lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_187/while/lstm_cell_505/splitSplit5lstm_187/while/lstm_cell_505/split/split_dim:output:0-lstm_187/while/lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_187/while/lstm_cell_505/SigmoidSigmoid+lstm_187/while/lstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_187/while/lstm_cell_505/Sigmoid_1Sigmoid+lstm_187/while/lstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_187/while/lstm_cell_505/mulMul*lstm_187/while/lstm_cell_505/Sigmoid_1:y:0lstm_187_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_187/while/lstm_cell_505/ReluRelu+lstm_187/while/lstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_187/while/lstm_cell_505/mul_1Mul(lstm_187/while/lstm_cell_505/Sigmoid:y:0/lstm_187/while/lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_187/while/lstm_cell_505/add_1AddV2$lstm_187/while/lstm_cell_505/mul:z:0&lstm_187/while/lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_187/while/lstm_cell_505/Sigmoid_2Sigmoid+lstm_187/while/lstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_187/while/lstm_cell_505/Relu_1Relu&lstm_187/while/lstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_187/while/lstm_cell_505/mul_2Mul*lstm_187/while/lstm_cell_505/Sigmoid_2:y:01lstm_187/while/lstm_cell_505/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_187/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_187_while_placeholder_1lstm_187_while_placeholder&lstm_187/while/lstm_cell_505/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_187/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_187/while/addAddV2lstm_187_while_placeholderlstm_187/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_187/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_187/while/add_1AddV2*lstm_187_while_lstm_187_while_loop_counterlstm_187/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_187/while/IdentityIdentitylstm_187/while/add_1:z:0^lstm_187/while/NoOp*
T0*
_output_shapes
: ?
lstm_187/while/Identity_1Identity0lstm_187_while_lstm_187_while_maximum_iterations^lstm_187/while/NoOp*
T0*
_output_shapes
: t
lstm_187/while/Identity_2Identitylstm_187/while/add:z:0^lstm_187/while/NoOp*
T0*
_output_shapes
: ?
lstm_187/while/Identity_3IdentityClstm_187/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_187/while/NoOp*
T0*
_output_shapes
: ?
lstm_187/while/Identity_4Identity&lstm_187/while/lstm_cell_505/mul_2:z:0^lstm_187/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_187/while/Identity_5Identity&lstm_187/while/lstm_cell_505/add_1:z:0^lstm_187/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_187/while/NoOpNoOp4^lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOp3^lstm_187/while/lstm_cell_505/MatMul/ReadVariableOp5^lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_187_while_identity lstm_187/while/Identity:output:0"?
lstm_187_while_identity_1"lstm_187/while/Identity_1:output:0"?
lstm_187_while_identity_2"lstm_187/while/Identity_2:output:0"?
lstm_187_while_identity_3"lstm_187/while/Identity_3:output:0"?
lstm_187_while_identity_4"lstm_187/while/Identity_4:output:0"?
lstm_187_while_identity_5"lstm_187/while/Identity_5:output:0"T
'lstm_187_while_lstm_187_strided_slice_1)lstm_187_while_lstm_187_strided_slice_1_0"~
<lstm_187_while_lstm_cell_505_biasadd_readvariableop_resource>lstm_187_while_lstm_cell_505_biasadd_readvariableop_resource_0"?
=lstm_187_while_lstm_cell_505_matmul_1_readvariableop_resource?lstm_187_while_lstm_cell_505_matmul_1_readvariableop_resource_0"|
;lstm_187_while_lstm_cell_505_matmul_readvariableop_resource=lstm_187_while_lstm_cell_505_matmul_readvariableop_resource_0"?
clstm_187_while_tensorarrayv2read_tensorlistgetitem_lstm_187_tensorarrayunstack_tensorlistfromtensorelstm_187_while_tensorarrayv2read_tensorlistgetitem_lstm_187_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOp3lstm_187/while/lstm_cell_505/BiasAdd/ReadVariableOp2h
2lstm_187/while/lstm_cell_505/MatMul/ReadVariableOp2lstm_187/while/lstm_cell_505/MatMul/ReadVariableOp2l
4lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOp4lstm_187/while/lstm_cell_505/MatMul_1/ReadVariableOp: 
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
J__inference_lstm_cell_505_layer_call_and_return_conditional_losses_3060657

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
?8
?
while_body_3061509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_506_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_506_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_506_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_506_matmul_readvariableop_resource:2(F
4while_lstm_cell_506_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_506_biasadd_readvariableop_resource:(??*while/lstm_cell_506/BiasAdd/ReadVariableOp?)while/lstm_cell_506/MatMul/ReadVariableOp?+while/lstm_cell_506/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_506/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_506_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_506/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_506_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_506/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_506/addAddV2$while/lstm_cell_506/MatMul:product:0&while/lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_506_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_506/BiasAddBiasAddwhile/lstm_cell_506/add:z:02while/lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_506/splitSplit,while/lstm_cell_506/split/split_dim:output:0$while/lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_506/SigmoidSigmoid"while/lstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_506/Sigmoid_1Sigmoid"while/lstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mulMul!while/lstm_cell_506/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_506/ReluRelu"while/lstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mul_1Mulwhile/lstm_cell_506/Sigmoid:y:0&while/lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/add_1AddV2while/lstm_cell_506/mul:z:0while/lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_506/Sigmoid_2Sigmoid"while/lstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_506/Relu_1Reluwhile/lstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_506/mul_2Mul!while/lstm_cell_506/Sigmoid_2:y:0(while/lstm_cell_506/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_506/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_506/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_506/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_506/BiasAdd/ReadVariableOp*^while/lstm_cell_506/MatMul/ReadVariableOp,^while/lstm_cell_506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_506_biasadd_readvariableop_resource5while_lstm_cell_506_biasadd_readvariableop_resource_0"n
4while_lstm_cell_506_matmul_1_readvariableop_resource6while_lstm_cell_506_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_506_matmul_readvariableop_resource4while_lstm_cell_506_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_506/BiasAdd/ReadVariableOp*while/lstm_cell_506/BiasAdd/ReadVariableOp2V
)while/lstm_cell_506/MatMul/ReadVariableOp)while/lstm_cell_506/MatMul/ReadVariableOp2Z
+while/lstm_cell_506/MatMul_1/ReadVariableOp+while/lstm_cell_506/MatMul_1/ReadVariableOp: 
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
while_body_3061890
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_505_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_505_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_505_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_505_matmul_readvariableop_resource:	d?G
4while_lstm_cell_505_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_505_biasadd_readvariableop_resource:	???*while/lstm_cell_505/BiasAdd/ReadVariableOp?)while/lstm_cell_505/MatMul/ReadVariableOp?+while/lstm_cell_505/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_505/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_505_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_505/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_505_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_505/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_505/addAddV2$while/lstm_cell_505/MatMul:product:0&while/lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_505_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_505/BiasAddBiasAddwhile/lstm_cell_505/add:z:02while/lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_505/splitSplit,while/lstm_cell_505/split/split_dim:output:0$while/lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_505/SigmoidSigmoid"while/lstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_505/Sigmoid_1Sigmoid"while/lstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mulMul!while/lstm_cell_505/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_505/ReluRelu"while/lstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mul_1Mulwhile/lstm_cell_505/Sigmoid:y:0&while/lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/add_1AddV2while/lstm_cell_505/mul:z:0while/lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_505/Sigmoid_2Sigmoid"while/lstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_505/Relu_1Reluwhile/lstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mul_2Mul!while/lstm_cell_505/Sigmoid_2:y:0(while/lstm_cell_505/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_505/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_505/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_505/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_505/BiasAdd/ReadVariableOp*^while/lstm_cell_505/MatMul/ReadVariableOp,^while/lstm_cell_505/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_505_biasadd_readvariableop_resource5while_lstm_cell_505_biasadd_readvariableop_resource_0"n
4while_lstm_cell_505_matmul_1_readvariableop_resource6while_lstm_cell_505_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_505_matmul_readvariableop_resource4while_lstm_cell_505_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_505/BiasAdd/ReadVariableOp*while/lstm_cell_505/BiasAdd/ReadVariableOp2V
)while/lstm_cell_505/MatMul/ReadVariableOp)while/lstm_cell_505/MatMul/ReadVariableOp2Z
+while/lstm_cell_505/MatMul_1/ReadVariableOp+while/lstm_cell_505/MatMul_1/ReadVariableOp: 
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
while_cond_3064739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3064739___redundant_placeholder05
1while_while_cond_3064739___redundant_placeholder15
1while_while_cond_3064739___redundant_placeholder25
1while_while_cond_3064739___redundant_placeholder3
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
?J
?
E__inference_lstm_188_layer_call_and_return_conditional_losses_3061809

inputs>
,lstm_cell_506_matmul_readvariableop_resource:2(@
.lstm_cell_506_matmul_1_readvariableop_resource:
(;
-lstm_cell_506_biasadd_readvariableop_resource:(
identity??$lstm_cell_506/BiasAdd/ReadVariableOp?#lstm_cell_506/MatMul/ReadVariableOp?%lstm_cell_506/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_506/MatMul/ReadVariableOpReadVariableOp,lstm_cell_506_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_506/MatMulMatMulstrided_slice_2:output:0+lstm_cell_506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_506/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_506_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_506/MatMul_1MatMulzeros:output:0-lstm_cell_506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_506/addAddV2lstm_cell_506/MatMul:product:0 lstm_cell_506/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_506/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_506_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_506/BiasAddBiasAddlstm_cell_506/add:z:0,lstm_cell_506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_506/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_506/splitSplit&lstm_cell_506/split/split_dim:output:0lstm_cell_506/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_506/SigmoidSigmoidlstm_cell_506/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_506/Sigmoid_1Sigmoidlstm_cell_506/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_506/mulMullstm_cell_506/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_506/ReluRelulstm_cell_506/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_506/mul_1Mullstm_cell_506/Sigmoid:y:0 lstm_cell_506/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_506/add_1AddV2lstm_cell_506/mul:z:0lstm_cell_506/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_506/Sigmoid_2Sigmoidlstm_cell_506/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_506/Relu_1Relulstm_cell_506/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_506/mul_2Mullstm_cell_506/Sigmoid_2:y:0"lstm_cell_506/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_506_matmul_readvariableop_resource.lstm_cell_506_matmul_1_readvariableop_resource-lstm_cell_506_biasadd_readvariableop_resource*
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
while_body_3061725*
condR
while_cond_3061724*K
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
NoOpNoOp%^lstm_cell_506/BiasAdd/ReadVariableOp$^lstm_cell_506/MatMul/ReadVariableOp&^lstm_cell_506/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_506/BiasAdd/ReadVariableOp$lstm_cell_506/BiasAdd/ReadVariableOp2J
#lstm_cell_506/MatMul/ReadVariableOp#lstm_cell_506/MatMul/ReadVariableOp2N
%lstm_cell_506/MatMul_1/ReadVariableOp%lstm_cell_506/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_186_layer_call_and_return_conditional_losses_3063735

inputs?
,lstm_cell_504_matmul_readvariableop_resource:	?A
.lstm_cell_504_matmul_1_readvariableop_resource:	d?<
-lstm_cell_504_biasadd_readvariableop_resource:	?
identity??$lstm_cell_504/BiasAdd/ReadVariableOp?#lstm_cell_504/MatMul/ReadVariableOp?%lstm_cell_504/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_504/MatMul/ReadVariableOpReadVariableOp,lstm_cell_504_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_504/MatMulMatMulstrided_slice_2:output:0+lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_504_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_504/MatMul_1MatMulzeros:output:0-lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_504/addAddV2lstm_cell_504/MatMul:product:0 lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_504_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_504/BiasAddBiasAddlstm_cell_504/add:z:0,lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_504/splitSplit&lstm_cell_504/split/split_dim:output:0lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_504/SigmoidSigmoidlstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_504/Sigmoid_1Sigmoidlstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_504/mulMullstm_cell_504/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_504/ReluRelulstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_504/mul_1Mullstm_cell_504/Sigmoid:y:0 lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_504/add_1AddV2lstm_cell_504/mul:z:0lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_504/Sigmoid_2Sigmoidlstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_504/Relu_1Relulstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_504/mul_2Mullstm_cell_504/Sigmoid_2:y:0"lstm_cell_504/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_504_matmul_readvariableop_resource.lstm_cell_504_matmul_1_readvariableop_resource-lstm_cell_504_biasadd_readvariableop_resource*
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
while_body_3063651*
condR
while_cond_3063650*K
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
NoOpNoOp%^lstm_cell_504/BiasAdd/ReadVariableOp$^lstm_cell_504/MatMul/ReadVariableOp&^lstm_cell_504/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_504/BiasAdd/ReadVariableOp$lstm_cell_504/BiasAdd/ReadVariableOp2J
#lstm_cell_504/MatMul/ReadVariableOp#lstm_cell_504/MatMul/ReadVariableOp2N
%lstm_cell_504/MatMul_1/ReadVariableOp%lstm_cell_504/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_186_layer_call_and_return_conditional_losses_3060435

inputs(
lstm_cell_504_3060353:	?(
lstm_cell_504_3060355:	d?$
lstm_cell_504_3060357:	?
identity??%lstm_cell_504/StatefulPartitionedCall?while;
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
%lstm_cell_504/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_504_3060353lstm_cell_504_3060355lstm_cell_504_3060357*
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
J__inference_lstm_cell_504_layer_call_and_return_conditional_losses_3060307n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_504_3060353lstm_cell_504_3060355lstm_cell_504_3060357*
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
while_body_3060366*
condR
while_cond_3060365*K
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
NoOpNoOp&^lstm_cell_504/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_504/StatefulPartitionedCall%lstm_cell_504/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_506_layer_call_and_return_conditional_losses_3065391

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

?
%__inference_signature_wrapper_3062354
lstm_186_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_186_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3060094o
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
_user_specified_namelstm_186_input
?
?
J__inference_sequential_62_layer_call_and_return_conditional_losses_3062207

inputs#
lstm_186_3062180:	?#
lstm_186_3062182:	d?
lstm_186_3062184:	?#
lstm_187_3062187:	d?#
lstm_187_3062189:	2?
lstm_187_3062191:	?"
lstm_188_3062194:2("
lstm_188_3062196:
(
lstm_188_3062198:("
dense_62_3062201:

dense_62_3062203:
identity?? dense_62/StatefulPartitionedCall? lstm_186/StatefulPartitionedCall? lstm_187/StatefulPartitionedCall? lstm_188/StatefulPartitionedCall?
 lstm_186/StatefulPartitionedCallStatefulPartitionedCallinputslstm_186_3062180lstm_186_3062182lstm_186_3062184*
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
E__inference_lstm_186_layer_call_and_return_conditional_losses_3062139?
 lstm_187/StatefulPartitionedCallStatefulPartitionedCall)lstm_186/StatefulPartitionedCall:output:0lstm_187_3062187lstm_187_3062189lstm_187_3062191*
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
E__inference_lstm_187_layer_call_and_return_conditional_losses_3061974?
 lstm_188/StatefulPartitionedCallStatefulPartitionedCall)lstm_187/StatefulPartitionedCall:output:0lstm_188_3062194lstm_188_3062196lstm_188_3062198*
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
E__inference_lstm_188_layer_call_and_return_conditional_losses_3061809?
 dense_62/StatefulPartitionedCallStatefulPartitionedCall)lstm_188/StatefulPartitionedCall:output:0dense_62_3062201dense_62_3062203*
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
E__inference_dense_62_layer_call_and_return_conditional_losses_3061611x
IdentityIdentity)dense_62/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_62/StatefulPartitionedCall!^lstm_186/StatefulPartitionedCall!^lstm_187/StatefulPartitionedCall!^lstm_188/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 lstm_186/StatefulPartitionedCall lstm_186/StatefulPartitionedCall2D
 lstm_187/StatefulPartitionedCall lstm_187/StatefulPartitionedCall2D
 lstm_188/StatefulPartitionedCall lstm_188/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_506_layer_call_fn_3065342

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
J__inference_lstm_cell_506_layer_call_and_return_conditional_losses_3060861o
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
while_body_3063794
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_504_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_504_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_504_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_504_matmul_readvariableop_resource:	?G
4while_lstm_cell_504_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_504_biasadd_readvariableop_resource:	???*while/lstm_cell_504/BiasAdd/ReadVariableOp?)while/lstm_cell_504/MatMul/ReadVariableOp?+while/lstm_cell_504/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_504/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_504_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_504/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_504/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_504/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_504_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_504/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_504/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_504/addAddV2$while/lstm_cell_504/MatMul:product:0&while/lstm_cell_504/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_504/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_504_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_504/BiasAddBiasAddwhile/lstm_cell_504/add:z:02while/lstm_cell_504/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_504/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_504/splitSplit,while/lstm_cell_504/split/split_dim:output:0$while/lstm_cell_504/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_504/SigmoidSigmoid"while/lstm_cell_504/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_504/Sigmoid_1Sigmoid"while/lstm_cell_504/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mulMul!while/lstm_cell_504/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_504/ReluRelu"while/lstm_cell_504/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mul_1Mulwhile/lstm_cell_504/Sigmoid:y:0&while/lstm_cell_504/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/add_1AddV2while/lstm_cell_504/mul:z:0while/lstm_cell_504/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_504/Sigmoid_2Sigmoid"while/lstm_cell_504/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_504/Relu_1Reluwhile/lstm_cell_504/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_504/mul_2Mul!while/lstm_cell_504/Sigmoid_2:y:0(while/lstm_cell_504/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_504/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_504/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_504/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_504/BiasAdd/ReadVariableOp*^while/lstm_cell_504/MatMul/ReadVariableOp,^while/lstm_cell_504/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_504_biasadd_readvariableop_resource5while_lstm_cell_504_biasadd_readvariableop_resource_0"n
4while_lstm_cell_504_matmul_1_readvariableop_resource6while_lstm_cell_504_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_504_matmul_readvariableop_resource4while_lstm_cell_504_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_504/BiasAdd/ReadVariableOp*while/lstm_cell_504/BiasAdd/ReadVariableOp2V
)while/lstm_cell_504/MatMul/ReadVariableOp)while/lstm_cell_504/MatMul/ReadVariableOp2Z
+while/lstm_cell_504/MatMul_1/ReadVariableOp+while/lstm_cell_504/MatMul_1/ReadVariableOp: 
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
*__inference_dense_62_layer_call_fn_3065119

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
E__inference_dense_62_layer_call_and_return_conditional_losses_3061611o
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
while_cond_3061508
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3061508___redundant_placeholder05
1while_while_cond_3061508___redundant_placeholder15
1while_while_cond_3061508___redundant_placeholder25
1while_while_cond_3061508___redundant_placeholder3
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
while_body_3061359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_505_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_505_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_505_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_505_matmul_readvariableop_resource:	d?G
4while_lstm_cell_505_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_505_biasadd_readvariableop_resource:	???*while/lstm_cell_505/BiasAdd/ReadVariableOp?)while/lstm_cell_505/MatMul/ReadVariableOp?+while/lstm_cell_505/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_505/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_505_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_505/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_505/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_505/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_505_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_505/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_505/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_505/addAddV2$while/lstm_cell_505/MatMul:product:0&while/lstm_cell_505/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_505/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_505_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_505/BiasAddBiasAddwhile/lstm_cell_505/add:z:02while/lstm_cell_505/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_505/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_505/splitSplit,while/lstm_cell_505/split/split_dim:output:0$while/lstm_cell_505/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_505/SigmoidSigmoid"while/lstm_cell_505/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_505/Sigmoid_1Sigmoid"while/lstm_cell_505/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mulMul!while/lstm_cell_505/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_505/ReluRelu"while/lstm_cell_505/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mul_1Mulwhile/lstm_cell_505/Sigmoid:y:0&while/lstm_cell_505/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/add_1AddV2while/lstm_cell_505/mul:z:0while/lstm_cell_505/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_505/Sigmoid_2Sigmoid"while/lstm_cell_505/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_505/Relu_1Reluwhile/lstm_cell_505/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_505/mul_2Mul!while/lstm_cell_505/Sigmoid_2:y:0(while/lstm_cell_505/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_505/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_505/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_505/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_505/BiasAdd/ReadVariableOp*^while/lstm_cell_505/MatMul/ReadVariableOp,^while/lstm_cell_505/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_505_biasadd_readvariableop_resource5while_lstm_cell_505_biasadd_readvariableop_resource_0"n
4while_lstm_cell_505_matmul_1_readvariableop_resource6while_lstm_cell_505_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_505_matmul_readvariableop_resource4while_lstm_cell_505_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_505/BiasAdd/ReadVariableOp*while/lstm_cell_505/BiasAdd/ReadVariableOp2V
)while/lstm_cell_505/MatMul/ReadVariableOp)while/lstm_cell_505/MatMul/ReadVariableOp2Z
+while/lstm_cell_505/MatMul_1/ReadVariableOp+while/lstm_cell_505/MatMul_1/ReadVariableOp: 
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
lstm_186_input;
 serving_default_lstm_186_input:0?????????<
dense_620
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
2dense_62/kernel
:2dense_62/bias
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
0:.	?2lstm_186/lstm_cell_186/kernel
::8	d?2'lstm_186/lstm_cell_186/recurrent_kernel
*:(?2lstm_186/lstm_cell_186/bias
0:.	d?2lstm_187/lstm_cell_187/kernel
::8	2?2'lstm_187/lstm_cell_187/recurrent_kernel
*:(?2lstm_187/lstm_cell_187/bias
/:-2(2lstm_188/lstm_cell_188/kernel
9:7
(2'lstm_188/lstm_cell_188/recurrent_kernel
):'(2lstm_188/lstm_cell_188/bias
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
2Adam/dense_62/kernel/m
 :2Adam/dense_62/bias/m
5:3	?2$Adam/lstm_186/lstm_cell_186/kernel/m
?:=	d?2.Adam/lstm_186/lstm_cell_186/recurrent_kernel/m
/:-?2"Adam/lstm_186/lstm_cell_186/bias/m
5:3	d?2$Adam/lstm_187/lstm_cell_187/kernel/m
?:=	2?2.Adam/lstm_187/lstm_cell_187/recurrent_kernel/m
/:-?2"Adam/lstm_187/lstm_cell_187/bias/m
4:22(2$Adam/lstm_188/lstm_cell_188/kernel/m
>:<
(2.Adam/lstm_188/lstm_cell_188/recurrent_kernel/m
.:,(2"Adam/lstm_188/lstm_cell_188/bias/m
&:$
2Adam/dense_62/kernel/v
 :2Adam/dense_62/bias/v
5:3	?2$Adam/lstm_186/lstm_cell_186/kernel/v
?:=	d?2.Adam/lstm_186/lstm_cell_186/recurrent_kernel/v
/:-?2"Adam/lstm_186/lstm_cell_186/bias/v
5:3	d?2$Adam/lstm_187/lstm_cell_187/kernel/v
?:=	2?2.Adam/lstm_187/lstm_cell_187/recurrent_kernel/v
/:-?2"Adam/lstm_187/lstm_cell_187/bias/v
4:22(2$Adam/lstm_188/lstm_cell_188/kernel/v
>:<
(2.Adam/lstm_188/lstm_cell_188/recurrent_kernel/v
.:,(2"Adam/lstm_188/lstm_cell_188/bias/v
?2?
/__inference_sequential_62_layer_call_fn_3061643
/__inference_sequential_62_layer_call_fn_3062381
/__inference_sequential_62_layer_call_fn_3062408
/__inference_sequential_62_layer_call_fn_3062259?
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
J__inference_sequential_62_layer_call_and_return_conditional_losses_3062835
J__inference_sequential_62_layer_call_and_return_conditional_losses_3063262
J__inference_sequential_62_layer_call_and_return_conditional_losses_3062289
J__inference_sequential_62_layer_call_and_return_conditional_losses_3062319?
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
"__inference__wrapped_model_3060094lstm_186_input"?
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
*__inference_lstm_186_layer_call_fn_3063273
*__inference_lstm_186_layer_call_fn_3063284
*__inference_lstm_186_layer_call_fn_3063295
*__inference_lstm_186_layer_call_fn_3063306?
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
E__inference_lstm_186_layer_call_and_return_conditional_losses_3063449
E__inference_lstm_186_layer_call_and_return_conditional_losses_3063592
E__inference_lstm_186_layer_call_and_return_conditional_losses_3063735
E__inference_lstm_186_layer_call_and_return_conditional_losses_3063878?
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
*__inference_lstm_187_layer_call_fn_3063889
*__inference_lstm_187_layer_call_fn_3063900
*__inference_lstm_187_layer_call_fn_3063911
*__inference_lstm_187_layer_call_fn_3063922?
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
E__inference_lstm_187_layer_call_and_return_conditional_losses_3064065
E__inference_lstm_187_layer_call_and_return_conditional_losses_3064208
E__inference_lstm_187_layer_call_and_return_conditional_losses_3064351
E__inference_lstm_187_layer_call_and_return_conditional_losses_3064494?
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
*__inference_lstm_188_layer_call_fn_3064505
*__inference_lstm_188_layer_call_fn_3064516
*__inference_lstm_188_layer_call_fn_3064527
*__inference_lstm_188_layer_call_fn_3064538?
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
E__inference_lstm_188_layer_call_and_return_conditional_losses_3064681
E__inference_lstm_188_layer_call_and_return_conditional_losses_3064824
E__inference_lstm_188_layer_call_and_return_conditional_losses_3064967
E__inference_lstm_188_layer_call_and_return_conditional_losses_3065110?
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
*__inference_dense_62_layer_call_fn_3065119?
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
E__inference_dense_62_layer_call_and_return_conditional_losses_3065129?
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
%__inference_signature_wrapper_3062354lstm_186_input"?
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
/__inference_lstm_cell_504_layer_call_fn_3065146
/__inference_lstm_cell_504_layer_call_fn_3065163?
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
J__inference_lstm_cell_504_layer_call_and_return_conditional_losses_3065195
J__inference_lstm_cell_504_layer_call_and_return_conditional_losses_3065227?
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
/__inference_lstm_cell_505_layer_call_fn_3065244
/__inference_lstm_cell_505_layer_call_fn_3065261?
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
J__inference_lstm_cell_505_layer_call_and_return_conditional_losses_3065293
J__inference_lstm_cell_505_layer_call_and_return_conditional_losses_3065325?
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
/__inference_lstm_cell_506_layer_call_fn_3065342
/__inference_lstm_cell_506_layer_call_fn_3065359?
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
J__inference_lstm_cell_506_layer_call_and_return_conditional_losses_3065391
J__inference_lstm_cell_506_layer_call_and_return_conditional_losses_3065423?
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
"__inference__wrapped_model_3060094-./012345!";?8
1?.
,?)
lstm_186_input?????????
? "3?0
.
dense_62"?
dense_62??????????
E__inference_dense_62_layer_call_and_return_conditional_losses_3065129\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_62_layer_call_fn_3065119O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_186_layer_call_and_return_conditional_losses_3063449?-./O?L
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
E__inference_lstm_186_layer_call_and_return_conditional_losses_3063592?-./O?L
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
E__inference_lstm_186_layer_call_and_return_conditional_losses_3063735q-./??<
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
E__inference_lstm_186_layer_call_and_return_conditional_losses_3063878q-./??<
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
*__inference_lstm_186_layer_call_fn_3063273}-./O?L
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
*__inference_lstm_186_layer_call_fn_3063284}-./O?L
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
*__inference_lstm_186_layer_call_fn_3063295d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_186_layer_call_fn_3063306d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_187_layer_call_and_return_conditional_losses_3064065?012O?L
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
E__inference_lstm_187_layer_call_and_return_conditional_losses_3064208?012O?L
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
E__inference_lstm_187_layer_call_and_return_conditional_losses_3064351q012??<
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
E__inference_lstm_187_layer_call_and_return_conditional_losses_3064494q012??<
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
*__inference_lstm_187_layer_call_fn_3063889}012O?L
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
*__inference_lstm_187_layer_call_fn_3063900}012O?L
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
*__inference_lstm_187_layer_call_fn_3063911d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_187_layer_call_fn_3063922d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_188_layer_call_and_return_conditional_losses_3064681}345O?L
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
E__inference_lstm_188_layer_call_and_return_conditional_losses_3064824}345O?L
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
E__inference_lstm_188_layer_call_and_return_conditional_losses_3064967m345??<
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
E__inference_lstm_188_layer_call_and_return_conditional_losses_3065110m345??<
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
*__inference_lstm_188_layer_call_fn_3064505p345O?L
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
*__inference_lstm_188_layer_call_fn_3064516p345O?L
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
*__inference_lstm_188_layer_call_fn_3064527`345??<
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
*__inference_lstm_188_layer_call_fn_3064538`345??<
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
J__inference_lstm_cell_504_layer_call_and_return_conditional_losses_3065195?-./??}
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
J__inference_lstm_cell_504_layer_call_and_return_conditional_losses_3065227?-./??}
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
/__inference_lstm_cell_504_layer_call_fn_3065146?-./??}
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
/__inference_lstm_cell_504_layer_call_fn_3065163?-./??}
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
J__inference_lstm_cell_505_layer_call_and_return_conditional_losses_3065293?012??}
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
J__inference_lstm_cell_505_layer_call_and_return_conditional_losses_3065325?012??}
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
/__inference_lstm_cell_505_layer_call_fn_3065244?012??}
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
/__inference_lstm_cell_505_layer_call_fn_3065261?012??}
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
J__inference_lstm_cell_506_layer_call_and_return_conditional_losses_3065391?345??}
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
J__inference_lstm_cell_506_layer_call_and_return_conditional_losses_3065423?345??}
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
/__inference_lstm_cell_506_layer_call_fn_3065342?345??}
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
/__inference_lstm_cell_506_layer_call_fn_3065359?345??}
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
J__inference_sequential_62_layer_call_and_return_conditional_losses_3062289y-./012345!"C?@
9?6
,?)
lstm_186_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_62_layer_call_and_return_conditional_losses_3062319y-./012345!"C?@
9?6
,?)
lstm_186_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_62_layer_call_and_return_conditional_losses_3062835q-./012345!";?8
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
J__inference_sequential_62_layer_call_and_return_conditional_losses_3063262q-./012345!";?8
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
/__inference_sequential_62_layer_call_fn_3061643l-./012345!"C?@
9?6
,?)
lstm_186_input?????????
p 

 
? "???????????
/__inference_sequential_62_layer_call_fn_3062259l-./012345!"C?@
9?6
,?)
lstm_186_input?????????
p

 
? "???????????
/__inference_sequential_62_layer_call_fn_3062381d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_62_layer_call_fn_3062408d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3062354?-./012345!"M?J
? 
C?@
>
lstm_186_input,?)
lstm_186_input?????????"3?0
.
dense_62"?
dense_62?????????