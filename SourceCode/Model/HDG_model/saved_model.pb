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
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_34/kernel
s
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel*
_output_shapes

:
*
dtype0
r
dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_34/bias
k
!dense_34/bias/Read/ReadVariableOpReadVariableOpdense_34/bias*
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
lstm_102/lstm_cell_102/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_102/lstm_cell_102/kernel
?
1lstm_102/lstm_cell_102/kernel/Read/ReadVariableOpReadVariableOplstm_102/lstm_cell_102/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_102/lstm_cell_102/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_102/lstm_cell_102/recurrent_kernel
?
;lstm_102/lstm_cell_102/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_102/lstm_cell_102/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_102/lstm_cell_102/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_102/lstm_cell_102/bias
?
/lstm_102/lstm_cell_102/bias/Read/ReadVariableOpReadVariableOplstm_102/lstm_cell_102/bias*
_output_shapes	
:?*
dtype0
?
lstm_103/lstm_cell_103/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_103/lstm_cell_103/kernel
?
1lstm_103/lstm_cell_103/kernel/Read/ReadVariableOpReadVariableOplstm_103/lstm_cell_103/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_103/lstm_cell_103/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_103/lstm_cell_103/recurrent_kernel
?
;lstm_103/lstm_cell_103/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_103/lstm_cell_103/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_103/lstm_cell_103/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_103/lstm_cell_103/bias
?
/lstm_103/lstm_cell_103/bias/Read/ReadVariableOpReadVariableOplstm_103/lstm_cell_103/bias*
_output_shapes	
:?*
dtype0
?
lstm_104/lstm_cell_104/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_104/lstm_cell_104/kernel
?
1lstm_104/lstm_cell_104/kernel/Read/ReadVariableOpReadVariableOplstm_104/lstm_cell_104/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_104/lstm_cell_104/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_104/lstm_cell_104/recurrent_kernel
?
;lstm_104/lstm_cell_104/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_104/lstm_cell_104/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_104/lstm_cell_104/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_104/lstm_cell_104/bias
?
/lstm_104/lstm_cell_104/bias/Read/ReadVariableOpReadVariableOplstm_104/lstm_cell_104/bias*
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
Adam/dense_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_34/kernel/m
?
*Adam/dense_34/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_34/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_34/bias/m
y
(Adam/dense_34/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_34/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_102/lstm_cell_102/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_102/lstm_cell_102/kernel/m
?
8Adam/lstm_102/lstm_cell_102/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_102/lstm_cell_102/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_102/lstm_cell_102/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_102/lstm_cell_102/recurrent_kernel/m
?
BAdam/lstm_102/lstm_cell_102/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_102/lstm_cell_102/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_102/lstm_cell_102/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_102/lstm_cell_102/bias/m
?
6Adam/lstm_102/lstm_cell_102/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_102/lstm_cell_102/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_103/lstm_cell_103/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_103/lstm_cell_103/kernel/m
?
8Adam/lstm_103/lstm_cell_103/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_103/lstm_cell_103/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_103/lstm_cell_103/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_103/lstm_cell_103/recurrent_kernel/m
?
BAdam/lstm_103/lstm_cell_103/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_103/lstm_cell_103/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_103/lstm_cell_103/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_103/lstm_cell_103/bias/m
?
6Adam/lstm_103/lstm_cell_103/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_103/lstm_cell_103/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_104/lstm_cell_104/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_104/lstm_cell_104/kernel/m
?
8Adam/lstm_104/lstm_cell_104/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_104/lstm_cell_104/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_104/lstm_cell_104/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_104/lstm_cell_104/recurrent_kernel/m
?
BAdam/lstm_104/lstm_cell_104/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_104/lstm_cell_104/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_104/lstm_cell_104/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_104/lstm_cell_104/bias/m
?
6Adam/lstm_104/lstm_cell_104/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_104/lstm_cell_104/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_34/kernel/v
?
*Adam/dense_34/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_34/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_34/bias/v
y
(Adam/dense_34/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_34/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_102/lstm_cell_102/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_102/lstm_cell_102/kernel/v
?
8Adam/lstm_102/lstm_cell_102/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_102/lstm_cell_102/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_102/lstm_cell_102/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_102/lstm_cell_102/recurrent_kernel/v
?
BAdam/lstm_102/lstm_cell_102/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_102/lstm_cell_102/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_102/lstm_cell_102/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_102/lstm_cell_102/bias/v
?
6Adam/lstm_102/lstm_cell_102/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_102/lstm_cell_102/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_103/lstm_cell_103/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_103/lstm_cell_103/kernel/v
?
8Adam/lstm_103/lstm_cell_103/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_103/lstm_cell_103/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_103/lstm_cell_103/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_103/lstm_cell_103/recurrent_kernel/v
?
BAdam/lstm_103/lstm_cell_103/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_103/lstm_cell_103/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_103/lstm_cell_103/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_103/lstm_cell_103/bias/v
?
6Adam/lstm_103/lstm_cell_103/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_103/lstm_cell_103/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_104/lstm_cell_104/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_104/lstm_cell_104/kernel/v
?
8Adam/lstm_104/lstm_cell_104/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_104/lstm_cell_104/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_104/lstm_cell_104/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_104/lstm_cell_104/recurrent_kernel/v
?
BAdam/lstm_104/lstm_cell_104/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_104/lstm_cell_104/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_104/lstm_cell_104/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_104/lstm_cell_104/bias/v
?
6Adam/lstm_104/lstm_cell_104/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_104/lstm_cell_104/bias/v*
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
VARIABLE_VALUEdense_34/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_34/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_102/lstm_cell_102/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_102/lstm_cell_102/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_102/lstm_cell_102/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_103/lstm_cell_103/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_103/lstm_cell_103/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_103/lstm_cell_103/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_104/lstm_cell_104/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_104/lstm_cell_104/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_104/lstm_cell_104/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_34/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_34/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_102/lstm_cell_102/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_102/lstm_cell_102/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_102/lstm_cell_102/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_103/lstm_cell_103/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_103/lstm_cell_103/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_103/lstm_cell_103/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_104/lstm_cell_104/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_104/lstm_cell_104/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_104/lstm_cell_104/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_34/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_34/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_102/lstm_cell_102/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_102/lstm_cell_102/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_102/lstm_cell_102/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_103/lstm_cell_103/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_103/lstm_cell_103/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_103/lstm_cell_103/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_104/lstm_cell_104/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_104/lstm_cell_104/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_104/lstm_cell_104/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_102_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_102_inputlstm_102/lstm_cell_102/kernel'lstm_102/lstm_cell_102/recurrent_kernellstm_102/lstm_cell_102/biaslstm_103/lstm_cell_103/kernel'lstm_103/lstm_cell_103/recurrent_kernellstm_103/lstm_cell_103/biaslstm_104/lstm_cell_104/kernel'lstm_104/lstm_cell_104/recurrent_kernellstm_104/lstm_cell_104/biasdense_34/kerneldense_34/bias*
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
%__inference_signature_wrapper_2065070
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_34/kernel/Read/ReadVariableOp!dense_34/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_102/lstm_cell_102/kernel/Read/ReadVariableOp;lstm_102/lstm_cell_102/recurrent_kernel/Read/ReadVariableOp/lstm_102/lstm_cell_102/bias/Read/ReadVariableOp1lstm_103/lstm_cell_103/kernel/Read/ReadVariableOp;lstm_103/lstm_cell_103/recurrent_kernel/Read/ReadVariableOp/lstm_103/lstm_cell_103/bias/Read/ReadVariableOp1lstm_104/lstm_cell_104/kernel/Read/ReadVariableOp;lstm_104/lstm_cell_104/recurrent_kernel/Read/ReadVariableOp/lstm_104/lstm_cell_104/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_34/kernel/m/Read/ReadVariableOp(Adam/dense_34/bias/m/Read/ReadVariableOp8Adam/lstm_102/lstm_cell_102/kernel/m/Read/ReadVariableOpBAdam/lstm_102/lstm_cell_102/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_102/lstm_cell_102/bias/m/Read/ReadVariableOp8Adam/lstm_103/lstm_cell_103/kernel/m/Read/ReadVariableOpBAdam/lstm_103/lstm_cell_103/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_103/lstm_cell_103/bias/m/Read/ReadVariableOp8Adam/lstm_104/lstm_cell_104/kernel/m/Read/ReadVariableOpBAdam/lstm_104/lstm_cell_104/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_104/lstm_cell_104/bias/m/Read/ReadVariableOp*Adam/dense_34/kernel/v/Read/ReadVariableOp(Adam/dense_34/bias/v/Read/ReadVariableOp8Adam/lstm_102/lstm_cell_102/kernel/v/Read/ReadVariableOpBAdam/lstm_102/lstm_cell_102/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_102/lstm_cell_102/bias/v/Read/ReadVariableOp8Adam/lstm_103/lstm_cell_103/kernel/v/Read/ReadVariableOpBAdam/lstm_103/lstm_cell_103/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_103/lstm_cell_103/bias/v/Read/ReadVariableOp8Adam/lstm_104/lstm_cell_104/kernel/v/Read/ReadVariableOpBAdam/lstm_104/lstm_cell_104/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_104/lstm_cell_104/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2068282
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_34/kerneldense_34/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_102/lstm_cell_102/kernel'lstm_102/lstm_cell_102/recurrent_kernellstm_102/lstm_cell_102/biaslstm_103/lstm_cell_103/kernel'lstm_103/lstm_cell_103/recurrent_kernellstm_103/lstm_cell_103/biaslstm_104/lstm_cell_104/kernel'lstm_104/lstm_cell_104/recurrent_kernellstm_104/lstm_cell_104/biastotalcountAdam/dense_34/kernel/mAdam/dense_34/bias/m$Adam/lstm_102/lstm_cell_102/kernel/m.Adam/lstm_102/lstm_cell_102/recurrent_kernel/m"Adam/lstm_102/lstm_cell_102/bias/m$Adam/lstm_103/lstm_cell_103/kernel/m.Adam/lstm_103/lstm_cell_103/recurrent_kernel/m"Adam/lstm_103/lstm_cell_103/bias/m$Adam/lstm_104/lstm_cell_104/kernel/m.Adam/lstm_104/lstm_cell_104/recurrent_kernel/m"Adam/lstm_104/lstm_cell_104/bias/mAdam/dense_34/kernel/vAdam/dense_34/bias/v$Adam/lstm_102/lstm_cell_102/kernel/v.Adam/lstm_102/lstm_cell_102/recurrent_kernel/v"Adam/lstm_102/lstm_cell_102/bias/v$Adam/lstm_103/lstm_cell_103/kernel/v.Adam/lstm_103/lstm_cell_103/recurrent_kernel/v"Adam/lstm_103/lstm_cell_103/bias/v$Adam/lstm_104/lstm_cell_104/kernel/v.Adam/lstm_104/lstm_cell_104/recurrent_kernel/v"Adam/lstm_104/lstm_cell_104/bias/v*4
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
#__inference__traced_restore_2068412??+
?K
?
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066165
inputs_0?
,lstm_cell_339_matmul_readvariableop_resource:	?A
.lstm_cell_339_matmul_1_readvariableop_resource:	d?<
-lstm_cell_339_biasadd_readvariableop_resource:	?
identity??$lstm_cell_339/BiasAdd/ReadVariableOp?#lstm_cell_339/MatMul/ReadVariableOp?%lstm_cell_339/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_339/MatMul/ReadVariableOpReadVariableOp,lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_339/MatMulMatMulstrided_slice_2:output:0+lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_339/MatMul_1MatMulzeros:output:0-lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_339/addAddV2lstm_cell_339/MatMul:product:0 lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_339/BiasAddBiasAddlstm_cell_339/add:z:0,lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_339/splitSplit&lstm_cell_339/split/split_dim:output:0lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_339/SigmoidSigmoidlstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_339/Sigmoid_1Sigmoidlstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_339/mulMullstm_cell_339/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_339/ReluRelulstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_339/mul_1Mullstm_cell_339/Sigmoid:y:0 lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_339/add_1AddV2lstm_cell_339/mul:z:0lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_339/Sigmoid_2Sigmoidlstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_339/Relu_1Relulstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_339/mul_2Mullstm_cell_339/Sigmoid_2:y:0"lstm_cell_339/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_339_matmul_readvariableop_resource.lstm_cell_339_matmul_1_readvariableop_resource-lstm_cell_339_biasadd_readvariableop_resource*
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
while_body_2066081*
condR
while_cond_2066080*K
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
NoOpNoOp%^lstm_cell_339/BiasAdd/ReadVariableOp$^lstm_cell_339/MatMul/ReadVariableOp&^lstm_cell_339/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_339/BiasAdd/ReadVariableOp$lstm_cell_339/BiasAdd/ReadVariableOp2J
#lstm_cell_339/MatMul/ReadVariableOp#lstm_cell_339/MatMul/ReadVariableOp2N
%lstm_cell_339/MatMul_1/ReadVariableOp%lstm_cell_339/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_dense_34_layer_call_fn_2067835

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
E__inference_dense_34_layer_call_and_return_conditional_losses_2064327o
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
?
*__inference_lstm_102_layer_call_fn_2066000
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2063151|
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
while_cond_2063431
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2063431___redundant_placeholder05
1while_while_cond_2063431___redundant_placeholder15
1while_while_cond_2063431___redundant_placeholder25
1while_while_cond_2063431___redundant_placeholder3
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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2068041

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
?J
?
E__inference_lstm_104_layer_call_and_return_conditional_losses_2064309

inputs>
,lstm_cell_341_matmul_readvariableop_resource:2(@
.lstm_cell_341_matmul_1_readvariableop_resource:
(;
-lstm_cell_341_biasadd_readvariableop_resource:(
identity??$lstm_cell_341/BiasAdd/ReadVariableOp?#lstm_cell_341/MatMul/ReadVariableOp?%lstm_cell_341/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_341/MatMul/ReadVariableOpReadVariableOp,lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_341/MatMulMatMulstrided_slice_2:output:0+lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_341/MatMul_1MatMulzeros:output:0-lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_341/addAddV2lstm_cell_341/MatMul:product:0 lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_341/BiasAddBiasAddlstm_cell_341/add:z:0,lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_341/splitSplit&lstm_cell_341/split/split_dim:output:0lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_341/SigmoidSigmoidlstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_341/Sigmoid_1Sigmoidlstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_341/mulMullstm_cell_341/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_341/ReluRelulstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_341/mul_1Mullstm_cell_341/Sigmoid:y:0 lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_341/add_1AddV2lstm_cell_341/mul:z:0lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_341/Sigmoid_2Sigmoidlstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_341/Relu_1Relulstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_341/mul_2Mullstm_cell_341/Sigmoid_2:y:0"lstm_cell_341/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_341_matmul_readvariableop_resource.lstm_cell_341_matmul_1_readvariableop_resource-lstm_cell_341_biasadd_readvariableop_resource*
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
while_body_2064225*
condR
while_cond_2064224*K
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
NoOpNoOp%^lstm_cell_341/BiasAdd/ReadVariableOp$^lstm_cell_341/MatMul/ReadVariableOp&^lstm_cell_341/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_341/BiasAdd/ReadVariableOp$lstm_cell_341/BiasAdd/ReadVariableOp2J
#lstm_cell_341/MatMul/ReadVariableOp#lstm_cell_341/MatMul/ReadVariableOp2N
%lstm_cell_341/MatMul_1/ReadVariableOp%lstm_cell_341/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2063577

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
while_body_2066081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_339_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_339_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_339_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_339_matmul_readvariableop_resource:	?G
4while_lstm_cell_339_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_339_biasadd_readvariableop_resource:	???*while/lstm_cell_339/BiasAdd/ReadVariableOp?)while/lstm_cell_339/MatMul/ReadVariableOp?+while/lstm_cell_339/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_339/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_339/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_339/addAddV2$while/lstm_cell_339/MatMul:product:0&while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_339/BiasAddBiasAddwhile/lstm_cell_339/add:z:02while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_339/splitSplit,while/lstm_cell_339/split/split_dim:output:0$while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_339/SigmoidSigmoid"while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_339/Sigmoid_1Sigmoid"while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mulMul!while/lstm_cell_339/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_339/ReluRelu"while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mul_1Mulwhile/lstm_cell_339/Sigmoid:y:0&while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/add_1AddV2while/lstm_cell_339/mul:z:0while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_339/Sigmoid_2Sigmoid"while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_339/Relu_1Reluwhile/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mul_2Mul!while/lstm_cell_339/Sigmoid_2:y:0(while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_339/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_339/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_339/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_339/BiasAdd/ReadVariableOp*^while/lstm_cell_339/MatMul/ReadVariableOp,^while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_339_biasadd_readvariableop_resource5while_lstm_cell_339_biasadd_readvariableop_resource_0"n
4while_lstm_cell_339_matmul_1_readvariableop_resource6while_lstm_cell_339_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_339_matmul_readvariableop_resource4while_lstm_cell_339_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_339/BiasAdd/ReadVariableOp*while/lstm_cell_339/BiasAdd/ReadVariableOp2V
)while/lstm_cell_339/MatMul/ReadVariableOp)while/lstm_cell_339/MatMul/ReadVariableOp2Z
+while/lstm_cell_339/MatMul_1/ReadVariableOp+while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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
lstm_103_while_cond_2065748.
*lstm_103_while_lstm_103_while_loop_counter4
0lstm_103_while_lstm_103_while_maximum_iterations
lstm_103_while_placeholder 
lstm_103_while_placeholder_1 
lstm_103_while_placeholder_2 
lstm_103_while_placeholder_30
,lstm_103_while_less_lstm_103_strided_slice_1G
Clstm_103_while_lstm_103_while_cond_2065748___redundant_placeholder0G
Clstm_103_while_lstm_103_while_cond_2065748___redundant_placeholder1G
Clstm_103_while_lstm_103_while_cond_2065748___redundant_placeholder2G
Clstm_103_while_lstm_103_while_cond_2065748___redundant_placeholder3
lstm_103_while_identity
?
lstm_103/while/LessLesslstm_103_while_placeholder,lstm_103_while_less_lstm_103_strided_slice_1*
T0*
_output_shapes
: ]
lstm_103/while/IdentityIdentitylstm_103/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_103_while_identity lstm_103/while/Identity:output:0*(
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
while_body_2066697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_340_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_340_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_340_matmul_readvariableop_resource:	d?G
4while_lstm_cell_340_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_340_biasadd_readvariableop_resource:	???*while/lstm_cell_340/BiasAdd/ReadVariableOp?)while/lstm_cell_340/MatMul/ReadVariableOp?+while/lstm_cell_340/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_340/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_340/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_340/addAddV2$while/lstm_cell_340/MatMul:product:0&while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_340/BiasAddBiasAddwhile/lstm_cell_340/add:z:02while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_340/splitSplit,while/lstm_cell_340/split/split_dim:output:0$while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_340/SigmoidSigmoid"while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_340/Sigmoid_1Sigmoid"while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mulMul!while/lstm_cell_340/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_340/ReluRelu"while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mul_1Mulwhile/lstm_cell_340/Sigmoid:y:0&while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/add_1AddV2while/lstm_cell_340/mul:z:0while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_340/Sigmoid_2Sigmoid"while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_340/Relu_1Reluwhile/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mul_2Mul!while/lstm_cell_340/Sigmoid_2:y:0(while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_340/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_340/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_340/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_340/BiasAdd/ReadVariableOp*^while/lstm_cell_340/MatMul/ReadVariableOp,^while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_340_biasadd_readvariableop_resource5while_lstm_cell_340_biasadd_readvariableop_resource_0"n
4while_lstm_cell_340_matmul_1_readvariableop_resource6while_lstm_cell_340_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_340_matmul_readvariableop_resource4while_lstm_cell_340_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_340/BiasAdd/ReadVariableOp*while/lstm_cell_340/BiasAdd/ReadVariableOp2V
)while/lstm_cell_340/MatMul/ReadVariableOp)while/lstm_cell_340/MatMul/ReadVariableOp2Z
+while/lstm_cell_340/MatMul_1/ReadVariableOp+while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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
while_cond_2064074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2064074___redundant_placeholder05
1while_while_cond_2064074___redundant_placeholder15
1while_while_cond_2064074___redundant_placeholder25
1while_while_cond_2064074___redundant_placeholder3
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
?
E__inference_dense_34_layer_call_and_return_conditional_losses_2064327

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
while_body_2066840
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_340_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_340_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_340_matmul_readvariableop_resource:	d?G
4while_lstm_cell_340_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_340_biasadd_readvariableop_resource:	???*while/lstm_cell_340/BiasAdd/ReadVariableOp?)while/lstm_cell_340/MatMul/ReadVariableOp?+while/lstm_cell_340/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_340/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_340/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_340/addAddV2$while/lstm_cell_340/MatMul:product:0&while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_340/BiasAddBiasAddwhile/lstm_cell_340/add:z:02while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_340/splitSplit,while/lstm_cell_340/split/split_dim:output:0$while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_340/SigmoidSigmoid"while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_340/Sigmoid_1Sigmoid"while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mulMul!while/lstm_cell_340/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_340/ReluRelu"while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mul_1Mulwhile/lstm_cell_340/Sigmoid:y:0&while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/add_1AddV2while/lstm_cell_340/mul:z:0while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_340/Sigmoid_2Sigmoid"while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_340/Relu_1Reluwhile/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mul_2Mul!while/lstm_cell_340/Sigmoid_2:y:0(while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_340/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_340/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_340/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_340/BiasAdd/ReadVariableOp*^while/lstm_cell_340/MatMul/ReadVariableOp,^while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_340_biasadd_readvariableop_resource5while_lstm_cell_340_biasadd_readvariableop_resource_0"n
4while_lstm_cell_340_matmul_1_readvariableop_resource6while_lstm_cell_340_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_340_matmul_readvariableop_resource4while_lstm_cell_340_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_340/BiasAdd/ReadVariableOp*while/lstm_cell_340/BiasAdd/ReadVariableOp2V
)while/lstm_cell_340/MatMul/ReadVariableOp)while/lstm_cell_340/MatMul/ReadVariableOp2Z
+while/lstm_cell_340/MatMul_1/ReadVariableOp+while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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
?
E__inference_lstm_102_layer_call_and_return_conditional_losses_2062960

inputs(
lstm_cell_339_2062878:	?(
lstm_cell_339_2062880:	d?$
lstm_cell_339_2062882:	?
identity??%lstm_cell_339/StatefulPartitionedCall?while;
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
%lstm_cell_339/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_339_2062878lstm_cell_339_2062880lstm_cell_339_2062882*
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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2062877n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_339_2062878lstm_cell_339_2062880lstm_cell_339_2062882*
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
while_body_2062891*
condR
while_cond_2062890*K
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
NoOpNoOp&^lstm_cell_339/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_339/StatefulPartitionedCall%lstm_cell_339/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_2064224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2064224___redundant_placeholder05
1while_while_cond_2064224___redundant_placeholder15
1while_while_cond_2064224___redundant_placeholder25
1while_while_cond_2064224___redundant_placeholder3
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
while_cond_2067741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2067741___redundant_placeholder05
1while_while_cond_2067741___redundant_placeholder15
1while_while_cond_2067741___redundant_placeholder25
1while_while_cond_2067741___redundant_placeholder3
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
?#
?
while_body_2063782
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_341_2063806_0:2(/
while_lstm_cell_341_2063808_0:
(+
while_lstm_cell_341_2063810_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_341_2063806:2(-
while_lstm_cell_341_2063808:
()
while_lstm_cell_341_2063810:(??+while/lstm_cell_341/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_341/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_341_2063806_0while_lstm_cell_341_2063808_0while_lstm_cell_341_2063810_0*
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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2063723?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_341/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_341/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_341/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_341/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_341_2063806while_lstm_cell_341_2063806_0"<
while_lstm_cell_341_2063808while_lstm_cell_341_2063808_0"<
while_lstm_cell_341_2063810while_lstm_cell_341_2063810_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_341/StatefulPartitionedCall+while/lstm_cell_341/StatefulPartitionedCall: 
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2067210

inputs?
,lstm_cell_340_matmul_readvariableop_resource:	d?A
.lstm_cell_340_matmul_1_readvariableop_resource:	2?<
-lstm_cell_340_biasadd_readvariableop_resource:	?
identity??$lstm_cell_340/BiasAdd/ReadVariableOp?#lstm_cell_340/MatMul/ReadVariableOp?%lstm_cell_340/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_340/MatMul/ReadVariableOpReadVariableOp,lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_340/MatMulMatMulstrided_slice_2:output:0+lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_340/MatMul_1MatMulzeros:output:0-lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_340/addAddV2lstm_cell_340/MatMul:product:0 lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_340/BiasAddBiasAddlstm_cell_340/add:z:0,lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_340/splitSplit&lstm_cell_340/split/split_dim:output:0lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_340/SigmoidSigmoidlstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_340/Sigmoid_1Sigmoidlstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_340/mulMullstm_cell_340/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_340/ReluRelulstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_340/mul_1Mullstm_cell_340/Sigmoid:y:0 lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_340/add_1AddV2lstm_cell_340/mul:z:0lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_340/Sigmoid_2Sigmoidlstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_340/Relu_1Relulstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_340/mul_2Mullstm_cell_340/Sigmoid_2:y:0"lstm_cell_340/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_340_matmul_readvariableop_resource.lstm_cell_340_matmul_1_readvariableop_resource-lstm_cell_340_biasadd_readvariableop_resource*
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
while_body_2067126*
condR
while_cond_2067125*K
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
NoOpNoOp%^lstm_cell_340/BiasAdd/ReadVariableOp$^lstm_cell_340/MatMul/ReadVariableOp&^lstm_cell_340/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_340/BiasAdd/ReadVariableOp$lstm_cell_340/BiasAdd/ReadVariableOp2J
#lstm_cell_340/MatMul/ReadVariableOp#lstm_cell_340/MatMul/ReadVariableOp2N
%lstm_cell_340/MatMul_1/ReadVariableOp%lstm_cell_340/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_2065070
lstm_102_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2062810o
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
_user_specified_namelstm_102_input
?#
?
while_body_2063432
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_340_2063456_0:	d?0
while_lstm_cell_340_2063458_0:	2?,
while_lstm_cell_340_2063460_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_340_2063456:	d?.
while_lstm_cell_340_2063458:	2?*
while_lstm_cell_340_2063460:	???+while/lstm_cell_340/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_340/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_340_2063456_0while_lstm_cell_340_2063458_0while_lstm_cell_340_2063460_0*
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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2063373?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_340/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_340/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_340/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_340/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_340_2063456while_lstm_cell_340_2063456_0"<
while_lstm_cell_340_2063458while_lstm_cell_340_2063458_0"<
while_lstm_cell_340_2063460while_lstm_cell_340_2063460_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_340/StatefulPartitionedCall+while/lstm_cell_340/StatefulPartitionedCall: 
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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2067911

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
?J
?
E__inference_lstm_103_layer_call_and_return_conditional_losses_2064690

inputs?
,lstm_cell_340_matmul_readvariableop_resource:	d?A
.lstm_cell_340_matmul_1_readvariableop_resource:	2?<
-lstm_cell_340_biasadd_readvariableop_resource:	?
identity??$lstm_cell_340/BiasAdd/ReadVariableOp?#lstm_cell_340/MatMul/ReadVariableOp?%lstm_cell_340/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_340/MatMul/ReadVariableOpReadVariableOp,lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_340/MatMulMatMulstrided_slice_2:output:0+lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_340/MatMul_1MatMulzeros:output:0-lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_340/addAddV2lstm_cell_340/MatMul:product:0 lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_340/BiasAddBiasAddlstm_cell_340/add:z:0,lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_340/splitSplit&lstm_cell_340/split/split_dim:output:0lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_340/SigmoidSigmoidlstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_340/Sigmoid_1Sigmoidlstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_340/mulMullstm_cell_340/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_340/ReluRelulstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_340/mul_1Mullstm_cell_340/Sigmoid:y:0 lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_340/add_1AddV2lstm_cell_340/mul:z:0lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_340/Sigmoid_2Sigmoidlstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_340/Relu_1Relulstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_340/mul_2Mullstm_cell_340/Sigmoid_2:y:0"lstm_cell_340/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_340_matmul_readvariableop_resource.lstm_cell_340_matmul_1_readvariableop_resource-lstm_cell_340_biasadd_readvariableop_resource*
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
while_body_2064606*
condR
while_cond_2064605*K
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
NoOpNoOp%^lstm_cell_340/BiasAdd/ReadVariableOp$^lstm_cell_340/MatMul/ReadVariableOp&^lstm_cell_340/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_340/BiasAdd/ReadVariableOp$lstm_cell_340/BiasAdd/ReadVariableOp2J
#lstm_cell_340/MatMul/ReadVariableOp#lstm_cell_340/MatMul/ReadVariableOp2N
%lstm_cell_340/MatMul_1/ReadVariableOp%lstm_cell_340/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_2064606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_340_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_340_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_340_matmul_readvariableop_resource:	d?G
4while_lstm_cell_340_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_340_biasadd_readvariableop_resource:	???*while/lstm_cell_340/BiasAdd/ReadVariableOp?)while/lstm_cell_340/MatMul/ReadVariableOp?+while/lstm_cell_340/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_340/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_340/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_340/addAddV2$while/lstm_cell_340/MatMul:product:0&while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_340/BiasAddBiasAddwhile/lstm_cell_340/add:z:02while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_340/splitSplit,while/lstm_cell_340/split/split_dim:output:0$while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_340/SigmoidSigmoid"while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_340/Sigmoid_1Sigmoid"while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mulMul!while/lstm_cell_340/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_340/ReluRelu"while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mul_1Mulwhile/lstm_cell_340/Sigmoid:y:0&while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/add_1AddV2while/lstm_cell_340/mul:z:0while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_340/Sigmoid_2Sigmoid"while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_340/Relu_1Reluwhile/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mul_2Mul!while/lstm_cell_340/Sigmoid_2:y:0(while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_340/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_340/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_340/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_340/BiasAdd/ReadVariableOp*^while/lstm_cell_340/MatMul/ReadVariableOp,^while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_340_biasadd_readvariableop_resource5while_lstm_cell_340_biasadd_readvariableop_resource_0"n
4while_lstm_cell_340_matmul_1_readvariableop_resource6while_lstm_cell_340_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_340_matmul_readvariableop_resource4while_lstm_cell_340_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_340/BiasAdd/ReadVariableOp*while/lstm_cell_340/BiasAdd/ReadVariableOp2V
)while/lstm_cell_340/MatMul/ReadVariableOp)while/lstm_cell_340/MatMul/ReadVariableOp2Z
+while/lstm_cell_340/MatMul_1/ReadVariableOp+while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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

lstm_102_while_body_2065610.
*lstm_102_while_lstm_102_while_loop_counter4
0lstm_102_while_lstm_102_while_maximum_iterations
lstm_102_while_placeholder 
lstm_102_while_placeholder_1 
lstm_102_while_placeholder_2 
lstm_102_while_placeholder_3-
)lstm_102_while_lstm_102_strided_slice_1_0i
elstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0:	?R
?lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0:	d?M
>lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0:	?
lstm_102_while_identity
lstm_102_while_identity_1
lstm_102_while_identity_2
lstm_102_while_identity_3
lstm_102_while_identity_4
lstm_102_while_identity_5+
'lstm_102_while_lstm_102_strided_slice_1g
clstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensorN
;lstm_102_while_lstm_cell_339_matmul_readvariableop_resource:	?P
=lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource:	d?K
<lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource:	???3lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp?2lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp?4lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp?
@lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_102/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0lstm_102_while_placeholderIlstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_102/while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp=lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_102/while/lstm_cell_339/MatMulMatMul9lstm_102/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp?lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_102/while/lstm_cell_339/MatMul_1MatMullstm_102_while_placeholder_2<lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_102/while/lstm_cell_339/addAddV2-lstm_102/while/lstm_cell_339/MatMul:product:0/lstm_102/while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp>lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_102/while/lstm_cell_339/BiasAddBiasAdd$lstm_102/while/lstm_cell_339/add:z:0;lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_102/while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_102/while/lstm_cell_339/splitSplit5lstm_102/while/lstm_cell_339/split/split_dim:output:0-lstm_102/while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_102/while/lstm_cell_339/SigmoidSigmoid+lstm_102/while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_102/while/lstm_cell_339/Sigmoid_1Sigmoid+lstm_102/while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_102/while/lstm_cell_339/mulMul*lstm_102/while/lstm_cell_339/Sigmoid_1:y:0lstm_102_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_102/while/lstm_cell_339/ReluRelu+lstm_102/while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_102/while/lstm_cell_339/mul_1Mul(lstm_102/while/lstm_cell_339/Sigmoid:y:0/lstm_102/while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_102/while/lstm_cell_339/add_1AddV2$lstm_102/while/lstm_cell_339/mul:z:0&lstm_102/while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_102/while/lstm_cell_339/Sigmoid_2Sigmoid+lstm_102/while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_102/while/lstm_cell_339/Relu_1Relu&lstm_102/while/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_102/while/lstm_cell_339/mul_2Mul*lstm_102/while/lstm_cell_339/Sigmoid_2:y:01lstm_102/while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_102/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_102_while_placeholder_1lstm_102_while_placeholder&lstm_102/while/lstm_cell_339/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_102/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_102/while/addAddV2lstm_102_while_placeholderlstm_102/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_102/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_102/while/add_1AddV2*lstm_102_while_lstm_102_while_loop_counterlstm_102/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_102/while/IdentityIdentitylstm_102/while/add_1:z:0^lstm_102/while/NoOp*
T0*
_output_shapes
: ?
lstm_102/while/Identity_1Identity0lstm_102_while_lstm_102_while_maximum_iterations^lstm_102/while/NoOp*
T0*
_output_shapes
: t
lstm_102/while/Identity_2Identitylstm_102/while/add:z:0^lstm_102/while/NoOp*
T0*
_output_shapes
: ?
lstm_102/while/Identity_3IdentityClstm_102/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_102/while/NoOp*
T0*
_output_shapes
: ?
lstm_102/while/Identity_4Identity&lstm_102/while/lstm_cell_339/mul_2:z:0^lstm_102/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_102/while/Identity_5Identity&lstm_102/while/lstm_cell_339/add_1:z:0^lstm_102/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_102/while/NoOpNoOp4^lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_102_while_identity lstm_102/while/Identity:output:0"?
lstm_102_while_identity_1"lstm_102/while/Identity_1:output:0"?
lstm_102_while_identity_2"lstm_102/while/Identity_2:output:0"?
lstm_102_while_identity_3"lstm_102/while/Identity_3:output:0"?
lstm_102_while_identity_4"lstm_102/while/Identity_4:output:0"?
lstm_102_while_identity_5"lstm_102/while/Identity_5:output:0"T
'lstm_102_while_lstm_102_strided_slice_1)lstm_102_while_lstm_102_strided_slice_1_0"~
<lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource>lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0"?
=lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource?lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0"|
;lstm_102_while_lstm_cell_339_matmul_readvariableop_resource=lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0"?
clstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensorelstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp3lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp2h
2lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp2lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp2l
4lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp4lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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
lstm_102_while_cond_2065609.
*lstm_102_while_lstm_102_while_loop_counter4
0lstm_102_while_lstm_102_while_maximum_iterations
lstm_102_while_placeholder 
lstm_102_while_placeholder_1 
lstm_102_while_placeholder_2 
lstm_102_while_placeholder_30
,lstm_102_while_less_lstm_102_strided_slice_1G
Clstm_102_while_lstm_102_while_cond_2065609___redundant_placeholder0G
Clstm_102_while_lstm_102_while_cond_2065609___redundant_placeholder1G
Clstm_102_while_lstm_102_while_cond_2065609___redundant_placeholder2G
Clstm_102_while_lstm_102_while_cond_2065609___redundant_placeholder3
lstm_102_while_identity
?
lstm_102/while/LessLesslstm_102_while_placeholder,lstm_102_while_less_lstm_102_strided_slice_1*
T0*
_output_shapes
: ]
lstm_102/while/IdentityIdentitylstm_102/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_102_while_identity lstm_102/while/Identity:output:0*(
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
lstm_104_while_cond_2065887.
*lstm_104_while_lstm_104_while_loop_counter4
0lstm_104_while_lstm_104_while_maximum_iterations
lstm_104_while_placeholder 
lstm_104_while_placeholder_1 
lstm_104_while_placeholder_2 
lstm_104_while_placeholder_30
,lstm_104_while_less_lstm_104_strided_slice_1G
Clstm_104_while_lstm_104_while_cond_2065887___redundant_placeholder0G
Clstm_104_while_lstm_104_while_cond_2065887___redundant_placeholder1G
Clstm_104_while_lstm_104_while_cond_2065887___redundant_placeholder2G
Clstm_104_while_lstm_104_while_cond_2065887___redundant_placeholder3
lstm_104_while_identity
?
lstm_104/while/LessLesslstm_104_while_placeholder,lstm_104_while_less_lstm_104_strided_slice_1*
T0*
_output_shapes
: ]
lstm_104/while/IdentityIdentitylstm_104/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_104_while_identity lstm_104/while/Identity:output:0*(
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2064525

inputs>
,lstm_cell_341_matmul_readvariableop_resource:2(@
.lstm_cell_341_matmul_1_readvariableop_resource:
(;
-lstm_cell_341_biasadd_readvariableop_resource:(
identity??$lstm_cell_341/BiasAdd/ReadVariableOp?#lstm_cell_341/MatMul/ReadVariableOp?%lstm_cell_341/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_341/MatMul/ReadVariableOpReadVariableOp,lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_341/MatMulMatMulstrided_slice_2:output:0+lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_341/MatMul_1MatMulzeros:output:0-lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_341/addAddV2lstm_cell_341/MatMul:product:0 lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_341/BiasAddBiasAddlstm_cell_341/add:z:0,lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_341/splitSplit&lstm_cell_341/split/split_dim:output:0lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_341/SigmoidSigmoidlstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_341/Sigmoid_1Sigmoidlstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_341/mulMullstm_cell_341/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_341/ReluRelulstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_341/mul_1Mullstm_cell_341/Sigmoid:y:0 lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_341/add_1AddV2lstm_cell_341/mul:z:0lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_341/Sigmoid_2Sigmoidlstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_341/Relu_1Relulstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_341/mul_2Mullstm_cell_341/Sigmoid_2:y:0"lstm_cell_341/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_341_matmul_readvariableop_resource.lstm_cell_341_matmul_1_readvariableop_resource-lstm_cell_341_biasadd_readvariableop_resource*
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
while_body_2064441*
condR
while_cond_2064440*K
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
NoOpNoOp%^lstm_cell_341/BiasAdd/ReadVariableOp$^lstm_cell_341/MatMul/ReadVariableOp&^lstm_cell_341/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_341/BiasAdd/ReadVariableOp$lstm_cell_341/BiasAdd/ReadVariableOp2J
#lstm_cell_341/MatMul/ReadVariableOp#lstm_cell_341/MatMul/ReadVariableOp2N
%lstm_cell_341/MatMul_1/ReadVariableOp%lstm_cell_341/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_2064770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2064770___redundant_placeholder05
1while_while_cond_2064770___redundant_placeholder15
1while_while_cond_2064770___redundant_placeholder25
1while_while_cond_2064770___redundant_placeholder3
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2063660

inputs'
lstm_cell_341_2063578:2('
lstm_cell_341_2063580:
(#
lstm_cell_341_2063582:(
identity??%lstm_cell_341/StatefulPartitionedCall?while;
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
%lstm_cell_341/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_341_2063578lstm_cell_341_2063580lstm_cell_341_2063582*
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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2063577n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_341_2063578lstm_cell_341_2063580lstm_cell_341_2063582*
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
while_body_2063591*
condR
while_cond_2063590*K
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
NoOpNoOp&^lstm_cell_341/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_341/StatefulPartitionedCall%lstm_cell_341/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?C
?

lstm_103_while_body_2065322.
*lstm_103_while_lstm_103_while_loop_counter4
0lstm_103_while_lstm_103_while_maximum_iterations
lstm_103_while_placeholder 
lstm_103_while_placeholder_1 
lstm_103_while_placeholder_2 
lstm_103_while_placeholder_3-
)lstm_103_while_lstm_103_strided_slice_1_0i
elstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0:	d?R
?lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2?M
>lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0:	?
lstm_103_while_identity
lstm_103_while_identity_1
lstm_103_while_identity_2
lstm_103_while_identity_3
lstm_103_while_identity_4
lstm_103_while_identity_5+
'lstm_103_while_lstm_103_strided_slice_1g
clstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensorN
;lstm_103_while_lstm_cell_340_matmul_readvariableop_resource:	d?P
=lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource:	2?K
<lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource:	???3lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp?2lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp?4lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp?
@lstm_103/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_103/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensor_0lstm_103_while_placeholderIlstm_103/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_103/while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp=lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_103/while/lstm_cell_340/MatMulMatMul9lstm_103/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp?lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_103/while/lstm_cell_340/MatMul_1MatMullstm_103_while_placeholder_2<lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_103/while/lstm_cell_340/addAddV2-lstm_103/while/lstm_cell_340/MatMul:product:0/lstm_103/while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp>lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_103/while/lstm_cell_340/BiasAddBiasAdd$lstm_103/while/lstm_cell_340/add:z:0;lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_103/while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_103/while/lstm_cell_340/splitSplit5lstm_103/while/lstm_cell_340/split/split_dim:output:0-lstm_103/while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_103/while/lstm_cell_340/SigmoidSigmoid+lstm_103/while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_103/while/lstm_cell_340/Sigmoid_1Sigmoid+lstm_103/while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_103/while/lstm_cell_340/mulMul*lstm_103/while/lstm_cell_340/Sigmoid_1:y:0lstm_103_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_103/while/lstm_cell_340/ReluRelu+lstm_103/while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_103/while/lstm_cell_340/mul_1Mul(lstm_103/while/lstm_cell_340/Sigmoid:y:0/lstm_103/while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_103/while/lstm_cell_340/add_1AddV2$lstm_103/while/lstm_cell_340/mul:z:0&lstm_103/while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_103/while/lstm_cell_340/Sigmoid_2Sigmoid+lstm_103/while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_103/while/lstm_cell_340/Relu_1Relu&lstm_103/while/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_103/while/lstm_cell_340/mul_2Mul*lstm_103/while/lstm_cell_340/Sigmoid_2:y:01lstm_103/while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_103/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_103_while_placeholder_1lstm_103_while_placeholder&lstm_103/while/lstm_cell_340/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_103/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_103/while/addAddV2lstm_103_while_placeholderlstm_103/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_103/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_103/while/add_1AddV2*lstm_103_while_lstm_103_while_loop_counterlstm_103/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_103/while/IdentityIdentitylstm_103/while/add_1:z:0^lstm_103/while/NoOp*
T0*
_output_shapes
: ?
lstm_103/while/Identity_1Identity0lstm_103_while_lstm_103_while_maximum_iterations^lstm_103/while/NoOp*
T0*
_output_shapes
: t
lstm_103/while/Identity_2Identitylstm_103/while/add:z:0^lstm_103/while/NoOp*
T0*
_output_shapes
: ?
lstm_103/while/Identity_3IdentityClstm_103/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_103/while/NoOp*
T0*
_output_shapes
: ?
lstm_103/while/Identity_4Identity&lstm_103/while/lstm_cell_340/mul_2:z:0^lstm_103/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_103/while/Identity_5Identity&lstm_103/while/lstm_cell_340/add_1:z:0^lstm_103/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_103/while/NoOpNoOp4^lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp3^lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp5^lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_103_while_identity lstm_103/while/Identity:output:0"?
lstm_103_while_identity_1"lstm_103/while/Identity_1:output:0"?
lstm_103_while_identity_2"lstm_103/while/Identity_2:output:0"?
lstm_103_while_identity_3"lstm_103/while/Identity_3:output:0"?
lstm_103_while_identity_4"lstm_103/while/Identity_4:output:0"?
lstm_103_while_identity_5"lstm_103/while/Identity_5:output:0"T
'lstm_103_while_lstm_103_strided_slice_1)lstm_103_while_lstm_103_strided_slice_1_0"~
<lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource>lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0"?
=lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource?lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0"|
;lstm_103_while_lstm_cell_340_matmul_readvariableop_resource=lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0"?
clstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensorelstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp3lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp2h
2lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp2lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp2l
4lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp4lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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
while_cond_2067598
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2067598___redundant_placeholder05
1while_while_cond_2067598___redundant_placeholder15
1while_while_cond_2067598___redundant_placeholder25
1while_while_cond_2067598___redundant_placeholder3
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
while_cond_2064605
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2064605___redundant_placeholder05
1while_while_cond_2064605___redundant_placeholder15
1while_while_cond_2064605___redundant_placeholder25
1while_while_cond_2064605___redundant_placeholder3
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2066781
inputs_0?
,lstm_cell_340_matmul_readvariableop_resource:	d?A
.lstm_cell_340_matmul_1_readvariableop_resource:	2?<
-lstm_cell_340_biasadd_readvariableop_resource:	?
identity??$lstm_cell_340/BiasAdd/ReadVariableOp?#lstm_cell_340/MatMul/ReadVariableOp?%lstm_cell_340/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_340/MatMul/ReadVariableOpReadVariableOp,lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_340/MatMulMatMulstrided_slice_2:output:0+lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_340/MatMul_1MatMulzeros:output:0-lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_340/addAddV2lstm_cell_340/MatMul:product:0 lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_340/BiasAddBiasAddlstm_cell_340/add:z:0,lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_340/splitSplit&lstm_cell_340/split/split_dim:output:0lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_340/SigmoidSigmoidlstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_340/Sigmoid_1Sigmoidlstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_340/mulMullstm_cell_340/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_340/ReluRelulstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_340/mul_1Mullstm_cell_340/Sigmoid:y:0 lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_340/add_1AddV2lstm_cell_340/mul:z:0lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_340/Sigmoid_2Sigmoidlstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_340/Relu_1Relulstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_340/mul_2Mullstm_cell_340/Sigmoid_2:y:0"lstm_cell_340/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_340_matmul_readvariableop_resource.lstm_cell_340_matmul_1_readvariableop_resource-lstm_cell_340_biasadd_readvariableop_resource*
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
while_body_2066697*
condR
while_cond_2066696*K
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
NoOpNoOp%^lstm_cell_340/BiasAdd/ReadVariableOp$^lstm_cell_340/MatMul/ReadVariableOp&^lstm_cell_340/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_340/BiasAdd/ReadVariableOp$lstm_cell_340/BiasAdd/ReadVariableOp2J
#lstm_cell_340/MatMul/ReadVariableOp#lstm_cell_340/MatMul/ReadVariableOp2N
%lstm_cell_340/MatMul_1/ReadVariableOp%lstm_cell_340/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_2067599
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_341_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_341_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_341_matmul_readvariableop_resource:2(F
4while_lstm_cell_341_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_341_biasadd_readvariableop_resource:(??*while/lstm_cell_341/BiasAdd/ReadVariableOp?)while/lstm_cell_341/MatMul/ReadVariableOp?+while/lstm_cell_341/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_341/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_341/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_341/addAddV2$while/lstm_cell_341/MatMul:product:0&while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_341/BiasAddBiasAddwhile/lstm_cell_341/add:z:02while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_341/splitSplit,while/lstm_cell_341/split/split_dim:output:0$while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_341/SigmoidSigmoid"while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_341/Sigmoid_1Sigmoid"while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mulMul!while/lstm_cell_341/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_341/ReluRelu"while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mul_1Mulwhile/lstm_cell_341/Sigmoid:y:0&while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/add_1AddV2while/lstm_cell_341/mul:z:0while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_341/Sigmoid_2Sigmoid"while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_341/Relu_1Reluwhile/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mul_2Mul!while/lstm_cell_341/Sigmoid_2:y:0(while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_341/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_341/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_341/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_341/BiasAdd/ReadVariableOp*^while/lstm_cell_341/MatMul/ReadVariableOp,^while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_341_biasadd_readvariableop_resource5while_lstm_cell_341_biasadd_readvariableop_resource_0"n
4while_lstm_cell_341_matmul_1_readvariableop_resource6while_lstm_cell_341_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_341_matmul_readvariableop_resource4while_lstm_cell_341_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_341/BiasAdd/ReadVariableOp*while/lstm_cell_341/BiasAdd/ReadVariableOp2V
)while/lstm_cell_341/MatMul/ReadVariableOp)while/lstm_cell_341/MatMul/ReadVariableOp2Z
+while/lstm_cell_341/MatMul_1/ReadVariableOp+while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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
while_cond_2066696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2066696___redundant_placeholder05
1while_while_cond_2066696___redundant_placeholder15
1while_while_cond_2066696___redundant_placeholder25
1while_while_cond_2066696___redundant_placeholder3
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
?W
?
 __inference__traced_save_2068282
file_prefix.
*savev2_dense_34_kernel_read_readvariableop,
(savev2_dense_34_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_102_lstm_cell_102_kernel_read_readvariableopF
Bsavev2_lstm_102_lstm_cell_102_recurrent_kernel_read_readvariableop:
6savev2_lstm_102_lstm_cell_102_bias_read_readvariableop<
8savev2_lstm_103_lstm_cell_103_kernel_read_readvariableopF
Bsavev2_lstm_103_lstm_cell_103_recurrent_kernel_read_readvariableop:
6savev2_lstm_103_lstm_cell_103_bias_read_readvariableop<
8savev2_lstm_104_lstm_cell_104_kernel_read_readvariableopF
Bsavev2_lstm_104_lstm_cell_104_recurrent_kernel_read_readvariableop:
6savev2_lstm_104_lstm_cell_104_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_34_kernel_m_read_readvariableop3
/savev2_adam_dense_34_bias_m_read_readvariableopC
?savev2_adam_lstm_102_lstm_cell_102_kernel_m_read_readvariableopM
Isavev2_adam_lstm_102_lstm_cell_102_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_102_lstm_cell_102_bias_m_read_readvariableopC
?savev2_adam_lstm_103_lstm_cell_103_kernel_m_read_readvariableopM
Isavev2_adam_lstm_103_lstm_cell_103_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_103_lstm_cell_103_bias_m_read_readvariableopC
?savev2_adam_lstm_104_lstm_cell_104_kernel_m_read_readvariableopM
Isavev2_adam_lstm_104_lstm_cell_104_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_104_lstm_cell_104_bias_m_read_readvariableop5
1savev2_adam_dense_34_kernel_v_read_readvariableop3
/savev2_adam_dense_34_bias_v_read_readvariableopC
?savev2_adam_lstm_102_lstm_cell_102_kernel_v_read_readvariableopM
Isavev2_adam_lstm_102_lstm_cell_102_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_102_lstm_cell_102_bias_v_read_readvariableopC
?savev2_adam_lstm_103_lstm_cell_103_kernel_v_read_readvariableopM
Isavev2_adam_lstm_103_lstm_cell_103_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_103_lstm_cell_103_bias_v_read_readvariableopC
?savev2_adam_lstm_104_lstm_cell_104_kernel_v_read_readvariableopM
Isavev2_adam_lstm_104_lstm_cell_104_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_104_lstm_cell_104_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_34_kernel_read_readvariableop(savev2_dense_34_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_102_lstm_cell_102_kernel_read_readvariableopBsavev2_lstm_102_lstm_cell_102_recurrent_kernel_read_readvariableop6savev2_lstm_102_lstm_cell_102_bias_read_readvariableop8savev2_lstm_103_lstm_cell_103_kernel_read_readvariableopBsavev2_lstm_103_lstm_cell_103_recurrent_kernel_read_readvariableop6savev2_lstm_103_lstm_cell_103_bias_read_readvariableop8savev2_lstm_104_lstm_cell_104_kernel_read_readvariableopBsavev2_lstm_104_lstm_cell_104_recurrent_kernel_read_readvariableop6savev2_lstm_104_lstm_cell_104_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_34_kernel_m_read_readvariableop/savev2_adam_dense_34_bias_m_read_readvariableop?savev2_adam_lstm_102_lstm_cell_102_kernel_m_read_readvariableopIsavev2_adam_lstm_102_lstm_cell_102_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_102_lstm_cell_102_bias_m_read_readvariableop?savev2_adam_lstm_103_lstm_cell_103_kernel_m_read_readvariableopIsavev2_adam_lstm_103_lstm_cell_103_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_103_lstm_cell_103_bias_m_read_readvariableop?savev2_adam_lstm_104_lstm_cell_104_kernel_m_read_readvariableopIsavev2_adam_lstm_104_lstm_cell_104_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_104_lstm_cell_104_bias_m_read_readvariableop1savev2_adam_dense_34_kernel_v_read_readvariableop/savev2_adam_dense_34_bias_v_read_readvariableop?savev2_adam_lstm_102_lstm_cell_102_kernel_v_read_readvariableopIsavev2_adam_lstm_102_lstm_cell_102_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_102_lstm_cell_102_bias_v_read_readvariableop?savev2_adam_lstm_103_lstm_cell_103_kernel_v_read_readvariableopIsavev2_adam_lstm_103_lstm_cell_103_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_103_lstm_cell_103_bias_v_read_readvariableop?savev2_adam_lstm_104_lstm_cell_104_kernel_v_read_readvariableopIsavev2_adam_lstm_104_lstm_cell_104_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_104_lstm_cell_104_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2063373

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
?J
?
E__inference_lstm_102_layer_call_and_return_conditional_losses_2064855

inputs?
,lstm_cell_339_matmul_readvariableop_resource:	?A
.lstm_cell_339_matmul_1_readvariableop_resource:	d?<
-lstm_cell_339_biasadd_readvariableop_resource:	?
identity??$lstm_cell_339/BiasAdd/ReadVariableOp?#lstm_cell_339/MatMul/ReadVariableOp?%lstm_cell_339/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_339/MatMul/ReadVariableOpReadVariableOp,lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_339/MatMulMatMulstrided_slice_2:output:0+lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_339/MatMul_1MatMulzeros:output:0-lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_339/addAddV2lstm_cell_339/MatMul:product:0 lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_339/BiasAddBiasAddlstm_cell_339/add:z:0,lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_339/splitSplit&lstm_cell_339/split/split_dim:output:0lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_339/SigmoidSigmoidlstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_339/Sigmoid_1Sigmoidlstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_339/mulMullstm_cell_339/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_339/ReluRelulstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_339/mul_1Mullstm_cell_339/Sigmoid:y:0 lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_339/add_1AddV2lstm_cell_339/mul:z:0lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_339/Sigmoid_2Sigmoidlstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_339/Relu_1Relulstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_339/mul_2Mullstm_cell_339/Sigmoid_2:y:0"lstm_cell_339/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_339_matmul_readvariableop_resource.lstm_cell_339_matmul_1_readvariableop_resource-lstm_cell_339_biasadd_readvariableop_resource*
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
while_body_2064771*
condR
while_cond_2064770*K
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
NoOpNoOp%^lstm_cell_339/BiasAdd/ReadVariableOp$^lstm_cell_339/MatMul/ReadVariableOp&^lstm_cell_339/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_339/BiasAdd/ReadVariableOp$lstm_cell_339/BiasAdd/ReadVariableOp2J
#lstm_cell_339/MatMul/ReadVariableOp#lstm_cell_339/MatMul/ReadVariableOp2N
%lstm_cell_339/MatMul_1/ReadVariableOp%lstm_cell_339/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_2063082
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_339_2063106_0:	?0
while_lstm_cell_339_2063108_0:	d?,
while_lstm_cell_339_2063110_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_339_2063106:	?.
while_lstm_cell_339_2063108:	d?*
while_lstm_cell_339_2063110:	???+while/lstm_cell_339/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_339/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_339_2063106_0while_lstm_cell_339_2063108_0while_lstm_cell_339_2063110_0*
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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2063023?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_339/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_339/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_339/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_339/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_339_2063106while_lstm_cell_339_2063106_0"<
while_lstm_cell_339_2063108while_lstm_cell_339_2063108_0"<
while_lstm_cell_339_2063110while_lstm_cell_339_2063110_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_339/StatefulPartitionedCall+while/lstm_cell_339/StatefulPartitionedCall: 
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
?K
?
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067397
inputs_0>
,lstm_cell_341_matmul_readvariableop_resource:2(@
.lstm_cell_341_matmul_1_readvariableop_resource:
(;
-lstm_cell_341_biasadd_readvariableop_resource:(
identity??$lstm_cell_341/BiasAdd/ReadVariableOp?#lstm_cell_341/MatMul/ReadVariableOp?%lstm_cell_341/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_341/MatMul/ReadVariableOpReadVariableOp,lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_341/MatMulMatMulstrided_slice_2:output:0+lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_341/MatMul_1MatMulzeros:output:0-lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_341/addAddV2lstm_cell_341/MatMul:product:0 lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_341/BiasAddBiasAddlstm_cell_341/add:z:0,lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_341/splitSplit&lstm_cell_341/split/split_dim:output:0lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_341/SigmoidSigmoidlstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_341/Sigmoid_1Sigmoidlstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_341/mulMullstm_cell_341/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_341/ReluRelulstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_341/mul_1Mullstm_cell_341/Sigmoid:y:0 lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_341/add_1AddV2lstm_cell_341/mul:z:0lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_341/Sigmoid_2Sigmoidlstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_341/Relu_1Relulstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_341/mul_2Mullstm_cell_341/Sigmoid_2:y:0"lstm_cell_341/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_341_matmul_readvariableop_resource.lstm_cell_341_matmul_1_readvariableop_resource-lstm_cell_341_biasadd_readvariableop_resource*
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
while_body_2067313*
condR
while_cond_2067312*K
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
NoOpNoOp%^lstm_cell_341/BiasAdd/ReadVariableOp$^lstm_cell_341/MatMul/ReadVariableOp&^lstm_cell_341/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_341/BiasAdd/ReadVariableOp$lstm_cell_341/BiasAdd/ReadVariableOp2J
#lstm_cell_341/MatMul/ReadVariableOp#lstm_cell_341/MatMul/ReadVariableOp2N
%lstm_cell_341/MatMul_1/ReadVariableOp%lstm_cell_341/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_2064334

inputs#
lstm_102_2064010:	?#
lstm_102_2064012:	d?
lstm_102_2064014:	?#
lstm_103_2064160:	d?#
lstm_103_2064162:	2?
lstm_103_2064164:	?"
lstm_104_2064310:2("
lstm_104_2064312:
(
lstm_104_2064314:("
dense_34_2064328:

dense_34_2064330:
identity?? dense_34/StatefulPartitionedCall? lstm_102/StatefulPartitionedCall? lstm_103/StatefulPartitionedCall? lstm_104/StatefulPartitionedCall?
 lstm_102/StatefulPartitionedCallStatefulPartitionedCallinputslstm_102_2064010lstm_102_2064012lstm_102_2064014*
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2064009?
 lstm_103/StatefulPartitionedCallStatefulPartitionedCall)lstm_102/StatefulPartitionedCall:output:0lstm_103_2064160lstm_103_2064162lstm_103_2064164*
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2064159?
 lstm_104/StatefulPartitionedCallStatefulPartitionedCall)lstm_103/StatefulPartitionedCall:output:0lstm_104_2064310lstm_104_2064312lstm_104_2064314*
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2064309?
 dense_34/StatefulPartitionedCallStatefulPartitionedCall)lstm_104/StatefulPartitionedCall:output:0dense_34_2064328dense_34_2064330*
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
E__inference_dense_34_layer_call_and_return_conditional_losses_2064327x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_34/StatefulPartitionedCall!^lstm_102/StatefulPartitionedCall!^lstm_103/StatefulPartitionedCall!^lstm_104/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 lstm_102/StatefulPartitionedCall lstm_102/StatefulPartitionedCall2D
 lstm_103/StatefulPartitionedCall lstm_103/StatefulPartitionedCall2D
 lstm_104/StatefulPartitionedCall lstm_104/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_103_layer_call_and_return_conditional_losses_2063501

inputs(
lstm_cell_340_2063419:	d?(
lstm_cell_340_2063421:	2?$
lstm_cell_340_2063423:	?
identity??%lstm_cell_340/StatefulPartitionedCall?while;
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
%lstm_cell_340/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_340_2063419lstm_cell_340_2063421lstm_cell_340_2063423*
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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2063373n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_340_2063419lstm_cell_340_2063421lstm_cell_340_2063423*
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
while_body_2063432*
condR
while_cond_2063431*K
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
NoOpNoOp&^lstm_cell_340/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_340/StatefulPartitionedCall%lstm_cell_340/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2067943

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

?
/__inference_sequential_34_layer_call_fn_2064975
lstm_102_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_2064923o
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
_user_specified_namelstm_102_input
?8
?
while_body_2064441
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_341_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_341_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_341_matmul_readvariableop_resource:2(F
4while_lstm_cell_341_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_341_biasadd_readvariableop_resource:(??*while/lstm_cell_341/BiasAdd/ReadVariableOp?)while/lstm_cell_341/MatMul/ReadVariableOp?+while/lstm_cell_341/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_341/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_341/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_341/addAddV2$while/lstm_cell_341/MatMul:product:0&while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_341/BiasAddBiasAddwhile/lstm_cell_341/add:z:02while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_341/splitSplit,while/lstm_cell_341/split/split_dim:output:0$while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_341/SigmoidSigmoid"while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_341/Sigmoid_1Sigmoid"while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mulMul!while/lstm_cell_341/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_341/ReluRelu"while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mul_1Mulwhile/lstm_cell_341/Sigmoid:y:0&while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/add_1AddV2while/lstm_cell_341/mul:z:0while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_341/Sigmoid_2Sigmoid"while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_341/Relu_1Reluwhile/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mul_2Mul!while/lstm_cell_341/Sigmoid_2:y:0(while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_341/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_341/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_341/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_341/BiasAdd/ReadVariableOp*^while/lstm_cell_341/MatMul/ReadVariableOp,^while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_341_biasadd_readvariableop_resource5while_lstm_cell_341_biasadd_readvariableop_resource_0"n
4while_lstm_cell_341_matmul_1_readvariableop_resource6while_lstm_cell_341_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_341_matmul_readvariableop_resource4while_lstm_cell_341_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_341/BiasAdd/ReadVariableOp*while/lstm_cell_341/BiasAdd/ReadVariableOp2V
)while/lstm_cell_341/MatMul/ReadVariableOp)while/lstm_cell_341/MatMul/ReadVariableOp2Z
+while/lstm_cell_341/MatMul_1/ReadVariableOp+while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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
??
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065551

inputsH
5lstm_102_lstm_cell_339_matmul_readvariableop_resource:	?J
7lstm_102_lstm_cell_339_matmul_1_readvariableop_resource:	d?E
6lstm_102_lstm_cell_339_biasadd_readvariableop_resource:	?H
5lstm_103_lstm_cell_340_matmul_readvariableop_resource:	d?J
7lstm_103_lstm_cell_340_matmul_1_readvariableop_resource:	2?E
6lstm_103_lstm_cell_340_biasadd_readvariableop_resource:	?G
5lstm_104_lstm_cell_341_matmul_readvariableop_resource:2(I
7lstm_104_lstm_cell_341_matmul_1_readvariableop_resource:
(D
6lstm_104_lstm_cell_341_biasadd_readvariableop_resource:(9
'dense_34_matmul_readvariableop_resource:
6
(dense_34_biasadd_readvariableop_resource:
identity??dense_34/BiasAdd/ReadVariableOp?dense_34/MatMul/ReadVariableOp?-lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp?,lstm_102/lstm_cell_339/MatMul/ReadVariableOp?.lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp?lstm_102/while?-lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp?,lstm_103/lstm_cell_340/MatMul/ReadVariableOp?.lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp?lstm_103/while?-lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp?,lstm_104/lstm_cell_341/MatMul/ReadVariableOp?.lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp?lstm_104/whileD
lstm_102/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_102/strided_sliceStridedSlicelstm_102/Shape:output:0%lstm_102/strided_slice/stack:output:0'lstm_102/strided_slice/stack_1:output:0'lstm_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_102/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_102/zeros/packedPacklstm_102/strided_slice:output:0 lstm_102/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_102/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_102/zerosFilllstm_102/zeros/packed:output:0lstm_102/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_102/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_102/zeros_1/packedPacklstm_102/strided_slice:output:0"lstm_102/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_102/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_102/zeros_1Fill lstm_102/zeros_1/packed:output:0lstm_102/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_102/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_102/transpose	Transposeinputs lstm_102/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_102/Shape_1Shapelstm_102/transpose:y:0*
T0*
_output_shapes
:h
lstm_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_102/strided_slice_1StridedSlicelstm_102/Shape_1:output:0'lstm_102/strided_slice_1/stack:output:0)lstm_102/strided_slice_1/stack_1:output:0)lstm_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_102/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_102/TensorArrayV2TensorListReserve-lstm_102/TensorArrayV2/element_shape:output:0!lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_102/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_102/transpose:y:0Glstm_102/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_102/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_102/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_102/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_102/strided_slice_2StridedSlicelstm_102/transpose:y:0'lstm_102/strided_slice_2/stack:output:0)lstm_102/strided_slice_2/stack_1:output:0)lstm_102/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_102/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp5lstm_102_lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_102/lstm_cell_339/MatMulMatMul!lstm_102/strided_slice_2:output:04lstm_102/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_102/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp7lstm_102_lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_102/lstm_cell_339/MatMul_1MatMullstm_102/zeros:output:06lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_102/lstm_cell_339/addAddV2'lstm_102/lstm_cell_339/MatMul:product:0)lstm_102/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_102/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp6lstm_102_lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_102/lstm_cell_339/BiasAddBiasAddlstm_102/lstm_cell_339/add:z:05lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_102/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_102/lstm_cell_339/splitSplit/lstm_102/lstm_cell_339/split/split_dim:output:0'lstm_102/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_102/lstm_cell_339/SigmoidSigmoid%lstm_102/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_102/lstm_cell_339/Sigmoid_1Sigmoid%lstm_102/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_102/lstm_cell_339/mulMul$lstm_102/lstm_cell_339/Sigmoid_1:y:0lstm_102/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_102/lstm_cell_339/ReluRelu%lstm_102/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_102/lstm_cell_339/mul_1Mul"lstm_102/lstm_cell_339/Sigmoid:y:0)lstm_102/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_102/lstm_cell_339/add_1AddV2lstm_102/lstm_cell_339/mul:z:0 lstm_102/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_102/lstm_cell_339/Sigmoid_2Sigmoid%lstm_102/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_102/lstm_cell_339/Relu_1Relu lstm_102/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_102/lstm_cell_339/mul_2Mul$lstm_102/lstm_cell_339/Sigmoid_2:y:0+lstm_102/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_102/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_102/TensorArrayV2_1TensorListReserve/lstm_102/TensorArrayV2_1/element_shape:output:0!lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_102/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_102/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_102/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_102/whileWhile$lstm_102/while/loop_counter:output:0*lstm_102/while/maximum_iterations:output:0lstm_102/time:output:0!lstm_102/TensorArrayV2_1:handle:0lstm_102/zeros:output:0lstm_102/zeros_1:output:0!lstm_102/strided_slice_1:output:0@lstm_102/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_102_lstm_cell_339_matmul_readvariableop_resource7lstm_102_lstm_cell_339_matmul_1_readvariableop_resource6lstm_102_lstm_cell_339_biasadd_readvariableop_resource*
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
lstm_102_while_body_2065183*'
condR
lstm_102_while_cond_2065182*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_102/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_102/TensorArrayV2Stack/TensorListStackTensorListStacklstm_102/while:output:3Blstm_102/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_102/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_102/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_102/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_102/strided_slice_3StridedSlice4lstm_102/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_102/strided_slice_3/stack:output:0)lstm_102/strided_slice_3/stack_1:output:0)lstm_102/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_102/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_102/transpose_1	Transpose4lstm_102/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_102/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_102/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_103/ShapeShapelstm_102/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_103/strided_sliceStridedSlicelstm_103/Shape:output:0%lstm_103/strided_slice/stack:output:0'lstm_103/strided_slice/stack_1:output:0'lstm_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_103/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_103/zeros/packedPacklstm_103/strided_slice:output:0 lstm_103/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_103/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_103/zerosFilllstm_103/zeros/packed:output:0lstm_103/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_103/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_103/zeros_1/packedPacklstm_103/strided_slice:output:0"lstm_103/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_103/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_103/zeros_1Fill lstm_103/zeros_1/packed:output:0lstm_103/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_103/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_103/transpose	Transposelstm_102/transpose_1:y:0 lstm_103/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_103/Shape_1Shapelstm_103/transpose:y:0*
T0*
_output_shapes
:h
lstm_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_103/strided_slice_1StridedSlicelstm_103/Shape_1:output:0'lstm_103/strided_slice_1/stack:output:0)lstm_103/strided_slice_1/stack_1:output:0)lstm_103/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_103/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_103/TensorArrayV2TensorListReserve-lstm_103/TensorArrayV2/element_shape:output:0!lstm_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_103/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_103/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_103/transpose:y:0Glstm_103/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_103/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_103/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_103/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_103/strided_slice_2StridedSlicelstm_103/transpose:y:0'lstm_103/strided_slice_2/stack:output:0)lstm_103/strided_slice_2/stack_1:output:0)lstm_103/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_103/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp5lstm_103_lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_103/lstm_cell_340/MatMulMatMul!lstm_103/strided_slice_2:output:04lstm_103/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_103/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp7lstm_103_lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_103/lstm_cell_340/MatMul_1MatMullstm_103/zeros:output:06lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_103/lstm_cell_340/addAddV2'lstm_103/lstm_cell_340/MatMul:product:0)lstm_103/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_103/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp6lstm_103_lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_103/lstm_cell_340/BiasAddBiasAddlstm_103/lstm_cell_340/add:z:05lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_103/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_103/lstm_cell_340/splitSplit/lstm_103/lstm_cell_340/split/split_dim:output:0'lstm_103/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_103/lstm_cell_340/SigmoidSigmoid%lstm_103/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_103/lstm_cell_340/Sigmoid_1Sigmoid%lstm_103/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_103/lstm_cell_340/mulMul$lstm_103/lstm_cell_340/Sigmoid_1:y:0lstm_103/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_103/lstm_cell_340/ReluRelu%lstm_103/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_103/lstm_cell_340/mul_1Mul"lstm_103/lstm_cell_340/Sigmoid:y:0)lstm_103/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_103/lstm_cell_340/add_1AddV2lstm_103/lstm_cell_340/mul:z:0 lstm_103/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_103/lstm_cell_340/Sigmoid_2Sigmoid%lstm_103/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_103/lstm_cell_340/Relu_1Relu lstm_103/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_103/lstm_cell_340/mul_2Mul$lstm_103/lstm_cell_340/Sigmoid_2:y:0+lstm_103/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_103/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_103/TensorArrayV2_1TensorListReserve/lstm_103/TensorArrayV2_1/element_shape:output:0!lstm_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_103/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_103/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_103/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_103/whileWhile$lstm_103/while/loop_counter:output:0*lstm_103/while/maximum_iterations:output:0lstm_103/time:output:0!lstm_103/TensorArrayV2_1:handle:0lstm_103/zeros:output:0lstm_103/zeros_1:output:0!lstm_103/strided_slice_1:output:0@lstm_103/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_103_lstm_cell_340_matmul_readvariableop_resource7lstm_103_lstm_cell_340_matmul_1_readvariableop_resource6lstm_103_lstm_cell_340_biasadd_readvariableop_resource*
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
lstm_103_while_body_2065322*'
condR
lstm_103_while_cond_2065321*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_103/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_103/TensorArrayV2Stack/TensorListStackTensorListStacklstm_103/while:output:3Blstm_103/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_103/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_103/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_103/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_103/strided_slice_3StridedSlice4lstm_103/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_103/strided_slice_3/stack:output:0)lstm_103/strided_slice_3/stack_1:output:0)lstm_103/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_103/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_103/transpose_1	Transpose4lstm_103/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_103/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_103/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_104/ShapeShapelstm_103/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_104/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_104/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_104/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_104/strided_sliceStridedSlicelstm_104/Shape:output:0%lstm_104/strided_slice/stack:output:0'lstm_104/strided_slice/stack_1:output:0'lstm_104/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_104/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_104/zeros/packedPacklstm_104/strided_slice:output:0 lstm_104/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_104/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_104/zerosFilllstm_104/zeros/packed:output:0lstm_104/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_104/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_104/zeros_1/packedPacklstm_104/strided_slice:output:0"lstm_104/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_104/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_104/zeros_1Fill lstm_104/zeros_1/packed:output:0lstm_104/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_104/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_104/transpose	Transposelstm_103/transpose_1:y:0 lstm_104/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_104/Shape_1Shapelstm_104/transpose:y:0*
T0*
_output_shapes
:h
lstm_104/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_104/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_104/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_104/strided_slice_1StridedSlicelstm_104/Shape_1:output:0'lstm_104/strided_slice_1/stack:output:0)lstm_104/strided_slice_1/stack_1:output:0)lstm_104/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_104/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_104/TensorArrayV2TensorListReserve-lstm_104/TensorArrayV2/element_shape:output:0!lstm_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_104/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_104/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_104/transpose:y:0Glstm_104/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_104/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_104/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_104/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_104/strided_slice_2StridedSlicelstm_104/transpose:y:0'lstm_104/strided_slice_2/stack:output:0)lstm_104/strided_slice_2/stack_1:output:0)lstm_104/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_104/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp5lstm_104_lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_104/lstm_cell_341/MatMulMatMul!lstm_104/strided_slice_2:output:04lstm_104/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_104/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp7lstm_104_lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_104/lstm_cell_341/MatMul_1MatMullstm_104/zeros:output:06lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_104/lstm_cell_341/addAddV2'lstm_104/lstm_cell_341/MatMul:product:0)lstm_104/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_104/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp6lstm_104_lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_104/lstm_cell_341/BiasAddBiasAddlstm_104/lstm_cell_341/add:z:05lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_104/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_104/lstm_cell_341/splitSplit/lstm_104/lstm_cell_341/split/split_dim:output:0'lstm_104/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_104/lstm_cell_341/SigmoidSigmoid%lstm_104/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_104/lstm_cell_341/Sigmoid_1Sigmoid%lstm_104/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_104/lstm_cell_341/mulMul$lstm_104/lstm_cell_341/Sigmoid_1:y:0lstm_104/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_104/lstm_cell_341/ReluRelu%lstm_104/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_104/lstm_cell_341/mul_1Mul"lstm_104/lstm_cell_341/Sigmoid:y:0)lstm_104/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_104/lstm_cell_341/add_1AddV2lstm_104/lstm_cell_341/mul:z:0 lstm_104/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_104/lstm_cell_341/Sigmoid_2Sigmoid%lstm_104/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_104/lstm_cell_341/Relu_1Relu lstm_104/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_104/lstm_cell_341/mul_2Mul$lstm_104/lstm_cell_341/Sigmoid_2:y:0+lstm_104/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_104/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_104/TensorArrayV2_1TensorListReserve/lstm_104/TensorArrayV2_1/element_shape:output:0!lstm_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_104/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_104/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_104/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_104/whileWhile$lstm_104/while/loop_counter:output:0*lstm_104/while/maximum_iterations:output:0lstm_104/time:output:0!lstm_104/TensorArrayV2_1:handle:0lstm_104/zeros:output:0lstm_104/zeros_1:output:0!lstm_104/strided_slice_1:output:0@lstm_104/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_104_lstm_cell_341_matmul_readvariableop_resource7lstm_104_lstm_cell_341_matmul_1_readvariableop_resource6lstm_104_lstm_cell_341_biasadd_readvariableop_resource*
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
lstm_104_while_body_2065461*'
condR
lstm_104_while_cond_2065460*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_104/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_104/TensorArrayV2Stack/TensorListStackTensorListStacklstm_104/while:output:3Blstm_104/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_104/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_104/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_104/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_104/strided_slice_3StridedSlice4lstm_104/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_104/strided_slice_3/stack:output:0)lstm_104/strided_slice_3/stack_1:output:0)lstm_104/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_104/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_104/transpose_1	Transpose4lstm_104/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_104/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_104/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_34/MatMulMatMul!lstm_104/strided_slice_3:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_34/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp.^lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp-^lstm_102/lstm_cell_339/MatMul/ReadVariableOp/^lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp^lstm_102/while.^lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp-^lstm_103/lstm_cell_340/MatMul/ReadVariableOp/^lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp^lstm_103/while.^lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp-^lstm_104/lstm_cell_341/MatMul/ReadVariableOp/^lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp^lstm_104/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2^
-lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp-lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp2\
,lstm_102/lstm_cell_339/MatMul/ReadVariableOp,lstm_102/lstm_cell_339/MatMul/ReadVariableOp2`
.lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp.lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp2 
lstm_102/whilelstm_102/while2^
-lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp-lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp2\
,lstm_103/lstm_cell_340/MatMul/ReadVariableOp,lstm_103/lstm_cell_340/MatMul/ReadVariableOp2`
.lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp.lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp2 
lstm_103/whilelstm_103/while2^
-lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp-lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp2\
,lstm_104/lstm_cell_341/MatMul/ReadVariableOp,lstm_104/lstm_cell_341/MatMul/ReadVariableOp2`
.lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp.lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp2 
lstm_104/whilelstm_104/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_103_layer_call_fn_2066638

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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2064690s
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
?
?
*__inference_lstm_104_layer_call_fn_2067243

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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2064309o
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
?
?
*__inference_lstm_103_layer_call_fn_2066616
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2063501|
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
while_body_2063591
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_341_2063615_0:2(/
while_lstm_cell_341_2063617_0:
(+
while_lstm_cell_341_2063619_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_341_2063615:2(-
while_lstm_cell_341_2063617:
()
while_lstm_cell_341_2063619:(??+while/lstm_cell_341/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_341/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_341_2063615_0while_lstm_cell_341_2063617_0while_lstm_cell_341_2063619_0*
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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2063577?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_341/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_341/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_341/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_341/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_341_2063615while_lstm_cell_341_2063615_0"<
while_lstm_cell_341_2063617while_lstm_cell_341_2063617_0"<
while_lstm_cell_341_2063619while_lstm_cell_341_2063619_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_341/StatefulPartitionedCall+while/lstm_cell_341/StatefulPartitionedCall: 
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
*__inference_lstm_102_layer_call_fn_2065989
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2062960|
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
?#
?
while_body_2062891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_339_2062915_0:	?0
while_lstm_cell_339_2062917_0:	d?,
while_lstm_cell_339_2062919_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_339_2062915:	?.
while_lstm_cell_339_2062917:	d?*
while_lstm_cell_339_2062919:	???+while/lstm_cell_339/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_339/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_339_2062915_0while_lstm_cell_339_2062917_0while_lstm_cell_339_2062919_0*
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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2062877?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_339/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_339/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_339/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_339/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_339_2062915while_lstm_cell_339_2062915_0"<
while_lstm_cell_339_2062917while_lstm_cell_339_2062917_0"<
while_lstm_cell_339_2062919while_lstm_cell_339_2062919_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_339/StatefulPartitionedCall+while/lstm_cell_339/StatefulPartitionedCall: 
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
while_body_2063241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_340_2063265_0:	d?0
while_lstm_cell_340_2063267_0:	2?,
while_lstm_cell_340_2063269_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_340_2063265:	d?.
while_lstm_cell_340_2063267:	2?*
while_lstm_cell_340_2063269:	???+while/lstm_cell_340/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_340/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_340_2063265_0while_lstm_cell_340_2063267_0while_lstm_cell_340_2063269_0*
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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2063227?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_340/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_340/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_340/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_340/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_340_2063265while_lstm_cell_340_2063265_0"<
while_lstm_cell_340_2063267while_lstm_cell_340_2063267_0"<
while_lstm_cell_340_2063269while_lstm_cell_340_2063269_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_340/StatefulPartitionedCall+while/lstm_cell_340/StatefulPartitionedCall: 
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
/__inference_sequential_34_layer_call_fn_2065124

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
J__inference_sequential_34_layer_call_and_return_conditional_losses_2064923o
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
?	
?
E__inference_dense_34_layer_call_and_return_conditional_losses_2067845

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
?
/__inference_lstm_cell_340_layer_call_fn_2067960

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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2063227o
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
?8
?
while_body_2066224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_339_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_339_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_339_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_339_matmul_readvariableop_resource:	?G
4while_lstm_cell_339_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_339_biasadd_readvariableop_resource:	???*while/lstm_cell_339/BiasAdd/ReadVariableOp?)while/lstm_cell_339/MatMul/ReadVariableOp?+while/lstm_cell_339/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_339/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_339/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_339/addAddV2$while/lstm_cell_339/MatMul:product:0&while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_339/BiasAddBiasAddwhile/lstm_cell_339/add:z:02while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_339/splitSplit,while/lstm_cell_339/split/split_dim:output:0$while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_339/SigmoidSigmoid"while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_339/Sigmoid_1Sigmoid"while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mulMul!while/lstm_cell_339/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_339/ReluRelu"while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mul_1Mulwhile/lstm_cell_339/Sigmoid:y:0&while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/add_1AddV2while/lstm_cell_339/mul:z:0while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_339/Sigmoid_2Sigmoid"while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_339/Relu_1Reluwhile/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mul_2Mul!while/lstm_cell_339/Sigmoid_2:y:0(while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_339/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_339/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_339/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_339/BiasAdd/ReadVariableOp*^while/lstm_cell_339/MatMul/ReadVariableOp,^while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_339_biasadd_readvariableop_resource5while_lstm_cell_339_biasadd_readvariableop_resource_0"n
4while_lstm_cell_339_matmul_1_readvariableop_resource6while_lstm_cell_339_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_339_matmul_readvariableop_resource4while_lstm_cell_339_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_339/BiasAdd/ReadVariableOp*while/lstm_cell_339/BiasAdd/ReadVariableOp2V
)while/lstm_cell_339/MatMul/ReadVariableOp)while/lstm_cell_339/MatMul/ReadVariableOp2Z
+while/lstm_cell_339/MatMul_1/ReadVariableOp+while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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
while_body_2067742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_341_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_341_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_341_matmul_readvariableop_resource:2(F
4while_lstm_cell_341_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_341_biasadd_readvariableop_resource:(??*while/lstm_cell_341/BiasAdd/ReadVariableOp?)while/lstm_cell_341/MatMul/ReadVariableOp?+while/lstm_cell_341/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_341/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_341/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_341/addAddV2$while/lstm_cell_341/MatMul:product:0&while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_341/BiasAddBiasAddwhile/lstm_cell_341/add:z:02while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_341/splitSplit,while/lstm_cell_341/split/split_dim:output:0$while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_341/SigmoidSigmoid"while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_341/Sigmoid_1Sigmoid"while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mulMul!while/lstm_cell_341/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_341/ReluRelu"while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mul_1Mulwhile/lstm_cell_341/Sigmoid:y:0&while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/add_1AddV2while/lstm_cell_341/mul:z:0while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_341/Sigmoid_2Sigmoid"while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_341/Relu_1Reluwhile/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mul_2Mul!while/lstm_cell_341/Sigmoid_2:y:0(while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_341/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_341/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_341/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_341/BiasAdd/ReadVariableOp*^while/lstm_cell_341/MatMul/ReadVariableOp,^while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_341_biasadd_readvariableop_resource5while_lstm_cell_341_biasadd_readvariableop_resource_0"n
4while_lstm_cell_341_matmul_1_readvariableop_resource6while_lstm_cell_341_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_341_matmul_readvariableop_resource4while_lstm_cell_341_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_341/BiasAdd/ReadVariableOp*while/lstm_cell_341/BiasAdd/ReadVariableOp2V
)while/lstm_cell_341/MatMul/ReadVariableOp)while/lstm_cell_341/MatMul/ReadVariableOp2Z
+while/lstm_cell_341/MatMul_1/ReadVariableOp+while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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
/__inference_lstm_cell_340_layer_call_fn_2067977

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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2063373o
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
while_cond_2066509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2066509___redundant_placeholder05
1while_while_cond_2066509___redundant_placeholder15
1while_while_cond_2066509___redundant_placeholder25
1while_while_cond_2066509___redundant_placeholder3
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
??
?
"__inference__wrapped_model_2062810
lstm_102_inputV
Csequential_34_lstm_102_lstm_cell_339_matmul_readvariableop_resource:	?X
Esequential_34_lstm_102_lstm_cell_339_matmul_1_readvariableop_resource:	d?S
Dsequential_34_lstm_102_lstm_cell_339_biasadd_readvariableop_resource:	?V
Csequential_34_lstm_103_lstm_cell_340_matmul_readvariableop_resource:	d?X
Esequential_34_lstm_103_lstm_cell_340_matmul_1_readvariableop_resource:	2?S
Dsequential_34_lstm_103_lstm_cell_340_biasadd_readvariableop_resource:	?U
Csequential_34_lstm_104_lstm_cell_341_matmul_readvariableop_resource:2(W
Esequential_34_lstm_104_lstm_cell_341_matmul_1_readvariableop_resource:
(R
Dsequential_34_lstm_104_lstm_cell_341_biasadd_readvariableop_resource:(G
5sequential_34_dense_34_matmul_readvariableop_resource:
D
6sequential_34_dense_34_biasadd_readvariableop_resource:
identity??-sequential_34/dense_34/BiasAdd/ReadVariableOp?,sequential_34/dense_34/MatMul/ReadVariableOp?;sequential_34/lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp?:sequential_34/lstm_102/lstm_cell_339/MatMul/ReadVariableOp?<sequential_34/lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp?sequential_34/lstm_102/while?;sequential_34/lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp?:sequential_34/lstm_103/lstm_cell_340/MatMul/ReadVariableOp?<sequential_34/lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp?sequential_34/lstm_103/while?;sequential_34/lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp?:sequential_34/lstm_104/lstm_cell_341/MatMul/ReadVariableOp?<sequential_34/lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp?sequential_34/lstm_104/whileZ
sequential_34/lstm_102/ShapeShapelstm_102_input*
T0*
_output_shapes
:t
*sequential_34/lstm_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_34/lstm_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_34/lstm_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_34/lstm_102/strided_sliceStridedSlice%sequential_34/lstm_102/Shape:output:03sequential_34/lstm_102/strided_slice/stack:output:05sequential_34/lstm_102/strided_slice/stack_1:output:05sequential_34/lstm_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_34/lstm_102/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_34/lstm_102/zeros/packedPack-sequential_34/lstm_102/strided_slice:output:0.sequential_34/lstm_102/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_34/lstm_102/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_34/lstm_102/zerosFill,sequential_34/lstm_102/zeros/packed:output:0+sequential_34/lstm_102/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_34/lstm_102/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_34/lstm_102/zeros_1/packedPack-sequential_34/lstm_102/strided_slice:output:00sequential_34/lstm_102/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_34/lstm_102/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_34/lstm_102/zeros_1Fill.sequential_34/lstm_102/zeros_1/packed:output:0-sequential_34/lstm_102/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_34/lstm_102/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_34/lstm_102/transpose	Transposelstm_102_input.sequential_34/lstm_102/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_34/lstm_102/Shape_1Shape$sequential_34/lstm_102/transpose:y:0*
T0*
_output_shapes
:v
,sequential_34/lstm_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_34/lstm_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_34/lstm_102/strided_slice_1StridedSlice'sequential_34/lstm_102/Shape_1:output:05sequential_34/lstm_102/strided_slice_1/stack:output:07sequential_34/lstm_102/strided_slice_1/stack_1:output:07sequential_34/lstm_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_34/lstm_102/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_34/lstm_102/TensorArrayV2TensorListReserve;sequential_34/lstm_102/TensorArrayV2/element_shape:output:0/sequential_34/lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_34/lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_34/lstm_102/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_34/lstm_102/transpose:y:0Usequential_34/lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_34/lstm_102/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_102/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_34/lstm_102/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_34/lstm_102/strided_slice_2StridedSlice$sequential_34/lstm_102/transpose:y:05sequential_34/lstm_102/strided_slice_2/stack:output:07sequential_34/lstm_102/strided_slice_2/stack_1:output:07sequential_34/lstm_102/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_34/lstm_102/lstm_cell_339/MatMul/ReadVariableOpReadVariableOpCsequential_34_lstm_102_lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_34/lstm_102/lstm_cell_339/MatMulMatMul/sequential_34/lstm_102/strided_slice_2:output:0Bsequential_34/lstm_102/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_34/lstm_102/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOpEsequential_34_lstm_102_lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_34/lstm_102/lstm_cell_339/MatMul_1MatMul%sequential_34/lstm_102/zeros:output:0Dsequential_34/lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_34/lstm_102/lstm_cell_339/addAddV25sequential_34/lstm_102/lstm_cell_339/MatMul:product:07sequential_34/lstm_102/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_34/lstm_102/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOpDsequential_34_lstm_102_lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_34/lstm_102/lstm_cell_339/BiasAddBiasAdd,sequential_34/lstm_102/lstm_cell_339/add:z:0Csequential_34/lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_34/lstm_102/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_34/lstm_102/lstm_cell_339/splitSplit=sequential_34/lstm_102/lstm_cell_339/split/split_dim:output:05sequential_34/lstm_102/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_34/lstm_102/lstm_cell_339/SigmoidSigmoid3sequential_34/lstm_102/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_34/lstm_102/lstm_cell_339/Sigmoid_1Sigmoid3sequential_34/lstm_102/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_34/lstm_102/lstm_cell_339/mulMul2sequential_34/lstm_102/lstm_cell_339/Sigmoid_1:y:0'sequential_34/lstm_102/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_34/lstm_102/lstm_cell_339/ReluRelu3sequential_34/lstm_102/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_34/lstm_102/lstm_cell_339/mul_1Mul0sequential_34/lstm_102/lstm_cell_339/Sigmoid:y:07sequential_34/lstm_102/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_34/lstm_102/lstm_cell_339/add_1AddV2,sequential_34/lstm_102/lstm_cell_339/mul:z:0.sequential_34/lstm_102/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_34/lstm_102/lstm_cell_339/Sigmoid_2Sigmoid3sequential_34/lstm_102/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_34/lstm_102/lstm_cell_339/Relu_1Relu.sequential_34/lstm_102/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_34/lstm_102/lstm_cell_339/mul_2Mul2sequential_34/lstm_102/lstm_cell_339/Sigmoid_2:y:09sequential_34/lstm_102/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_34/lstm_102/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_34/lstm_102/TensorArrayV2_1TensorListReserve=sequential_34/lstm_102/TensorArrayV2_1/element_shape:output:0/sequential_34/lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_34/lstm_102/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_34/lstm_102/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_34/lstm_102/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_34/lstm_102/whileWhile2sequential_34/lstm_102/while/loop_counter:output:08sequential_34/lstm_102/while/maximum_iterations:output:0$sequential_34/lstm_102/time:output:0/sequential_34/lstm_102/TensorArrayV2_1:handle:0%sequential_34/lstm_102/zeros:output:0'sequential_34/lstm_102/zeros_1:output:0/sequential_34/lstm_102/strided_slice_1:output:0Nsequential_34/lstm_102/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_34_lstm_102_lstm_cell_339_matmul_readvariableop_resourceEsequential_34_lstm_102_lstm_cell_339_matmul_1_readvariableop_resourceDsequential_34_lstm_102_lstm_cell_339_biasadd_readvariableop_resource*
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
)sequential_34_lstm_102_while_body_2062442*5
cond-R+
)sequential_34_lstm_102_while_cond_2062441*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_34/lstm_102/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_34/lstm_102/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_34/lstm_102/while:output:3Psequential_34/lstm_102/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_34/lstm_102/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_34/lstm_102/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_102/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_34/lstm_102/strided_slice_3StridedSliceBsequential_34/lstm_102/TensorArrayV2Stack/TensorListStack:tensor:05sequential_34/lstm_102/strided_slice_3/stack:output:07sequential_34/lstm_102/strided_slice_3/stack_1:output:07sequential_34/lstm_102/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_34/lstm_102/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_34/lstm_102/transpose_1	TransposeBsequential_34/lstm_102/TensorArrayV2Stack/TensorListStack:tensor:00sequential_34/lstm_102/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_34/lstm_102/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_34/lstm_103/ShapeShape&sequential_34/lstm_102/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_34/lstm_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_34/lstm_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_34/lstm_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_34/lstm_103/strided_sliceStridedSlice%sequential_34/lstm_103/Shape:output:03sequential_34/lstm_103/strided_slice/stack:output:05sequential_34/lstm_103/strided_slice/stack_1:output:05sequential_34/lstm_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_34/lstm_103/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_34/lstm_103/zeros/packedPack-sequential_34/lstm_103/strided_slice:output:0.sequential_34/lstm_103/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_34/lstm_103/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_34/lstm_103/zerosFill,sequential_34/lstm_103/zeros/packed:output:0+sequential_34/lstm_103/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_34/lstm_103/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_34/lstm_103/zeros_1/packedPack-sequential_34/lstm_103/strided_slice:output:00sequential_34/lstm_103/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_34/lstm_103/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_34/lstm_103/zeros_1Fill.sequential_34/lstm_103/zeros_1/packed:output:0-sequential_34/lstm_103/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_34/lstm_103/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_34/lstm_103/transpose	Transpose&sequential_34/lstm_102/transpose_1:y:0.sequential_34/lstm_103/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_34/lstm_103/Shape_1Shape$sequential_34/lstm_103/transpose:y:0*
T0*
_output_shapes
:v
,sequential_34/lstm_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_34/lstm_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_34/lstm_103/strided_slice_1StridedSlice'sequential_34/lstm_103/Shape_1:output:05sequential_34/lstm_103/strided_slice_1/stack:output:07sequential_34/lstm_103/strided_slice_1/stack_1:output:07sequential_34/lstm_103/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_34/lstm_103/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_34/lstm_103/TensorArrayV2TensorListReserve;sequential_34/lstm_103/TensorArrayV2/element_shape:output:0/sequential_34/lstm_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_34/lstm_103/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_34/lstm_103/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_34/lstm_103/transpose:y:0Usequential_34/lstm_103/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_34/lstm_103/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_103/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_34/lstm_103/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_34/lstm_103/strided_slice_2StridedSlice$sequential_34/lstm_103/transpose:y:05sequential_34/lstm_103/strided_slice_2/stack:output:07sequential_34/lstm_103/strided_slice_2/stack_1:output:07sequential_34/lstm_103/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_34/lstm_103/lstm_cell_340/MatMul/ReadVariableOpReadVariableOpCsequential_34_lstm_103_lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_34/lstm_103/lstm_cell_340/MatMulMatMul/sequential_34/lstm_103/strided_slice_2:output:0Bsequential_34/lstm_103/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_34/lstm_103/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOpEsequential_34_lstm_103_lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_34/lstm_103/lstm_cell_340/MatMul_1MatMul%sequential_34/lstm_103/zeros:output:0Dsequential_34/lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_34/lstm_103/lstm_cell_340/addAddV25sequential_34/lstm_103/lstm_cell_340/MatMul:product:07sequential_34/lstm_103/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_34/lstm_103/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOpDsequential_34_lstm_103_lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_34/lstm_103/lstm_cell_340/BiasAddBiasAdd,sequential_34/lstm_103/lstm_cell_340/add:z:0Csequential_34/lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_34/lstm_103/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_34/lstm_103/lstm_cell_340/splitSplit=sequential_34/lstm_103/lstm_cell_340/split/split_dim:output:05sequential_34/lstm_103/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_34/lstm_103/lstm_cell_340/SigmoidSigmoid3sequential_34/lstm_103/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_34/lstm_103/lstm_cell_340/Sigmoid_1Sigmoid3sequential_34/lstm_103/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_34/lstm_103/lstm_cell_340/mulMul2sequential_34/lstm_103/lstm_cell_340/Sigmoid_1:y:0'sequential_34/lstm_103/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_34/lstm_103/lstm_cell_340/ReluRelu3sequential_34/lstm_103/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_34/lstm_103/lstm_cell_340/mul_1Mul0sequential_34/lstm_103/lstm_cell_340/Sigmoid:y:07sequential_34/lstm_103/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_34/lstm_103/lstm_cell_340/add_1AddV2,sequential_34/lstm_103/lstm_cell_340/mul:z:0.sequential_34/lstm_103/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_34/lstm_103/lstm_cell_340/Sigmoid_2Sigmoid3sequential_34/lstm_103/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_34/lstm_103/lstm_cell_340/Relu_1Relu.sequential_34/lstm_103/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_34/lstm_103/lstm_cell_340/mul_2Mul2sequential_34/lstm_103/lstm_cell_340/Sigmoid_2:y:09sequential_34/lstm_103/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_34/lstm_103/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_34/lstm_103/TensorArrayV2_1TensorListReserve=sequential_34/lstm_103/TensorArrayV2_1/element_shape:output:0/sequential_34/lstm_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_34/lstm_103/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_34/lstm_103/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_34/lstm_103/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_34/lstm_103/whileWhile2sequential_34/lstm_103/while/loop_counter:output:08sequential_34/lstm_103/while/maximum_iterations:output:0$sequential_34/lstm_103/time:output:0/sequential_34/lstm_103/TensorArrayV2_1:handle:0%sequential_34/lstm_103/zeros:output:0'sequential_34/lstm_103/zeros_1:output:0/sequential_34/lstm_103/strided_slice_1:output:0Nsequential_34/lstm_103/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_34_lstm_103_lstm_cell_340_matmul_readvariableop_resourceEsequential_34_lstm_103_lstm_cell_340_matmul_1_readvariableop_resourceDsequential_34_lstm_103_lstm_cell_340_biasadd_readvariableop_resource*
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
)sequential_34_lstm_103_while_body_2062581*5
cond-R+
)sequential_34_lstm_103_while_cond_2062580*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_34/lstm_103/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_34/lstm_103/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_34/lstm_103/while:output:3Psequential_34/lstm_103/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_34/lstm_103/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_34/lstm_103/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_103/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_34/lstm_103/strided_slice_3StridedSliceBsequential_34/lstm_103/TensorArrayV2Stack/TensorListStack:tensor:05sequential_34/lstm_103/strided_slice_3/stack:output:07sequential_34/lstm_103/strided_slice_3/stack_1:output:07sequential_34/lstm_103/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_34/lstm_103/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_34/lstm_103/transpose_1	TransposeBsequential_34/lstm_103/TensorArrayV2Stack/TensorListStack:tensor:00sequential_34/lstm_103/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_34/lstm_103/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_34/lstm_104/ShapeShape&sequential_34/lstm_103/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_34/lstm_104/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_34/lstm_104/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_34/lstm_104/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_34/lstm_104/strided_sliceStridedSlice%sequential_34/lstm_104/Shape:output:03sequential_34/lstm_104/strided_slice/stack:output:05sequential_34/lstm_104/strided_slice/stack_1:output:05sequential_34/lstm_104/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_34/lstm_104/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_34/lstm_104/zeros/packedPack-sequential_34/lstm_104/strided_slice:output:0.sequential_34/lstm_104/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_34/lstm_104/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_34/lstm_104/zerosFill,sequential_34/lstm_104/zeros/packed:output:0+sequential_34/lstm_104/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_34/lstm_104/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_34/lstm_104/zeros_1/packedPack-sequential_34/lstm_104/strided_slice:output:00sequential_34/lstm_104/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_34/lstm_104/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_34/lstm_104/zeros_1Fill.sequential_34/lstm_104/zeros_1/packed:output:0-sequential_34/lstm_104/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_34/lstm_104/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_34/lstm_104/transpose	Transpose&sequential_34/lstm_103/transpose_1:y:0.sequential_34/lstm_104/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_34/lstm_104/Shape_1Shape$sequential_34/lstm_104/transpose:y:0*
T0*
_output_shapes
:v
,sequential_34/lstm_104/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_104/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_34/lstm_104/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_34/lstm_104/strided_slice_1StridedSlice'sequential_34/lstm_104/Shape_1:output:05sequential_34/lstm_104/strided_slice_1/stack:output:07sequential_34/lstm_104/strided_slice_1/stack_1:output:07sequential_34/lstm_104/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_34/lstm_104/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_34/lstm_104/TensorArrayV2TensorListReserve;sequential_34/lstm_104/TensorArrayV2/element_shape:output:0/sequential_34/lstm_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_34/lstm_104/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_34/lstm_104/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_34/lstm_104/transpose:y:0Usequential_34/lstm_104/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_34/lstm_104/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_104/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_34/lstm_104/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_34/lstm_104/strided_slice_2StridedSlice$sequential_34/lstm_104/transpose:y:05sequential_34/lstm_104/strided_slice_2/stack:output:07sequential_34/lstm_104/strided_slice_2/stack_1:output:07sequential_34/lstm_104/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_34/lstm_104/lstm_cell_341/MatMul/ReadVariableOpReadVariableOpCsequential_34_lstm_104_lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_34/lstm_104/lstm_cell_341/MatMulMatMul/sequential_34/lstm_104/strided_slice_2:output:0Bsequential_34/lstm_104/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_34/lstm_104/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOpEsequential_34_lstm_104_lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_34/lstm_104/lstm_cell_341/MatMul_1MatMul%sequential_34/lstm_104/zeros:output:0Dsequential_34/lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_34/lstm_104/lstm_cell_341/addAddV25sequential_34/lstm_104/lstm_cell_341/MatMul:product:07sequential_34/lstm_104/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_34/lstm_104/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOpDsequential_34_lstm_104_lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_34/lstm_104/lstm_cell_341/BiasAddBiasAdd,sequential_34/lstm_104/lstm_cell_341/add:z:0Csequential_34/lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_34/lstm_104/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_34/lstm_104/lstm_cell_341/splitSplit=sequential_34/lstm_104/lstm_cell_341/split/split_dim:output:05sequential_34/lstm_104/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_34/lstm_104/lstm_cell_341/SigmoidSigmoid3sequential_34/lstm_104/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_34/lstm_104/lstm_cell_341/Sigmoid_1Sigmoid3sequential_34/lstm_104/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_34/lstm_104/lstm_cell_341/mulMul2sequential_34/lstm_104/lstm_cell_341/Sigmoid_1:y:0'sequential_34/lstm_104/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_34/lstm_104/lstm_cell_341/ReluRelu3sequential_34/lstm_104/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_34/lstm_104/lstm_cell_341/mul_1Mul0sequential_34/lstm_104/lstm_cell_341/Sigmoid:y:07sequential_34/lstm_104/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_34/lstm_104/lstm_cell_341/add_1AddV2,sequential_34/lstm_104/lstm_cell_341/mul:z:0.sequential_34/lstm_104/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_34/lstm_104/lstm_cell_341/Sigmoid_2Sigmoid3sequential_34/lstm_104/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_34/lstm_104/lstm_cell_341/Relu_1Relu.sequential_34/lstm_104/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_34/lstm_104/lstm_cell_341/mul_2Mul2sequential_34/lstm_104/lstm_cell_341/Sigmoid_2:y:09sequential_34/lstm_104/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_34/lstm_104/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_34/lstm_104/TensorArrayV2_1TensorListReserve=sequential_34/lstm_104/TensorArrayV2_1/element_shape:output:0/sequential_34/lstm_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_34/lstm_104/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_34/lstm_104/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_34/lstm_104/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_34/lstm_104/whileWhile2sequential_34/lstm_104/while/loop_counter:output:08sequential_34/lstm_104/while/maximum_iterations:output:0$sequential_34/lstm_104/time:output:0/sequential_34/lstm_104/TensorArrayV2_1:handle:0%sequential_34/lstm_104/zeros:output:0'sequential_34/lstm_104/zeros_1:output:0/sequential_34/lstm_104/strided_slice_1:output:0Nsequential_34/lstm_104/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_34_lstm_104_lstm_cell_341_matmul_readvariableop_resourceEsequential_34_lstm_104_lstm_cell_341_matmul_1_readvariableop_resourceDsequential_34_lstm_104_lstm_cell_341_biasadd_readvariableop_resource*
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
)sequential_34_lstm_104_while_body_2062720*5
cond-R+
)sequential_34_lstm_104_while_cond_2062719*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_34/lstm_104/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_34/lstm_104/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_34/lstm_104/while:output:3Psequential_34/lstm_104/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_34/lstm_104/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_34/lstm_104/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_34/lstm_104/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_34/lstm_104/strided_slice_3StridedSliceBsequential_34/lstm_104/TensorArrayV2Stack/TensorListStack:tensor:05sequential_34/lstm_104/strided_slice_3/stack:output:07sequential_34/lstm_104/strided_slice_3/stack_1:output:07sequential_34/lstm_104/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_34/lstm_104/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_34/lstm_104/transpose_1	TransposeBsequential_34/lstm_104/TensorArrayV2Stack/TensorListStack:tensor:00sequential_34/lstm_104/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_34/lstm_104/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_34/dense_34/MatMul/ReadVariableOpReadVariableOp5sequential_34_dense_34_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_34/dense_34/MatMulMatMul/sequential_34/lstm_104/strided_slice_3:output:04sequential_34/dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_34/dense_34/BiasAdd/ReadVariableOpReadVariableOp6sequential_34_dense_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_34/dense_34/BiasAddBiasAdd'sequential_34/dense_34/MatMul:product:05sequential_34/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_34/dense_34/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_34/dense_34/BiasAdd/ReadVariableOp-^sequential_34/dense_34/MatMul/ReadVariableOp<^sequential_34/lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp;^sequential_34/lstm_102/lstm_cell_339/MatMul/ReadVariableOp=^sequential_34/lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp^sequential_34/lstm_102/while<^sequential_34/lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp;^sequential_34/lstm_103/lstm_cell_340/MatMul/ReadVariableOp=^sequential_34/lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp^sequential_34/lstm_103/while<^sequential_34/lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp;^sequential_34/lstm_104/lstm_cell_341/MatMul/ReadVariableOp=^sequential_34/lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp^sequential_34/lstm_104/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_34/dense_34/BiasAdd/ReadVariableOp-sequential_34/dense_34/BiasAdd/ReadVariableOp2\
,sequential_34/dense_34/MatMul/ReadVariableOp,sequential_34/dense_34/MatMul/ReadVariableOp2z
;sequential_34/lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp;sequential_34/lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp2x
:sequential_34/lstm_102/lstm_cell_339/MatMul/ReadVariableOp:sequential_34/lstm_102/lstm_cell_339/MatMul/ReadVariableOp2|
<sequential_34/lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp<sequential_34/lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp2<
sequential_34/lstm_102/whilesequential_34/lstm_102/while2z
;sequential_34/lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp;sequential_34/lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp2x
:sequential_34/lstm_103/lstm_cell_340/MatMul/ReadVariableOp:sequential_34/lstm_103/lstm_cell_340/MatMul/ReadVariableOp2|
<sequential_34/lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp<sequential_34/lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp2<
sequential_34/lstm_103/whilesequential_34/lstm_103/while2z
;sequential_34/lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp;sequential_34/lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp2x
:sequential_34/lstm_104/lstm_cell_341/MatMul/ReadVariableOp:sequential_34/lstm_104/lstm_cell_341/MatMul/ReadVariableOp2|
<sequential_34/lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp<sequential_34/lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp2<
sequential_34/lstm_104/whilesequential_34/lstm_104/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_102_input
?
?
while_cond_2066223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2066223___redundant_placeholder05
1while_while_cond_2066223___redundant_placeholder15
1while_while_cond_2066223___redundant_placeholder25
1while_while_cond_2066223___redundant_placeholder3
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

?
/__inference_sequential_34_layer_call_fn_2065097

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
J__inference_sequential_34_layer_call_and_return_conditional_losses_2064334o
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
?
?
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2062877

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
while_cond_2063240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2063240___redundant_placeholder05
1while_while_cond_2063240___redundant_placeholder15
1while_while_cond_2063240___redundant_placeholder25
1while_while_cond_2063240___redundant_placeholder3
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
?
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_2064923

inputs#
lstm_102_2064896:	?#
lstm_102_2064898:	d?
lstm_102_2064900:	?#
lstm_103_2064903:	d?#
lstm_103_2064905:	2?
lstm_103_2064907:	?"
lstm_104_2064910:2("
lstm_104_2064912:
(
lstm_104_2064914:("
dense_34_2064917:

dense_34_2064919:
identity?? dense_34/StatefulPartitionedCall? lstm_102/StatefulPartitionedCall? lstm_103/StatefulPartitionedCall? lstm_104/StatefulPartitionedCall?
 lstm_102/StatefulPartitionedCallStatefulPartitionedCallinputslstm_102_2064896lstm_102_2064898lstm_102_2064900*
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2064855?
 lstm_103/StatefulPartitionedCallStatefulPartitionedCall)lstm_102/StatefulPartitionedCall:output:0lstm_103_2064903lstm_103_2064905lstm_103_2064907*
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2064690?
 lstm_104/StatefulPartitionedCallStatefulPartitionedCall)lstm_103/StatefulPartitionedCall:output:0lstm_104_2064910lstm_104_2064912lstm_104_2064914*
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2064525?
 dense_34/StatefulPartitionedCallStatefulPartitionedCall)lstm_104/StatefulPartitionedCall:output:0dense_34_2064917dense_34_2064919*
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
E__inference_dense_34_layer_call_and_return_conditional_losses_2064327x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_34/StatefulPartitionedCall!^lstm_102/StatefulPartitionedCall!^lstm_103/StatefulPartitionedCall!^lstm_104/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 lstm_102/StatefulPartitionedCall lstm_102/StatefulPartitionedCall2D
 lstm_103/StatefulPartitionedCall lstm_103/StatefulPartitionedCall2D
 lstm_104/StatefulPartitionedCall lstm_104/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2063081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2063081___redundant_placeholder05
1while_while_cond_2063081___redundant_placeholder15
1while_while_cond_2063081___redundant_placeholder25
1while_while_cond_2063081___redundant_placeholder3
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
while_cond_2063781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2063781___redundant_placeholder05
1while_while_cond_2063781___redundant_placeholder15
1while_while_cond_2063781___redundant_placeholder25
1while_while_cond_2063781___redundant_placeholder3
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

lstm_104_while_body_2065461.
*lstm_104_while_lstm_104_while_loop_counter4
0lstm_104_while_lstm_104_while_maximum_iterations
lstm_104_while_placeholder 
lstm_104_while_placeholder_1 
lstm_104_while_placeholder_2 
lstm_104_while_placeholder_3-
)lstm_104_while_lstm_104_strided_slice_1_0i
elstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0:2(Q
?lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(L
>lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0:(
lstm_104_while_identity
lstm_104_while_identity_1
lstm_104_while_identity_2
lstm_104_while_identity_3
lstm_104_while_identity_4
lstm_104_while_identity_5+
'lstm_104_while_lstm_104_strided_slice_1g
clstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensorM
;lstm_104_while_lstm_cell_341_matmul_readvariableop_resource:2(O
=lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource:
(J
<lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource:(??3lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp?2lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp?4lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp?
@lstm_104/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_104/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensor_0lstm_104_while_placeholderIlstm_104/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_104/while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp=lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_104/while/lstm_cell_341/MatMulMatMul9lstm_104/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp?lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_104/while/lstm_cell_341/MatMul_1MatMullstm_104_while_placeholder_2<lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_104/while/lstm_cell_341/addAddV2-lstm_104/while/lstm_cell_341/MatMul:product:0/lstm_104/while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp>lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_104/while/lstm_cell_341/BiasAddBiasAdd$lstm_104/while/lstm_cell_341/add:z:0;lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_104/while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_104/while/lstm_cell_341/splitSplit5lstm_104/while/lstm_cell_341/split/split_dim:output:0-lstm_104/while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_104/while/lstm_cell_341/SigmoidSigmoid+lstm_104/while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_104/while/lstm_cell_341/Sigmoid_1Sigmoid+lstm_104/while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_104/while/lstm_cell_341/mulMul*lstm_104/while/lstm_cell_341/Sigmoid_1:y:0lstm_104_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_104/while/lstm_cell_341/ReluRelu+lstm_104/while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_104/while/lstm_cell_341/mul_1Mul(lstm_104/while/lstm_cell_341/Sigmoid:y:0/lstm_104/while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_104/while/lstm_cell_341/add_1AddV2$lstm_104/while/lstm_cell_341/mul:z:0&lstm_104/while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_104/while/lstm_cell_341/Sigmoid_2Sigmoid+lstm_104/while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_104/while/lstm_cell_341/Relu_1Relu&lstm_104/while/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_104/while/lstm_cell_341/mul_2Mul*lstm_104/while/lstm_cell_341/Sigmoid_2:y:01lstm_104/while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_104/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_104_while_placeholder_1lstm_104_while_placeholder&lstm_104/while/lstm_cell_341/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_104/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_104/while/addAddV2lstm_104_while_placeholderlstm_104/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_104/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_104/while/add_1AddV2*lstm_104_while_lstm_104_while_loop_counterlstm_104/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_104/while/IdentityIdentitylstm_104/while/add_1:z:0^lstm_104/while/NoOp*
T0*
_output_shapes
: ?
lstm_104/while/Identity_1Identity0lstm_104_while_lstm_104_while_maximum_iterations^lstm_104/while/NoOp*
T0*
_output_shapes
: t
lstm_104/while/Identity_2Identitylstm_104/while/add:z:0^lstm_104/while/NoOp*
T0*
_output_shapes
: ?
lstm_104/while/Identity_3IdentityClstm_104/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_104/while/NoOp*
T0*
_output_shapes
: ?
lstm_104/while/Identity_4Identity&lstm_104/while/lstm_cell_341/mul_2:z:0^lstm_104/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_104/while/Identity_5Identity&lstm_104/while/lstm_cell_341/add_1:z:0^lstm_104/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_104/while/NoOpNoOp4^lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp3^lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp5^lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_104_while_identity lstm_104/while/Identity:output:0"?
lstm_104_while_identity_1"lstm_104/while/Identity_1:output:0"?
lstm_104_while_identity_2"lstm_104/while/Identity_2:output:0"?
lstm_104_while_identity_3"lstm_104/while/Identity_3:output:0"?
lstm_104_while_identity_4"lstm_104/while/Identity_4:output:0"?
lstm_104_while_identity_5"lstm_104/while/Identity_5:output:0"T
'lstm_104_while_lstm_104_strided_slice_1)lstm_104_while_lstm_104_strided_slice_1_0"~
<lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource>lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0"?
=lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource?lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0"|
;lstm_104_while_lstm_cell_341_matmul_readvariableop_resource=lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0"?
clstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensorelstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp3lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp2h
2lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp2lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp2l
4lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp4lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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
/__inference_lstm_cell_339_layer_call_fn_2067862

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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2062877o
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
??
?
#__inference__traced_restore_2068412
file_prefix2
 assignvariableop_dense_34_kernel:
.
 assignvariableop_1_dense_34_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_102_lstm_cell_102_kernel:	?M
:assignvariableop_8_lstm_102_lstm_cell_102_recurrent_kernel:	d?=
.assignvariableop_9_lstm_102_lstm_cell_102_bias:	?D
1assignvariableop_10_lstm_103_lstm_cell_103_kernel:	d?N
;assignvariableop_11_lstm_103_lstm_cell_103_recurrent_kernel:	2?>
/assignvariableop_12_lstm_103_lstm_cell_103_bias:	?C
1assignvariableop_13_lstm_104_lstm_cell_104_kernel:2(M
;assignvariableop_14_lstm_104_lstm_cell_104_recurrent_kernel:
(=
/assignvariableop_15_lstm_104_lstm_cell_104_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_34_kernel_m:
6
(assignvariableop_19_adam_dense_34_bias_m:K
8assignvariableop_20_adam_lstm_102_lstm_cell_102_kernel_m:	?U
Bassignvariableop_21_adam_lstm_102_lstm_cell_102_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_102_lstm_cell_102_bias_m:	?K
8assignvariableop_23_adam_lstm_103_lstm_cell_103_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_103_lstm_cell_103_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_103_lstm_cell_103_bias_m:	?J
8assignvariableop_26_adam_lstm_104_lstm_cell_104_kernel_m:2(T
Bassignvariableop_27_adam_lstm_104_lstm_cell_104_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_104_lstm_cell_104_bias_m:(<
*assignvariableop_29_adam_dense_34_kernel_v:
6
(assignvariableop_30_adam_dense_34_bias_v:K
8assignvariableop_31_adam_lstm_102_lstm_cell_102_kernel_v:	?U
Bassignvariableop_32_adam_lstm_102_lstm_cell_102_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_102_lstm_cell_102_bias_v:	?K
8assignvariableop_34_adam_lstm_103_lstm_cell_103_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_103_lstm_cell_103_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_103_lstm_cell_103_bias_v:	?J
8assignvariableop_37_adam_lstm_104_lstm_cell_104_kernel_v:2(T
Bassignvariableop_38_adam_lstm_104_lstm_cell_104_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_104_lstm_cell_104_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_34_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_34_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_102_lstm_cell_102_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_102_lstm_cell_102_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_102_lstm_cell_102_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_103_lstm_cell_103_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_103_lstm_cell_103_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_103_lstm_cell_103_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_104_lstm_cell_104_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_104_lstm_cell_104_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_104_lstm_cell_104_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_34_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_34_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_102_lstm_cell_102_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_102_lstm_cell_102_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_102_lstm_cell_102_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_103_lstm_cell_103_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_103_lstm_cell_103_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_103_lstm_cell_103_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_104_lstm_cell_104_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_104_lstm_cell_104_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_104_lstm_cell_104_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_34_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_34_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_102_lstm_cell_102_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_102_lstm_cell_102_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_102_lstm_cell_102_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_103_lstm_cell_103_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_103_lstm_cell_103_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_103_lstm_cell_103_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_104_lstm_cell_104_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_104_lstm_cell_104_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_104_lstm_cell_104_bias_vIdentity_39:output:0"/device:CPU:0*
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
?J
?
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066451

inputs?
,lstm_cell_339_matmul_readvariableop_resource:	?A
.lstm_cell_339_matmul_1_readvariableop_resource:	d?<
-lstm_cell_339_biasadd_readvariableop_resource:	?
identity??$lstm_cell_339/BiasAdd/ReadVariableOp?#lstm_cell_339/MatMul/ReadVariableOp?%lstm_cell_339/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_339/MatMul/ReadVariableOpReadVariableOp,lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_339/MatMulMatMulstrided_slice_2:output:0+lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_339/MatMul_1MatMulzeros:output:0-lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_339/addAddV2lstm_cell_339/MatMul:product:0 lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_339/BiasAddBiasAddlstm_cell_339/add:z:0,lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_339/splitSplit&lstm_cell_339/split/split_dim:output:0lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_339/SigmoidSigmoidlstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_339/Sigmoid_1Sigmoidlstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_339/mulMullstm_cell_339/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_339/ReluRelulstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_339/mul_1Mullstm_cell_339/Sigmoid:y:0 lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_339/add_1AddV2lstm_cell_339/mul:z:0lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_339/Sigmoid_2Sigmoidlstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_339/Relu_1Relulstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_339/mul_2Mullstm_cell_339/Sigmoid_2:y:0"lstm_cell_339/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_339_matmul_readvariableop_resource.lstm_cell_339_matmul_1_readvariableop_resource-lstm_cell_339_biasadd_readvariableop_resource*
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
while_body_2066367*
condR
while_cond_2066366*K
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
NoOpNoOp%^lstm_cell_339/BiasAdd/ReadVariableOp$^lstm_cell_339/MatMul/ReadVariableOp&^lstm_cell_339/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_339/BiasAdd/ReadVariableOp$lstm_cell_339/BiasAdd/ReadVariableOp2J
#lstm_cell_339/MatMul/ReadVariableOp#lstm_cell_339/MatMul/ReadVariableOp2N
%lstm_cell_339/MatMul_1/ReadVariableOp%lstm_cell_339/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2063227

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
?
?
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2068107

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
?8
?
E__inference_lstm_104_layer_call_and_return_conditional_losses_2063851

inputs'
lstm_cell_341_2063769:2('
lstm_cell_341_2063771:
(#
lstm_cell_341_2063773:(
identity??%lstm_cell_341/StatefulPartitionedCall?while;
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
%lstm_cell_341/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_341_2063769lstm_cell_341_2063771lstm_cell_341_2063773*
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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2063723n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_341_2063769lstm_cell_341_2063771lstm_cell_341_2063773*
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
while_body_2063782*
condR
while_cond_2063781*K
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
NoOpNoOp&^lstm_cell_341/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_341/StatefulPartitionedCall%lstm_cell_341/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_102_layer_call_and_return_conditional_losses_2064009

inputs?
,lstm_cell_339_matmul_readvariableop_resource:	?A
.lstm_cell_339_matmul_1_readvariableop_resource:	d?<
-lstm_cell_339_biasadd_readvariableop_resource:	?
identity??$lstm_cell_339/BiasAdd/ReadVariableOp?#lstm_cell_339/MatMul/ReadVariableOp?%lstm_cell_339/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_339/MatMul/ReadVariableOpReadVariableOp,lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_339/MatMulMatMulstrided_slice_2:output:0+lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_339/MatMul_1MatMulzeros:output:0-lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_339/addAddV2lstm_cell_339/MatMul:product:0 lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_339/BiasAddBiasAddlstm_cell_339/add:z:0,lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_339/splitSplit&lstm_cell_339/split/split_dim:output:0lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_339/SigmoidSigmoidlstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_339/Sigmoid_1Sigmoidlstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_339/mulMullstm_cell_339/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_339/ReluRelulstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_339/mul_1Mullstm_cell_339/Sigmoid:y:0 lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_339/add_1AddV2lstm_cell_339/mul:z:0lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_339/Sigmoid_2Sigmoidlstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_339/Relu_1Relulstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_339/mul_2Mullstm_cell_339/Sigmoid_2:y:0"lstm_cell_339/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_339_matmul_readvariableop_resource.lstm_cell_339_matmul_1_readvariableop_resource-lstm_cell_339_biasadd_readvariableop_resource*
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
while_body_2063925*
condR
while_cond_2063924*K
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
NoOpNoOp%^lstm_cell_339/BiasAdd/ReadVariableOp$^lstm_cell_339/MatMul/ReadVariableOp&^lstm_cell_339/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_339/BiasAdd/ReadVariableOp$lstm_cell_339/BiasAdd/ReadVariableOp2J
#lstm_cell_339/MatMul/ReadVariableOp#lstm_cell_339/MatMul/ReadVariableOp2N
%lstm_cell_339/MatMul_1/ReadVariableOp%lstm_cell_339/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?S
?
)sequential_34_lstm_104_while_body_2062720J
Fsequential_34_lstm_104_while_sequential_34_lstm_104_while_loop_counterP
Lsequential_34_lstm_104_while_sequential_34_lstm_104_while_maximum_iterations,
(sequential_34_lstm_104_while_placeholder.
*sequential_34_lstm_104_while_placeholder_1.
*sequential_34_lstm_104_while_placeholder_2.
*sequential_34_lstm_104_while_placeholder_3I
Esequential_34_lstm_104_while_sequential_34_lstm_104_strided_slice_1_0?
?sequential_34_lstm_104_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_104_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_34_lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0:2(_
Msequential_34_lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(Z
Lsequential_34_lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0:()
%sequential_34_lstm_104_while_identity+
'sequential_34_lstm_104_while_identity_1+
'sequential_34_lstm_104_while_identity_2+
'sequential_34_lstm_104_while_identity_3+
'sequential_34_lstm_104_while_identity_4+
'sequential_34_lstm_104_while_identity_5G
Csequential_34_lstm_104_while_sequential_34_lstm_104_strided_slice_1?
sequential_34_lstm_104_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_104_tensorarrayunstack_tensorlistfromtensor[
Isequential_34_lstm_104_while_lstm_cell_341_matmul_readvariableop_resource:2(]
Ksequential_34_lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource:
(X
Jsequential_34_lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource:(??Asequential_34/lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp?@sequential_34/lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp?Bsequential_34/lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp?
Nsequential_34/lstm_104/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_34/lstm_104/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_34_lstm_104_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_104_tensorarrayunstack_tensorlistfromtensor_0(sequential_34_lstm_104_while_placeholderWsequential_34/lstm_104/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_34/lstm_104/while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOpKsequential_34_lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_34/lstm_104/while/lstm_cell_341/MatMulMatMulGsequential_34/lstm_104/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_34/lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_34/lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOpMsequential_34_lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_34/lstm_104/while/lstm_cell_341/MatMul_1MatMul*sequential_34_lstm_104_while_placeholder_2Jsequential_34/lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_34/lstm_104/while/lstm_cell_341/addAddV2;sequential_34/lstm_104/while/lstm_cell_341/MatMul:product:0=sequential_34/lstm_104/while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_34/lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOpLsequential_34_lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_34/lstm_104/while/lstm_cell_341/BiasAddBiasAdd2sequential_34/lstm_104/while/lstm_cell_341/add:z:0Isequential_34/lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_34/lstm_104/while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_34/lstm_104/while/lstm_cell_341/splitSplitCsequential_34/lstm_104/while/lstm_cell_341/split/split_dim:output:0;sequential_34/lstm_104/while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_34/lstm_104/while/lstm_cell_341/SigmoidSigmoid9sequential_34/lstm_104/while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_34/lstm_104/while/lstm_cell_341/Sigmoid_1Sigmoid9sequential_34/lstm_104/while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_34/lstm_104/while/lstm_cell_341/mulMul8sequential_34/lstm_104/while/lstm_cell_341/Sigmoid_1:y:0*sequential_34_lstm_104_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_34/lstm_104/while/lstm_cell_341/ReluRelu9sequential_34/lstm_104/while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_34/lstm_104/while/lstm_cell_341/mul_1Mul6sequential_34/lstm_104/while/lstm_cell_341/Sigmoid:y:0=sequential_34/lstm_104/while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_34/lstm_104/while/lstm_cell_341/add_1AddV22sequential_34/lstm_104/while/lstm_cell_341/mul:z:04sequential_34/lstm_104/while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_34/lstm_104/while/lstm_cell_341/Sigmoid_2Sigmoid9sequential_34/lstm_104/while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_34/lstm_104/while/lstm_cell_341/Relu_1Relu4sequential_34/lstm_104/while/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_34/lstm_104/while/lstm_cell_341/mul_2Mul8sequential_34/lstm_104/while/lstm_cell_341/Sigmoid_2:y:0?sequential_34/lstm_104/while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_34/lstm_104/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_34_lstm_104_while_placeholder_1(sequential_34_lstm_104_while_placeholder4sequential_34/lstm_104/while/lstm_cell_341/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_34/lstm_104/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_34/lstm_104/while/addAddV2(sequential_34_lstm_104_while_placeholder+sequential_34/lstm_104/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_34/lstm_104/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_34/lstm_104/while/add_1AddV2Fsequential_34_lstm_104_while_sequential_34_lstm_104_while_loop_counter-sequential_34/lstm_104/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_34/lstm_104/while/IdentityIdentity&sequential_34/lstm_104/while/add_1:z:0"^sequential_34/lstm_104/while/NoOp*
T0*
_output_shapes
: ?
'sequential_34/lstm_104/while/Identity_1IdentityLsequential_34_lstm_104_while_sequential_34_lstm_104_while_maximum_iterations"^sequential_34/lstm_104/while/NoOp*
T0*
_output_shapes
: ?
'sequential_34/lstm_104/while/Identity_2Identity$sequential_34/lstm_104/while/add:z:0"^sequential_34/lstm_104/while/NoOp*
T0*
_output_shapes
: ?
'sequential_34/lstm_104/while/Identity_3IdentityQsequential_34/lstm_104/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_34/lstm_104/while/NoOp*
T0*
_output_shapes
: ?
'sequential_34/lstm_104/while/Identity_4Identity4sequential_34/lstm_104/while/lstm_cell_341/mul_2:z:0"^sequential_34/lstm_104/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_34/lstm_104/while/Identity_5Identity4sequential_34/lstm_104/while/lstm_cell_341/add_1:z:0"^sequential_34/lstm_104/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_34/lstm_104/while/NoOpNoOpB^sequential_34/lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOpA^sequential_34/lstm_104/while/lstm_cell_341/MatMul/ReadVariableOpC^sequential_34/lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_34_lstm_104_while_identity.sequential_34/lstm_104/while/Identity:output:0"[
'sequential_34_lstm_104_while_identity_10sequential_34/lstm_104/while/Identity_1:output:0"[
'sequential_34_lstm_104_while_identity_20sequential_34/lstm_104/while/Identity_2:output:0"[
'sequential_34_lstm_104_while_identity_30sequential_34/lstm_104/while/Identity_3:output:0"[
'sequential_34_lstm_104_while_identity_40sequential_34/lstm_104/while/Identity_4:output:0"[
'sequential_34_lstm_104_while_identity_50sequential_34/lstm_104/while/Identity_5:output:0"?
Jsequential_34_lstm_104_while_lstm_cell_341_biasadd_readvariableop_resourceLsequential_34_lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0"?
Ksequential_34_lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resourceMsequential_34_lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0"?
Isequential_34_lstm_104_while_lstm_cell_341_matmul_readvariableop_resourceKsequential_34_lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0"?
Csequential_34_lstm_104_while_sequential_34_lstm_104_strided_slice_1Esequential_34_lstm_104_while_sequential_34_lstm_104_strided_slice_1_0"?
sequential_34_lstm_104_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_104_tensorarrayunstack_tensorlistfromtensor?sequential_34_lstm_104_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_104_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_34/lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOpAsequential_34/lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp2?
@sequential_34/lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp@sequential_34/lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp2?
Bsequential_34/lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOpBsequential_34/lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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

lstm_104_while_body_2065888.
*lstm_104_while_lstm_104_while_loop_counter4
0lstm_104_while_lstm_104_while_maximum_iterations
lstm_104_while_placeholder 
lstm_104_while_placeholder_1 
lstm_104_while_placeholder_2 
lstm_104_while_placeholder_3-
)lstm_104_while_lstm_104_strided_slice_1_0i
elstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0:2(Q
?lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(L
>lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0:(
lstm_104_while_identity
lstm_104_while_identity_1
lstm_104_while_identity_2
lstm_104_while_identity_3
lstm_104_while_identity_4
lstm_104_while_identity_5+
'lstm_104_while_lstm_104_strided_slice_1g
clstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensorM
;lstm_104_while_lstm_cell_341_matmul_readvariableop_resource:2(O
=lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource:
(J
<lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource:(??3lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp?2lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp?4lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp?
@lstm_104/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_104/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensor_0lstm_104_while_placeholderIlstm_104/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_104/while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp=lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_104/while/lstm_cell_341/MatMulMatMul9lstm_104/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp?lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_104/while/lstm_cell_341/MatMul_1MatMullstm_104_while_placeholder_2<lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_104/while/lstm_cell_341/addAddV2-lstm_104/while/lstm_cell_341/MatMul:product:0/lstm_104/while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp>lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_104/while/lstm_cell_341/BiasAddBiasAdd$lstm_104/while/lstm_cell_341/add:z:0;lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_104/while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_104/while/lstm_cell_341/splitSplit5lstm_104/while/lstm_cell_341/split/split_dim:output:0-lstm_104/while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_104/while/lstm_cell_341/SigmoidSigmoid+lstm_104/while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_104/while/lstm_cell_341/Sigmoid_1Sigmoid+lstm_104/while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_104/while/lstm_cell_341/mulMul*lstm_104/while/lstm_cell_341/Sigmoid_1:y:0lstm_104_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_104/while/lstm_cell_341/ReluRelu+lstm_104/while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_104/while/lstm_cell_341/mul_1Mul(lstm_104/while/lstm_cell_341/Sigmoid:y:0/lstm_104/while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_104/while/lstm_cell_341/add_1AddV2$lstm_104/while/lstm_cell_341/mul:z:0&lstm_104/while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_104/while/lstm_cell_341/Sigmoid_2Sigmoid+lstm_104/while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_104/while/lstm_cell_341/Relu_1Relu&lstm_104/while/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_104/while/lstm_cell_341/mul_2Mul*lstm_104/while/lstm_cell_341/Sigmoid_2:y:01lstm_104/while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_104/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_104_while_placeholder_1lstm_104_while_placeholder&lstm_104/while/lstm_cell_341/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_104/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_104/while/addAddV2lstm_104_while_placeholderlstm_104/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_104/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_104/while/add_1AddV2*lstm_104_while_lstm_104_while_loop_counterlstm_104/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_104/while/IdentityIdentitylstm_104/while/add_1:z:0^lstm_104/while/NoOp*
T0*
_output_shapes
: ?
lstm_104/while/Identity_1Identity0lstm_104_while_lstm_104_while_maximum_iterations^lstm_104/while/NoOp*
T0*
_output_shapes
: t
lstm_104/while/Identity_2Identitylstm_104/while/add:z:0^lstm_104/while/NoOp*
T0*
_output_shapes
: ?
lstm_104/while/Identity_3IdentityClstm_104/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_104/while/NoOp*
T0*
_output_shapes
: ?
lstm_104/while/Identity_4Identity&lstm_104/while/lstm_cell_341/mul_2:z:0^lstm_104/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_104/while/Identity_5Identity&lstm_104/while/lstm_cell_341/add_1:z:0^lstm_104/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_104/while/NoOpNoOp4^lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp3^lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp5^lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_104_while_identity lstm_104/while/Identity:output:0"?
lstm_104_while_identity_1"lstm_104/while/Identity_1:output:0"?
lstm_104_while_identity_2"lstm_104/while/Identity_2:output:0"?
lstm_104_while_identity_3"lstm_104/while/Identity_3:output:0"?
lstm_104_while_identity_4"lstm_104/while/Identity_4:output:0"?
lstm_104_while_identity_5"lstm_104/while/Identity_5:output:0"T
'lstm_104_while_lstm_104_strided_slice_1)lstm_104_while_lstm_104_strided_slice_1_0"~
<lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource>lstm_104_while_lstm_cell_341_biasadd_readvariableop_resource_0"?
=lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource?lstm_104_while_lstm_cell_341_matmul_1_readvariableop_resource_0"|
;lstm_104_while_lstm_cell_341_matmul_readvariableop_resource=lstm_104_while_lstm_cell_341_matmul_readvariableop_resource_0"?
clstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensorelstm_104_while_tensorarrayv2read_tensorlistgetitem_lstm_104_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp3lstm_104/while/lstm_cell_341/BiasAdd/ReadVariableOp2h
2lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp2lstm_104/while/lstm_cell_341/MatMul/ReadVariableOp2l
4lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp4lstm_104/while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2063151

inputs(
lstm_cell_339_2063069:	?(
lstm_cell_339_2063071:	d?$
lstm_cell_339_2063073:	?
identity??%lstm_cell_339/StatefulPartitionedCall?while;
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
%lstm_cell_339/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_339_2063069lstm_cell_339_2063071lstm_cell_339_2063073*
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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2063023n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_339_2063069lstm_cell_339_2063071lstm_cell_339_2063073*
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
while_body_2063082*
condR
while_cond_2063081*K
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
NoOpNoOp&^lstm_cell_339/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_339/StatefulPartitionedCall%lstm_cell_339/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_2067125
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2067125___redundant_placeholder05
1while_while_cond_2067125___redundant_placeholder15
1while_while_cond_2067125___redundant_placeholder25
1while_while_cond_2067125___redundant_placeholder3
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
while_cond_2062890
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2062890___redundant_placeholder05
1while_while_cond_2062890___redundant_placeholder15
1while_while_cond_2062890___redundant_placeholder25
1while_while_cond_2062890___redundant_placeholder3
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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2063023

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
?S
?
)sequential_34_lstm_102_while_body_2062442J
Fsequential_34_lstm_102_while_sequential_34_lstm_102_while_loop_counterP
Lsequential_34_lstm_102_while_sequential_34_lstm_102_while_maximum_iterations,
(sequential_34_lstm_102_while_placeholder.
*sequential_34_lstm_102_while_placeholder_1.
*sequential_34_lstm_102_while_placeholder_2.
*sequential_34_lstm_102_while_placeholder_3I
Esequential_34_lstm_102_while_sequential_34_lstm_102_strided_slice_1_0?
?sequential_34_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_102_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_34_lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0:	?`
Msequential_34_lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0:	d?[
Lsequential_34_lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0:	?)
%sequential_34_lstm_102_while_identity+
'sequential_34_lstm_102_while_identity_1+
'sequential_34_lstm_102_while_identity_2+
'sequential_34_lstm_102_while_identity_3+
'sequential_34_lstm_102_while_identity_4+
'sequential_34_lstm_102_while_identity_5G
Csequential_34_lstm_102_while_sequential_34_lstm_102_strided_slice_1?
sequential_34_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_102_tensorarrayunstack_tensorlistfromtensor\
Isequential_34_lstm_102_while_lstm_cell_339_matmul_readvariableop_resource:	?^
Ksequential_34_lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource:	d?Y
Jsequential_34_lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource:	???Asequential_34/lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp?@sequential_34/lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp?Bsequential_34/lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp?
Nsequential_34/lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_34/lstm_102/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_34_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_102_tensorarrayunstack_tensorlistfromtensor_0(sequential_34_lstm_102_while_placeholderWsequential_34/lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_34/lstm_102/while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOpKsequential_34_lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_34/lstm_102/while/lstm_cell_339/MatMulMatMulGsequential_34/lstm_102/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_34/lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_34/lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOpMsequential_34_lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_34/lstm_102/while/lstm_cell_339/MatMul_1MatMul*sequential_34_lstm_102_while_placeholder_2Jsequential_34/lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_34/lstm_102/while/lstm_cell_339/addAddV2;sequential_34/lstm_102/while/lstm_cell_339/MatMul:product:0=sequential_34/lstm_102/while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_34/lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOpLsequential_34_lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_34/lstm_102/while/lstm_cell_339/BiasAddBiasAdd2sequential_34/lstm_102/while/lstm_cell_339/add:z:0Isequential_34/lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_34/lstm_102/while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_34/lstm_102/while/lstm_cell_339/splitSplitCsequential_34/lstm_102/while/lstm_cell_339/split/split_dim:output:0;sequential_34/lstm_102/while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_34/lstm_102/while/lstm_cell_339/SigmoidSigmoid9sequential_34/lstm_102/while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_34/lstm_102/while/lstm_cell_339/Sigmoid_1Sigmoid9sequential_34/lstm_102/while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_34/lstm_102/while/lstm_cell_339/mulMul8sequential_34/lstm_102/while/lstm_cell_339/Sigmoid_1:y:0*sequential_34_lstm_102_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_34/lstm_102/while/lstm_cell_339/ReluRelu9sequential_34/lstm_102/while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_34/lstm_102/while/lstm_cell_339/mul_1Mul6sequential_34/lstm_102/while/lstm_cell_339/Sigmoid:y:0=sequential_34/lstm_102/while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_34/lstm_102/while/lstm_cell_339/add_1AddV22sequential_34/lstm_102/while/lstm_cell_339/mul:z:04sequential_34/lstm_102/while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_34/lstm_102/while/lstm_cell_339/Sigmoid_2Sigmoid9sequential_34/lstm_102/while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_34/lstm_102/while/lstm_cell_339/Relu_1Relu4sequential_34/lstm_102/while/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_34/lstm_102/while/lstm_cell_339/mul_2Mul8sequential_34/lstm_102/while/lstm_cell_339/Sigmoid_2:y:0?sequential_34/lstm_102/while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_34/lstm_102/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_34_lstm_102_while_placeholder_1(sequential_34_lstm_102_while_placeholder4sequential_34/lstm_102/while/lstm_cell_339/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_34/lstm_102/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_34/lstm_102/while/addAddV2(sequential_34_lstm_102_while_placeholder+sequential_34/lstm_102/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_34/lstm_102/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_34/lstm_102/while/add_1AddV2Fsequential_34_lstm_102_while_sequential_34_lstm_102_while_loop_counter-sequential_34/lstm_102/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_34/lstm_102/while/IdentityIdentity&sequential_34/lstm_102/while/add_1:z:0"^sequential_34/lstm_102/while/NoOp*
T0*
_output_shapes
: ?
'sequential_34/lstm_102/while/Identity_1IdentityLsequential_34_lstm_102_while_sequential_34_lstm_102_while_maximum_iterations"^sequential_34/lstm_102/while/NoOp*
T0*
_output_shapes
: ?
'sequential_34/lstm_102/while/Identity_2Identity$sequential_34/lstm_102/while/add:z:0"^sequential_34/lstm_102/while/NoOp*
T0*
_output_shapes
: ?
'sequential_34/lstm_102/while/Identity_3IdentityQsequential_34/lstm_102/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_34/lstm_102/while/NoOp*
T0*
_output_shapes
: ?
'sequential_34/lstm_102/while/Identity_4Identity4sequential_34/lstm_102/while/lstm_cell_339/mul_2:z:0"^sequential_34/lstm_102/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_34/lstm_102/while/Identity_5Identity4sequential_34/lstm_102/while/lstm_cell_339/add_1:z:0"^sequential_34/lstm_102/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_34/lstm_102/while/NoOpNoOpB^sequential_34/lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOpA^sequential_34/lstm_102/while/lstm_cell_339/MatMul/ReadVariableOpC^sequential_34/lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_34_lstm_102_while_identity.sequential_34/lstm_102/while/Identity:output:0"[
'sequential_34_lstm_102_while_identity_10sequential_34/lstm_102/while/Identity_1:output:0"[
'sequential_34_lstm_102_while_identity_20sequential_34/lstm_102/while/Identity_2:output:0"[
'sequential_34_lstm_102_while_identity_30sequential_34/lstm_102/while/Identity_3:output:0"[
'sequential_34_lstm_102_while_identity_40sequential_34/lstm_102/while/Identity_4:output:0"[
'sequential_34_lstm_102_while_identity_50sequential_34/lstm_102/while/Identity_5:output:0"?
Jsequential_34_lstm_102_while_lstm_cell_339_biasadd_readvariableop_resourceLsequential_34_lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0"?
Ksequential_34_lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resourceMsequential_34_lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0"?
Isequential_34_lstm_102_while_lstm_cell_339_matmul_readvariableop_resourceKsequential_34_lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0"?
Csequential_34_lstm_102_while_sequential_34_lstm_102_strided_slice_1Esequential_34_lstm_102_while_sequential_34_lstm_102_strided_slice_1_0"?
sequential_34_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_102_tensorarrayunstack_tensorlistfromtensor?sequential_34_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_102_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_34/lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOpAsequential_34/lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp2?
@sequential_34/lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp@sequential_34/lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp2?
Bsequential_34/lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOpBsequential_34/lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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
/__inference_lstm_cell_341_layer_call_fn_2068058

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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2063577o
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
?
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065035
lstm_102_input#
lstm_102_2065008:	?#
lstm_102_2065010:	d?
lstm_102_2065012:	?#
lstm_103_2065015:	d?#
lstm_103_2065017:	2?
lstm_103_2065019:	?"
lstm_104_2065022:2("
lstm_104_2065024:
(
lstm_104_2065026:("
dense_34_2065029:

dense_34_2065031:
identity?? dense_34/StatefulPartitionedCall? lstm_102/StatefulPartitionedCall? lstm_103/StatefulPartitionedCall? lstm_104/StatefulPartitionedCall?
 lstm_102/StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputlstm_102_2065008lstm_102_2065010lstm_102_2065012*
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2064855?
 lstm_103/StatefulPartitionedCallStatefulPartitionedCall)lstm_102/StatefulPartitionedCall:output:0lstm_103_2065015lstm_103_2065017lstm_103_2065019*
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2064690?
 lstm_104/StatefulPartitionedCallStatefulPartitionedCall)lstm_103/StatefulPartitionedCall:output:0lstm_104_2065022lstm_104_2065024lstm_104_2065026*
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2064525?
 dense_34/StatefulPartitionedCallStatefulPartitionedCall)lstm_104/StatefulPartitionedCall:output:0dense_34_2065029dense_34_2065031*
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
E__inference_dense_34_layer_call_and_return_conditional_losses_2064327x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_34/StatefulPartitionedCall!^lstm_102/StatefulPartitionedCall!^lstm_103/StatefulPartitionedCall!^lstm_104/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 lstm_102/StatefulPartitionedCall lstm_102/StatefulPartitionedCall2D
 lstm_103/StatefulPartitionedCall lstm_103/StatefulPartitionedCall2D
 lstm_104/StatefulPartitionedCall lstm_104/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_102_input
?8
?
E__inference_lstm_103_layer_call_and_return_conditional_losses_2063310

inputs(
lstm_cell_340_2063228:	d?(
lstm_cell_340_2063230:	2?$
lstm_cell_340_2063232:	?
identity??%lstm_cell_340/StatefulPartitionedCall?while;
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
%lstm_cell_340/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_340_2063228lstm_cell_340_2063230lstm_cell_340_2063232*
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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2063227n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_340_2063228lstm_cell_340_2063230lstm_cell_340_2063232*
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
while_body_2063241*
condR
while_cond_2063240*K
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
NoOpNoOp&^lstm_cell_340/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_340/StatefulPartitionedCall%lstm_cell_340/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_102_layer_call_fn_2066011

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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2064009s
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
?
*__inference_lstm_103_layer_call_fn_2066627

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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2064159s
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
?
?
while_cond_2064440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2064440___redundant_placeholder05
1while_while_cond_2064440___redundant_placeholder15
1while_while_cond_2064440___redundant_placeholder25
1while_while_cond_2064440___redundant_placeholder3
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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2063723

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
*__inference_lstm_103_layer_call_fn_2066605
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2063310|
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
?
?
*__inference_lstm_104_layer_call_fn_2067254

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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2064525o
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
?K
?
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067540
inputs_0>
,lstm_cell_341_matmul_readvariableop_resource:2(@
.lstm_cell_341_matmul_1_readvariableop_resource:
(;
-lstm_cell_341_biasadd_readvariableop_resource:(
identity??$lstm_cell_341/BiasAdd/ReadVariableOp?#lstm_cell_341/MatMul/ReadVariableOp?%lstm_cell_341/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_341/MatMul/ReadVariableOpReadVariableOp,lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_341/MatMulMatMulstrided_slice_2:output:0+lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_341/MatMul_1MatMulzeros:output:0-lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_341/addAddV2lstm_cell_341/MatMul:product:0 lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_341/BiasAddBiasAddlstm_cell_341/add:z:0,lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_341/splitSplit&lstm_cell_341/split/split_dim:output:0lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_341/SigmoidSigmoidlstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_341/Sigmoid_1Sigmoidlstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_341/mulMullstm_cell_341/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_341/ReluRelulstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_341/mul_1Mullstm_cell_341/Sigmoid:y:0 lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_341/add_1AddV2lstm_cell_341/mul:z:0lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_341/Sigmoid_2Sigmoidlstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_341/Relu_1Relulstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_341/mul_2Mullstm_cell_341/Sigmoid_2:y:0"lstm_cell_341/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_341_matmul_readvariableop_resource.lstm_cell_341_matmul_1_readvariableop_resource-lstm_cell_341_biasadd_readvariableop_resource*
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
while_body_2067456*
condR
while_cond_2067455*K
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
NoOpNoOp%^lstm_cell_341/BiasAdd/ReadVariableOp$^lstm_cell_341/MatMul/ReadVariableOp&^lstm_cell_341/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_341/BiasAdd/ReadVariableOp$lstm_cell_341/BiasAdd/ReadVariableOp2J
#lstm_cell_341/MatMul/ReadVariableOp#lstm_cell_341/MatMul/ReadVariableOp2N
%lstm_cell_341/MatMul_1/ReadVariableOp%lstm_cell_341/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_2064225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_341_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_341_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_341_matmul_readvariableop_resource:2(F
4while_lstm_cell_341_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_341_biasadd_readvariableop_resource:(??*while/lstm_cell_341/BiasAdd/ReadVariableOp?)while/lstm_cell_341/MatMul/ReadVariableOp?+while/lstm_cell_341/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_341/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_341/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_341/addAddV2$while/lstm_cell_341/MatMul:product:0&while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_341/BiasAddBiasAddwhile/lstm_cell_341/add:z:02while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_341/splitSplit,while/lstm_cell_341/split/split_dim:output:0$while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_341/SigmoidSigmoid"while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_341/Sigmoid_1Sigmoid"while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mulMul!while/lstm_cell_341/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_341/ReluRelu"while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mul_1Mulwhile/lstm_cell_341/Sigmoid:y:0&while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/add_1AddV2while/lstm_cell_341/mul:z:0while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_341/Sigmoid_2Sigmoid"while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_341/Relu_1Reluwhile/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mul_2Mul!while/lstm_cell_341/Sigmoid_2:y:0(while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_341/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_341/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_341/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_341/BiasAdd/ReadVariableOp*^while/lstm_cell_341/MatMul/ReadVariableOp,^while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_341_biasadd_readvariableop_resource5while_lstm_cell_341_biasadd_readvariableop_resource_0"n
4while_lstm_cell_341_matmul_1_readvariableop_resource6while_lstm_cell_341_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_341_matmul_readvariableop_resource4while_lstm_cell_341_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_341/BiasAdd/ReadVariableOp*while/lstm_cell_341/BiasAdd/ReadVariableOp2V
)while/lstm_cell_341/MatMul/ReadVariableOp)while/lstm_cell_341/MatMul/ReadVariableOp2Z
+while/lstm_cell_341/MatMul_1/ReadVariableOp+while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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
while_cond_2066982
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2066982___redundant_placeholder05
1while_while_cond_2066982___redundant_placeholder15
1while_while_cond_2066982___redundant_placeholder25
1while_while_cond_2066982___redundant_placeholder3
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
while_body_2067126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_340_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_340_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_340_matmul_readvariableop_resource:	d?G
4while_lstm_cell_340_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_340_biasadd_readvariableop_resource:	???*while/lstm_cell_340/BiasAdd/ReadVariableOp?)while/lstm_cell_340/MatMul/ReadVariableOp?+while/lstm_cell_340/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_340/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_340/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_340/addAddV2$while/lstm_cell_340/MatMul:product:0&while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_340/BiasAddBiasAddwhile/lstm_cell_340/add:z:02while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_340/splitSplit,while/lstm_cell_340/split/split_dim:output:0$while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_340/SigmoidSigmoid"while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_340/Sigmoid_1Sigmoid"while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mulMul!while/lstm_cell_340/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_340/ReluRelu"while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mul_1Mulwhile/lstm_cell_340/Sigmoid:y:0&while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/add_1AddV2while/lstm_cell_340/mul:z:0while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_340/Sigmoid_2Sigmoid"while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_340/Relu_1Reluwhile/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mul_2Mul!while/lstm_cell_340/Sigmoid_2:y:0(while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_340/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_340/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_340/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_340/BiasAdd/ReadVariableOp*^while/lstm_cell_340/MatMul/ReadVariableOp,^while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_340_biasadd_readvariableop_resource5while_lstm_cell_340_biasadd_readvariableop_resource_0"n
4while_lstm_cell_340_matmul_1_readvariableop_resource6while_lstm_cell_340_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_340_matmul_readvariableop_resource4while_lstm_cell_340_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_340/BiasAdd/ReadVariableOp*while/lstm_cell_340/BiasAdd/ReadVariableOp2V
)while/lstm_cell_340/MatMul/ReadVariableOp)while/lstm_cell_340/MatMul/ReadVariableOp2Z
+while/lstm_cell_340/MatMul_1/ReadVariableOp+while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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
while_cond_2067455
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2067455___redundant_placeholder05
1while_while_cond_2067455___redundant_placeholder15
1while_while_cond_2067455___redundant_placeholder25
1while_while_cond_2067455___redundant_placeholder3
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
?S
?
)sequential_34_lstm_103_while_body_2062581J
Fsequential_34_lstm_103_while_sequential_34_lstm_103_while_loop_counterP
Lsequential_34_lstm_103_while_sequential_34_lstm_103_while_maximum_iterations,
(sequential_34_lstm_103_while_placeholder.
*sequential_34_lstm_103_while_placeholder_1.
*sequential_34_lstm_103_while_placeholder_2.
*sequential_34_lstm_103_while_placeholder_3I
Esequential_34_lstm_103_while_sequential_34_lstm_103_strided_slice_1_0?
?sequential_34_lstm_103_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_103_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_34_lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0:	d?`
Msequential_34_lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2?[
Lsequential_34_lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0:	?)
%sequential_34_lstm_103_while_identity+
'sequential_34_lstm_103_while_identity_1+
'sequential_34_lstm_103_while_identity_2+
'sequential_34_lstm_103_while_identity_3+
'sequential_34_lstm_103_while_identity_4+
'sequential_34_lstm_103_while_identity_5G
Csequential_34_lstm_103_while_sequential_34_lstm_103_strided_slice_1?
sequential_34_lstm_103_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_103_tensorarrayunstack_tensorlistfromtensor\
Isequential_34_lstm_103_while_lstm_cell_340_matmul_readvariableop_resource:	d?^
Ksequential_34_lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource:	2?Y
Jsequential_34_lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource:	???Asequential_34/lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp?@sequential_34/lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp?Bsequential_34/lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp?
Nsequential_34/lstm_103/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_34/lstm_103/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_34_lstm_103_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_103_tensorarrayunstack_tensorlistfromtensor_0(sequential_34_lstm_103_while_placeholderWsequential_34/lstm_103/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_34/lstm_103/while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOpKsequential_34_lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_34/lstm_103/while/lstm_cell_340/MatMulMatMulGsequential_34/lstm_103/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_34/lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_34/lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOpMsequential_34_lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_34/lstm_103/while/lstm_cell_340/MatMul_1MatMul*sequential_34_lstm_103_while_placeholder_2Jsequential_34/lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_34/lstm_103/while/lstm_cell_340/addAddV2;sequential_34/lstm_103/while/lstm_cell_340/MatMul:product:0=sequential_34/lstm_103/while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_34/lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOpLsequential_34_lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_34/lstm_103/while/lstm_cell_340/BiasAddBiasAdd2sequential_34/lstm_103/while/lstm_cell_340/add:z:0Isequential_34/lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_34/lstm_103/while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_34/lstm_103/while/lstm_cell_340/splitSplitCsequential_34/lstm_103/while/lstm_cell_340/split/split_dim:output:0;sequential_34/lstm_103/while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_34/lstm_103/while/lstm_cell_340/SigmoidSigmoid9sequential_34/lstm_103/while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_34/lstm_103/while/lstm_cell_340/Sigmoid_1Sigmoid9sequential_34/lstm_103/while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_34/lstm_103/while/lstm_cell_340/mulMul8sequential_34/lstm_103/while/lstm_cell_340/Sigmoid_1:y:0*sequential_34_lstm_103_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_34/lstm_103/while/lstm_cell_340/ReluRelu9sequential_34/lstm_103/while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_34/lstm_103/while/lstm_cell_340/mul_1Mul6sequential_34/lstm_103/while/lstm_cell_340/Sigmoid:y:0=sequential_34/lstm_103/while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_34/lstm_103/while/lstm_cell_340/add_1AddV22sequential_34/lstm_103/while/lstm_cell_340/mul:z:04sequential_34/lstm_103/while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_34/lstm_103/while/lstm_cell_340/Sigmoid_2Sigmoid9sequential_34/lstm_103/while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_34/lstm_103/while/lstm_cell_340/Relu_1Relu4sequential_34/lstm_103/while/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_34/lstm_103/while/lstm_cell_340/mul_2Mul8sequential_34/lstm_103/while/lstm_cell_340/Sigmoid_2:y:0?sequential_34/lstm_103/while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_34/lstm_103/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_34_lstm_103_while_placeholder_1(sequential_34_lstm_103_while_placeholder4sequential_34/lstm_103/while/lstm_cell_340/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_34/lstm_103/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_34/lstm_103/while/addAddV2(sequential_34_lstm_103_while_placeholder+sequential_34/lstm_103/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_34/lstm_103/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_34/lstm_103/while/add_1AddV2Fsequential_34_lstm_103_while_sequential_34_lstm_103_while_loop_counter-sequential_34/lstm_103/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_34/lstm_103/while/IdentityIdentity&sequential_34/lstm_103/while/add_1:z:0"^sequential_34/lstm_103/while/NoOp*
T0*
_output_shapes
: ?
'sequential_34/lstm_103/while/Identity_1IdentityLsequential_34_lstm_103_while_sequential_34_lstm_103_while_maximum_iterations"^sequential_34/lstm_103/while/NoOp*
T0*
_output_shapes
: ?
'sequential_34/lstm_103/while/Identity_2Identity$sequential_34/lstm_103/while/add:z:0"^sequential_34/lstm_103/while/NoOp*
T0*
_output_shapes
: ?
'sequential_34/lstm_103/while/Identity_3IdentityQsequential_34/lstm_103/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_34/lstm_103/while/NoOp*
T0*
_output_shapes
: ?
'sequential_34/lstm_103/while/Identity_4Identity4sequential_34/lstm_103/while/lstm_cell_340/mul_2:z:0"^sequential_34/lstm_103/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_34/lstm_103/while/Identity_5Identity4sequential_34/lstm_103/while/lstm_cell_340/add_1:z:0"^sequential_34/lstm_103/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_34/lstm_103/while/NoOpNoOpB^sequential_34/lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOpA^sequential_34/lstm_103/while/lstm_cell_340/MatMul/ReadVariableOpC^sequential_34/lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_34_lstm_103_while_identity.sequential_34/lstm_103/while/Identity:output:0"[
'sequential_34_lstm_103_while_identity_10sequential_34/lstm_103/while/Identity_1:output:0"[
'sequential_34_lstm_103_while_identity_20sequential_34/lstm_103/while/Identity_2:output:0"[
'sequential_34_lstm_103_while_identity_30sequential_34/lstm_103/while/Identity_3:output:0"[
'sequential_34_lstm_103_while_identity_40sequential_34/lstm_103/while/Identity_4:output:0"[
'sequential_34_lstm_103_while_identity_50sequential_34/lstm_103/while/Identity_5:output:0"?
Jsequential_34_lstm_103_while_lstm_cell_340_biasadd_readvariableop_resourceLsequential_34_lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0"?
Ksequential_34_lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resourceMsequential_34_lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0"?
Isequential_34_lstm_103_while_lstm_cell_340_matmul_readvariableop_resourceKsequential_34_lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0"?
Csequential_34_lstm_103_while_sequential_34_lstm_103_strided_slice_1Esequential_34_lstm_103_while_sequential_34_lstm_103_strided_slice_1_0"?
sequential_34_lstm_103_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_103_tensorarrayunstack_tensorlistfromtensor?sequential_34_lstm_103_while_tensorarrayv2read_tensorlistgetitem_sequential_34_lstm_103_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_34/lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOpAsequential_34/lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp2?
@sequential_34/lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp@sequential_34/lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp2?
Bsequential_34/lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOpBsequential_34/lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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
*__inference_lstm_104_layer_call_fn_2067221
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2063660o
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

?
lstm_103_while_cond_2065321.
*lstm_103_while_lstm_103_while_loop_counter4
0lstm_103_while_lstm_103_while_maximum_iterations
lstm_103_while_placeholder 
lstm_103_while_placeholder_1 
lstm_103_while_placeholder_2 
lstm_103_while_placeholder_30
,lstm_103_while_less_lstm_103_strided_slice_1G
Clstm_103_while_lstm_103_while_cond_2065321___redundant_placeholder0G
Clstm_103_while_lstm_103_while_cond_2065321___redundant_placeholder1G
Clstm_103_while_lstm_103_while_cond_2065321___redundant_placeholder2G
Clstm_103_while_lstm_103_while_cond_2065321___redundant_placeholder3
lstm_103_while_identity
?
lstm_103/while/LessLesslstm_103_while_placeholder,lstm_103_while_less_lstm_103_strided_slice_1*
T0*
_output_shapes
: ]
lstm_103/while/IdentityIdentitylstm_103/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_103_while_identity lstm_103/while/Identity:output:0*(
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
while_cond_2063590
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2063590___redundant_placeholder05
1while_while_cond_2063590___redundant_placeholder15
1while_while_cond_2063590___redundant_placeholder25
1while_while_cond_2063590___redundant_placeholder3
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
?K
?
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066308
inputs_0?
,lstm_cell_339_matmul_readvariableop_resource:	?A
.lstm_cell_339_matmul_1_readvariableop_resource:	d?<
-lstm_cell_339_biasadd_readvariableop_resource:	?
identity??$lstm_cell_339/BiasAdd/ReadVariableOp?#lstm_cell_339/MatMul/ReadVariableOp?%lstm_cell_339/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_339/MatMul/ReadVariableOpReadVariableOp,lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_339/MatMulMatMulstrided_slice_2:output:0+lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_339/MatMul_1MatMulzeros:output:0-lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_339/addAddV2lstm_cell_339/MatMul:product:0 lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_339/BiasAddBiasAddlstm_cell_339/add:z:0,lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_339/splitSplit&lstm_cell_339/split/split_dim:output:0lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_339/SigmoidSigmoidlstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_339/Sigmoid_1Sigmoidlstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_339/mulMullstm_cell_339/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_339/ReluRelulstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_339/mul_1Mullstm_cell_339/Sigmoid:y:0 lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_339/add_1AddV2lstm_cell_339/mul:z:0lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_339/Sigmoid_2Sigmoidlstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_339/Relu_1Relulstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_339/mul_2Mullstm_cell_339/Sigmoid_2:y:0"lstm_cell_339/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_339_matmul_readvariableop_resource.lstm_cell_339_matmul_1_readvariableop_resource-lstm_cell_339_biasadd_readvariableop_resource*
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
while_body_2066224*
condR
while_cond_2066223*K
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
NoOpNoOp%^lstm_cell_339/BiasAdd/ReadVariableOp$^lstm_cell_339/MatMul/ReadVariableOp&^lstm_cell_339/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_339/BiasAdd/ReadVariableOp$lstm_cell_339/BiasAdd/ReadVariableOp2J
#lstm_cell_339/MatMul/ReadVariableOp#lstm_cell_339/MatMul/ReadVariableOp2N
%lstm_cell_339/MatMul_1/ReadVariableOp%lstm_cell_339/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067683

inputs>
,lstm_cell_341_matmul_readvariableop_resource:2(@
.lstm_cell_341_matmul_1_readvariableop_resource:
(;
-lstm_cell_341_biasadd_readvariableop_resource:(
identity??$lstm_cell_341/BiasAdd/ReadVariableOp?#lstm_cell_341/MatMul/ReadVariableOp?%lstm_cell_341/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_341/MatMul/ReadVariableOpReadVariableOp,lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_341/MatMulMatMulstrided_slice_2:output:0+lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_341/MatMul_1MatMulzeros:output:0-lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_341/addAddV2lstm_cell_341/MatMul:product:0 lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_341/BiasAddBiasAddlstm_cell_341/add:z:0,lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_341/splitSplit&lstm_cell_341/split/split_dim:output:0lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_341/SigmoidSigmoidlstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_341/Sigmoid_1Sigmoidlstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_341/mulMullstm_cell_341/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_341/ReluRelulstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_341/mul_1Mullstm_cell_341/Sigmoid:y:0 lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_341/add_1AddV2lstm_cell_341/mul:z:0lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_341/Sigmoid_2Sigmoidlstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_341/Relu_1Relulstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_341/mul_2Mullstm_cell_341/Sigmoid_2:y:0"lstm_cell_341/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_341_matmul_readvariableop_resource.lstm_cell_341_matmul_1_readvariableop_resource-lstm_cell_341_biasadd_readvariableop_resource*
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
while_body_2067599*
condR
while_cond_2067598*K
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
NoOpNoOp%^lstm_cell_341/BiasAdd/ReadVariableOp$^lstm_cell_341/MatMul/ReadVariableOp&^lstm_cell_341/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_341/BiasAdd/ReadVariableOp$lstm_cell_341/BiasAdd/ReadVariableOp2J
#lstm_cell_341/MatMul/ReadVariableOp#lstm_cell_341/MatMul/ReadVariableOp2N
%lstm_cell_341/MatMul_1/ReadVariableOp%lstm_cell_341/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_103_while_body_2065749.
*lstm_103_while_lstm_103_while_loop_counter4
0lstm_103_while_lstm_103_while_maximum_iterations
lstm_103_while_placeholder 
lstm_103_while_placeholder_1 
lstm_103_while_placeholder_2 
lstm_103_while_placeholder_3-
)lstm_103_while_lstm_103_strided_slice_1_0i
elstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0:	d?R
?lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2?M
>lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0:	?
lstm_103_while_identity
lstm_103_while_identity_1
lstm_103_while_identity_2
lstm_103_while_identity_3
lstm_103_while_identity_4
lstm_103_while_identity_5+
'lstm_103_while_lstm_103_strided_slice_1g
clstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensorN
;lstm_103_while_lstm_cell_340_matmul_readvariableop_resource:	d?P
=lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource:	2?K
<lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource:	???3lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp?2lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp?4lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp?
@lstm_103/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_103/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensor_0lstm_103_while_placeholderIlstm_103/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_103/while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp=lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_103/while/lstm_cell_340/MatMulMatMul9lstm_103/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp?lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_103/while/lstm_cell_340/MatMul_1MatMullstm_103_while_placeholder_2<lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_103/while/lstm_cell_340/addAddV2-lstm_103/while/lstm_cell_340/MatMul:product:0/lstm_103/while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp>lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_103/while/lstm_cell_340/BiasAddBiasAdd$lstm_103/while/lstm_cell_340/add:z:0;lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_103/while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_103/while/lstm_cell_340/splitSplit5lstm_103/while/lstm_cell_340/split/split_dim:output:0-lstm_103/while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_103/while/lstm_cell_340/SigmoidSigmoid+lstm_103/while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_103/while/lstm_cell_340/Sigmoid_1Sigmoid+lstm_103/while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_103/while/lstm_cell_340/mulMul*lstm_103/while/lstm_cell_340/Sigmoid_1:y:0lstm_103_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_103/while/lstm_cell_340/ReluRelu+lstm_103/while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_103/while/lstm_cell_340/mul_1Mul(lstm_103/while/lstm_cell_340/Sigmoid:y:0/lstm_103/while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_103/while/lstm_cell_340/add_1AddV2$lstm_103/while/lstm_cell_340/mul:z:0&lstm_103/while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_103/while/lstm_cell_340/Sigmoid_2Sigmoid+lstm_103/while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_103/while/lstm_cell_340/Relu_1Relu&lstm_103/while/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_103/while/lstm_cell_340/mul_2Mul*lstm_103/while/lstm_cell_340/Sigmoid_2:y:01lstm_103/while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_103/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_103_while_placeholder_1lstm_103_while_placeholder&lstm_103/while/lstm_cell_340/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_103/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_103/while/addAddV2lstm_103_while_placeholderlstm_103/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_103/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_103/while/add_1AddV2*lstm_103_while_lstm_103_while_loop_counterlstm_103/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_103/while/IdentityIdentitylstm_103/while/add_1:z:0^lstm_103/while/NoOp*
T0*
_output_shapes
: ?
lstm_103/while/Identity_1Identity0lstm_103_while_lstm_103_while_maximum_iterations^lstm_103/while/NoOp*
T0*
_output_shapes
: t
lstm_103/while/Identity_2Identitylstm_103/while/add:z:0^lstm_103/while/NoOp*
T0*
_output_shapes
: ?
lstm_103/while/Identity_3IdentityClstm_103/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_103/while/NoOp*
T0*
_output_shapes
: ?
lstm_103/while/Identity_4Identity&lstm_103/while/lstm_cell_340/mul_2:z:0^lstm_103/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_103/while/Identity_5Identity&lstm_103/while/lstm_cell_340/add_1:z:0^lstm_103/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_103/while/NoOpNoOp4^lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp3^lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp5^lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_103_while_identity lstm_103/while/Identity:output:0"?
lstm_103_while_identity_1"lstm_103/while/Identity_1:output:0"?
lstm_103_while_identity_2"lstm_103/while/Identity_2:output:0"?
lstm_103_while_identity_3"lstm_103/while/Identity_3:output:0"?
lstm_103_while_identity_4"lstm_103/while/Identity_4:output:0"?
lstm_103_while_identity_5"lstm_103/while/Identity_5:output:0"T
'lstm_103_while_lstm_103_strided_slice_1)lstm_103_while_lstm_103_strided_slice_1_0"~
<lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource>lstm_103_while_lstm_cell_340_biasadd_readvariableop_resource_0"?
=lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource?lstm_103_while_lstm_cell_340_matmul_1_readvariableop_resource_0"|
;lstm_103_while_lstm_cell_340_matmul_readvariableop_resource=lstm_103_while_lstm_cell_340_matmul_readvariableop_resource_0"?
clstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensorelstm_103_while_tensorarrayv2read_tensorlistgetitem_lstm_103_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp3lstm_103/while/lstm_cell_340/BiasAdd/ReadVariableOp2h
2lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp2lstm_103/while/lstm_cell_340/MatMul/ReadVariableOp2l
4lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp4lstm_103/while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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
while_cond_2067312
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2067312___redundant_placeholder05
1while_while_cond_2067312___redundant_placeholder15
1while_while_cond_2067312___redundant_placeholder25
1while_while_cond_2067312___redundant_placeholder3
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
while_body_2064075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_340_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_340_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_340_matmul_readvariableop_resource:	d?G
4while_lstm_cell_340_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_340_biasadd_readvariableop_resource:	???*while/lstm_cell_340/BiasAdd/ReadVariableOp?)while/lstm_cell_340/MatMul/ReadVariableOp?+while/lstm_cell_340/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_340/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_340/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_340/addAddV2$while/lstm_cell_340/MatMul:product:0&while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_340/BiasAddBiasAddwhile/lstm_cell_340/add:z:02while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_340/splitSplit,while/lstm_cell_340/split/split_dim:output:0$while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_340/SigmoidSigmoid"while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_340/Sigmoid_1Sigmoid"while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mulMul!while/lstm_cell_340/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_340/ReluRelu"while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mul_1Mulwhile/lstm_cell_340/Sigmoid:y:0&while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/add_1AddV2while/lstm_cell_340/mul:z:0while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_340/Sigmoid_2Sigmoid"while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_340/Relu_1Reluwhile/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mul_2Mul!while/lstm_cell_340/Sigmoid_2:y:0(while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_340/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_340/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_340/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_340/BiasAdd/ReadVariableOp*^while/lstm_cell_340/MatMul/ReadVariableOp,^while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_340_biasadd_readvariableop_resource5while_lstm_cell_340_biasadd_readvariableop_resource_0"n
4while_lstm_cell_340_matmul_1_readvariableop_resource6while_lstm_cell_340_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_340_matmul_readvariableop_resource4while_lstm_cell_340_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_340/BiasAdd/ReadVariableOp*while/lstm_cell_340/BiasAdd/ReadVariableOp2V
)while/lstm_cell_340/MatMul/ReadVariableOp)while/lstm_cell_340/MatMul/ReadVariableOp2Z
+while/lstm_cell_340/MatMul_1/ReadVariableOp+while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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
)sequential_34_lstm_104_while_cond_2062719J
Fsequential_34_lstm_104_while_sequential_34_lstm_104_while_loop_counterP
Lsequential_34_lstm_104_while_sequential_34_lstm_104_while_maximum_iterations,
(sequential_34_lstm_104_while_placeholder.
*sequential_34_lstm_104_while_placeholder_1.
*sequential_34_lstm_104_while_placeholder_2.
*sequential_34_lstm_104_while_placeholder_3L
Hsequential_34_lstm_104_while_less_sequential_34_lstm_104_strided_slice_1c
_sequential_34_lstm_104_while_sequential_34_lstm_104_while_cond_2062719___redundant_placeholder0c
_sequential_34_lstm_104_while_sequential_34_lstm_104_while_cond_2062719___redundant_placeholder1c
_sequential_34_lstm_104_while_sequential_34_lstm_104_while_cond_2062719___redundant_placeholder2c
_sequential_34_lstm_104_while_sequential_34_lstm_104_while_cond_2062719___redundant_placeholder3)
%sequential_34_lstm_104_while_identity
?
!sequential_34/lstm_104/while/LessLess(sequential_34_lstm_104_while_placeholderHsequential_34_lstm_104_while_less_sequential_34_lstm_104_strided_slice_1*
T0*
_output_shapes
: y
%sequential_34/lstm_104/while/IdentityIdentity%sequential_34/lstm_104/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_34_lstm_104_while_identity.sequential_34/lstm_104/while/Identity:output:0*(
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
?K
?
E__inference_lstm_103_layer_call_and_return_conditional_losses_2066924
inputs_0?
,lstm_cell_340_matmul_readvariableop_resource:	d?A
.lstm_cell_340_matmul_1_readvariableop_resource:	2?<
-lstm_cell_340_biasadd_readvariableop_resource:	?
identity??$lstm_cell_340/BiasAdd/ReadVariableOp?#lstm_cell_340/MatMul/ReadVariableOp?%lstm_cell_340/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_340/MatMul/ReadVariableOpReadVariableOp,lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_340/MatMulMatMulstrided_slice_2:output:0+lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_340/MatMul_1MatMulzeros:output:0-lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_340/addAddV2lstm_cell_340/MatMul:product:0 lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_340/BiasAddBiasAddlstm_cell_340/add:z:0,lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_340/splitSplit&lstm_cell_340/split/split_dim:output:0lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_340/SigmoidSigmoidlstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_340/Sigmoid_1Sigmoidlstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_340/mulMullstm_cell_340/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_340/ReluRelulstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_340/mul_1Mullstm_cell_340/Sigmoid:y:0 lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_340/add_1AddV2lstm_cell_340/mul:z:0lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_340/Sigmoid_2Sigmoidlstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_340/Relu_1Relulstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_340/mul_2Mullstm_cell_340/Sigmoid_2:y:0"lstm_cell_340/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_340_matmul_readvariableop_resource.lstm_cell_340_matmul_1_readvariableop_resource-lstm_cell_340_biasadd_readvariableop_resource*
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
while_body_2066840*
condR
while_cond_2066839*K
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
NoOpNoOp%^lstm_cell_340/BiasAdd/ReadVariableOp$^lstm_cell_340/MatMul/ReadVariableOp&^lstm_cell_340/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_340/BiasAdd/ReadVariableOp$lstm_cell_340/BiasAdd/ReadVariableOp2J
#lstm_cell_340/MatMul/ReadVariableOp#lstm_cell_340/MatMul/ReadVariableOp2N
%lstm_cell_340/MatMul_1/ReadVariableOp%lstm_cell_340/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_103_layer_call_and_return_conditional_losses_2067067

inputs?
,lstm_cell_340_matmul_readvariableop_resource:	d?A
.lstm_cell_340_matmul_1_readvariableop_resource:	2?<
-lstm_cell_340_biasadd_readvariableop_resource:	?
identity??$lstm_cell_340/BiasAdd/ReadVariableOp?#lstm_cell_340/MatMul/ReadVariableOp?%lstm_cell_340/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_340/MatMul/ReadVariableOpReadVariableOp,lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_340/MatMulMatMulstrided_slice_2:output:0+lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_340/MatMul_1MatMulzeros:output:0-lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_340/addAddV2lstm_cell_340/MatMul:product:0 lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_340/BiasAddBiasAddlstm_cell_340/add:z:0,lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_340/splitSplit&lstm_cell_340/split/split_dim:output:0lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_340/SigmoidSigmoidlstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_340/Sigmoid_1Sigmoidlstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_340/mulMullstm_cell_340/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_340/ReluRelulstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_340/mul_1Mullstm_cell_340/Sigmoid:y:0 lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_340/add_1AddV2lstm_cell_340/mul:z:0lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_340/Sigmoid_2Sigmoidlstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_340/Relu_1Relulstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_340/mul_2Mullstm_cell_340/Sigmoid_2:y:0"lstm_cell_340/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_340_matmul_readvariableop_resource.lstm_cell_340_matmul_1_readvariableop_resource-lstm_cell_340_biasadd_readvariableop_resource*
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
while_body_2066983*
condR
while_cond_2066982*K
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
NoOpNoOp%^lstm_cell_340/BiasAdd/ReadVariableOp$^lstm_cell_340/MatMul/ReadVariableOp&^lstm_cell_340/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_340/BiasAdd/ReadVariableOp$lstm_cell_340/BiasAdd/ReadVariableOp2J
#lstm_cell_340/MatMul/ReadVariableOp#lstm_cell_340/MatMul/ReadVariableOp2N
%lstm_cell_340/MatMul_1/ReadVariableOp%lstm_cell_340/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_2067313
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_341_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_341_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_341_matmul_readvariableop_resource:2(F
4while_lstm_cell_341_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_341_biasadd_readvariableop_resource:(??*while/lstm_cell_341/BiasAdd/ReadVariableOp?)while/lstm_cell_341/MatMul/ReadVariableOp?+while/lstm_cell_341/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_341/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_341/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_341/addAddV2$while/lstm_cell_341/MatMul:product:0&while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_341/BiasAddBiasAddwhile/lstm_cell_341/add:z:02while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_341/splitSplit,while/lstm_cell_341/split/split_dim:output:0$while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_341/SigmoidSigmoid"while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_341/Sigmoid_1Sigmoid"while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mulMul!while/lstm_cell_341/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_341/ReluRelu"while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mul_1Mulwhile/lstm_cell_341/Sigmoid:y:0&while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/add_1AddV2while/lstm_cell_341/mul:z:0while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_341/Sigmoid_2Sigmoid"while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_341/Relu_1Reluwhile/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mul_2Mul!while/lstm_cell_341/Sigmoid_2:y:0(while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_341/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_341/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_341/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_341/BiasAdd/ReadVariableOp*^while/lstm_cell_341/MatMul/ReadVariableOp,^while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_341_biasadd_readvariableop_resource5while_lstm_cell_341_biasadd_readvariableop_resource_0"n
4while_lstm_cell_341_matmul_1_readvariableop_resource6while_lstm_cell_341_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_341_matmul_readvariableop_resource4while_lstm_cell_341_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_341/BiasAdd/ReadVariableOp*while/lstm_cell_341/BiasAdd/ReadVariableOp2V
)while/lstm_cell_341/MatMul/ReadVariableOp)while/lstm_cell_341/MatMul/ReadVariableOp2Z
+while/lstm_cell_341/MatMul_1/ReadVariableOp+while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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
*__inference_lstm_104_layer_call_fn_2067232
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2063851o
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
?
?
while_cond_2063924
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2063924___redundant_placeholder05
1while_while_cond_2063924___redundant_placeholder15
1while_while_cond_2063924___redundant_placeholder25
1while_while_cond_2063924___redundant_placeholder3
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
while_body_2064771
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_339_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_339_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_339_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_339_matmul_readvariableop_resource:	?G
4while_lstm_cell_339_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_339_biasadd_readvariableop_resource:	???*while/lstm_cell_339/BiasAdd/ReadVariableOp?)while/lstm_cell_339/MatMul/ReadVariableOp?+while/lstm_cell_339/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_339/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_339/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_339/addAddV2$while/lstm_cell_339/MatMul:product:0&while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_339/BiasAddBiasAddwhile/lstm_cell_339/add:z:02while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_339/splitSplit,while/lstm_cell_339/split/split_dim:output:0$while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_339/SigmoidSigmoid"while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_339/Sigmoid_1Sigmoid"while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mulMul!while/lstm_cell_339/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_339/ReluRelu"while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mul_1Mulwhile/lstm_cell_339/Sigmoid:y:0&while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/add_1AddV2while/lstm_cell_339/mul:z:0while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_339/Sigmoid_2Sigmoid"while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_339/Relu_1Reluwhile/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mul_2Mul!while/lstm_cell_339/Sigmoid_2:y:0(while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_339/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_339/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_339/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_339/BiasAdd/ReadVariableOp*^while/lstm_cell_339/MatMul/ReadVariableOp,^while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_339_biasadd_readvariableop_resource5while_lstm_cell_339_biasadd_readvariableop_resource_0"n
4while_lstm_cell_339_matmul_1_readvariableop_resource6while_lstm_cell_339_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_339_matmul_readvariableop_resource4while_lstm_cell_339_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_339/BiasAdd/ReadVariableOp*while/lstm_cell_339/BiasAdd/ReadVariableOp2V
)while/lstm_cell_339/MatMul/ReadVariableOp)while/lstm_cell_339/MatMul/ReadVariableOp2Z
+while/lstm_cell_339/MatMul_1/ReadVariableOp+while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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

lstm_102_while_body_2065183.
*lstm_102_while_lstm_102_while_loop_counter4
0lstm_102_while_lstm_102_while_maximum_iterations
lstm_102_while_placeholder 
lstm_102_while_placeholder_1 
lstm_102_while_placeholder_2 
lstm_102_while_placeholder_3-
)lstm_102_while_lstm_102_strided_slice_1_0i
elstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0:	?R
?lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0:	d?M
>lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0:	?
lstm_102_while_identity
lstm_102_while_identity_1
lstm_102_while_identity_2
lstm_102_while_identity_3
lstm_102_while_identity_4
lstm_102_while_identity_5+
'lstm_102_while_lstm_102_strided_slice_1g
clstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensorN
;lstm_102_while_lstm_cell_339_matmul_readvariableop_resource:	?P
=lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource:	d?K
<lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource:	???3lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp?2lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp?4lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp?
@lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_102/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0lstm_102_while_placeholderIlstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_102/while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp=lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_102/while/lstm_cell_339/MatMulMatMul9lstm_102/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp?lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_102/while/lstm_cell_339/MatMul_1MatMullstm_102_while_placeholder_2<lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_102/while/lstm_cell_339/addAddV2-lstm_102/while/lstm_cell_339/MatMul:product:0/lstm_102/while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp>lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_102/while/lstm_cell_339/BiasAddBiasAdd$lstm_102/while/lstm_cell_339/add:z:0;lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_102/while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_102/while/lstm_cell_339/splitSplit5lstm_102/while/lstm_cell_339/split/split_dim:output:0-lstm_102/while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_102/while/lstm_cell_339/SigmoidSigmoid+lstm_102/while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_102/while/lstm_cell_339/Sigmoid_1Sigmoid+lstm_102/while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_102/while/lstm_cell_339/mulMul*lstm_102/while/lstm_cell_339/Sigmoid_1:y:0lstm_102_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_102/while/lstm_cell_339/ReluRelu+lstm_102/while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_102/while/lstm_cell_339/mul_1Mul(lstm_102/while/lstm_cell_339/Sigmoid:y:0/lstm_102/while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_102/while/lstm_cell_339/add_1AddV2$lstm_102/while/lstm_cell_339/mul:z:0&lstm_102/while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_102/while/lstm_cell_339/Sigmoid_2Sigmoid+lstm_102/while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_102/while/lstm_cell_339/Relu_1Relu&lstm_102/while/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_102/while/lstm_cell_339/mul_2Mul*lstm_102/while/lstm_cell_339/Sigmoid_2:y:01lstm_102/while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_102/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_102_while_placeholder_1lstm_102_while_placeholder&lstm_102/while/lstm_cell_339/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_102/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_102/while/addAddV2lstm_102_while_placeholderlstm_102/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_102/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_102/while/add_1AddV2*lstm_102_while_lstm_102_while_loop_counterlstm_102/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_102/while/IdentityIdentitylstm_102/while/add_1:z:0^lstm_102/while/NoOp*
T0*
_output_shapes
: ?
lstm_102/while/Identity_1Identity0lstm_102_while_lstm_102_while_maximum_iterations^lstm_102/while/NoOp*
T0*
_output_shapes
: t
lstm_102/while/Identity_2Identitylstm_102/while/add:z:0^lstm_102/while/NoOp*
T0*
_output_shapes
: ?
lstm_102/while/Identity_3IdentityClstm_102/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_102/while/NoOp*
T0*
_output_shapes
: ?
lstm_102/while/Identity_4Identity&lstm_102/while/lstm_cell_339/mul_2:z:0^lstm_102/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_102/while/Identity_5Identity&lstm_102/while/lstm_cell_339/add_1:z:0^lstm_102/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_102/while/NoOpNoOp4^lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_102_while_identity lstm_102/while/Identity:output:0"?
lstm_102_while_identity_1"lstm_102/while/Identity_1:output:0"?
lstm_102_while_identity_2"lstm_102/while/Identity_2:output:0"?
lstm_102_while_identity_3"lstm_102/while/Identity_3:output:0"?
lstm_102_while_identity_4"lstm_102/while/Identity_4:output:0"?
lstm_102_while_identity_5"lstm_102/while/Identity_5:output:0"T
'lstm_102_while_lstm_102_strided_slice_1)lstm_102_while_lstm_102_strided_slice_1_0"~
<lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource>lstm_102_while_lstm_cell_339_biasadd_readvariableop_resource_0"?
=lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource?lstm_102_while_lstm_cell_339_matmul_1_readvariableop_resource_0"|
;lstm_102_while_lstm_cell_339_matmul_readvariableop_resource=lstm_102_while_lstm_cell_339_matmul_readvariableop_resource_0"?
clstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensorelstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp3lstm_102/while/lstm_cell_339/BiasAdd/ReadVariableOp2h
2lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp2lstm_102/while/lstm_cell_339/MatMul/ReadVariableOp2l
4lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp4lstm_102/while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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
*__inference_lstm_102_layer_call_fn_2066022

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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2064855s
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
?8
?
while_body_2066510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_339_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_339_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_339_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_339_matmul_readvariableop_resource:	?G
4while_lstm_cell_339_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_339_biasadd_readvariableop_resource:	???*while/lstm_cell_339/BiasAdd/ReadVariableOp?)while/lstm_cell_339/MatMul/ReadVariableOp?+while/lstm_cell_339/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_339/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_339/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_339/addAddV2$while/lstm_cell_339/MatMul:product:0&while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_339/BiasAddBiasAddwhile/lstm_cell_339/add:z:02while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_339/splitSplit,while/lstm_cell_339/split/split_dim:output:0$while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_339/SigmoidSigmoid"while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_339/Sigmoid_1Sigmoid"while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mulMul!while/lstm_cell_339/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_339/ReluRelu"while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mul_1Mulwhile/lstm_cell_339/Sigmoid:y:0&while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/add_1AddV2while/lstm_cell_339/mul:z:0while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_339/Sigmoid_2Sigmoid"while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_339/Relu_1Reluwhile/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mul_2Mul!while/lstm_cell_339/Sigmoid_2:y:0(while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_339/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_339/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_339/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_339/BiasAdd/ReadVariableOp*^while/lstm_cell_339/MatMul/ReadVariableOp,^while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_339_biasadd_readvariableop_resource5while_lstm_cell_339_biasadd_readvariableop_resource_0"n
4while_lstm_cell_339_matmul_1_readvariableop_resource6while_lstm_cell_339_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_339_matmul_readvariableop_resource4while_lstm_cell_339_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_339/BiasAdd/ReadVariableOp*while/lstm_cell_339/BiasAdd/ReadVariableOp2V
)while/lstm_cell_339/MatMul/ReadVariableOp)while/lstm_cell_339/MatMul/ReadVariableOp2Z
+while/lstm_cell_339/MatMul_1/ReadVariableOp+while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2068009

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
?J
?
E__inference_lstm_103_layer_call_and_return_conditional_losses_2064159

inputs?
,lstm_cell_340_matmul_readvariableop_resource:	d?A
.lstm_cell_340_matmul_1_readvariableop_resource:	2?<
-lstm_cell_340_biasadd_readvariableop_resource:	?
identity??$lstm_cell_340/BiasAdd/ReadVariableOp?#lstm_cell_340/MatMul/ReadVariableOp?%lstm_cell_340/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_340/MatMul/ReadVariableOpReadVariableOp,lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_340/MatMulMatMulstrided_slice_2:output:0+lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_340/MatMul_1MatMulzeros:output:0-lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_340/addAddV2lstm_cell_340/MatMul:product:0 lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_340/BiasAddBiasAddlstm_cell_340/add:z:0,lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_340/splitSplit&lstm_cell_340/split/split_dim:output:0lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_340/SigmoidSigmoidlstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_340/Sigmoid_1Sigmoidlstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_340/mulMullstm_cell_340/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_340/ReluRelulstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_340/mul_1Mullstm_cell_340/Sigmoid:y:0 lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_340/add_1AddV2lstm_cell_340/mul:z:0lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_340/Sigmoid_2Sigmoidlstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_340/Relu_1Relulstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_340/mul_2Mullstm_cell_340/Sigmoid_2:y:0"lstm_cell_340/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_340_matmul_readvariableop_resource.lstm_cell_340_matmul_1_readvariableop_resource-lstm_cell_340_biasadd_readvariableop_resource*
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
while_body_2064075*
condR
while_cond_2064074*K
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
NoOpNoOp%^lstm_cell_340/BiasAdd/ReadVariableOp$^lstm_cell_340/MatMul/ReadVariableOp&^lstm_cell_340/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_340/BiasAdd/ReadVariableOp$lstm_cell_340/BiasAdd/ReadVariableOp2J
#lstm_cell_340/MatMul/ReadVariableOp#lstm_cell_340/MatMul/ReadVariableOp2N
%lstm_cell_340/MatMul_1/ReadVariableOp%lstm_cell_340/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_104_while_cond_2065460.
*lstm_104_while_lstm_104_while_loop_counter4
0lstm_104_while_lstm_104_while_maximum_iterations
lstm_104_while_placeholder 
lstm_104_while_placeholder_1 
lstm_104_while_placeholder_2 
lstm_104_while_placeholder_30
,lstm_104_while_less_lstm_104_strided_slice_1G
Clstm_104_while_lstm_104_while_cond_2065460___redundant_placeholder0G
Clstm_104_while_lstm_104_while_cond_2065460___redundant_placeholder1G
Clstm_104_while_lstm_104_while_cond_2065460___redundant_placeholder2G
Clstm_104_while_lstm_104_while_cond_2065460___redundant_placeholder3
lstm_104_while_identity
?
lstm_104/while/LessLesslstm_104_while_placeholder,lstm_104_while_less_lstm_104_strided_slice_1*
T0*
_output_shapes
: ]
lstm_104/while/IdentityIdentitylstm_104/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_104_while_identity lstm_104/while/Identity:output:0*(
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
while_cond_2066839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2066839___redundant_placeholder05
1while_while_cond_2066839___redundant_placeholder15
1while_while_cond_2066839___redundant_placeholder25
1while_while_cond_2066839___redundant_placeholder3
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
lstm_102_while_cond_2065182.
*lstm_102_while_lstm_102_while_loop_counter4
0lstm_102_while_lstm_102_while_maximum_iterations
lstm_102_while_placeholder 
lstm_102_while_placeholder_1 
lstm_102_while_placeholder_2 
lstm_102_while_placeholder_30
,lstm_102_while_less_lstm_102_strided_slice_1G
Clstm_102_while_lstm_102_while_cond_2065182___redundant_placeholder0G
Clstm_102_while_lstm_102_while_cond_2065182___redundant_placeholder1G
Clstm_102_while_lstm_102_while_cond_2065182___redundant_placeholder2G
Clstm_102_while_lstm_102_while_cond_2065182___redundant_placeholder3
lstm_102_while_identity
?
lstm_102/while/LessLesslstm_102_while_placeholder,lstm_102_while_less_lstm_102_strided_slice_1*
T0*
_output_shapes
: ]
lstm_102/while/IdentityIdentitylstm_102/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_102_while_identity lstm_102/while/Identity:output:0*(
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066594

inputs?
,lstm_cell_339_matmul_readvariableop_resource:	?A
.lstm_cell_339_matmul_1_readvariableop_resource:	d?<
-lstm_cell_339_biasadd_readvariableop_resource:	?
identity??$lstm_cell_339/BiasAdd/ReadVariableOp?#lstm_cell_339/MatMul/ReadVariableOp?%lstm_cell_339/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_339/MatMul/ReadVariableOpReadVariableOp,lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_339/MatMulMatMulstrided_slice_2:output:0+lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_339/MatMul_1MatMulzeros:output:0-lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_339/addAddV2lstm_cell_339/MatMul:product:0 lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_339/BiasAddBiasAddlstm_cell_339/add:z:0,lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_339/splitSplit&lstm_cell_339/split/split_dim:output:0lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_339/SigmoidSigmoidlstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_339/Sigmoid_1Sigmoidlstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_339/mulMullstm_cell_339/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_339/ReluRelulstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_339/mul_1Mullstm_cell_339/Sigmoid:y:0 lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_339/add_1AddV2lstm_cell_339/mul:z:0lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_339/Sigmoid_2Sigmoidlstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_339/Relu_1Relulstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_339/mul_2Mullstm_cell_339/Sigmoid_2:y:0"lstm_cell_339/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_339_matmul_readvariableop_resource.lstm_cell_339_matmul_1_readvariableop_resource-lstm_cell_339_biasadd_readvariableop_resource*
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
while_body_2066510*
condR
while_cond_2066509*K
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
NoOpNoOp%^lstm_cell_339/BiasAdd/ReadVariableOp$^lstm_cell_339/MatMul/ReadVariableOp&^lstm_cell_339/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_339/BiasAdd/ReadVariableOp$lstm_cell_339/BiasAdd/ReadVariableOp2J
#lstm_cell_339/MatMul/ReadVariableOp#lstm_cell_339/MatMul/ReadVariableOp2N
%lstm_cell_339/MatMul_1/ReadVariableOp%lstm_cell_339/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2066983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_340_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_340_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_340_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_340_matmul_readvariableop_resource:	d?G
4while_lstm_cell_340_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_340_biasadd_readvariableop_resource:	???*while/lstm_cell_340/BiasAdd/ReadVariableOp?)while/lstm_cell_340/MatMul/ReadVariableOp?+while/lstm_cell_340/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_340_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_340/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_340_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_340/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_340/addAddV2$while/lstm_cell_340/MatMul:product:0&while/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_340_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_340/BiasAddBiasAddwhile/lstm_cell_340/add:z:02while/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_340/splitSplit,while/lstm_cell_340/split/split_dim:output:0$while/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_340/SigmoidSigmoid"while/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_340/Sigmoid_1Sigmoid"while/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mulMul!while/lstm_cell_340/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_340/ReluRelu"while/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mul_1Mulwhile/lstm_cell_340/Sigmoid:y:0&while/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/add_1AddV2while/lstm_cell_340/mul:z:0while/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_340/Sigmoid_2Sigmoid"while/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_340/Relu_1Reluwhile/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_340/mul_2Mul!while/lstm_cell_340/Sigmoid_2:y:0(while/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_340/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_340/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_340/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_340/BiasAdd/ReadVariableOp*^while/lstm_cell_340/MatMul/ReadVariableOp,^while/lstm_cell_340/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_340_biasadd_readvariableop_resource5while_lstm_cell_340_biasadd_readvariableop_resource_0"n
4while_lstm_cell_340_matmul_1_readvariableop_resource6while_lstm_cell_340_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_340_matmul_readvariableop_resource4while_lstm_cell_340_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_340/BiasAdd/ReadVariableOp*while/lstm_cell_340/BiasAdd/ReadVariableOp2V
)while/lstm_cell_340/MatMul/ReadVariableOp)while/lstm_cell_340/MatMul/ReadVariableOp2Z
+while/lstm_cell_340/MatMul_1/ReadVariableOp+while/lstm_cell_340/MatMul_1/ReadVariableOp: 
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
/__inference_sequential_34_layer_call_fn_2064359
lstm_102_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_2064334o
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
_user_specified_namelstm_102_input
?
?
while_cond_2066080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2066080___redundant_placeholder05
1while_while_cond_2066080___redundant_placeholder15
1while_while_cond_2066080___redundant_placeholder25
1while_while_cond_2066080___redundant_placeholder3
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
??
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065978

inputsH
5lstm_102_lstm_cell_339_matmul_readvariableop_resource:	?J
7lstm_102_lstm_cell_339_matmul_1_readvariableop_resource:	d?E
6lstm_102_lstm_cell_339_biasadd_readvariableop_resource:	?H
5lstm_103_lstm_cell_340_matmul_readvariableop_resource:	d?J
7lstm_103_lstm_cell_340_matmul_1_readvariableop_resource:	2?E
6lstm_103_lstm_cell_340_biasadd_readvariableop_resource:	?G
5lstm_104_lstm_cell_341_matmul_readvariableop_resource:2(I
7lstm_104_lstm_cell_341_matmul_1_readvariableop_resource:
(D
6lstm_104_lstm_cell_341_biasadd_readvariableop_resource:(9
'dense_34_matmul_readvariableop_resource:
6
(dense_34_biasadd_readvariableop_resource:
identity??dense_34/BiasAdd/ReadVariableOp?dense_34/MatMul/ReadVariableOp?-lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp?,lstm_102/lstm_cell_339/MatMul/ReadVariableOp?.lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp?lstm_102/while?-lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp?,lstm_103/lstm_cell_340/MatMul/ReadVariableOp?.lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp?lstm_103/while?-lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp?,lstm_104/lstm_cell_341/MatMul/ReadVariableOp?.lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp?lstm_104/whileD
lstm_102/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_102/strided_sliceStridedSlicelstm_102/Shape:output:0%lstm_102/strided_slice/stack:output:0'lstm_102/strided_slice/stack_1:output:0'lstm_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_102/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_102/zeros/packedPacklstm_102/strided_slice:output:0 lstm_102/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_102/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_102/zerosFilllstm_102/zeros/packed:output:0lstm_102/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_102/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_102/zeros_1/packedPacklstm_102/strided_slice:output:0"lstm_102/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_102/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_102/zeros_1Fill lstm_102/zeros_1/packed:output:0lstm_102/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_102/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_102/transpose	Transposeinputs lstm_102/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_102/Shape_1Shapelstm_102/transpose:y:0*
T0*
_output_shapes
:h
lstm_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_102/strided_slice_1StridedSlicelstm_102/Shape_1:output:0'lstm_102/strided_slice_1/stack:output:0)lstm_102/strided_slice_1/stack_1:output:0)lstm_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_102/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_102/TensorArrayV2TensorListReserve-lstm_102/TensorArrayV2/element_shape:output:0!lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_102/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_102/transpose:y:0Glstm_102/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_102/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_102/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_102/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_102/strided_slice_2StridedSlicelstm_102/transpose:y:0'lstm_102/strided_slice_2/stack:output:0)lstm_102/strided_slice_2/stack_1:output:0)lstm_102/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_102/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp5lstm_102_lstm_cell_339_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_102/lstm_cell_339/MatMulMatMul!lstm_102/strided_slice_2:output:04lstm_102/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_102/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp7lstm_102_lstm_cell_339_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_102/lstm_cell_339/MatMul_1MatMullstm_102/zeros:output:06lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_102/lstm_cell_339/addAddV2'lstm_102/lstm_cell_339/MatMul:product:0)lstm_102/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_102/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp6lstm_102_lstm_cell_339_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_102/lstm_cell_339/BiasAddBiasAddlstm_102/lstm_cell_339/add:z:05lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_102/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_102/lstm_cell_339/splitSplit/lstm_102/lstm_cell_339/split/split_dim:output:0'lstm_102/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_102/lstm_cell_339/SigmoidSigmoid%lstm_102/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_102/lstm_cell_339/Sigmoid_1Sigmoid%lstm_102/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_102/lstm_cell_339/mulMul$lstm_102/lstm_cell_339/Sigmoid_1:y:0lstm_102/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_102/lstm_cell_339/ReluRelu%lstm_102/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_102/lstm_cell_339/mul_1Mul"lstm_102/lstm_cell_339/Sigmoid:y:0)lstm_102/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_102/lstm_cell_339/add_1AddV2lstm_102/lstm_cell_339/mul:z:0 lstm_102/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_102/lstm_cell_339/Sigmoid_2Sigmoid%lstm_102/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_102/lstm_cell_339/Relu_1Relu lstm_102/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_102/lstm_cell_339/mul_2Mul$lstm_102/lstm_cell_339/Sigmoid_2:y:0+lstm_102/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_102/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_102/TensorArrayV2_1TensorListReserve/lstm_102/TensorArrayV2_1/element_shape:output:0!lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_102/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_102/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_102/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_102/whileWhile$lstm_102/while/loop_counter:output:0*lstm_102/while/maximum_iterations:output:0lstm_102/time:output:0!lstm_102/TensorArrayV2_1:handle:0lstm_102/zeros:output:0lstm_102/zeros_1:output:0!lstm_102/strided_slice_1:output:0@lstm_102/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_102_lstm_cell_339_matmul_readvariableop_resource7lstm_102_lstm_cell_339_matmul_1_readvariableop_resource6lstm_102_lstm_cell_339_biasadd_readvariableop_resource*
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
lstm_102_while_body_2065610*'
condR
lstm_102_while_cond_2065609*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_102/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_102/TensorArrayV2Stack/TensorListStackTensorListStacklstm_102/while:output:3Blstm_102/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_102/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_102/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_102/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_102/strided_slice_3StridedSlice4lstm_102/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_102/strided_slice_3/stack:output:0)lstm_102/strided_slice_3/stack_1:output:0)lstm_102/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_102/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_102/transpose_1	Transpose4lstm_102/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_102/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_102/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_103/ShapeShapelstm_102/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_103/strided_sliceStridedSlicelstm_103/Shape:output:0%lstm_103/strided_slice/stack:output:0'lstm_103/strided_slice/stack_1:output:0'lstm_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_103/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_103/zeros/packedPacklstm_103/strided_slice:output:0 lstm_103/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_103/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_103/zerosFilllstm_103/zeros/packed:output:0lstm_103/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_103/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_103/zeros_1/packedPacklstm_103/strided_slice:output:0"lstm_103/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_103/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_103/zeros_1Fill lstm_103/zeros_1/packed:output:0lstm_103/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_103/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_103/transpose	Transposelstm_102/transpose_1:y:0 lstm_103/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_103/Shape_1Shapelstm_103/transpose:y:0*
T0*
_output_shapes
:h
lstm_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_103/strided_slice_1StridedSlicelstm_103/Shape_1:output:0'lstm_103/strided_slice_1/stack:output:0)lstm_103/strided_slice_1/stack_1:output:0)lstm_103/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_103/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_103/TensorArrayV2TensorListReserve-lstm_103/TensorArrayV2/element_shape:output:0!lstm_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_103/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_103/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_103/transpose:y:0Glstm_103/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_103/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_103/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_103/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_103/strided_slice_2StridedSlicelstm_103/transpose:y:0'lstm_103/strided_slice_2/stack:output:0)lstm_103/strided_slice_2/stack_1:output:0)lstm_103/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_103/lstm_cell_340/MatMul/ReadVariableOpReadVariableOp5lstm_103_lstm_cell_340_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_103/lstm_cell_340/MatMulMatMul!lstm_103/strided_slice_2:output:04lstm_103/lstm_cell_340/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_103/lstm_cell_340/MatMul_1/ReadVariableOpReadVariableOp7lstm_103_lstm_cell_340_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_103/lstm_cell_340/MatMul_1MatMullstm_103/zeros:output:06lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_103/lstm_cell_340/addAddV2'lstm_103/lstm_cell_340/MatMul:product:0)lstm_103/lstm_cell_340/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_103/lstm_cell_340/BiasAdd/ReadVariableOpReadVariableOp6lstm_103_lstm_cell_340_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_103/lstm_cell_340/BiasAddBiasAddlstm_103/lstm_cell_340/add:z:05lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_103/lstm_cell_340/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_103/lstm_cell_340/splitSplit/lstm_103/lstm_cell_340/split/split_dim:output:0'lstm_103/lstm_cell_340/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_103/lstm_cell_340/SigmoidSigmoid%lstm_103/lstm_cell_340/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_103/lstm_cell_340/Sigmoid_1Sigmoid%lstm_103/lstm_cell_340/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_103/lstm_cell_340/mulMul$lstm_103/lstm_cell_340/Sigmoid_1:y:0lstm_103/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_103/lstm_cell_340/ReluRelu%lstm_103/lstm_cell_340/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_103/lstm_cell_340/mul_1Mul"lstm_103/lstm_cell_340/Sigmoid:y:0)lstm_103/lstm_cell_340/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_103/lstm_cell_340/add_1AddV2lstm_103/lstm_cell_340/mul:z:0 lstm_103/lstm_cell_340/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_103/lstm_cell_340/Sigmoid_2Sigmoid%lstm_103/lstm_cell_340/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_103/lstm_cell_340/Relu_1Relu lstm_103/lstm_cell_340/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_103/lstm_cell_340/mul_2Mul$lstm_103/lstm_cell_340/Sigmoid_2:y:0+lstm_103/lstm_cell_340/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_103/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_103/TensorArrayV2_1TensorListReserve/lstm_103/TensorArrayV2_1/element_shape:output:0!lstm_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_103/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_103/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_103/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_103/whileWhile$lstm_103/while/loop_counter:output:0*lstm_103/while/maximum_iterations:output:0lstm_103/time:output:0!lstm_103/TensorArrayV2_1:handle:0lstm_103/zeros:output:0lstm_103/zeros_1:output:0!lstm_103/strided_slice_1:output:0@lstm_103/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_103_lstm_cell_340_matmul_readvariableop_resource7lstm_103_lstm_cell_340_matmul_1_readvariableop_resource6lstm_103_lstm_cell_340_biasadd_readvariableop_resource*
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
lstm_103_while_body_2065749*'
condR
lstm_103_while_cond_2065748*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_103/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_103/TensorArrayV2Stack/TensorListStackTensorListStacklstm_103/while:output:3Blstm_103/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_103/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_103/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_103/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_103/strided_slice_3StridedSlice4lstm_103/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_103/strided_slice_3/stack:output:0)lstm_103/strided_slice_3/stack_1:output:0)lstm_103/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_103/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_103/transpose_1	Transpose4lstm_103/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_103/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_103/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_104/ShapeShapelstm_103/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_104/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_104/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_104/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_104/strided_sliceStridedSlicelstm_104/Shape:output:0%lstm_104/strided_slice/stack:output:0'lstm_104/strided_slice/stack_1:output:0'lstm_104/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_104/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_104/zeros/packedPacklstm_104/strided_slice:output:0 lstm_104/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_104/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_104/zerosFilllstm_104/zeros/packed:output:0lstm_104/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_104/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_104/zeros_1/packedPacklstm_104/strided_slice:output:0"lstm_104/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_104/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_104/zeros_1Fill lstm_104/zeros_1/packed:output:0lstm_104/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_104/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_104/transpose	Transposelstm_103/transpose_1:y:0 lstm_104/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_104/Shape_1Shapelstm_104/transpose:y:0*
T0*
_output_shapes
:h
lstm_104/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_104/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_104/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_104/strided_slice_1StridedSlicelstm_104/Shape_1:output:0'lstm_104/strided_slice_1/stack:output:0)lstm_104/strided_slice_1/stack_1:output:0)lstm_104/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_104/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_104/TensorArrayV2TensorListReserve-lstm_104/TensorArrayV2/element_shape:output:0!lstm_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_104/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_104/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_104/transpose:y:0Glstm_104/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_104/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_104/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_104/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_104/strided_slice_2StridedSlicelstm_104/transpose:y:0'lstm_104/strided_slice_2/stack:output:0)lstm_104/strided_slice_2/stack_1:output:0)lstm_104/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_104/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp5lstm_104_lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_104/lstm_cell_341/MatMulMatMul!lstm_104/strided_slice_2:output:04lstm_104/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_104/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp7lstm_104_lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_104/lstm_cell_341/MatMul_1MatMullstm_104/zeros:output:06lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_104/lstm_cell_341/addAddV2'lstm_104/lstm_cell_341/MatMul:product:0)lstm_104/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_104/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp6lstm_104_lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_104/lstm_cell_341/BiasAddBiasAddlstm_104/lstm_cell_341/add:z:05lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_104/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_104/lstm_cell_341/splitSplit/lstm_104/lstm_cell_341/split/split_dim:output:0'lstm_104/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_104/lstm_cell_341/SigmoidSigmoid%lstm_104/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_104/lstm_cell_341/Sigmoid_1Sigmoid%lstm_104/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_104/lstm_cell_341/mulMul$lstm_104/lstm_cell_341/Sigmoid_1:y:0lstm_104/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_104/lstm_cell_341/ReluRelu%lstm_104/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_104/lstm_cell_341/mul_1Mul"lstm_104/lstm_cell_341/Sigmoid:y:0)lstm_104/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_104/lstm_cell_341/add_1AddV2lstm_104/lstm_cell_341/mul:z:0 lstm_104/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_104/lstm_cell_341/Sigmoid_2Sigmoid%lstm_104/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_104/lstm_cell_341/Relu_1Relu lstm_104/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_104/lstm_cell_341/mul_2Mul$lstm_104/lstm_cell_341/Sigmoid_2:y:0+lstm_104/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_104/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_104/TensorArrayV2_1TensorListReserve/lstm_104/TensorArrayV2_1/element_shape:output:0!lstm_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_104/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_104/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_104/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_104/whileWhile$lstm_104/while/loop_counter:output:0*lstm_104/while/maximum_iterations:output:0lstm_104/time:output:0!lstm_104/TensorArrayV2_1:handle:0lstm_104/zeros:output:0lstm_104/zeros_1:output:0!lstm_104/strided_slice_1:output:0@lstm_104/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_104_lstm_cell_341_matmul_readvariableop_resource7lstm_104_lstm_cell_341_matmul_1_readvariableop_resource6lstm_104_lstm_cell_341_biasadd_readvariableop_resource*
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
lstm_104_while_body_2065888*'
condR
lstm_104_while_cond_2065887*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_104/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_104/TensorArrayV2Stack/TensorListStackTensorListStacklstm_104/while:output:3Blstm_104/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_104/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_104/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_104/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_104/strided_slice_3StridedSlice4lstm_104/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_104/strided_slice_3/stack:output:0)lstm_104/strided_slice_3/stack_1:output:0)lstm_104/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_104/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_104/transpose_1	Transpose4lstm_104/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_104/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_104/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_34/MatMulMatMul!lstm_104/strided_slice_3:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_34/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp.^lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp-^lstm_102/lstm_cell_339/MatMul/ReadVariableOp/^lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp^lstm_102/while.^lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp-^lstm_103/lstm_cell_340/MatMul/ReadVariableOp/^lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp^lstm_103/while.^lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp-^lstm_104/lstm_cell_341/MatMul/ReadVariableOp/^lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp^lstm_104/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2^
-lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp-lstm_102/lstm_cell_339/BiasAdd/ReadVariableOp2\
,lstm_102/lstm_cell_339/MatMul/ReadVariableOp,lstm_102/lstm_cell_339/MatMul/ReadVariableOp2`
.lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp.lstm_102/lstm_cell_339/MatMul_1/ReadVariableOp2 
lstm_102/whilelstm_102/while2^
-lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp-lstm_103/lstm_cell_340/BiasAdd/ReadVariableOp2\
,lstm_103/lstm_cell_340/MatMul/ReadVariableOp,lstm_103/lstm_cell_340/MatMul/ReadVariableOp2`
.lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp.lstm_103/lstm_cell_340/MatMul_1/ReadVariableOp2 
lstm_103/whilelstm_103/while2^
-lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp-lstm_104/lstm_cell_341/BiasAdd/ReadVariableOp2\
,lstm_104/lstm_cell_341/MatMul/ReadVariableOp,lstm_104/lstm_cell_341/MatMul/ReadVariableOp2`
.lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp.lstm_104/lstm_cell_341/MatMul_1/ReadVariableOp2 
lstm_104/whilelstm_104/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2066366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2066366___redundant_placeholder05
1while_while_cond_2066366___redundant_placeholder15
1while_while_cond_2066366___redundant_placeholder25
1while_while_cond_2066366___redundant_placeholder3
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
/__inference_lstm_cell_339_layer_call_fn_2067879

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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2063023o
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
?
while_body_2067456
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_341_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_341_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_341_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_341_matmul_readvariableop_resource:2(F
4while_lstm_cell_341_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_341_biasadd_readvariableop_resource:(??*while/lstm_cell_341/BiasAdd/ReadVariableOp?)while/lstm_cell_341/MatMul/ReadVariableOp?+while/lstm_cell_341/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_341/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_341_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_341/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_341_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_341/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_341/addAddV2$while/lstm_cell_341/MatMul:product:0&while/lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_341_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_341/BiasAddBiasAddwhile/lstm_cell_341/add:z:02while/lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_341/splitSplit,while/lstm_cell_341/split/split_dim:output:0$while/lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_341/SigmoidSigmoid"while/lstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_341/Sigmoid_1Sigmoid"while/lstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mulMul!while/lstm_cell_341/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_341/ReluRelu"while/lstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mul_1Mulwhile/lstm_cell_341/Sigmoid:y:0&while/lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/add_1AddV2while/lstm_cell_341/mul:z:0while/lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_341/Sigmoid_2Sigmoid"while/lstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_341/Relu_1Reluwhile/lstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_341/mul_2Mul!while/lstm_cell_341/Sigmoid_2:y:0(while/lstm_cell_341/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_341/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_341/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_341/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_341/BiasAdd/ReadVariableOp*^while/lstm_cell_341/MatMul/ReadVariableOp,^while/lstm_cell_341/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_341_biasadd_readvariableop_resource5while_lstm_cell_341_biasadd_readvariableop_resource_0"n
4while_lstm_cell_341_matmul_1_readvariableop_resource6while_lstm_cell_341_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_341_matmul_readvariableop_resource4while_lstm_cell_341_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_341/BiasAdd/ReadVariableOp*while/lstm_cell_341/BiasAdd/ReadVariableOp2V
)while/lstm_cell_341/MatMul/ReadVariableOp)while/lstm_cell_341/MatMul/ReadVariableOp2Z
+while/lstm_cell_341/MatMul_1/ReadVariableOp+while/lstm_cell_341/MatMul_1/ReadVariableOp: 
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067826

inputs>
,lstm_cell_341_matmul_readvariableop_resource:2(@
.lstm_cell_341_matmul_1_readvariableop_resource:
(;
-lstm_cell_341_biasadd_readvariableop_resource:(
identity??$lstm_cell_341/BiasAdd/ReadVariableOp?#lstm_cell_341/MatMul/ReadVariableOp?%lstm_cell_341/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_341/MatMul/ReadVariableOpReadVariableOp,lstm_cell_341_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_341/MatMulMatMulstrided_slice_2:output:0+lstm_cell_341/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_341/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_341_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_341/MatMul_1MatMulzeros:output:0-lstm_cell_341/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_341/addAddV2lstm_cell_341/MatMul:product:0 lstm_cell_341/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_341/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_341_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_341/BiasAddBiasAddlstm_cell_341/add:z:0,lstm_cell_341/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_341/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_341/splitSplit&lstm_cell_341/split/split_dim:output:0lstm_cell_341/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_341/SigmoidSigmoidlstm_cell_341/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_341/Sigmoid_1Sigmoidlstm_cell_341/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_341/mulMullstm_cell_341/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_341/ReluRelulstm_cell_341/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_341/mul_1Mullstm_cell_341/Sigmoid:y:0 lstm_cell_341/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_341/add_1AddV2lstm_cell_341/mul:z:0lstm_cell_341/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_341/Sigmoid_2Sigmoidlstm_cell_341/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_341/Relu_1Relulstm_cell_341/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_341/mul_2Mullstm_cell_341/Sigmoid_2:y:0"lstm_cell_341/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_341_matmul_readvariableop_resource.lstm_cell_341_matmul_1_readvariableop_resource-lstm_cell_341_biasadd_readvariableop_resource*
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
while_body_2067742*
condR
while_cond_2067741*K
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
NoOpNoOp%^lstm_cell_341/BiasAdd/ReadVariableOp$^lstm_cell_341/MatMul/ReadVariableOp&^lstm_cell_341/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_341/BiasAdd/ReadVariableOp$lstm_cell_341/BiasAdd/ReadVariableOp2J
#lstm_cell_341/MatMul/ReadVariableOp#lstm_cell_341/MatMul/ReadVariableOp2N
%lstm_cell_341/MatMul_1/ReadVariableOp%lstm_cell_341/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2068139

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
?
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065005
lstm_102_input#
lstm_102_2064978:	?#
lstm_102_2064980:	d?
lstm_102_2064982:	?#
lstm_103_2064985:	d?#
lstm_103_2064987:	2?
lstm_103_2064989:	?"
lstm_104_2064992:2("
lstm_104_2064994:
(
lstm_104_2064996:("
dense_34_2064999:

dense_34_2065001:
identity?? dense_34/StatefulPartitionedCall? lstm_102/StatefulPartitionedCall? lstm_103/StatefulPartitionedCall? lstm_104/StatefulPartitionedCall?
 lstm_102/StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputlstm_102_2064978lstm_102_2064980lstm_102_2064982*
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2064009?
 lstm_103/StatefulPartitionedCallStatefulPartitionedCall)lstm_102/StatefulPartitionedCall:output:0lstm_103_2064985lstm_103_2064987lstm_103_2064989*
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2064159?
 lstm_104/StatefulPartitionedCallStatefulPartitionedCall)lstm_103/StatefulPartitionedCall:output:0lstm_104_2064992lstm_104_2064994lstm_104_2064996*
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2064309?
 dense_34/StatefulPartitionedCallStatefulPartitionedCall)lstm_104/StatefulPartitionedCall:output:0dense_34_2064999dense_34_2065001*
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
E__inference_dense_34_layer_call_and_return_conditional_losses_2064327x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_34/StatefulPartitionedCall!^lstm_102/StatefulPartitionedCall!^lstm_103/StatefulPartitionedCall!^lstm_104/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 lstm_102/StatefulPartitionedCall lstm_102/StatefulPartitionedCall2D
 lstm_103/StatefulPartitionedCall lstm_103/StatefulPartitionedCall2D
 lstm_104/StatefulPartitionedCall lstm_104/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_102_input
?
?
)sequential_34_lstm_102_while_cond_2062441J
Fsequential_34_lstm_102_while_sequential_34_lstm_102_while_loop_counterP
Lsequential_34_lstm_102_while_sequential_34_lstm_102_while_maximum_iterations,
(sequential_34_lstm_102_while_placeholder.
*sequential_34_lstm_102_while_placeholder_1.
*sequential_34_lstm_102_while_placeholder_2.
*sequential_34_lstm_102_while_placeholder_3L
Hsequential_34_lstm_102_while_less_sequential_34_lstm_102_strided_slice_1c
_sequential_34_lstm_102_while_sequential_34_lstm_102_while_cond_2062441___redundant_placeholder0c
_sequential_34_lstm_102_while_sequential_34_lstm_102_while_cond_2062441___redundant_placeholder1c
_sequential_34_lstm_102_while_sequential_34_lstm_102_while_cond_2062441___redundant_placeholder2c
_sequential_34_lstm_102_while_sequential_34_lstm_102_while_cond_2062441___redundant_placeholder3)
%sequential_34_lstm_102_while_identity
?
!sequential_34/lstm_102/while/LessLess(sequential_34_lstm_102_while_placeholderHsequential_34_lstm_102_while_less_sequential_34_lstm_102_strided_slice_1*
T0*
_output_shapes
: y
%sequential_34/lstm_102/while/IdentityIdentity%sequential_34/lstm_102/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_34_lstm_102_while_identity.sequential_34/lstm_102/while/Identity:output:0*(
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
?
)sequential_34_lstm_103_while_cond_2062580J
Fsequential_34_lstm_103_while_sequential_34_lstm_103_while_loop_counterP
Lsequential_34_lstm_103_while_sequential_34_lstm_103_while_maximum_iterations,
(sequential_34_lstm_103_while_placeholder.
*sequential_34_lstm_103_while_placeholder_1.
*sequential_34_lstm_103_while_placeholder_2.
*sequential_34_lstm_103_while_placeholder_3L
Hsequential_34_lstm_103_while_less_sequential_34_lstm_103_strided_slice_1c
_sequential_34_lstm_103_while_sequential_34_lstm_103_while_cond_2062580___redundant_placeholder0c
_sequential_34_lstm_103_while_sequential_34_lstm_103_while_cond_2062580___redundant_placeholder1c
_sequential_34_lstm_103_while_sequential_34_lstm_103_while_cond_2062580___redundant_placeholder2c
_sequential_34_lstm_103_while_sequential_34_lstm_103_while_cond_2062580___redundant_placeholder3)
%sequential_34_lstm_103_while_identity
?
!sequential_34/lstm_103/while/LessLess(sequential_34_lstm_103_while_placeholderHsequential_34_lstm_103_while_less_sequential_34_lstm_103_strided_slice_1*
T0*
_output_shapes
: y
%sequential_34/lstm_103/while/IdentityIdentity%sequential_34/lstm_103/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_34_lstm_103_while_identity.sequential_34/lstm_103/while/Identity:output:0*(
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
/__inference_lstm_cell_341_layer_call_fn_2068075

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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2063723o
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
while_body_2063925
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_339_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_339_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_339_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_339_matmul_readvariableop_resource:	?G
4while_lstm_cell_339_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_339_biasadd_readvariableop_resource:	???*while/lstm_cell_339/BiasAdd/ReadVariableOp?)while/lstm_cell_339/MatMul/ReadVariableOp?+while/lstm_cell_339/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_339/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_339/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_339/addAddV2$while/lstm_cell_339/MatMul:product:0&while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_339/BiasAddBiasAddwhile/lstm_cell_339/add:z:02while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_339/splitSplit,while/lstm_cell_339/split/split_dim:output:0$while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_339/SigmoidSigmoid"while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_339/Sigmoid_1Sigmoid"while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mulMul!while/lstm_cell_339/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_339/ReluRelu"while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mul_1Mulwhile/lstm_cell_339/Sigmoid:y:0&while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/add_1AddV2while/lstm_cell_339/mul:z:0while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_339/Sigmoid_2Sigmoid"while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_339/Relu_1Reluwhile/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mul_2Mul!while/lstm_cell_339/Sigmoid_2:y:0(while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_339/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_339/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_339/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_339/BiasAdd/ReadVariableOp*^while/lstm_cell_339/MatMul/ReadVariableOp,^while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_339_biasadd_readvariableop_resource5while_lstm_cell_339_biasadd_readvariableop_resource_0"n
4while_lstm_cell_339_matmul_1_readvariableop_resource6while_lstm_cell_339_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_339_matmul_readvariableop_resource4while_lstm_cell_339_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_339/BiasAdd/ReadVariableOp*while/lstm_cell_339/BiasAdd/ReadVariableOp2V
)while/lstm_cell_339/MatMul/ReadVariableOp)while/lstm_cell_339/MatMul/ReadVariableOp2Z
+while/lstm_cell_339/MatMul_1/ReadVariableOp+while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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
while_body_2066367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_339_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_339_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_339_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_339_matmul_readvariableop_resource:	?G
4while_lstm_cell_339_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_339_biasadd_readvariableop_resource:	???*while/lstm_cell_339/BiasAdd/ReadVariableOp?)while/lstm_cell_339/MatMul/ReadVariableOp?+while/lstm_cell_339/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_339/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_339_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_339/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_339/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_339/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_339_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_339/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_339/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_339/addAddV2$while/lstm_cell_339/MatMul:product:0&while/lstm_cell_339/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_339/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_339_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_339/BiasAddBiasAddwhile/lstm_cell_339/add:z:02while/lstm_cell_339/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_339/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_339/splitSplit,while/lstm_cell_339/split/split_dim:output:0$while/lstm_cell_339/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_339/SigmoidSigmoid"while/lstm_cell_339/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_339/Sigmoid_1Sigmoid"while/lstm_cell_339/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mulMul!while/lstm_cell_339/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_339/ReluRelu"while/lstm_cell_339/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mul_1Mulwhile/lstm_cell_339/Sigmoid:y:0&while/lstm_cell_339/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/add_1AddV2while/lstm_cell_339/mul:z:0while/lstm_cell_339/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_339/Sigmoid_2Sigmoid"while/lstm_cell_339/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_339/Relu_1Reluwhile/lstm_cell_339/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_339/mul_2Mul!while/lstm_cell_339/Sigmoid_2:y:0(while/lstm_cell_339/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_339/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_339/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_339/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_339/BiasAdd/ReadVariableOp*^while/lstm_cell_339/MatMul/ReadVariableOp,^while/lstm_cell_339/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_339_biasadd_readvariableop_resource5while_lstm_cell_339_biasadd_readvariableop_resource_0"n
4while_lstm_cell_339_matmul_1_readvariableop_resource6while_lstm_cell_339_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_339_matmul_readvariableop_resource4while_lstm_cell_339_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_339/BiasAdd/ReadVariableOp*while/lstm_cell_339/BiasAdd/ReadVariableOp2V
)while/lstm_cell_339/MatMul/ReadVariableOp)while/lstm_cell_339/MatMul/ReadVariableOp2Z
+while/lstm_cell_339/MatMul_1/ReadVariableOp+while/lstm_cell_339/MatMul_1/ReadVariableOp: 
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
lstm_102_input;
 serving_default_lstm_102_input:0?????????<
dense_340
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
2dense_34/kernel
:2dense_34/bias
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
0:.	?2lstm_102/lstm_cell_102/kernel
::8	d?2'lstm_102/lstm_cell_102/recurrent_kernel
*:(?2lstm_102/lstm_cell_102/bias
0:.	d?2lstm_103/lstm_cell_103/kernel
::8	2?2'lstm_103/lstm_cell_103/recurrent_kernel
*:(?2lstm_103/lstm_cell_103/bias
/:-2(2lstm_104/lstm_cell_104/kernel
9:7
(2'lstm_104/lstm_cell_104/recurrent_kernel
):'(2lstm_104/lstm_cell_104/bias
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
2Adam/dense_34/kernel/m
 :2Adam/dense_34/bias/m
5:3	?2$Adam/lstm_102/lstm_cell_102/kernel/m
?:=	d?2.Adam/lstm_102/lstm_cell_102/recurrent_kernel/m
/:-?2"Adam/lstm_102/lstm_cell_102/bias/m
5:3	d?2$Adam/lstm_103/lstm_cell_103/kernel/m
?:=	2?2.Adam/lstm_103/lstm_cell_103/recurrent_kernel/m
/:-?2"Adam/lstm_103/lstm_cell_103/bias/m
4:22(2$Adam/lstm_104/lstm_cell_104/kernel/m
>:<
(2.Adam/lstm_104/lstm_cell_104/recurrent_kernel/m
.:,(2"Adam/lstm_104/lstm_cell_104/bias/m
&:$
2Adam/dense_34/kernel/v
 :2Adam/dense_34/bias/v
5:3	?2$Adam/lstm_102/lstm_cell_102/kernel/v
?:=	d?2.Adam/lstm_102/lstm_cell_102/recurrent_kernel/v
/:-?2"Adam/lstm_102/lstm_cell_102/bias/v
5:3	d?2$Adam/lstm_103/lstm_cell_103/kernel/v
?:=	2?2.Adam/lstm_103/lstm_cell_103/recurrent_kernel/v
/:-?2"Adam/lstm_103/lstm_cell_103/bias/v
4:22(2$Adam/lstm_104/lstm_cell_104/kernel/v
>:<
(2.Adam/lstm_104/lstm_cell_104/recurrent_kernel/v
.:,(2"Adam/lstm_104/lstm_cell_104/bias/v
?2?
/__inference_sequential_34_layer_call_fn_2064359
/__inference_sequential_34_layer_call_fn_2065097
/__inference_sequential_34_layer_call_fn_2065124
/__inference_sequential_34_layer_call_fn_2064975?
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065551
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065978
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065005
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065035?
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
"__inference__wrapped_model_2062810lstm_102_input"?
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
*__inference_lstm_102_layer_call_fn_2065989
*__inference_lstm_102_layer_call_fn_2066000
*__inference_lstm_102_layer_call_fn_2066011
*__inference_lstm_102_layer_call_fn_2066022?
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066165
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066308
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066451
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066594?
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
*__inference_lstm_103_layer_call_fn_2066605
*__inference_lstm_103_layer_call_fn_2066616
*__inference_lstm_103_layer_call_fn_2066627
*__inference_lstm_103_layer_call_fn_2066638?
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2066781
E__inference_lstm_103_layer_call_and_return_conditional_losses_2066924
E__inference_lstm_103_layer_call_and_return_conditional_losses_2067067
E__inference_lstm_103_layer_call_and_return_conditional_losses_2067210?
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
*__inference_lstm_104_layer_call_fn_2067221
*__inference_lstm_104_layer_call_fn_2067232
*__inference_lstm_104_layer_call_fn_2067243
*__inference_lstm_104_layer_call_fn_2067254?
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067397
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067540
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067683
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067826?
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
*__inference_dense_34_layer_call_fn_2067835?
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
E__inference_dense_34_layer_call_and_return_conditional_losses_2067845?
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
%__inference_signature_wrapper_2065070lstm_102_input"?
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
/__inference_lstm_cell_339_layer_call_fn_2067862
/__inference_lstm_cell_339_layer_call_fn_2067879?
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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2067911
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2067943?
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
/__inference_lstm_cell_340_layer_call_fn_2067960
/__inference_lstm_cell_340_layer_call_fn_2067977?
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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2068009
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2068041?
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
/__inference_lstm_cell_341_layer_call_fn_2068058
/__inference_lstm_cell_341_layer_call_fn_2068075?
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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2068107
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2068139?
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
"__inference__wrapped_model_2062810-./012345!";?8
1?.
,?)
lstm_102_input?????????
? "3?0
.
dense_34"?
dense_34??????????
E__inference_dense_34_layer_call_and_return_conditional_losses_2067845\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_34_layer_call_fn_2067835O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066165?-./O?L
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066308?-./O?L
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066451q-./??<
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_2066594q-./??<
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
*__inference_lstm_102_layer_call_fn_2065989}-./O?L
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
*__inference_lstm_102_layer_call_fn_2066000}-./O?L
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
*__inference_lstm_102_layer_call_fn_2066011d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_102_layer_call_fn_2066022d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_103_layer_call_and_return_conditional_losses_2066781?012O?L
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2066924?012O?L
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2067067q012??<
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
E__inference_lstm_103_layer_call_and_return_conditional_losses_2067210q012??<
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
*__inference_lstm_103_layer_call_fn_2066605}012O?L
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
*__inference_lstm_103_layer_call_fn_2066616}012O?L
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
*__inference_lstm_103_layer_call_fn_2066627d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_103_layer_call_fn_2066638d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067397}345O?L
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067540}345O?L
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067683m345??<
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
E__inference_lstm_104_layer_call_and_return_conditional_losses_2067826m345??<
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
*__inference_lstm_104_layer_call_fn_2067221p345O?L
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
*__inference_lstm_104_layer_call_fn_2067232p345O?L
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
*__inference_lstm_104_layer_call_fn_2067243`345??<
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
*__inference_lstm_104_layer_call_fn_2067254`345??<
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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2067911?-./??}
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
J__inference_lstm_cell_339_layer_call_and_return_conditional_losses_2067943?-./??}
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
/__inference_lstm_cell_339_layer_call_fn_2067862?-./??}
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
/__inference_lstm_cell_339_layer_call_fn_2067879?-./??}
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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2068009?012??}
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
J__inference_lstm_cell_340_layer_call_and_return_conditional_losses_2068041?012??}
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
/__inference_lstm_cell_340_layer_call_fn_2067960?012??}
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
/__inference_lstm_cell_340_layer_call_fn_2067977?012??}
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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2068107?345??}
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
J__inference_lstm_cell_341_layer_call_and_return_conditional_losses_2068139?345??}
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
/__inference_lstm_cell_341_layer_call_fn_2068058?345??}
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
/__inference_lstm_cell_341_layer_call_fn_2068075?345??}
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065005y-./012345!"C?@
9?6
,?)
lstm_102_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065035y-./012345!"C?@
9?6
,?)
lstm_102_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065551q-./012345!";?8
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_2065978q-./012345!";?8
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
/__inference_sequential_34_layer_call_fn_2064359l-./012345!"C?@
9?6
,?)
lstm_102_input?????????
p 

 
? "???????????
/__inference_sequential_34_layer_call_fn_2064975l-./012345!"C?@
9?6
,?)
lstm_102_input?????????
p

 
? "???????????
/__inference_sequential_34_layer_call_fn_2065097d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_34_layer_call_fn_2065124d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2065070?-./012345!"M?J
? 
C?@
>
lstm_102_input,?)
lstm_102_input?????????"3?0
.
dense_34"?
dense_34?????????