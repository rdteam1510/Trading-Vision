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
dense_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_59/kernel
s
#dense_59/kernel/Read/ReadVariableOpReadVariableOpdense_59/kernel*
_output_shapes

:
*
dtype0
r
dense_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_59/bias
k
!dense_59/bias/Read/ReadVariableOpReadVariableOpdense_59/bias*
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
lstm_177/lstm_cell_177/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_177/lstm_cell_177/kernel
?
1lstm_177/lstm_cell_177/kernel/Read/ReadVariableOpReadVariableOplstm_177/lstm_cell_177/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_177/lstm_cell_177/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_177/lstm_cell_177/recurrent_kernel
?
;lstm_177/lstm_cell_177/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_177/lstm_cell_177/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_177/lstm_cell_177/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_177/lstm_cell_177/bias
?
/lstm_177/lstm_cell_177/bias/Read/ReadVariableOpReadVariableOplstm_177/lstm_cell_177/bias*
_output_shapes	
:?*
dtype0
?
lstm_178/lstm_cell_178/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_178/lstm_cell_178/kernel
?
1lstm_178/lstm_cell_178/kernel/Read/ReadVariableOpReadVariableOplstm_178/lstm_cell_178/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_178/lstm_cell_178/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_178/lstm_cell_178/recurrent_kernel
?
;lstm_178/lstm_cell_178/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_178/lstm_cell_178/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_178/lstm_cell_178/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_178/lstm_cell_178/bias
?
/lstm_178/lstm_cell_178/bias/Read/ReadVariableOpReadVariableOplstm_178/lstm_cell_178/bias*
_output_shapes	
:?*
dtype0
?
lstm_179/lstm_cell_179/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_179/lstm_cell_179/kernel
?
1lstm_179/lstm_cell_179/kernel/Read/ReadVariableOpReadVariableOplstm_179/lstm_cell_179/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_179/lstm_cell_179/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_179/lstm_cell_179/recurrent_kernel
?
;lstm_179/lstm_cell_179/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_179/lstm_cell_179/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_179/lstm_cell_179/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_179/lstm_cell_179/bias
?
/lstm_179/lstm_cell_179/bias/Read/ReadVariableOpReadVariableOplstm_179/lstm_cell_179/bias*
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
Adam/dense_59/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_59/kernel/m
?
*Adam/dense_59/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_59/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_59/bias/m
y
(Adam/dense_59/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_177/lstm_cell_177/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_177/lstm_cell_177/kernel/m
?
8Adam/lstm_177/lstm_cell_177/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_177/lstm_cell_177/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_177/lstm_cell_177/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_177/lstm_cell_177/recurrent_kernel/m
?
BAdam/lstm_177/lstm_cell_177/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_177/lstm_cell_177/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_177/lstm_cell_177/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_177/lstm_cell_177/bias/m
?
6Adam/lstm_177/lstm_cell_177/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_177/lstm_cell_177/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_178/lstm_cell_178/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_178/lstm_cell_178/kernel/m
?
8Adam/lstm_178/lstm_cell_178/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_178/lstm_cell_178/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_178/lstm_cell_178/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_178/lstm_cell_178/recurrent_kernel/m
?
BAdam/lstm_178/lstm_cell_178/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_178/lstm_cell_178/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_178/lstm_cell_178/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_178/lstm_cell_178/bias/m
?
6Adam/lstm_178/lstm_cell_178/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_178/lstm_cell_178/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_179/lstm_cell_179/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_179/lstm_cell_179/kernel/m
?
8Adam/lstm_179/lstm_cell_179/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_179/lstm_cell_179/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_179/lstm_cell_179/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_179/lstm_cell_179/recurrent_kernel/m
?
BAdam/lstm_179/lstm_cell_179/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_179/lstm_cell_179/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_179/lstm_cell_179/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_179/lstm_cell_179/bias/m
?
6Adam/lstm_179/lstm_cell_179/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_179/lstm_cell_179/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_59/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_59/kernel/v
?
*Adam/dense_59/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_59/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_59/bias/v
y
(Adam/dense_59/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_177/lstm_cell_177/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_177/lstm_cell_177/kernel/v
?
8Adam/lstm_177/lstm_cell_177/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_177/lstm_cell_177/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_177/lstm_cell_177/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_177/lstm_cell_177/recurrent_kernel/v
?
BAdam/lstm_177/lstm_cell_177/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_177/lstm_cell_177/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_177/lstm_cell_177/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_177/lstm_cell_177/bias/v
?
6Adam/lstm_177/lstm_cell_177/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_177/lstm_cell_177/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_178/lstm_cell_178/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_178/lstm_cell_178/kernel/v
?
8Adam/lstm_178/lstm_cell_178/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_178/lstm_cell_178/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_178/lstm_cell_178/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_178/lstm_cell_178/recurrent_kernel/v
?
BAdam/lstm_178/lstm_cell_178/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_178/lstm_cell_178/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_178/lstm_cell_178/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_178/lstm_cell_178/bias/v
?
6Adam/lstm_178/lstm_cell_178/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_178/lstm_cell_178/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_179/lstm_cell_179/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_179/lstm_cell_179/kernel/v
?
8Adam/lstm_179/lstm_cell_179/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_179/lstm_cell_179/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_179/lstm_cell_179/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_179/lstm_cell_179/recurrent_kernel/v
?
BAdam/lstm_179/lstm_cell_179/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_179/lstm_cell_179/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_179/lstm_cell_179/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_179/lstm_cell_179/bias/v
?
6Adam/lstm_179/lstm_cell_179/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_179/lstm_cell_179/bias/v*
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
VARIABLE_VALUEdense_59/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_59/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_177/lstm_cell_177/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_177/lstm_cell_177/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_177/lstm_cell_177/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_178/lstm_cell_178/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_178/lstm_cell_178/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_178/lstm_cell_178/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_179/lstm_cell_179/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_179/lstm_cell_179/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_179/lstm_cell_179/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_59/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_59/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_177/lstm_cell_177/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_177/lstm_cell_177/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_177/lstm_cell_177/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_178/lstm_cell_178/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_178/lstm_cell_178/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_178/lstm_cell_178/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_179/lstm_cell_179/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_179/lstm_cell_179/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_179/lstm_cell_179/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_59/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_59/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_177/lstm_cell_177/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_177/lstm_cell_177/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_177/lstm_cell_177/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_178/lstm_cell_178/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_178/lstm_cell_178/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_178/lstm_cell_178/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_179/lstm_cell_179/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_179/lstm_cell_179/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_179/lstm_cell_179/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_177_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_177_inputlstm_177/lstm_cell_177/kernel'lstm_177/lstm_cell_177/recurrent_kernellstm_177/lstm_cell_177/biaslstm_178/lstm_cell_178/kernel'lstm_178/lstm_cell_178/recurrent_kernellstm_178/lstm_cell_178/biaslstm_179/lstm_cell_179/kernel'lstm_179/lstm_cell_179/recurrent_kernellstm_179/lstm_cell_179/biasdense_59/kerneldense_59/bias*
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
%__inference_signature_wrapper_2192109
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_59/kernel/Read/ReadVariableOp!dense_59/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_177/lstm_cell_177/kernel/Read/ReadVariableOp;lstm_177/lstm_cell_177/recurrent_kernel/Read/ReadVariableOp/lstm_177/lstm_cell_177/bias/Read/ReadVariableOp1lstm_178/lstm_cell_178/kernel/Read/ReadVariableOp;lstm_178/lstm_cell_178/recurrent_kernel/Read/ReadVariableOp/lstm_178/lstm_cell_178/bias/Read/ReadVariableOp1lstm_179/lstm_cell_179/kernel/Read/ReadVariableOp;lstm_179/lstm_cell_179/recurrent_kernel/Read/ReadVariableOp/lstm_179/lstm_cell_179/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_59/kernel/m/Read/ReadVariableOp(Adam/dense_59/bias/m/Read/ReadVariableOp8Adam/lstm_177/lstm_cell_177/kernel/m/Read/ReadVariableOpBAdam/lstm_177/lstm_cell_177/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_177/lstm_cell_177/bias/m/Read/ReadVariableOp8Adam/lstm_178/lstm_cell_178/kernel/m/Read/ReadVariableOpBAdam/lstm_178/lstm_cell_178/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_178/lstm_cell_178/bias/m/Read/ReadVariableOp8Adam/lstm_179/lstm_cell_179/kernel/m/Read/ReadVariableOpBAdam/lstm_179/lstm_cell_179/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_179/lstm_cell_179/bias/m/Read/ReadVariableOp*Adam/dense_59/kernel/v/Read/ReadVariableOp(Adam/dense_59/bias/v/Read/ReadVariableOp8Adam/lstm_177/lstm_cell_177/kernel/v/Read/ReadVariableOpBAdam/lstm_177/lstm_cell_177/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_177/lstm_cell_177/bias/v/Read/ReadVariableOp8Adam/lstm_178/lstm_cell_178/kernel/v/Read/ReadVariableOpBAdam/lstm_178/lstm_cell_178/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_178/lstm_cell_178/bias/v/Read/ReadVariableOp8Adam/lstm_179/lstm_cell_179/kernel/v/Read/ReadVariableOpBAdam/lstm_179/lstm_cell_179/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_179/lstm_cell_179/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2195321
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_59/kerneldense_59/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_177/lstm_cell_177/kernel'lstm_177/lstm_cell_177/recurrent_kernellstm_177/lstm_cell_177/biaslstm_178/lstm_cell_178/kernel'lstm_178/lstm_cell_178/recurrent_kernellstm_178/lstm_cell_178/biaslstm_179/lstm_cell_179/kernel'lstm_179/lstm_cell_179/recurrent_kernellstm_179/lstm_cell_179/biastotalcountAdam/dense_59/kernel/mAdam/dense_59/bias/m$Adam/lstm_177/lstm_cell_177/kernel/m.Adam/lstm_177/lstm_cell_177/recurrent_kernel/m"Adam/lstm_177/lstm_cell_177/bias/m$Adam/lstm_178/lstm_cell_178/kernel/m.Adam/lstm_178/lstm_cell_178/recurrent_kernel/m"Adam/lstm_178/lstm_cell_178/bias/m$Adam/lstm_179/lstm_cell_179/kernel/m.Adam/lstm_179/lstm_cell_179/recurrent_kernel/m"Adam/lstm_179/lstm_cell_179/bias/mAdam/dense_59/kernel/vAdam/dense_59/bias/v$Adam/lstm_177/lstm_cell_177/kernel/v.Adam/lstm_177/lstm_cell_177/recurrent_kernel/v"Adam/lstm_177/lstm_cell_177/bias/v$Adam/lstm_178/lstm_cell_178/kernel/v.Adam/lstm_178/lstm_cell_178/recurrent_kernel/v"Adam/lstm_178/lstm_cell_178/bias/v$Adam/lstm_179/lstm_cell_179/kernel/v.Adam/lstm_179/lstm_cell_179/recurrent_kernel/v"Adam/lstm_179/lstm_cell_179/bias/v*4
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
#__inference__traced_restore_2195451??+
?J
?
E__inference_lstm_179_layer_call_and_return_conditional_losses_2191348

inputs>
,lstm_cell_362_matmul_readvariableop_resource:2(@
.lstm_cell_362_matmul_1_readvariableop_resource:
(;
-lstm_cell_362_biasadd_readvariableop_resource:(
identity??$lstm_cell_362/BiasAdd/ReadVariableOp?#lstm_cell_362/MatMul/ReadVariableOp?%lstm_cell_362/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_362/MatMul/ReadVariableOpReadVariableOp,lstm_cell_362_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_362/MatMulMatMulstrided_slice_2:output:0+lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_362_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_362/MatMul_1MatMulzeros:output:0-lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_362/addAddV2lstm_cell_362/MatMul:product:0 lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_362_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_362/BiasAddBiasAddlstm_cell_362/add:z:0,lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_362/splitSplit&lstm_cell_362/split/split_dim:output:0lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_362/SigmoidSigmoidlstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_362/Sigmoid_1Sigmoidlstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_362/mulMullstm_cell_362/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_362/ReluRelulstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_362/mul_1Mullstm_cell_362/Sigmoid:y:0 lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_362/add_1AddV2lstm_cell_362/mul:z:0lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_362/Sigmoid_2Sigmoidlstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_362/Relu_1Relulstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_362/mul_2Mullstm_cell_362/Sigmoid_2:y:0"lstm_cell_362/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_362_matmul_readvariableop_resource.lstm_cell_362_matmul_1_readvariableop_resource-lstm_cell_362_biasadd_readvariableop_resource*
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
while_body_2191264*
condR
while_cond_2191263*K
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
NoOpNoOp%^lstm_cell_362/BiasAdd/ReadVariableOp$^lstm_cell_362/MatMul/ReadVariableOp&^lstm_cell_362/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_362/BiasAdd/ReadVariableOp$lstm_cell_362/BiasAdd/ReadVariableOp2J
#lstm_cell_362/MatMul/ReadVariableOp#lstm_cell_362/MatMul/ReadVariableOp2N
%lstm_cell_362/MatMul_1/ReadVariableOp%lstm_cell_362/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_362_layer_call_fn_2195114

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
J__inference_lstm_cell_362_layer_call_and_return_conditional_losses_2190762o
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
??
?
J__inference_sequential_59_layer_call_and_return_conditional_losses_2193017

inputsH
5lstm_177_lstm_cell_360_matmul_readvariableop_resource:	?J
7lstm_177_lstm_cell_360_matmul_1_readvariableop_resource:	d?E
6lstm_177_lstm_cell_360_biasadd_readvariableop_resource:	?H
5lstm_178_lstm_cell_361_matmul_readvariableop_resource:	d?J
7lstm_178_lstm_cell_361_matmul_1_readvariableop_resource:	2?E
6lstm_178_lstm_cell_361_biasadd_readvariableop_resource:	?G
5lstm_179_lstm_cell_362_matmul_readvariableop_resource:2(I
7lstm_179_lstm_cell_362_matmul_1_readvariableop_resource:
(D
6lstm_179_lstm_cell_362_biasadd_readvariableop_resource:(9
'dense_59_matmul_readvariableop_resource:
6
(dense_59_biasadd_readvariableop_resource:
identity??dense_59/BiasAdd/ReadVariableOp?dense_59/MatMul/ReadVariableOp?-lstm_177/lstm_cell_360/BiasAdd/ReadVariableOp?,lstm_177/lstm_cell_360/MatMul/ReadVariableOp?.lstm_177/lstm_cell_360/MatMul_1/ReadVariableOp?lstm_177/while?-lstm_178/lstm_cell_361/BiasAdd/ReadVariableOp?,lstm_178/lstm_cell_361/MatMul/ReadVariableOp?.lstm_178/lstm_cell_361/MatMul_1/ReadVariableOp?lstm_178/while?-lstm_179/lstm_cell_362/BiasAdd/ReadVariableOp?,lstm_179/lstm_cell_362/MatMul/ReadVariableOp?.lstm_179/lstm_cell_362/MatMul_1/ReadVariableOp?lstm_179/whileD
lstm_177/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_177/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_177/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_177/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_177/strided_sliceStridedSlicelstm_177/Shape:output:0%lstm_177/strided_slice/stack:output:0'lstm_177/strided_slice/stack_1:output:0'lstm_177/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_177/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_177/zeros/packedPacklstm_177/strided_slice:output:0 lstm_177/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_177/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_177/zerosFilllstm_177/zeros/packed:output:0lstm_177/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_177/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_177/zeros_1/packedPacklstm_177/strided_slice:output:0"lstm_177/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_177/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_177/zeros_1Fill lstm_177/zeros_1/packed:output:0lstm_177/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_177/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_177/transpose	Transposeinputs lstm_177/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_177/Shape_1Shapelstm_177/transpose:y:0*
T0*
_output_shapes
:h
lstm_177/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_177/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_177/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_177/strided_slice_1StridedSlicelstm_177/Shape_1:output:0'lstm_177/strided_slice_1/stack:output:0)lstm_177/strided_slice_1/stack_1:output:0)lstm_177/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_177/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_177/TensorArrayV2TensorListReserve-lstm_177/TensorArrayV2/element_shape:output:0!lstm_177/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_177/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_177/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_177/transpose:y:0Glstm_177/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_177/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_177/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_177/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_177/strided_slice_2StridedSlicelstm_177/transpose:y:0'lstm_177/strided_slice_2/stack:output:0)lstm_177/strided_slice_2/stack_1:output:0)lstm_177/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_177/lstm_cell_360/MatMul/ReadVariableOpReadVariableOp5lstm_177_lstm_cell_360_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_177/lstm_cell_360/MatMulMatMul!lstm_177/strided_slice_2:output:04lstm_177/lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_177/lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOp7lstm_177_lstm_cell_360_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_177/lstm_cell_360/MatMul_1MatMullstm_177/zeros:output:06lstm_177/lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_177/lstm_cell_360/addAddV2'lstm_177/lstm_cell_360/MatMul:product:0)lstm_177/lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_177/lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOp6lstm_177_lstm_cell_360_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_177/lstm_cell_360/BiasAddBiasAddlstm_177/lstm_cell_360/add:z:05lstm_177/lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_177/lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_177/lstm_cell_360/splitSplit/lstm_177/lstm_cell_360/split/split_dim:output:0'lstm_177/lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_177/lstm_cell_360/SigmoidSigmoid%lstm_177/lstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_177/lstm_cell_360/Sigmoid_1Sigmoid%lstm_177/lstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_177/lstm_cell_360/mulMul$lstm_177/lstm_cell_360/Sigmoid_1:y:0lstm_177/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_177/lstm_cell_360/ReluRelu%lstm_177/lstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_177/lstm_cell_360/mul_1Mul"lstm_177/lstm_cell_360/Sigmoid:y:0)lstm_177/lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_177/lstm_cell_360/add_1AddV2lstm_177/lstm_cell_360/mul:z:0 lstm_177/lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_177/lstm_cell_360/Sigmoid_2Sigmoid%lstm_177/lstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_177/lstm_cell_360/Relu_1Relu lstm_177/lstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_177/lstm_cell_360/mul_2Mul$lstm_177/lstm_cell_360/Sigmoid_2:y:0+lstm_177/lstm_cell_360/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_177/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_177/TensorArrayV2_1TensorListReserve/lstm_177/TensorArrayV2_1/element_shape:output:0!lstm_177/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_177/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_177/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_177/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_177/whileWhile$lstm_177/while/loop_counter:output:0*lstm_177/while/maximum_iterations:output:0lstm_177/time:output:0!lstm_177/TensorArrayV2_1:handle:0lstm_177/zeros:output:0lstm_177/zeros_1:output:0!lstm_177/strided_slice_1:output:0@lstm_177/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_177_lstm_cell_360_matmul_readvariableop_resource7lstm_177_lstm_cell_360_matmul_1_readvariableop_resource6lstm_177_lstm_cell_360_biasadd_readvariableop_resource*
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
lstm_177_while_body_2192649*'
condR
lstm_177_while_cond_2192648*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_177/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_177/TensorArrayV2Stack/TensorListStackTensorListStacklstm_177/while:output:3Blstm_177/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_177/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_177/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_177/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_177/strided_slice_3StridedSlice4lstm_177/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_177/strided_slice_3/stack:output:0)lstm_177/strided_slice_3/stack_1:output:0)lstm_177/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_177/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_177/transpose_1	Transpose4lstm_177/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_177/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_177/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_178/ShapeShapelstm_177/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_178/strided_sliceStridedSlicelstm_178/Shape:output:0%lstm_178/strided_slice/stack:output:0'lstm_178/strided_slice/stack_1:output:0'lstm_178/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_178/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_178/zeros/packedPacklstm_178/strided_slice:output:0 lstm_178/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_178/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_178/zerosFilllstm_178/zeros/packed:output:0lstm_178/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_178/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_178/zeros_1/packedPacklstm_178/strided_slice:output:0"lstm_178/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_178/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_178/zeros_1Fill lstm_178/zeros_1/packed:output:0lstm_178/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_178/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_178/transpose	Transposelstm_177/transpose_1:y:0 lstm_178/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_178/Shape_1Shapelstm_178/transpose:y:0*
T0*
_output_shapes
:h
lstm_178/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_178/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_178/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_178/strided_slice_1StridedSlicelstm_178/Shape_1:output:0'lstm_178/strided_slice_1/stack:output:0)lstm_178/strided_slice_1/stack_1:output:0)lstm_178/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_178/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_178/TensorArrayV2TensorListReserve-lstm_178/TensorArrayV2/element_shape:output:0!lstm_178/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_178/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_178/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_178/transpose:y:0Glstm_178/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_178/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_178/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_178/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_178/strided_slice_2StridedSlicelstm_178/transpose:y:0'lstm_178/strided_slice_2/stack:output:0)lstm_178/strided_slice_2/stack_1:output:0)lstm_178/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_178/lstm_cell_361/MatMul/ReadVariableOpReadVariableOp5lstm_178_lstm_cell_361_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_178/lstm_cell_361/MatMulMatMul!lstm_178/strided_slice_2:output:04lstm_178/lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_178/lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOp7lstm_178_lstm_cell_361_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_178/lstm_cell_361/MatMul_1MatMullstm_178/zeros:output:06lstm_178/lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_178/lstm_cell_361/addAddV2'lstm_178/lstm_cell_361/MatMul:product:0)lstm_178/lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_178/lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOp6lstm_178_lstm_cell_361_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_178/lstm_cell_361/BiasAddBiasAddlstm_178/lstm_cell_361/add:z:05lstm_178/lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_178/lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_178/lstm_cell_361/splitSplit/lstm_178/lstm_cell_361/split/split_dim:output:0'lstm_178/lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_178/lstm_cell_361/SigmoidSigmoid%lstm_178/lstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_178/lstm_cell_361/Sigmoid_1Sigmoid%lstm_178/lstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_178/lstm_cell_361/mulMul$lstm_178/lstm_cell_361/Sigmoid_1:y:0lstm_178/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_178/lstm_cell_361/ReluRelu%lstm_178/lstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_178/lstm_cell_361/mul_1Mul"lstm_178/lstm_cell_361/Sigmoid:y:0)lstm_178/lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_178/lstm_cell_361/add_1AddV2lstm_178/lstm_cell_361/mul:z:0 lstm_178/lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_178/lstm_cell_361/Sigmoid_2Sigmoid%lstm_178/lstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_178/lstm_cell_361/Relu_1Relu lstm_178/lstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_178/lstm_cell_361/mul_2Mul$lstm_178/lstm_cell_361/Sigmoid_2:y:0+lstm_178/lstm_cell_361/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_178/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_178/TensorArrayV2_1TensorListReserve/lstm_178/TensorArrayV2_1/element_shape:output:0!lstm_178/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_178/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_178/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_178/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_178/whileWhile$lstm_178/while/loop_counter:output:0*lstm_178/while/maximum_iterations:output:0lstm_178/time:output:0!lstm_178/TensorArrayV2_1:handle:0lstm_178/zeros:output:0lstm_178/zeros_1:output:0!lstm_178/strided_slice_1:output:0@lstm_178/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_178_lstm_cell_361_matmul_readvariableop_resource7lstm_178_lstm_cell_361_matmul_1_readvariableop_resource6lstm_178_lstm_cell_361_biasadd_readvariableop_resource*
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
lstm_178_while_body_2192788*'
condR
lstm_178_while_cond_2192787*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_178/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_178/TensorArrayV2Stack/TensorListStackTensorListStacklstm_178/while:output:3Blstm_178/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_178/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_178/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_178/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_178/strided_slice_3StridedSlice4lstm_178/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_178/strided_slice_3/stack:output:0)lstm_178/strided_slice_3/stack_1:output:0)lstm_178/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_178/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_178/transpose_1	Transpose4lstm_178/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_178/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_178/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_179/ShapeShapelstm_178/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_179/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_179/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_179/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_179/strided_sliceStridedSlicelstm_179/Shape:output:0%lstm_179/strided_slice/stack:output:0'lstm_179/strided_slice/stack_1:output:0'lstm_179/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_179/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_179/zeros/packedPacklstm_179/strided_slice:output:0 lstm_179/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_179/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_179/zerosFilllstm_179/zeros/packed:output:0lstm_179/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_179/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_179/zeros_1/packedPacklstm_179/strided_slice:output:0"lstm_179/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_179/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_179/zeros_1Fill lstm_179/zeros_1/packed:output:0lstm_179/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_179/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_179/transpose	Transposelstm_178/transpose_1:y:0 lstm_179/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_179/Shape_1Shapelstm_179/transpose:y:0*
T0*
_output_shapes
:h
lstm_179/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_179/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_179/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_179/strided_slice_1StridedSlicelstm_179/Shape_1:output:0'lstm_179/strided_slice_1/stack:output:0)lstm_179/strided_slice_1/stack_1:output:0)lstm_179/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_179/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_179/TensorArrayV2TensorListReserve-lstm_179/TensorArrayV2/element_shape:output:0!lstm_179/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_179/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_179/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_179/transpose:y:0Glstm_179/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_179/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_179/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_179/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_179/strided_slice_2StridedSlicelstm_179/transpose:y:0'lstm_179/strided_slice_2/stack:output:0)lstm_179/strided_slice_2/stack_1:output:0)lstm_179/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_179/lstm_cell_362/MatMul/ReadVariableOpReadVariableOp5lstm_179_lstm_cell_362_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_179/lstm_cell_362/MatMulMatMul!lstm_179/strided_slice_2:output:04lstm_179/lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_179/lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOp7lstm_179_lstm_cell_362_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_179/lstm_cell_362/MatMul_1MatMullstm_179/zeros:output:06lstm_179/lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_179/lstm_cell_362/addAddV2'lstm_179/lstm_cell_362/MatMul:product:0)lstm_179/lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_179/lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOp6lstm_179_lstm_cell_362_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_179/lstm_cell_362/BiasAddBiasAddlstm_179/lstm_cell_362/add:z:05lstm_179/lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_179/lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_179/lstm_cell_362/splitSplit/lstm_179/lstm_cell_362/split/split_dim:output:0'lstm_179/lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_179/lstm_cell_362/SigmoidSigmoid%lstm_179/lstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_179/lstm_cell_362/Sigmoid_1Sigmoid%lstm_179/lstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_179/lstm_cell_362/mulMul$lstm_179/lstm_cell_362/Sigmoid_1:y:0lstm_179/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_179/lstm_cell_362/ReluRelu%lstm_179/lstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_179/lstm_cell_362/mul_1Mul"lstm_179/lstm_cell_362/Sigmoid:y:0)lstm_179/lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_179/lstm_cell_362/add_1AddV2lstm_179/lstm_cell_362/mul:z:0 lstm_179/lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_179/lstm_cell_362/Sigmoid_2Sigmoid%lstm_179/lstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_179/lstm_cell_362/Relu_1Relu lstm_179/lstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_179/lstm_cell_362/mul_2Mul$lstm_179/lstm_cell_362/Sigmoid_2:y:0+lstm_179/lstm_cell_362/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_179/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_179/TensorArrayV2_1TensorListReserve/lstm_179/TensorArrayV2_1/element_shape:output:0!lstm_179/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_179/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_179/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_179/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_179/whileWhile$lstm_179/while/loop_counter:output:0*lstm_179/while/maximum_iterations:output:0lstm_179/time:output:0!lstm_179/TensorArrayV2_1:handle:0lstm_179/zeros:output:0lstm_179/zeros_1:output:0!lstm_179/strided_slice_1:output:0@lstm_179/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_179_lstm_cell_362_matmul_readvariableop_resource7lstm_179_lstm_cell_362_matmul_1_readvariableop_resource6lstm_179_lstm_cell_362_biasadd_readvariableop_resource*
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
lstm_179_while_body_2192927*'
condR
lstm_179_while_cond_2192926*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_179/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_179/TensorArrayV2Stack/TensorListStackTensorListStacklstm_179/while:output:3Blstm_179/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_179/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_179/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_179/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_179/strided_slice_3StridedSlice4lstm_179/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_179/strided_slice_3/stack:output:0)lstm_179/strided_slice_3/stack_1:output:0)lstm_179/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_179/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_179/transpose_1	Transpose4lstm_179/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_179/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_179/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_59/MatMulMatMul!lstm_179/strided_slice_3:output:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_59/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp.^lstm_177/lstm_cell_360/BiasAdd/ReadVariableOp-^lstm_177/lstm_cell_360/MatMul/ReadVariableOp/^lstm_177/lstm_cell_360/MatMul_1/ReadVariableOp^lstm_177/while.^lstm_178/lstm_cell_361/BiasAdd/ReadVariableOp-^lstm_178/lstm_cell_361/MatMul/ReadVariableOp/^lstm_178/lstm_cell_361/MatMul_1/ReadVariableOp^lstm_178/while.^lstm_179/lstm_cell_362/BiasAdd/ReadVariableOp-^lstm_179/lstm_cell_362/MatMul/ReadVariableOp/^lstm_179/lstm_cell_362/MatMul_1/ReadVariableOp^lstm_179/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp2^
-lstm_177/lstm_cell_360/BiasAdd/ReadVariableOp-lstm_177/lstm_cell_360/BiasAdd/ReadVariableOp2\
,lstm_177/lstm_cell_360/MatMul/ReadVariableOp,lstm_177/lstm_cell_360/MatMul/ReadVariableOp2`
.lstm_177/lstm_cell_360/MatMul_1/ReadVariableOp.lstm_177/lstm_cell_360/MatMul_1/ReadVariableOp2 
lstm_177/whilelstm_177/while2^
-lstm_178/lstm_cell_361/BiasAdd/ReadVariableOp-lstm_178/lstm_cell_361/BiasAdd/ReadVariableOp2\
,lstm_178/lstm_cell_361/MatMul/ReadVariableOp,lstm_178/lstm_cell_361/MatMul/ReadVariableOp2`
.lstm_178/lstm_cell_361/MatMul_1/ReadVariableOp.lstm_178/lstm_cell_361/MatMul_1/ReadVariableOp2 
lstm_178/whilelstm_178/while2^
-lstm_179/lstm_cell_362/BiasAdd/ReadVariableOp-lstm_179/lstm_cell_362/BiasAdd/ReadVariableOp2\
,lstm_179/lstm_cell_362/MatMul/ReadVariableOp,lstm_179/lstm_cell_362/MatMul/ReadVariableOp2`
.lstm_179/lstm_cell_362/MatMul_1/ReadVariableOp.lstm_179/lstm_cell_362/MatMul_1/ReadVariableOp2 
lstm_179/whilelstm_179/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_177_layer_call_and_return_conditional_losses_2191894

inputs?
,lstm_cell_360_matmul_readvariableop_resource:	?A
.lstm_cell_360_matmul_1_readvariableop_resource:	d?<
-lstm_cell_360_biasadd_readvariableop_resource:	?
identity??$lstm_cell_360/BiasAdd/ReadVariableOp?#lstm_cell_360/MatMul/ReadVariableOp?%lstm_cell_360/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_360/MatMul/ReadVariableOpReadVariableOp,lstm_cell_360_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_360/MatMulMatMulstrided_slice_2:output:0+lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_360_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_360/MatMul_1MatMulzeros:output:0-lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_360/addAddV2lstm_cell_360/MatMul:product:0 lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_360_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_360/BiasAddBiasAddlstm_cell_360/add:z:0,lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_360/splitSplit&lstm_cell_360/split/split_dim:output:0lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_360/SigmoidSigmoidlstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_360/Sigmoid_1Sigmoidlstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_360/mulMullstm_cell_360/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_360/ReluRelulstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_360/mul_1Mullstm_cell_360/Sigmoid:y:0 lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_360/add_1AddV2lstm_cell_360/mul:z:0lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_360/Sigmoid_2Sigmoidlstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_360/Relu_1Relulstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_360/mul_2Mullstm_cell_360/Sigmoid_2:y:0"lstm_cell_360/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_360_matmul_readvariableop_resource.lstm_cell_360_matmul_1_readvariableop_resource-lstm_cell_360_biasadd_readvariableop_resource*
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
while_body_2191810*
condR
while_cond_2191809*K
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
NoOpNoOp%^lstm_cell_360/BiasAdd/ReadVariableOp$^lstm_cell_360/MatMul/ReadVariableOp&^lstm_cell_360/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_360/BiasAdd/ReadVariableOp$lstm_cell_360/BiasAdd/ReadVariableOp2J
#lstm_cell_360/MatMul/ReadVariableOp#lstm_cell_360/MatMul/ReadVariableOp2N
%lstm_cell_360/MatMul_1/ReadVariableOp%lstm_cell_360/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2193262
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2193262___redundant_placeholder05
1while_while_cond_2193262___redundant_placeholder15
1while_while_cond_2193262___redundant_placeholder25
1while_while_cond_2193262___redundant_placeholder3
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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2194106

inputs?
,lstm_cell_361_matmul_readvariableop_resource:	d?A
.lstm_cell_361_matmul_1_readvariableop_resource:	2?<
-lstm_cell_361_biasadd_readvariableop_resource:	?
identity??$lstm_cell_361/BiasAdd/ReadVariableOp?#lstm_cell_361/MatMul/ReadVariableOp?%lstm_cell_361/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_361/MatMul/ReadVariableOpReadVariableOp,lstm_cell_361_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_361/MatMulMatMulstrided_slice_2:output:0+lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_361_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_361/MatMul_1MatMulzeros:output:0-lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_361/addAddV2lstm_cell_361/MatMul:product:0 lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_361_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_361/BiasAddBiasAddlstm_cell_361/add:z:0,lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_361/splitSplit&lstm_cell_361/split/split_dim:output:0lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_361/SigmoidSigmoidlstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_361/Sigmoid_1Sigmoidlstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_361/mulMullstm_cell_361/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_361/ReluRelulstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_361/mul_1Mullstm_cell_361/Sigmoid:y:0 lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_361/add_1AddV2lstm_cell_361/mul:z:0lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_361/Sigmoid_2Sigmoidlstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_361/Relu_1Relulstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_361/mul_2Mullstm_cell_361/Sigmoid_2:y:0"lstm_cell_361/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_361_matmul_readvariableop_resource.lstm_cell_361_matmul_1_readvariableop_resource-lstm_cell_361_biasadd_readvariableop_resource*
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
while_body_2194022*
condR
while_cond_2194021*K
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
NoOpNoOp%^lstm_cell_361/BiasAdd/ReadVariableOp$^lstm_cell_361/MatMul/ReadVariableOp&^lstm_cell_361/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_361/BiasAdd/ReadVariableOp$lstm_cell_361/BiasAdd/ReadVariableOp2J
#lstm_cell_361/MatMul/ReadVariableOp#lstm_cell_361/MatMul/ReadVariableOp2N
%lstm_cell_361/MatMul_1/ReadVariableOp%lstm_cell_361/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?S
?
)sequential_59_lstm_179_while_body_2189759J
Fsequential_59_lstm_179_while_sequential_59_lstm_179_while_loop_counterP
Lsequential_59_lstm_179_while_sequential_59_lstm_179_while_maximum_iterations,
(sequential_59_lstm_179_while_placeholder.
*sequential_59_lstm_179_while_placeholder_1.
*sequential_59_lstm_179_while_placeholder_2.
*sequential_59_lstm_179_while_placeholder_3I
Esequential_59_lstm_179_while_sequential_59_lstm_179_strided_slice_1_0?
?sequential_59_lstm_179_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_179_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_59_lstm_179_while_lstm_cell_362_matmul_readvariableop_resource_0:2(_
Msequential_59_lstm_179_while_lstm_cell_362_matmul_1_readvariableop_resource_0:
(Z
Lsequential_59_lstm_179_while_lstm_cell_362_biasadd_readvariableop_resource_0:()
%sequential_59_lstm_179_while_identity+
'sequential_59_lstm_179_while_identity_1+
'sequential_59_lstm_179_while_identity_2+
'sequential_59_lstm_179_while_identity_3+
'sequential_59_lstm_179_while_identity_4+
'sequential_59_lstm_179_while_identity_5G
Csequential_59_lstm_179_while_sequential_59_lstm_179_strided_slice_1?
sequential_59_lstm_179_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_179_tensorarrayunstack_tensorlistfromtensor[
Isequential_59_lstm_179_while_lstm_cell_362_matmul_readvariableop_resource:2(]
Ksequential_59_lstm_179_while_lstm_cell_362_matmul_1_readvariableop_resource:
(X
Jsequential_59_lstm_179_while_lstm_cell_362_biasadd_readvariableop_resource:(??Asequential_59/lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOp?@sequential_59/lstm_179/while/lstm_cell_362/MatMul/ReadVariableOp?Bsequential_59/lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOp?
Nsequential_59/lstm_179/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_59/lstm_179/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_59_lstm_179_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_179_tensorarrayunstack_tensorlistfromtensor_0(sequential_59_lstm_179_while_placeholderWsequential_59/lstm_179/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_59/lstm_179/while/lstm_cell_362/MatMul/ReadVariableOpReadVariableOpKsequential_59_lstm_179_while_lstm_cell_362_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_59/lstm_179/while/lstm_cell_362/MatMulMatMulGsequential_59/lstm_179/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_59/lstm_179/while/lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_59/lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOpMsequential_59_lstm_179_while_lstm_cell_362_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_59/lstm_179/while/lstm_cell_362/MatMul_1MatMul*sequential_59_lstm_179_while_placeholder_2Jsequential_59/lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_59/lstm_179/while/lstm_cell_362/addAddV2;sequential_59/lstm_179/while/lstm_cell_362/MatMul:product:0=sequential_59/lstm_179/while/lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_59/lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOpLsequential_59_lstm_179_while_lstm_cell_362_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_59/lstm_179/while/lstm_cell_362/BiasAddBiasAdd2sequential_59/lstm_179/while/lstm_cell_362/add:z:0Isequential_59/lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_59/lstm_179/while/lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_59/lstm_179/while/lstm_cell_362/splitSplitCsequential_59/lstm_179/while/lstm_cell_362/split/split_dim:output:0;sequential_59/lstm_179/while/lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_59/lstm_179/while/lstm_cell_362/SigmoidSigmoid9sequential_59/lstm_179/while/lstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_59/lstm_179/while/lstm_cell_362/Sigmoid_1Sigmoid9sequential_59/lstm_179/while/lstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_59/lstm_179/while/lstm_cell_362/mulMul8sequential_59/lstm_179/while/lstm_cell_362/Sigmoid_1:y:0*sequential_59_lstm_179_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_59/lstm_179/while/lstm_cell_362/ReluRelu9sequential_59/lstm_179/while/lstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_59/lstm_179/while/lstm_cell_362/mul_1Mul6sequential_59/lstm_179/while/lstm_cell_362/Sigmoid:y:0=sequential_59/lstm_179/while/lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_59/lstm_179/while/lstm_cell_362/add_1AddV22sequential_59/lstm_179/while/lstm_cell_362/mul:z:04sequential_59/lstm_179/while/lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_59/lstm_179/while/lstm_cell_362/Sigmoid_2Sigmoid9sequential_59/lstm_179/while/lstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_59/lstm_179/while/lstm_cell_362/Relu_1Relu4sequential_59/lstm_179/while/lstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_59/lstm_179/while/lstm_cell_362/mul_2Mul8sequential_59/lstm_179/while/lstm_cell_362/Sigmoid_2:y:0?sequential_59/lstm_179/while/lstm_cell_362/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_59/lstm_179/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_59_lstm_179_while_placeholder_1(sequential_59_lstm_179_while_placeholder4sequential_59/lstm_179/while/lstm_cell_362/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_59/lstm_179/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_59/lstm_179/while/addAddV2(sequential_59_lstm_179_while_placeholder+sequential_59/lstm_179/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_59/lstm_179/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_59/lstm_179/while/add_1AddV2Fsequential_59_lstm_179_while_sequential_59_lstm_179_while_loop_counter-sequential_59/lstm_179/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_59/lstm_179/while/IdentityIdentity&sequential_59/lstm_179/while/add_1:z:0"^sequential_59/lstm_179/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_179/while/Identity_1IdentityLsequential_59_lstm_179_while_sequential_59_lstm_179_while_maximum_iterations"^sequential_59/lstm_179/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_179/while/Identity_2Identity$sequential_59/lstm_179/while/add:z:0"^sequential_59/lstm_179/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_179/while/Identity_3IdentityQsequential_59/lstm_179/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_59/lstm_179/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_179/while/Identity_4Identity4sequential_59/lstm_179/while/lstm_cell_362/mul_2:z:0"^sequential_59/lstm_179/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_59/lstm_179/while/Identity_5Identity4sequential_59/lstm_179/while/lstm_cell_362/add_1:z:0"^sequential_59/lstm_179/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_59/lstm_179/while/NoOpNoOpB^sequential_59/lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOpA^sequential_59/lstm_179/while/lstm_cell_362/MatMul/ReadVariableOpC^sequential_59/lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_59_lstm_179_while_identity.sequential_59/lstm_179/while/Identity:output:0"[
'sequential_59_lstm_179_while_identity_10sequential_59/lstm_179/while/Identity_1:output:0"[
'sequential_59_lstm_179_while_identity_20sequential_59/lstm_179/while/Identity_2:output:0"[
'sequential_59_lstm_179_while_identity_30sequential_59/lstm_179/while/Identity_3:output:0"[
'sequential_59_lstm_179_while_identity_40sequential_59/lstm_179/while/Identity_4:output:0"[
'sequential_59_lstm_179_while_identity_50sequential_59/lstm_179/while/Identity_5:output:0"?
Jsequential_59_lstm_179_while_lstm_cell_362_biasadd_readvariableop_resourceLsequential_59_lstm_179_while_lstm_cell_362_biasadd_readvariableop_resource_0"?
Ksequential_59_lstm_179_while_lstm_cell_362_matmul_1_readvariableop_resourceMsequential_59_lstm_179_while_lstm_cell_362_matmul_1_readvariableop_resource_0"?
Isequential_59_lstm_179_while_lstm_cell_362_matmul_readvariableop_resourceKsequential_59_lstm_179_while_lstm_cell_362_matmul_readvariableop_resource_0"?
Csequential_59_lstm_179_while_sequential_59_lstm_179_strided_slice_1Esequential_59_lstm_179_while_sequential_59_lstm_179_strided_slice_1_0"?
sequential_59_lstm_179_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_179_tensorarrayunstack_tensorlistfromtensor?sequential_59_lstm_179_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_179_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_59/lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOpAsequential_59/lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOp2?
@sequential_59/lstm_179/while/lstm_cell_362/MatMul/ReadVariableOp@sequential_59/lstm_179/while/lstm_cell_362/MatMul/ReadVariableOp2?
Bsequential_59/lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOpBsequential_59/lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2190963
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2190963___redundant_placeholder05
1while_while_cond_2190963___redundant_placeholder15
1while_while_cond_2190963___redundant_placeholder25
1while_while_cond_2190963___redundant_placeholder3
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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2190349

inputs(
lstm_cell_361_2190267:	d?(
lstm_cell_361_2190269:	2?$
lstm_cell_361_2190271:	?
identity??%lstm_cell_361/StatefulPartitionedCall?while;
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
%lstm_cell_361/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_361_2190267lstm_cell_361_2190269lstm_cell_361_2190271*
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
J__inference_lstm_cell_361_layer_call_and_return_conditional_losses_2190266n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_361_2190267lstm_cell_361_2190269lstm_cell_361_2190271*
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
while_body_2190280*
condR
while_cond_2190279*K
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
NoOpNoOp&^lstm_cell_361/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_361/StatefulPartitionedCall%lstm_cell_361/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_2190470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2190470___redundant_placeholder05
1while_while_cond_2190470___redundant_placeholder15
1while_while_cond_2190470___redundant_placeholder25
1while_while_cond_2190470___redundant_placeholder3
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
/__inference_lstm_cell_361_layer_call_fn_2195016

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
J__inference_lstm_cell_361_layer_call_and_return_conditional_losses_2190412o
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
while_body_2193120
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_360_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_360_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_360_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_360_matmul_readvariableop_resource:	?G
4while_lstm_cell_360_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_360_biasadd_readvariableop_resource:	???*while/lstm_cell_360/BiasAdd/ReadVariableOp?)while/lstm_cell_360/MatMul/ReadVariableOp?+while/lstm_cell_360/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_360/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_360_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_360/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_360_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_360/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_360/addAddV2$while/lstm_cell_360/MatMul:product:0&while/lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_360_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_360/BiasAddBiasAddwhile/lstm_cell_360/add:z:02while/lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_360/splitSplit,while/lstm_cell_360/split/split_dim:output:0$while/lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_360/SigmoidSigmoid"while/lstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_360/Sigmoid_1Sigmoid"while/lstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mulMul!while/lstm_cell_360/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_360/ReluRelu"while/lstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mul_1Mulwhile/lstm_cell_360/Sigmoid:y:0&while/lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/add_1AddV2while/lstm_cell_360/mul:z:0while/lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_360/Sigmoid_2Sigmoid"while/lstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_360/Relu_1Reluwhile/lstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mul_2Mul!while/lstm_cell_360/Sigmoid_2:y:0(while/lstm_cell_360/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_360/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_360/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_360/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_360/BiasAdd/ReadVariableOp*^while/lstm_cell_360/MatMul/ReadVariableOp,^while/lstm_cell_360/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_360_biasadd_readvariableop_resource5while_lstm_cell_360_biasadd_readvariableop_resource_0"n
4while_lstm_cell_360_matmul_1_readvariableop_resource6while_lstm_cell_360_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_360_matmul_readvariableop_resource4while_lstm_cell_360_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_360/BiasAdd/ReadVariableOp*while/lstm_cell_360/BiasAdd/ReadVariableOp2V
)while/lstm_cell_360/MatMul/ReadVariableOp)while/lstm_cell_360/MatMul/ReadVariableOp2Z
+while/lstm_cell_360/MatMul_1/ReadVariableOp+while/lstm_cell_360/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2194780
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2194780___redundant_placeholder05
1while_while_cond_2194780___redundant_placeholder15
1while_while_cond_2194780___redundant_placeholder25
1while_while_cond_2194780___redundant_placeholder3
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
while_cond_2189929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2189929___redundant_placeholder05
1while_while_cond_2189929___redundant_placeholder15
1while_while_cond_2189929___redundant_placeholder25
1while_while_cond_2189929___redundant_placeholder3
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
while_cond_2194637
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2194637___redundant_placeholder05
1while_while_cond_2194637___redundant_placeholder15
1while_while_cond_2194637___redundant_placeholder25
1while_while_cond_2194637___redundant_placeholder3
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
while_cond_2191479
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2191479___redundant_placeholder05
1while_while_cond_2191479___redundant_placeholder15
1while_while_cond_2191479___redundant_placeholder25
1while_while_cond_2191479___redundant_placeholder3
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
??
?
J__inference_sequential_59_layer_call_and_return_conditional_losses_2192590

inputsH
5lstm_177_lstm_cell_360_matmul_readvariableop_resource:	?J
7lstm_177_lstm_cell_360_matmul_1_readvariableop_resource:	d?E
6lstm_177_lstm_cell_360_biasadd_readvariableop_resource:	?H
5lstm_178_lstm_cell_361_matmul_readvariableop_resource:	d?J
7lstm_178_lstm_cell_361_matmul_1_readvariableop_resource:	2?E
6lstm_178_lstm_cell_361_biasadd_readvariableop_resource:	?G
5lstm_179_lstm_cell_362_matmul_readvariableop_resource:2(I
7lstm_179_lstm_cell_362_matmul_1_readvariableop_resource:
(D
6lstm_179_lstm_cell_362_biasadd_readvariableop_resource:(9
'dense_59_matmul_readvariableop_resource:
6
(dense_59_biasadd_readvariableop_resource:
identity??dense_59/BiasAdd/ReadVariableOp?dense_59/MatMul/ReadVariableOp?-lstm_177/lstm_cell_360/BiasAdd/ReadVariableOp?,lstm_177/lstm_cell_360/MatMul/ReadVariableOp?.lstm_177/lstm_cell_360/MatMul_1/ReadVariableOp?lstm_177/while?-lstm_178/lstm_cell_361/BiasAdd/ReadVariableOp?,lstm_178/lstm_cell_361/MatMul/ReadVariableOp?.lstm_178/lstm_cell_361/MatMul_1/ReadVariableOp?lstm_178/while?-lstm_179/lstm_cell_362/BiasAdd/ReadVariableOp?,lstm_179/lstm_cell_362/MatMul/ReadVariableOp?.lstm_179/lstm_cell_362/MatMul_1/ReadVariableOp?lstm_179/whileD
lstm_177/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_177/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_177/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_177/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_177/strided_sliceStridedSlicelstm_177/Shape:output:0%lstm_177/strided_slice/stack:output:0'lstm_177/strided_slice/stack_1:output:0'lstm_177/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_177/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_177/zeros/packedPacklstm_177/strided_slice:output:0 lstm_177/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_177/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_177/zerosFilllstm_177/zeros/packed:output:0lstm_177/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_177/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_177/zeros_1/packedPacklstm_177/strided_slice:output:0"lstm_177/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_177/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_177/zeros_1Fill lstm_177/zeros_1/packed:output:0lstm_177/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_177/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_177/transpose	Transposeinputs lstm_177/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_177/Shape_1Shapelstm_177/transpose:y:0*
T0*
_output_shapes
:h
lstm_177/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_177/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_177/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_177/strided_slice_1StridedSlicelstm_177/Shape_1:output:0'lstm_177/strided_slice_1/stack:output:0)lstm_177/strided_slice_1/stack_1:output:0)lstm_177/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_177/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_177/TensorArrayV2TensorListReserve-lstm_177/TensorArrayV2/element_shape:output:0!lstm_177/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_177/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_177/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_177/transpose:y:0Glstm_177/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_177/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_177/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_177/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_177/strided_slice_2StridedSlicelstm_177/transpose:y:0'lstm_177/strided_slice_2/stack:output:0)lstm_177/strided_slice_2/stack_1:output:0)lstm_177/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_177/lstm_cell_360/MatMul/ReadVariableOpReadVariableOp5lstm_177_lstm_cell_360_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_177/lstm_cell_360/MatMulMatMul!lstm_177/strided_slice_2:output:04lstm_177/lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_177/lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOp7lstm_177_lstm_cell_360_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_177/lstm_cell_360/MatMul_1MatMullstm_177/zeros:output:06lstm_177/lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_177/lstm_cell_360/addAddV2'lstm_177/lstm_cell_360/MatMul:product:0)lstm_177/lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_177/lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOp6lstm_177_lstm_cell_360_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_177/lstm_cell_360/BiasAddBiasAddlstm_177/lstm_cell_360/add:z:05lstm_177/lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_177/lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_177/lstm_cell_360/splitSplit/lstm_177/lstm_cell_360/split/split_dim:output:0'lstm_177/lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_177/lstm_cell_360/SigmoidSigmoid%lstm_177/lstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_177/lstm_cell_360/Sigmoid_1Sigmoid%lstm_177/lstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_177/lstm_cell_360/mulMul$lstm_177/lstm_cell_360/Sigmoid_1:y:0lstm_177/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_177/lstm_cell_360/ReluRelu%lstm_177/lstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_177/lstm_cell_360/mul_1Mul"lstm_177/lstm_cell_360/Sigmoid:y:0)lstm_177/lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_177/lstm_cell_360/add_1AddV2lstm_177/lstm_cell_360/mul:z:0 lstm_177/lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_177/lstm_cell_360/Sigmoid_2Sigmoid%lstm_177/lstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_177/lstm_cell_360/Relu_1Relu lstm_177/lstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_177/lstm_cell_360/mul_2Mul$lstm_177/lstm_cell_360/Sigmoid_2:y:0+lstm_177/lstm_cell_360/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_177/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_177/TensorArrayV2_1TensorListReserve/lstm_177/TensorArrayV2_1/element_shape:output:0!lstm_177/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_177/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_177/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_177/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_177/whileWhile$lstm_177/while/loop_counter:output:0*lstm_177/while/maximum_iterations:output:0lstm_177/time:output:0!lstm_177/TensorArrayV2_1:handle:0lstm_177/zeros:output:0lstm_177/zeros_1:output:0!lstm_177/strided_slice_1:output:0@lstm_177/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_177_lstm_cell_360_matmul_readvariableop_resource7lstm_177_lstm_cell_360_matmul_1_readvariableop_resource6lstm_177_lstm_cell_360_biasadd_readvariableop_resource*
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
lstm_177_while_body_2192222*'
condR
lstm_177_while_cond_2192221*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_177/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_177/TensorArrayV2Stack/TensorListStackTensorListStacklstm_177/while:output:3Blstm_177/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_177/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_177/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_177/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_177/strided_slice_3StridedSlice4lstm_177/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_177/strided_slice_3/stack:output:0)lstm_177/strided_slice_3/stack_1:output:0)lstm_177/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_177/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_177/transpose_1	Transpose4lstm_177/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_177/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_177/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_178/ShapeShapelstm_177/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_178/strided_sliceStridedSlicelstm_178/Shape:output:0%lstm_178/strided_slice/stack:output:0'lstm_178/strided_slice/stack_1:output:0'lstm_178/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_178/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_178/zeros/packedPacklstm_178/strided_slice:output:0 lstm_178/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_178/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_178/zerosFilllstm_178/zeros/packed:output:0lstm_178/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_178/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_178/zeros_1/packedPacklstm_178/strided_slice:output:0"lstm_178/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_178/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_178/zeros_1Fill lstm_178/zeros_1/packed:output:0lstm_178/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_178/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_178/transpose	Transposelstm_177/transpose_1:y:0 lstm_178/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_178/Shape_1Shapelstm_178/transpose:y:0*
T0*
_output_shapes
:h
lstm_178/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_178/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_178/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_178/strided_slice_1StridedSlicelstm_178/Shape_1:output:0'lstm_178/strided_slice_1/stack:output:0)lstm_178/strided_slice_1/stack_1:output:0)lstm_178/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_178/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_178/TensorArrayV2TensorListReserve-lstm_178/TensorArrayV2/element_shape:output:0!lstm_178/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_178/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_178/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_178/transpose:y:0Glstm_178/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_178/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_178/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_178/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_178/strided_slice_2StridedSlicelstm_178/transpose:y:0'lstm_178/strided_slice_2/stack:output:0)lstm_178/strided_slice_2/stack_1:output:0)lstm_178/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_178/lstm_cell_361/MatMul/ReadVariableOpReadVariableOp5lstm_178_lstm_cell_361_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_178/lstm_cell_361/MatMulMatMul!lstm_178/strided_slice_2:output:04lstm_178/lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_178/lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOp7lstm_178_lstm_cell_361_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_178/lstm_cell_361/MatMul_1MatMullstm_178/zeros:output:06lstm_178/lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_178/lstm_cell_361/addAddV2'lstm_178/lstm_cell_361/MatMul:product:0)lstm_178/lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_178/lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOp6lstm_178_lstm_cell_361_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_178/lstm_cell_361/BiasAddBiasAddlstm_178/lstm_cell_361/add:z:05lstm_178/lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_178/lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_178/lstm_cell_361/splitSplit/lstm_178/lstm_cell_361/split/split_dim:output:0'lstm_178/lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_178/lstm_cell_361/SigmoidSigmoid%lstm_178/lstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_178/lstm_cell_361/Sigmoid_1Sigmoid%lstm_178/lstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_178/lstm_cell_361/mulMul$lstm_178/lstm_cell_361/Sigmoid_1:y:0lstm_178/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_178/lstm_cell_361/ReluRelu%lstm_178/lstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_178/lstm_cell_361/mul_1Mul"lstm_178/lstm_cell_361/Sigmoid:y:0)lstm_178/lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_178/lstm_cell_361/add_1AddV2lstm_178/lstm_cell_361/mul:z:0 lstm_178/lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_178/lstm_cell_361/Sigmoid_2Sigmoid%lstm_178/lstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_178/lstm_cell_361/Relu_1Relu lstm_178/lstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_178/lstm_cell_361/mul_2Mul$lstm_178/lstm_cell_361/Sigmoid_2:y:0+lstm_178/lstm_cell_361/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_178/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_178/TensorArrayV2_1TensorListReserve/lstm_178/TensorArrayV2_1/element_shape:output:0!lstm_178/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_178/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_178/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_178/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_178/whileWhile$lstm_178/while/loop_counter:output:0*lstm_178/while/maximum_iterations:output:0lstm_178/time:output:0!lstm_178/TensorArrayV2_1:handle:0lstm_178/zeros:output:0lstm_178/zeros_1:output:0!lstm_178/strided_slice_1:output:0@lstm_178/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_178_lstm_cell_361_matmul_readvariableop_resource7lstm_178_lstm_cell_361_matmul_1_readvariableop_resource6lstm_178_lstm_cell_361_biasadd_readvariableop_resource*
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
lstm_178_while_body_2192361*'
condR
lstm_178_while_cond_2192360*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_178/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_178/TensorArrayV2Stack/TensorListStackTensorListStacklstm_178/while:output:3Blstm_178/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_178/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_178/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_178/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_178/strided_slice_3StridedSlice4lstm_178/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_178/strided_slice_3/stack:output:0)lstm_178/strided_slice_3/stack_1:output:0)lstm_178/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_178/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_178/transpose_1	Transpose4lstm_178/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_178/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_178/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_179/ShapeShapelstm_178/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_179/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_179/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_179/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_179/strided_sliceStridedSlicelstm_179/Shape:output:0%lstm_179/strided_slice/stack:output:0'lstm_179/strided_slice/stack_1:output:0'lstm_179/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_179/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_179/zeros/packedPacklstm_179/strided_slice:output:0 lstm_179/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_179/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_179/zerosFilllstm_179/zeros/packed:output:0lstm_179/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_179/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_179/zeros_1/packedPacklstm_179/strided_slice:output:0"lstm_179/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_179/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_179/zeros_1Fill lstm_179/zeros_1/packed:output:0lstm_179/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_179/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_179/transpose	Transposelstm_178/transpose_1:y:0 lstm_179/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_179/Shape_1Shapelstm_179/transpose:y:0*
T0*
_output_shapes
:h
lstm_179/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_179/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_179/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_179/strided_slice_1StridedSlicelstm_179/Shape_1:output:0'lstm_179/strided_slice_1/stack:output:0)lstm_179/strided_slice_1/stack_1:output:0)lstm_179/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_179/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_179/TensorArrayV2TensorListReserve-lstm_179/TensorArrayV2/element_shape:output:0!lstm_179/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_179/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_179/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_179/transpose:y:0Glstm_179/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_179/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_179/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_179/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_179/strided_slice_2StridedSlicelstm_179/transpose:y:0'lstm_179/strided_slice_2/stack:output:0)lstm_179/strided_slice_2/stack_1:output:0)lstm_179/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_179/lstm_cell_362/MatMul/ReadVariableOpReadVariableOp5lstm_179_lstm_cell_362_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_179/lstm_cell_362/MatMulMatMul!lstm_179/strided_slice_2:output:04lstm_179/lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_179/lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOp7lstm_179_lstm_cell_362_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_179/lstm_cell_362/MatMul_1MatMullstm_179/zeros:output:06lstm_179/lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_179/lstm_cell_362/addAddV2'lstm_179/lstm_cell_362/MatMul:product:0)lstm_179/lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_179/lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOp6lstm_179_lstm_cell_362_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_179/lstm_cell_362/BiasAddBiasAddlstm_179/lstm_cell_362/add:z:05lstm_179/lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_179/lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_179/lstm_cell_362/splitSplit/lstm_179/lstm_cell_362/split/split_dim:output:0'lstm_179/lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_179/lstm_cell_362/SigmoidSigmoid%lstm_179/lstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_179/lstm_cell_362/Sigmoid_1Sigmoid%lstm_179/lstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_179/lstm_cell_362/mulMul$lstm_179/lstm_cell_362/Sigmoid_1:y:0lstm_179/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_179/lstm_cell_362/ReluRelu%lstm_179/lstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_179/lstm_cell_362/mul_1Mul"lstm_179/lstm_cell_362/Sigmoid:y:0)lstm_179/lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_179/lstm_cell_362/add_1AddV2lstm_179/lstm_cell_362/mul:z:0 lstm_179/lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_179/lstm_cell_362/Sigmoid_2Sigmoid%lstm_179/lstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_179/lstm_cell_362/Relu_1Relu lstm_179/lstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_179/lstm_cell_362/mul_2Mul$lstm_179/lstm_cell_362/Sigmoid_2:y:0+lstm_179/lstm_cell_362/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_179/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_179/TensorArrayV2_1TensorListReserve/lstm_179/TensorArrayV2_1/element_shape:output:0!lstm_179/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_179/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_179/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_179/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_179/whileWhile$lstm_179/while/loop_counter:output:0*lstm_179/while/maximum_iterations:output:0lstm_179/time:output:0!lstm_179/TensorArrayV2_1:handle:0lstm_179/zeros:output:0lstm_179/zeros_1:output:0!lstm_179/strided_slice_1:output:0@lstm_179/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_179_lstm_cell_362_matmul_readvariableop_resource7lstm_179_lstm_cell_362_matmul_1_readvariableop_resource6lstm_179_lstm_cell_362_biasadd_readvariableop_resource*
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
lstm_179_while_body_2192500*'
condR
lstm_179_while_cond_2192499*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_179/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_179/TensorArrayV2Stack/TensorListStackTensorListStacklstm_179/while:output:3Blstm_179/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_179/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_179/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_179/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_179/strided_slice_3StridedSlice4lstm_179/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_179/strided_slice_3/stack:output:0)lstm_179/strided_slice_3/stack_1:output:0)lstm_179/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_179/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_179/transpose_1	Transpose4lstm_179/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_179/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_179/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_59/MatMulMatMul!lstm_179/strided_slice_3:output:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_59/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp.^lstm_177/lstm_cell_360/BiasAdd/ReadVariableOp-^lstm_177/lstm_cell_360/MatMul/ReadVariableOp/^lstm_177/lstm_cell_360/MatMul_1/ReadVariableOp^lstm_177/while.^lstm_178/lstm_cell_361/BiasAdd/ReadVariableOp-^lstm_178/lstm_cell_361/MatMul/ReadVariableOp/^lstm_178/lstm_cell_361/MatMul_1/ReadVariableOp^lstm_178/while.^lstm_179/lstm_cell_362/BiasAdd/ReadVariableOp-^lstm_179/lstm_cell_362/MatMul/ReadVariableOp/^lstm_179/lstm_cell_362/MatMul_1/ReadVariableOp^lstm_179/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp2^
-lstm_177/lstm_cell_360/BiasAdd/ReadVariableOp-lstm_177/lstm_cell_360/BiasAdd/ReadVariableOp2\
,lstm_177/lstm_cell_360/MatMul/ReadVariableOp,lstm_177/lstm_cell_360/MatMul/ReadVariableOp2`
.lstm_177/lstm_cell_360/MatMul_1/ReadVariableOp.lstm_177/lstm_cell_360/MatMul_1/ReadVariableOp2 
lstm_177/whilelstm_177/while2^
-lstm_178/lstm_cell_361/BiasAdd/ReadVariableOp-lstm_178/lstm_cell_361/BiasAdd/ReadVariableOp2\
,lstm_178/lstm_cell_361/MatMul/ReadVariableOp,lstm_178/lstm_cell_361/MatMul/ReadVariableOp2`
.lstm_178/lstm_cell_361/MatMul_1/ReadVariableOp.lstm_178/lstm_cell_361/MatMul_1/ReadVariableOp2 
lstm_178/whilelstm_178/while2^
-lstm_179/lstm_cell_362/BiasAdd/ReadVariableOp-lstm_179/lstm_cell_362/BiasAdd/ReadVariableOp2\
,lstm_179/lstm_cell_362/MatMul/ReadVariableOp,lstm_179/lstm_cell_362/MatMul/ReadVariableOp2`
.lstm_179/lstm_cell_362/MatMul_1/ReadVariableOp.lstm_179/lstm_cell_362/MatMul_1/ReadVariableOp2 
lstm_179/whilelstm_179/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2193406
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_360_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_360_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_360_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_360_matmul_readvariableop_resource:	?G
4while_lstm_cell_360_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_360_biasadd_readvariableop_resource:	???*while/lstm_cell_360/BiasAdd/ReadVariableOp?)while/lstm_cell_360/MatMul/ReadVariableOp?+while/lstm_cell_360/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_360/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_360_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_360/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_360_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_360/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_360/addAddV2$while/lstm_cell_360/MatMul:product:0&while/lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_360_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_360/BiasAddBiasAddwhile/lstm_cell_360/add:z:02while/lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_360/splitSplit,while/lstm_cell_360/split/split_dim:output:0$while/lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_360/SigmoidSigmoid"while/lstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_360/Sigmoid_1Sigmoid"while/lstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mulMul!while/lstm_cell_360/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_360/ReluRelu"while/lstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mul_1Mulwhile/lstm_cell_360/Sigmoid:y:0&while/lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/add_1AddV2while/lstm_cell_360/mul:z:0while/lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_360/Sigmoid_2Sigmoid"while/lstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_360/Relu_1Reluwhile/lstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mul_2Mul!while/lstm_cell_360/Sigmoid_2:y:0(while/lstm_cell_360/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_360/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_360/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_360/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_360/BiasAdd/ReadVariableOp*^while/lstm_cell_360/MatMul/ReadVariableOp,^while/lstm_cell_360/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_360_biasadd_readvariableop_resource5while_lstm_cell_360_biasadd_readvariableop_resource_0"n
4while_lstm_cell_360_matmul_1_readvariableop_resource6while_lstm_cell_360_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_360_matmul_readvariableop_resource4while_lstm_cell_360_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_360/BiasAdd/ReadVariableOp*while/lstm_cell_360/BiasAdd/ReadVariableOp2V
)while/lstm_cell_360/MatMul/ReadVariableOp)while/lstm_cell_360/MatMul/ReadVariableOp2Z
+while/lstm_cell_360/MatMul_1/ReadVariableOp+while/lstm_cell_360/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2193405
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2193405___redundant_placeholder05
1while_while_cond_2193405___redundant_placeholder15
1while_while_cond_2193405___redundant_placeholder25
1while_while_cond_2193405___redundant_placeholder3
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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2190540

inputs(
lstm_cell_361_2190458:	d?(
lstm_cell_361_2190460:	2?$
lstm_cell_361_2190462:	?
identity??%lstm_cell_361/StatefulPartitionedCall?while;
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
%lstm_cell_361/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_361_2190458lstm_cell_361_2190460lstm_cell_361_2190462*
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
J__inference_lstm_cell_361_layer_call_and_return_conditional_losses_2190412n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_361_2190458lstm_cell_361_2190460lstm_cell_361_2190462*
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
while_body_2190471*
condR
while_cond_2190470*K
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
NoOpNoOp&^lstm_cell_361/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_361/StatefulPartitionedCall%lstm_cell_361/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_362_layer_call_and_return_conditional_losses_2195178

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
??
?
#__inference__traced_restore_2195451
file_prefix2
 assignvariableop_dense_59_kernel:
.
 assignvariableop_1_dense_59_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_177_lstm_cell_177_kernel:	?M
:assignvariableop_8_lstm_177_lstm_cell_177_recurrent_kernel:	d?=
.assignvariableop_9_lstm_177_lstm_cell_177_bias:	?D
1assignvariableop_10_lstm_178_lstm_cell_178_kernel:	d?N
;assignvariableop_11_lstm_178_lstm_cell_178_recurrent_kernel:	2?>
/assignvariableop_12_lstm_178_lstm_cell_178_bias:	?C
1assignvariableop_13_lstm_179_lstm_cell_179_kernel:2(M
;assignvariableop_14_lstm_179_lstm_cell_179_recurrent_kernel:
(=
/assignvariableop_15_lstm_179_lstm_cell_179_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_59_kernel_m:
6
(assignvariableop_19_adam_dense_59_bias_m:K
8assignvariableop_20_adam_lstm_177_lstm_cell_177_kernel_m:	?U
Bassignvariableop_21_adam_lstm_177_lstm_cell_177_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_177_lstm_cell_177_bias_m:	?K
8assignvariableop_23_adam_lstm_178_lstm_cell_178_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_178_lstm_cell_178_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_178_lstm_cell_178_bias_m:	?J
8assignvariableop_26_adam_lstm_179_lstm_cell_179_kernel_m:2(T
Bassignvariableop_27_adam_lstm_179_lstm_cell_179_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_179_lstm_cell_179_bias_m:(<
*assignvariableop_29_adam_dense_59_kernel_v:
6
(assignvariableop_30_adam_dense_59_bias_v:K
8assignvariableop_31_adam_lstm_177_lstm_cell_177_kernel_v:	?U
Bassignvariableop_32_adam_lstm_177_lstm_cell_177_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_177_lstm_cell_177_bias_v:	?K
8assignvariableop_34_adam_lstm_178_lstm_cell_178_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_178_lstm_cell_178_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_178_lstm_cell_178_bias_v:	?J
8assignvariableop_37_adam_lstm_179_lstm_cell_179_kernel_v:2(T
Bassignvariableop_38_adam_lstm_179_lstm_cell_179_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_179_lstm_cell_179_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_59_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_59_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_177_lstm_cell_177_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_177_lstm_cell_177_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_177_lstm_cell_177_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_178_lstm_cell_178_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_178_lstm_cell_178_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_178_lstm_cell_178_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_179_lstm_cell_179_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_179_lstm_cell_179_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_179_lstm_cell_179_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_59_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_59_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_177_lstm_cell_177_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_177_lstm_cell_177_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_177_lstm_cell_177_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_178_lstm_cell_178_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_178_lstm_cell_178_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_178_lstm_cell_178_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_179_lstm_cell_179_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_179_lstm_cell_179_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_179_lstm_cell_179_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_59_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_59_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_177_lstm_cell_177_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_177_lstm_cell_177_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_177_lstm_cell_177_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_178_lstm_cell_178_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_178_lstm_cell_178_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_178_lstm_cell_178_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_179_lstm_cell_179_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_179_lstm_cell_179_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_179_lstm_cell_179_bias_vIdentity_39:output:0"/device:CPU:0*
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
?8
?
while_body_2191480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_362_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_362_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_362_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_362_matmul_readvariableop_resource:2(F
4while_lstm_cell_362_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_362_biasadd_readvariableop_resource:(??*while/lstm_cell_362/BiasAdd/ReadVariableOp?)while/lstm_cell_362/MatMul/ReadVariableOp?+while/lstm_cell_362/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_362/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_362_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_362/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_362_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_362/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_362/addAddV2$while/lstm_cell_362/MatMul:product:0&while/lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_362_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_362/BiasAddBiasAddwhile/lstm_cell_362/add:z:02while/lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_362/splitSplit,while/lstm_cell_362/split/split_dim:output:0$while/lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_362/SigmoidSigmoid"while/lstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_362/Sigmoid_1Sigmoid"while/lstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mulMul!while/lstm_cell_362/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_362/ReluRelu"while/lstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mul_1Mulwhile/lstm_cell_362/Sigmoid:y:0&while/lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/add_1AddV2while/lstm_cell_362/mul:z:0while/lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_362/Sigmoid_2Sigmoid"while/lstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_362/Relu_1Reluwhile/lstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mul_2Mul!while/lstm_cell_362/Sigmoid_2:y:0(while/lstm_cell_362/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_362/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_362/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_362/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_362/BiasAdd/ReadVariableOp*^while/lstm_cell_362/MatMul/ReadVariableOp,^while/lstm_cell_362/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_362_biasadd_readvariableop_resource5while_lstm_cell_362_biasadd_readvariableop_resource_0"n
4while_lstm_cell_362_matmul_1_readvariableop_resource6while_lstm_cell_362_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_362_matmul_readvariableop_resource4while_lstm_cell_362_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_362/BiasAdd/ReadVariableOp*while/lstm_cell_362/BiasAdd/ReadVariableOp2V
)while/lstm_cell_362/MatMul/ReadVariableOp)while/lstm_cell_362/MatMul/ReadVariableOp2Z
+while/lstm_cell_362/MatMul_1/ReadVariableOp+while/lstm_cell_362/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_179_while_body_2192927.
*lstm_179_while_lstm_179_while_loop_counter4
0lstm_179_while_lstm_179_while_maximum_iterations
lstm_179_while_placeholder 
lstm_179_while_placeholder_1 
lstm_179_while_placeholder_2 
lstm_179_while_placeholder_3-
)lstm_179_while_lstm_179_strided_slice_1_0i
elstm_179_while_tensorarrayv2read_tensorlistgetitem_lstm_179_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_179_while_lstm_cell_362_matmul_readvariableop_resource_0:2(Q
?lstm_179_while_lstm_cell_362_matmul_1_readvariableop_resource_0:
(L
>lstm_179_while_lstm_cell_362_biasadd_readvariableop_resource_0:(
lstm_179_while_identity
lstm_179_while_identity_1
lstm_179_while_identity_2
lstm_179_while_identity_3
lstm_179_while_identity_4
lstm_179_while_identity_5+
'lstm_179_while_lstm_179_strided_slice_1g
clstm_179_while_tensorarrayv2read_tensorlistgetitem_lstm_179_tensorarrayunstack_tensorlistfromtensorM
;lstm_179_while_lstm_cell_362_matmul_readvariableop_resource:2(O
=lstm_179_while_lstm_cell_362_matmul_1_readvariableop_resource:
(J
<lstm_179_while_lstm_cell_362_biasadd_readvariableop_resource:(??3lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOp?2lstm_179/while/lstm_cell_362/MatMul/ReadVariableOp?4lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOp?
@lstm_179/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_179/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_179_while_tensorarrayv2read_tensorlistgetitem_lstm_179_tensorarrayunstack_tensorlistfromtensor_0lstm_179_while_placeholderIlstm_179/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_179/while/lstm_cell_362/MatMul/ReadVariableOpReadVariableOp=lstm_179_while_lstm_cell_362_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_179/while/lstm_cell_362/MatMulMatMul9lstm_179/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_179/while/lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOp?lstm_179_while_lstm_cell_362_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_179/while/lstm_cell_362/MatMul_1MatMullstm_179_while_placeholder_2<lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_179/while/lstm_cell_362/addAddV2-lstm_179/while/lstm_cell_362/MatMul:product:0/lstm_179/while/lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOp>lstm_179_while_lstm_cell_362_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_179/while/lstm_cell_362/BiasAddBiasAdd$lstm_179/while/lstm_cell_362/add:z:0;lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_179/while/lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_179/while/lstm_cell_362/splitSplit5lstm_179/while/lstm_cell_362/split/split_dim:output:0-lstm_179/while/lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_179/while/lstm_cell_362/SigmoidSigmoid+lstm_179/while/lstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_179/while/lstm_cell_362/Sigmoid_1Sigmoid+lstm_179/while/lstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_179/while/lstm_cell_362/mulMul*lstm_179/while/lstm_cell_362/Sigmoid_1:y:0lstm_179_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_179/while/lstm_cell_362/ReluRelu+lstm_179/while/lstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_179/while/lstm_cell_362/mul_1Mul(lstm_179/while/lstm_cell_362/Sigmoid:y:0/lstm_179/while/lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_179/while/lstm_cell_362/add_1AddV2$lstm_179/while/lstm_cell_362/mul:z:0&lstm_179/while/lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_179/while/lstm_cell_362/Sigmoid_2Sigmoid+lstm_179/while/lstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_179/while/lstm_cell_362/Relu_1Relu&lstm_179/while/lstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_179/while/lstm_cell_362/mul_2Mul*lstm_179/while/lstm_cell_362/Sigmoid_2:y:01lstm_179/while/lstm_cell_362/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_179/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_179_while_placeholder_1lstm_179_while_placeholder&lstm_179/while/lstm_cell_362/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_179/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_179/while/addAddV2lstm_179_while_placeholderlstm_179/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_179/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_179/while/add_1AddV2*lstm_179_while_lstm_179_while_loop_counterlstm_179/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_179/while/IdentityIdentitylstm_179/while/add_1:z:0^lstm_179/while/NoOp*
T0*
_output_shapes
: ?
lstm_179/while/Identity_1Identity0lstm_179_while_lstm_179_while_maximum_iterations^lstm_179/while/NoOp*
T0*
_output_shapes
: t
lstm_179/while/Identity_2Identitylstm_179/while/add:z:0^lstm_179/while/NoOp*
T0*
_output_shapes
: ?
lstm_179/while/Identity_3IdentityClstm_179/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_179/while/NoOp*
T0*
_output_shapes
: ?
lstm_179/while/Identity_4Identity&lstm_179/while/lstm_cell_362/mul_2:z:0^lstm_179/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_179/while/Identity_5Identity&lstm_179/while/lstm_cell_362/add_1:z:0^lstm_179/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_179/while/NoOpNoOp4^lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOp3^lstm_179/while/lstm_cell_362/MatMul/ReadVariableOp5^lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_179_while_identity lstm_179/while/Identity:output:0"?
lstm_179_while_identity_1"lstm_179/while/Identity_1:output:0"?
lstm_179_while_identity_2"lstm_179/while/Identity_2:output:0"?
lstm_179_while_identity_3"lstm_179/while/Identity_3:output:0"?
lstm_179_while_identity_4"lstm_179/while/Identity_4:output:0"?
lstm_179_while_identity_5"lstm_179/while/Identity_5:output:0"T
'lstm_179_while_lstm_179_strided_slice_1)lstm_179_while_lstm_179_strided_slice_1_0"~
<lstm_179_while_lstm_cell_362_biasadd_readvariableop_resource>lstm_179_while_lstm_cell_362_biasadd_readvariableop_resource_0"?
=lstm_179_while_lstm_cell_362_matmul_1_readvariableop_resource?lstm_179_while_lstm_cell_362_matmul_1_readvariableop_resource_0"|
;lstm_179_while_lstm_cell_362_matmul_readvariableop_resource=lstm_179_while_lstm_cell_362_matmul_readvariableop_resource_0"?
clstm_179_while_tensorarrayv2read_tensorlistgetitem_lstm_179_tensorarrayunstack_tensorlistfromtensorelstm_179_while_tensorarrayv2read_tensorlistgetitem_lstm_179_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOp3lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOp2h
2lstm_179/while/lstm_cell_362/MatMul/ReadVariableOp2lstm_179/while/lstm_cell_362/MatMul/ReadVariableOp2l
4lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOp4lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2191198

inputs?
,lstm_cell_361_matmul_readvariableop_resource:	d?A
.lstm_cell_361_matmul_1_readvariableop_resource:	2?<
-lstm_cell_361_biasadd_readvariableop_resource:	?
identity??$lstm_cell_361/BiasAdd/ReadVariableOp?#lstm_cell_361/MatMul/ReadVariableOp?%lstm_cell_361/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_361/MatMul/ReadVariableOpReadVariableOp,lstm_cell_361_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_361/MatMulMatMulstrided_slice_2:output:0+lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_361_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_361/MatMul_1MatMulzeros:output:0-lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_361/addAddV2lstm_cell_361/MatMul:product:0 lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_361_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_361/BiasAddBiasAddlstm_cell_361/add:z:0,lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_361/splitSplit&lstm_cell_361/split/split_dim:output:0lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_361/SigmoidSigmoidlstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_361/Sigmoid_1Sigmoidlstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_361/mulMullstm_cell_361/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_361/ReluRelulstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_361/mul_1Mullstm_cell_361/Sigmoid:y:0 lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_361/add_1AddV2lstm_cell_361/mul:z:0lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_361/Sigmoid_2Sigmoidlstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_361/Relu_1Relulstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_361/mul_2Mullstm_cell_361/Sigmoid_2:y:0"lstm_cell_361/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_361_matmul_readvariableop_resource.lstm_cell_361_matmul_1_readvariableop_resource-lstm_cell_361_biasadd_readvariableop_resource*
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
while_body_2191114*
condR
while_cond_2191113*K
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
NoOpNoOp%^lstm_cell_361/BiasAdd/ReadVariableOp$^lstm_cell_361/MatMul/ReadVariableOp&^lstm_cell_361/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_361/BiasAdd/ReadVariableOp$lstm_cell_361/BiasAdd/ReadVariableOp2J
#lstm_cell_361/MatMul/ReadVariableOp#lstm_cell_361/MatMul/ReadVariableOp2N
%lstm_cell_361/MatMul_1/ReadVariableOp%lstm_cell_361/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_177_layer_call_and_return_conditional_losses_2193633

inputs?
,lstm_cell_360_matmul_readvariableop_resource:	?A
.lstm_cell_360_matmul_1_readvariableop_resource:	d?<
-lstm_cell_360_biasadd_readvariableop_resource:	?
identity??$lstm_cell_360/BiasAdd/ReadVariableOp?#lstm_cell_360/MatMul/ReadVariableOp?%lstm_cell_360/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_360/MatMul/ReadVariableOpReadVariableOp,lstm_cell_360_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_360/MatMulMatMulstrided_slice_2:output:0+lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_360_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_360/MatMul_1MatMulzeros:output:0-lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_360/addAddV2lstm_cell_360/MatMul:product:0 lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_360_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_360/BiasAddBiasAddlstm_cell_360/add:z:0,lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_360/splitSplit&lstm_cell_360/split/split_dim:output:0lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_360/SigmoidSigmoidlstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_360/Sigmoid_1Sigmoidlstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_360/mulMullstm_cell_360/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_360/ReluRelulstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_360/mul_1Mullstm_cell_360/Sigmoid:y:0 lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_360/add_1AddV2lstm_cell_360/mul:z:0lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_360/Sigmoid_2Sigmoidlstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_360/Relu_1Relulstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_360/mul_2Mullstm_cell_360/Sigmoid_2:y:0"lstm_cell_360/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_360_matmul_readvariableop_resource.lstm_cell_360_matmul_1_readvariableop_resource-lstm_cell_360_biasadd_readvariableop_resource*
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
while_body_2193549*
condR
while_cond_2193548*K
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
NoOpNoOp%^lstm_cell_360/BiasAdd/ReadVariableOp$^lstm_cell_360/MatMul/ReadVariableOp&^lstm_cell_360/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_360/BiasAdd/ReadVariableOp$lstm_cell_360/BiasAdd/ReadVariableOp2J
#lstm_cell_360/MatMul/ReadVariableOp#lstm_cell_360/MatMul/ReadVariableOp2N
%lstm_cell_360/MatMul_1/ReadVariableOp%lstm_cell_360/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_179_while_cond_2192499.
*lstm_179_while_lstm_179_while_loop_counter4
0lstm_179_while_lstm_179_while_maximum_iterations
lstm_179_while_placeholder 
lstm_179_while_placeholder_1 
lstm_179_while_placeholder_2 
lstm_179_while_placeholder_30
,lstm_179_while_less_lstm_179_strided_slice_1G
Clstm_179_while_lstm_179_while_cond_2192499___redundant_placeholder0G
Clstm_179_while_lstm_179_while_cond_2192499___redundant_placeholder1G
Clstm_179_while_lstm_179_while_cond_2192499___redundant_placeholder2G
Clstm_179_while_lstm_179_while_cond_2192499___redundant_placeholder3
lstm_179_while_identity
?
lstm_179/while/LessLesslstm_179_while_placeholder,lstm_179_while_less_lstm_179_strided_slice_1*
T0*
_output_shapes
: ]
lstm_179/while/IdentityIdentitylstm_179/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_179_while_identity lstm_179/while/Identity:output:0*(
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
while_body_2190471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_361_2190495_0:	d?0
while_lstm_cell_361_2190497_0:	2?,
while_lstm_cell_361_2190499_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_361_2190495:	d?.
while_lstm_cell_361_2190497:	2?*
while_lstm_cell_361_2190499:	???+while/lstm_cell_361/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_361/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_361_2190495_0while_lstm_cell_361_2190497_0while_lstm_cell_361_2190499_0*
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
J__inference_lstm_cell_361_layer_call_and_return_conditional_losses_2190412?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_361/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_361/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_361/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_361/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_361_2190495while_lstm_cell_361_2190495_0"<
while_lstm_cell_361_2190497while_lstm_cell_361_2190497_0"<
while_lstm_cell_361_2190499while_lstm_cell_361_2190499_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_361/StatefulPartitionedCall+while/lstm_cell_361/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2193963
inputs_0?
,lstm_cell_361_matmul_readvariableop_resource:	d?A
.lstm_cell_361_matmul_1_readvariableop_resource:	2?<
-lstm_cell_361_biasadd_readvariableop_resource:	?
identity??$lstm_cell_361/BiasAdd/ReadVariableOp?#lstm_cell_361/MatMul/ReadVariableOp?%lstm_cell_361/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_361/MatMul/ReadVariableOpReadVariableOp,lstm_cell_361_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_361/MatMulMatMulstrided_slice_2:output:0+lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_361_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_361/MatMul_1MatMulzeros:output:0-lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_361/addAddV2lstm_cell_361/MatMul:product:0 lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_361_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_361/BiasAddBiasAddlstm_cell_361/add:z:0,lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_361/splitSplit&lstm_cell_361/split/split_dim:output:0lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_361/SigmoidSigmoidlstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_361/Sigmoid_1Sigmoidlstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_361/mulMullstm_cell_361/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_361/ReluRelulstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_361/mul_1Mullstm_cell_361/Sigmoid:y:0 lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_361/add_1AddV2lstm_cell_361/mul:z:0lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_361/Sigmoid_2Sigmoidlstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_361/Relu_1Relulstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_361/mul_2Mullstm_cell_361/Sigmoid_2:y:0"lstm_cell_361/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_361_matmul_readvariableop_resource.lstm_cell_361_matmul_1_readvariableop_resource-lstm_cell_361_biasadd_readvariableop_resource*
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
while_body_2193879*
condR
while_cond_2193878*K
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
NoOpNoOp%^lstm_cell_361/BiasAdd/ReadVariableOp$^lstm_cell_361/MatMul/ReadVariableOp&^lstm_cell_361/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_361/BiasAdd/ReadVariableOp$lstm_cell_361/BiasAdd/ReadVariableOp2J
#lstm_cell_361/MatMul/ReadVariableOp#lstm_cell_361/MatMul/ReadVariableOp2N
%lstm_cell_361/MatMul_1/ReadVariableOp%lstm_cell_361/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
??
?
"__inference__wrapped_model_2189849
lstm_177_inputV
Csequential_59_lstm_177_lstm_cell_360_matmul_readvariableop_resource:	?X
Esequential_59_lstm_177_lstm_cell_360_matmul_1_readvariableop_resource:	d?S
Dsequential_59_lstm_177_lstm_cell_360_biasadd_readvariableop_resource:	?V
Csequential_59_lstm_178_lstm_cell_361_matmul_readvariableop_resource:	d?X
Esequential_59_lstm_178_lstm_cell_361_matmul_1_readvariableop_resource:	2?S
Dsequential_59_lstm_178_lstm_cell_361_biasadd_readvariableop_resource:	?U
Csequential_59_lstm_179_lstm_cell_362_matmul_readvariableop_resource:2(W
Esequential_59_lstm_179_lstm_cell_362_matmul_1_readvariableop_resource:
(R
Dsequential_59_lstm_179_lstm_cell_362_biasadd_readvariableop_resource:(G
5sequential_59_dense_59_matmul_readvariableop_resource:
D
6sequential_59_dense_59_biasadd_readvariableop_resource:
identity??-sequential_59/dense_59/BiasAdd/ReadVariableOp?,sequential_59/dense_59/MatMul/ReadVariableOp?;sequential_59/lstm_177/lstm_cell_360/BiasAdd/ReadVariableOp?:sequential_59/lstm_177/lstm_cell_360/MatMul/ReadVariableOp?<sequential_59/lstm_177/lstm_cell_360/MatMul_1/ReadVariableOp?sequential_59/lstm_177/while?;sequential_59/lstm_178/lstm_cell_361/BiasAdd/ReadVariableOp?:sequential_59/lstm_178/lstm_cell_361/MatMul/ReadVariableOp?<sequential_59/lstm_178/lstm_cell_361/MatMul_1/ReadVariableOp?sequential_59/lstm_178/while?;sequential_59/lstm_179/lstm_cell_362/BiasAdd/ReadVariableOp?:sequential_59/lstm_179/lstm_cell_362/MatMul/ReadVariableOp?<sequential_59/lstm_179/lstm_cell_362/MatMul_1/ReadVariableOp?sequential_59/lstm_179/whileZ
sequential_59/lstm_177/ShapeShapelstm_177_input*
T0*
_output_shapes
:t
*sequential_59/lstm_177/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_59/lstm_177/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_59/lstm_177/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_59/lstm_177/strided_sliceStridedSlice%sequential_59/lstm_177/Shape:output:03sequential_59/lstm_177/strided_slice/stack:output:05sequential_59/lstm_177/strided_slice/stack_1:output:05sequential_59/lstm_177/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_59/lstm_177/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_59/lstm_177/zeros/packedPack-sequential_59/lstm_177/strided_slice:output:0.sequential_59/lstm_177/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_59/lstm_177/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_59/lstm_177/zerosFill,sequential_59/lstm_177/zeros/packed:output:0+sequential_59/lstm_177/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_59/lstm_177/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_59/lstm_177/zeros_1/packedPack-sequential_59/lstm_177/strided_slice:output:00sequential_59/lstm_177/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_59/lstm_177/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_59/lstm_177/zeros_1Fill.sequential_59/lstm_177/zeros_1/packed:output:0-sequential_59/lstm_177/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_59/lstm_177/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_59/lstm_177/transpose	Transposelstm_177_input.sequential_59/lstm_177/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_59/lstm_177/Shape_1Shape$sequential_59/lstm_177/transpose:y:0*
T0*
_output_shapes
:v
,sequential_59/lstm_177/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_59/lstm_177/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_59/lstm_177/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_59/lstm_177/strided_slice_1StridedSlice'sequential_59/lstm_177/Shape_1:output:05sequential_59/lstm_177/strided_slice_1/stack:output:07sequential_59/lstm_177/strided_slice_1/stack_1:output:07sequential_59/lstm_177/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_59/lstm_177/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_59/lstm_177/TensorArrayV2TensorListReserve;sequential_59/lstm_177/TensorArrayV2/element_shape:output:0/sequential_59/lstm_177/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_59/lstm_177/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_59/lstm_177/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_59/lstm_177/transpose:y:0Usequential_59/lstm_177/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_59/lstm_177/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_59/lstm_177/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_59/lstm_177/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_59/lstm_177/strided_slice_2StridedSlice$sequential_59/lstm_177/transpose:y:05sequential_59/lstm_177/strided_slice_2/stack:output:07sequential_59/lstm_177/strided_slice_2/stack_1:output:07sequential_59/lstm_177/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_59/lstm_177/lstm_cell_360/MatMul/ReadVariableOpReadVariableOpCsequential_59_lstm_177_lstm_cell_360_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_59/lstm_177/lstm_cell_360/MatMulMatMul/sequential_59/lstm_177/strided_slice_2:output:0Bsequential_59/lstm_177/lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_59/lstm_177/lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOpEsequential_59_lstm_177_lstm_cell_360_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_59/lstm_177/lstm_cell_360/MatMul_1MatMul%sequential_59/lstm_177/zeros:output:0Dsequential_59/lstm_177/lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_59/lstm_177/lstm_cell_360/addAddV25sequential_59/lstm_177/lstm_cell_360/MatMul:product:07sequential_59/lstm_177/lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_59/lstm_177/lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOpDsequential_59_lstm_177_lstm_cell_360_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_59/lstm_177/lstm_cell_360/BiasAddBiasAdd,sequential_59/lstm_177/lstm_cell_360/add:z:0Csequential_59/lstm_177/lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_59/lstm_177/lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_59/lstm_177/lstm_cell_360/splitSplit=sequential_59/lstm_177/lstm_cell_360/split/split_dim:output:05sequential_59/lstm_177/lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_59/lstm_177/lstm_cell_360/SigmoidSigmoid3sequential_59/lstm_177/lstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_59/lstm_177/lstm_cell_360/Sigmoid_1Sigmoid3sequential_59/lstm_177/lstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_59/lstm_177/lstm_cell_360/mulMul2sequential_59/lstm_177/lstm_cell_360/Sigmoid_1:y:0'sequential_59/lstm_177/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_59/lstm_177/lstm_cell_360/ReluRelu3sequential_59/lstm_177/lstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_59/lstm_177/lstm_cell_360/mul_1Mul0sequential_59/lstm_177/lstm_cell_360/Sigmoid:y:07sequential_59/lstm_177/lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_59/lstm_177/lstm_cell_360/add_1AddV2,sequential_59/lstm_177/lstm_cell_360/mul:z:0.sequential_59/lstm_177/lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_59/lstm_177/lstm_cell_360/Sigmoid_2Sigmoid3sequential_59/lstm_177/lstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_59/lstm_177/lstm_cell_360/Relu_1Relu.sequential_59/lstm_177/lstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_59/lstm_177/lstm_cell_360/mul_2Mul2sequential_59/lstm_177/lstm_cell_360/Sigmoid_2:y:09sequential_59/lstm_177/lstm_cell_360/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_59/lstm_177/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_59/lstm_177/TensorArrayV2_1TensorListReserve=sequential_59/lstm_177/TensorArrayV2_1/element_shape:output:0/sequential_59/lstm_177/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_59/lstm_177/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_59/lstm_177/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_59/lstm_177/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_59/lstm_177/whileWhile2sequential_59/lstm_177/while/loop_counter:output:08sequential_59/lstm_177/while/maximum_iterations:output:0$sequential_59/lstm_177/time:output:0/sequential_59/lstm_177/TensorArrayV2_1:handle:0%sequential_59/lstm_177/zeros:output:0'sequential_59/lstm_177/zeros_1:output:0/sequential_59/lstm_177/strided_slice_1:output:0Nsequential_59/lstm_177/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_59_lstm_177_lstm_cell_360_matmul_readvariableop_resourceEsequential_59_lstm_177_lstm_cell_360_matmul_1_readvariableop_resourceDsequential_59_lstm_177_lstm_cell_360_biasadd_readvariableop_resource*
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
)sequential_59_lstm_177_while_body_2189481*5
cond-R+
)sequential_59_lstm_177_while_cond_2189480*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_59/lstm_177/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_59/lstm_177/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_59/lstm_177/while:output:3Psequential_59/lstm_177/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_59/lstm_177/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_59/lstm_177/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_59/lstm_177/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_59/lstm_177/strided_slice_3StridedSliceBsequential_59/lstm_177/TensorArrayV2Stack/TensorListStack:tensor:05sequential_59/lstm_177/strided_slice_3/stack:output:07sequential_59/lstm_177/strided_slice_3/stack_1:output:07sequential_59/lstm_177/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_59/lstm_177/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_59/lstm_177/transpose_1	TransposeBsequential_59/lstm_177/TensorArrayV2Stack/TensorListStack:tensor:00sequential_59/lstm_177/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_59/lstm_177/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_59/lstm_178/ShapeShape&sequential_59/lstm_177/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_59/lstm_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_59/lstm_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_59/lstm_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_59/lstm_178/strided_sliceStridedSlice%sequential_59/lstm_178/Shape:output:03sequential_59/lstm_178/strided_slice/stack:output:05sequential_59/lstm_178/strided_slice/stack_1:output:05sequential_59/lstm_178/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_59/lstm_178/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_59/lstm_178/zeros/packedPack-sequential_59/lstm_178/strided_slice:output:0.sequential_59/lstm_178/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_59/lstm_178/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_59/lstm_178/zerosFill,sequential_59/lstm_178/zeros/packed:output:0+sequential_59/lstm_178/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_59/lstm_178/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_59/lstm_178/zeros_1/packedPack-sequential_59/lstm_178/strided_slice:output:00sequential_59/lstm_178/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_59/lstm_178/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_59/lstm_178/zeros_1Fill.sequential_59/lstm_178/zeros_1/packed:output:0-sequential_59/lstm_178/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_59/lstm_178/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_59/lstm_178/transpose	Transpose&sequential_59/lstm_177/transpose_1:y:0.sequential_59/lstm_178/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_59/lstm_178/Shape_1Shape$sequential_59/lstm_178/transpose:y:0*
T0*
_output_shapes
:v
,sequential_59/lstm_178/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_59/lstm_178/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_59/lstm_178/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_59/lstm_178/strided_slice_1StridedSlice'sequential_59/lstm_178/Shape_1:output:05sequential_59/lstm_178/strided_slice_1/stack:output:07sequential_59/lstm_178/strided_slice_1/stack_1:output:07sequential_59/lstm_178/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_59/lstm_178/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_59/lstm_178/TensorArrayV2TensorListReserve;sequential_59/lstm_178/TensorArrayV2/element_shape:output:0/sequential_59/lstm_178/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_59/lstm_178/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_59/lstm_178/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_59/lstm_178/transpose:y:0Usequential_59/lstm_178/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_59/lstm_178/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_59/lstm_178/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_59/lstm_178/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_59/lstm_178/strided_slice_2StridedSlice$sequential_59/lstm_178/transpose:y:05sequential_59/lstm_178/strided_slice_2/stack:output:07sequential_59/lstm_178/strided_slice_2/stack_1:output:07sequential_59/lstm_178/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_59/lstm_178/lstm_cell_361/MatMul/ReadVariableOpReadVariableOpCsequential_59_lstm_178_lstm_cell_361_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_59/lstm_178/lstm_cell_361/MatMulMatMul/sequential_59/lstm_178/strided_slice_2:output:0Bsequential_59/lstm_178/lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_59/lstm_178/lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOpEsequential_59_lstm_178_lstm_cell_361_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_59/lstm_178/lstm_cell_361/MatMul_1MatMul%sequential_59/lstm_178/zeros:output:0Dsequential_59/lstm_178/lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_59/lstm_178/lstm_cell_361/addAddV25sequential_59/lstm_178/lstm_cell_361/MatMul:product:07sequential_59/lstm_178/lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_59/lstm_178/lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOpDsequential_59_lstm_178_lstm_cell_361_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_59/lstm_178/lstm_cell_361/BiasAddBiasAdd,sequential_59/lstm_178/lstm_cell_361/add:z:0Csequential_59/lstm_178/lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_59/lstm_178/lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_59/lstm_178/lstm_cell_361/splitSplit=sequential_59/lstm_178/lstm_cell_361/split/split_dim:output:05sequential_59/lstm_178/lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_59/lstm_178/lstm_cell_361/SigmoidSigmoid3sequential_59/lstm_178/lstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_59/lstm_178/lstm_cell_361/Sigmoid_1Sigmoid3sequential_59/lstm_178/lstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_59/lstm_178/lstm_cell_361/mulMul2sequential_59/lstm_178/lstm_cell_361/Sigmoid_1:y:0'sequential_59/lstm_178/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_59/lstm_178/lstm_cell_361/ReluRelu3sequential_59/lstm_178/lstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_59/lstm_178/lstm_cell_361/mul_1Mul0sequential_59/lstm_178/lstm_cell_361/Sigmoid:y:07sequential_59/lstm_178/lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_59/lstm_178/lstm_cell_361/add_1AddV2,sequential_59/lstm_178/lstm_cell_361/mul:z:0.sequential_59/lstm_178/lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_59/lstm_178/lstm_cell_361/Sigmoid_2Sigmoid3sequential_59/lstm_178/lstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_59/lstm_178/lstm_cell_361/Relu_1Relu.sequential_59/lstm_178/lstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_59/lstm_178/lstm_cell_361/mul_2Mul2sequential_59/lstm_178/lstm_cell_361/Sigmoid_2:y:09sequential_59/lstm_178/lstm_cell_361/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_59/lstm_178/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_59/lstm_178/TensorArrayV2_1TensorListReserve=sequential_59/lstm_178/TensorArrayV2_1/element_shape:output:0/sequential_59/lstm_178/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_59/lstm_178/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_59/lstm_178/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_59/lstm_178/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_59/lstm_178/whileWhile2sequential_59/lstm_178/while/loop_counter:output:08sequential_59/lstm_178/while/maximum_iterations:output:0$sequential_59/lstm_178/time:output:0/sequential_59/lstm_178/TensorArrayV2_1:handle:0%sequential_59/lstm_178/zeros:output:0'sequential_59/lstm_178/zeros_1:output:0/sequential_59/lstm_178/strided_slice_1:output:0Nsequential_59/lstm_178/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_59_lstm_178_lstm_cell_361_matmul_readvariableop_resourceEsequential_59_lstm_178_lstm_cell_361_matmul_1_readvariableop_resourceDsequential_59_lstm_178_lstm_cell_361_biasadd_readvariableop_resource*
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
)sequential_59_lstm_178_while_body_2189620*5
cond-R+
)sequential_59_lstm_178_while_cond_2189619*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_59/lstm_178/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_59/lstm_178/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_59/lstm_178/while:output:3Psequential_59/lstm_178/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_59/lstm_178/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_59/lstm_178/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_59/lstm_178/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_59/lstm_178/strided_slice_3StridedSliceBsequential_59/lstm_178/TensorArrayV2Stack/TensorListStack:tensor:05sequential_59/lstm_178/strided_slice_3/stack:output:07sequential_59/lstm_178/strided_slice_3/stack_1:output:07sequential_59/lstm_178/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_59/lstm_178/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_59/lstm_178/transpose_1	TransposeBsequential_59/lstm_178/TensorArrayV2Stack/TensorListStack:tensor:00sequential_59/lstm_178/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_59/lstm_178/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_59/lstm_179/ShapeShape&sequential_59/lstm_178/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_59/lstm_179/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_59/lstm_179/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_59/lstm_179/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_59/lstm_179/strided_sliceStridedSlice%sequential_59/lstm_179/Shape:output:03sequential_59/lstm_179/strided_slice/stack:output:05sequential_59/lstm_179/strided_slice/stack_1:output:05sequential_59/lstm_179/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_59/lstm_179/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_59/lstm_179/zeros/packedPack-sequential_59/lstm_179/strided_slice:output:0.sequential_59/lstm_179/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_59/lstm_179/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_59/lstm_179/zerosFill,sequential_59/lstm_179/zeros/packed:output:0+sequential_59/lstm_179/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_59/lstm_179/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_59/lstm_179/zeros_1/packedPack-sequential_59/lstm_179/strided_slice:output:00sequential_59/lstm_179/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_59/lstm_179/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_59/lstm_179/zeros_1Fill.sequential_59/lstm_179/zeros_1/packed:output:0-sequential_59/lstm_179/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_59/lstm_179/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_59/lstm_179/transpose	Transpose&sequential_59/lstm_178/transpose_1:y:0.sequential_59/lstm_179/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_59/lstm_179/Shape_1Shape$sequential_59/lstm_179/transpose:y:0*
T0*
_output_shapes
:v
,sequential_59/lstm_179/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_59/lstm_179/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_59/lstm_179/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_59/lstm_179/strided_slice_1StridedSlice'sequential_59/lstm_179/Shape_1:output:05sequential_59/lstm_179/strided_slice_1/stack:output:07sequential_59/lstm_179/strided_slice_1/stack_1:output:07sequential_59/lstm_179/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_59/lstm_179/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_59/lstm_179/TensorArrayV2TensorListReserve;sequential_59/lstm_179/TensorArrayV2/element_shape:output:0/sequential_59/lstm_179/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_59/lstm_179/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_59/lstm_179/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_59/lstm_179/transpose:y:0Usequential_59/lstm_179/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_59/lstm_179/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_59/lstm_179/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_59/lstm_179/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_59/lstm_179/strided_slice_2StridedSlice$sequential_59/lstm_179/transpose:y:05sequential_59/lstm_179/strided_slice_2/stack:output:07sequential_59/lstm_179/strided_slice_2/stack_1:output:07sequential_59/lstm_179/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_59/lstm_179/lstm_cell_362/MatMul/ReadVariableOpReadVariableOpCsequential_59_lstm_179_lstm_cell_362_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_59/lstm_179/lstm_cell_362/MatMulMatMul/sequential_59/lstm_179/strided_slice_2:output:0Bsequential_59/lstm_179/lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_59/lstm_179/lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOpEsequential_59_lstm_179_lstm_cell_362_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_59/lstm_179/lstm_cell_362/MatMul_1MatMul%sequential_59/lstm_179/zeros:output:0Dsequential_59/lstm_179/lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_59/lstm_179/lstm_cell_362/addAddV25sequential_59/lstm_179/lstm_cell_362/MatMul:product:07sequential_59/lstm_179/lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_59/lstm_179/lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOpDsequential_59_lstm_179_lstm_cell_362_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_59/lstm_179/lstm_cell_362/BiasAddBiasAdd,sequential_59/lstm_179/lstm_cell_362/add:z:0Csequential_59/lstm_179/lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_59/lstm_179/lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_59/lstm_179/lstm_cell_362/splitSplit=sequential_59/lstm_179/lstm_cell_362/split/split_dim:output:05sequential_59/lstm_179/lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_59/lstm_179/lstm_cell_362/SigmoidSigmoid3sequential_59/lstm_179/lstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_59/lstm_179/lstm_cell_362/Sigmoid_1Sigmoid3sequential_59/lstm_179/lstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_59/lstm_179/lstm_cell_362/mulMul2sequential_59/lstm_179/lstm_cell_362/Sigmoid_1:y:0'sequential_59/lstm_179/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_59/lstm_179/lstm_cell_362/ReluRelu3sequential_59/lstm_179/lstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_59/lstm_179/lstm_cell_362/mul_1Mul0sequential_59/lstm_179/lstm_cell_362/Sigmoid:y:07sequential_59/lstm_179/lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_59/lstm_179/lstm_cell_362/add_1AddV2,sequential_59/lstm_179/lstm_cell_362/mul:z:0.sequential_59/lstm_179/lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_59/lstm_179/lstm_cell_362/Sigmoid_2Sigmoid3sequential_59/lstm_179/lstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_59/lstm_179/lstm_cell_362/Relu_1Relu.sequential_59/lstm_179/lstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_59/lstm_179/lstm_cell_362/mul_2Mul2sequential_59/lstm_179/lstm_cell_362/Sigmoid_2:y:09sequential_59/lstm_179/lstm_cell_362/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_59/lstm_179/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_59/lstm_179/TensorArrayV2_1TensorListReserve=sequential_59/lstm_179/TensorArrayV2_1/element_shape:output:0/sequential_59/lstm_179/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_59/lstm_179/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_59/lstm_179/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_59/lstm_179/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_59/lstm_179/whileWhile2sequential_59/lstm_179/while/loop_counter:output:08sequential_59/lstm_179/while/maximum_iterations:output:0$sequential_59/lstm_179/time:output:0/sequential_59/lstm_179/TensorArrayV2_1:handle:0%sequential_59/lstm_179/zeros:output:0'sequential_59/lstm_179/zeros_1:output:0/sequential_59/lstm_179/strided_slice_1:output:0Nsequential_59/lstm_179/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_59_lstm_179_lstm_cell_362_matmul_readvariableop_resourceEsequential_59_lstm_179_lstm_cell_362_matmul_1_readvariableop_resourceDsequential_59_lstm_179_lstm_cell_362_biasadd_readvariableop_resource*
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
)sequential_59_lstm_179_while_body_2189759*5
cond-R+
)sequential_59_lstm_179_while_cond_2189758*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_59/lstm_179/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_59/lstm_179/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_59/lstm_179/while:output:3Psequential_59/lstm_179/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_59/lstm_179/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_59/lstm_179/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_59/lstm_179/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_59/lstm_179/strided_slice_3StridedSliceBsequential_59/lstm_179/TensorArrayV2Stack/TensorListStack:tensor:05sequential_59/lstm_179/strided_slice_3/stack:output:07sequential_59/lstm_179/strided_slice_3/stack_1:output:07sequential_59/lstm_179/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_59/lstm_179/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_59/lstm_179/transpose_1	TransposeBsequential_59/lstm_179/TensorArrayV2Stack/TensorListStack:tensor:00sequential_59/lstm_179/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_59/lstm_179/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_59/dense_59/MatMul/ReadVariableOpReadVariableOp5sequential_59_dense_59_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_59/dense_59/MatMulMatMul/sequential_59/lstm_179/strided_slice_3:output:04sequential_59/dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_59/dense_59/BiasAdd/ReadVariableOpReadVariableOp6sequential_59_dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_59/dense_59/BiasAddBiasAdd'sequential_59/dense_59/MatMul:product:05sequential_59/dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_59/dense_59/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_59/dense_59/BiasAdd/ReadVariableOp-^sequential_59/dense_59/MatMul/ReadVariableOp<^sequential_59/lstm_177/lstm_cell_360/BiasAdd/ReadVariableOp;^sequential_59/lstm_177/lstm_cell_360/MatMul/ReadVariableOp=^sequential_59/lstm_177/lstm_cell_360/MatMul_1/ReadVariableOp^sequential_59/lstm_177/while<^sequential_59/lstm_178/lstm_cell_361/BiasAdd/ReadVariableOp;^sequential_59/lstm_178/lstm_cell_361/MatMul/ReadVariableOp=^sequential_59/lstm_178/lstm_cell_361/MatMul_1/ReadVariableOp^sequential_59/lstm_178/while<^sequential_59/lstm_179/lstm_cell_362/BiasAdd/ReadVariableOp;^sequential_59/lstm_179/lstm_cell_362/MatMul/ReadVariableOp=^sequential_59/lstm_179/lstm_cell_362/MatMul_1/ReadVariableOp^sequential_59/lstm_179/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_59/dense_59/BiasAdd/ReadVariableOp-sequential_59/dense_59/BiasAdd/ReadVariableOp2\
,sequential_59/dense_59/MatMul/ReadVariableOp,sequential_59/dense_59/MatMul/ReadVariableOp2z
;sequential_59/lstm_177/lstm_cell_360/BiasAdd/ReadVariableOp;sequential_59/lstm_177/lstm_cell_360/BiasAdd/ReadVariableOp2x
:sequential_59/lstm_177/lstm_cell_360/MatMul/ReadVariableOp:sequential_59/lstm_177/lstm_cell_360/MatMul/ReadVariableOp2|
<sequential_59/lstm_177/lstm_cell_360/MatMul_1/ReadVariableOp<sequential_59/lstm_177/lstm_cell_360/MatMul_1/ReadVariableOp2<
sequential_59/lstm_177/whilesequential_59/lstm_177/while2z
;sequential_59/lstm_178/lstm_cell_361/BiasAdd/ReadVariableOp;sequential_59/lstm_178/lstm_cell_361/BiasAdd/ReadVariableOp2x
:sequential_59/lstm_178/lstm_cell_361/MatMul/ReadVariableOp:sequential_59/lstm_178/lstm_cell_361/MatMul/ReadVariableOp2|
<sequential_59/lstm_178/lstm_cell_361/MatMul_1/ReadVariableOp<sequential_59/lstm_178/lstm_cell_361/MatMul_1/ReadVariableOp2<
sequential_59/lstm_178/whilesequential_59/lstm_178/while2z
;sequential_59/lstm_179/lstm_cell_362/BiasAdd/ReadVariableOp;sequential_59/lstm_179/lstm_cell_362/BiasAdd/ReadVariableOp2x
:sequential_59/lstm_179/lstm_cell_362/MatMul/ReadVariableOp:sequential_59/lstm_179/lstm_cell_362/MatMul/ReadVariableOp2|
<sequential_59/lstm_179/lstm_cell_362/MatMul_1/ReadVariableOp<sequential_59/lstm_179/lstm_cell_362/MatMul_1/ReadVariableOp2<
sequential_59/lstm_179/whilesequential_59/lstm_179/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_177_input
?
?
J__inference_sequential_59_layer_call_and_return_conditional_losses_2191962

inputs#
lstm_177_2191935:	?#
lstm_177_2191937:	d?
lstm_177_2191939:	?#
lstm_178_2191942:	d?#
lstm_178_2191944:	2?
lstm_178_2191946:	?"
lstm_179_2191949:2("
lstm_179_2191951:
(
lstm_179_2191953:("
dense_59_2191956:

dense_59_2191958:
identity?? dense_59/StatefulPartitionedCall? lstm_177/StatefulPartitionedCall? lstm_178/StatefulPartitionedCall? lstm_179/StatefulPartitionedCall?
 lstm_177/StatefulPartitionedCallStatefulPartitionedCallinputslstm_177_2191935lstm_177_2191937lstm_177_2191939*
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
E__inference_lstm_177_layer_call_and_return_conditional_losses_2191894?
 lstm_178/StatefulPartitionedCallStatefulPartitionedCall)lstm_177/StatefulPartitionedCall:output:0lstm_178_2191942lstm_178_2191944lstm_178_2191946*
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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2191729?
 lstm_179/StatefulPartitionedCallStatefulPartitionedCall)lstm_178/StatefulPartitionedCall:output:0lstm_179_2191949lstm_179_2191951lstm_179_2191953*
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
E__inference_lstm_179_layer_call_and_return_conditional_losses_2191564?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)lstm_179/StatefulPartitionedCall:output:0dense_59_2191956dense_59_2191958*
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
E__inference_dense_59_layer_call_and_return_conditional_losses_2191366x
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_59/StatefulPartitionedCall!^lstm_177/StatefulPartitionedCall!^lstm_178/StatefulPartitionedCall!^lstm_179/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 lstm_177/StatefulPartitionedCall lstm_177/StatefulPartitionedCall2D
 lstm_178/StatefulPartitionedCall lstm_178/StatefulPartitionedCall2D
 lstm_179/StatefulPartitionedCall lstm_179/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_362_layer_call_and_return_conditional_losses_2195146

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
)sequential_59_lstm_177_while_cond_2189480J
Fsequential_59_lstm_177_while_sequential_59_lstm_177_while_loop_counterP
Lsequential_59_lstm_177_while_sequential_59_lstm_177_while_maximum_iterations,
(sequential_59_lstm_177_while_placeholder.
*sequential_59_lstm_177_while_placeholder_1.
*sequential_59_lstm_177_while_placeholder_2.
*sequential_59_lstm_177_while_placeholder_3L
Hsequential_59_lstm_177_while_less_sequential_59_lstm_177_strided_slice_1c
_sequential_59_lstm_177_while_sequential_59_lstm_177_while_cond_2189480___redundant_placeholder0c
_sequential_59_lstm_177_while_sequential_59_lstm_177_while_cond_2189480___redundant_placeholder1c
_sequential_59_lstm_177_while_sequential_59_lstm_177_while_cond_2189480___redundant_placeholder2c
_sequential_59_lstm_177_while_sequential_59_lstm_177_while_cond_2189480___redundant_placeholder3)
%sequential_59_lstm_177_while_identity
?
!sequential_59/lstm_177/while/LessLess(sequential_59_lstm_177_while_placeholderHsequential_59_lstm_177_while_less_sequential_59_lstm_177_strided_slice_1*
T0*
_output_shapes
: y
%sequential_59/lstm_177/while/IdentityIdentity%sequential_59/lstm_177/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_59_lstm_177_while_identity.sequential_59/lstm_177/while/Identity:output:0*(
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
while_cond_2193548
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2193548___redundant_placeholder05
1while_while_cond_2193548___redundant_placeholder15
1while_while_cond_2193548___redundant_placeholder25
1while_while_cond_2193548___redundant_placeholder3
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
lstm_178_while_cond_2192787.
*lstm_178_while_lstm_178_while_loop_counter4
0lstm_178_while_lstm_178_while_maximum_iterations
lstm_178_while_placeholder 
lstm_178_while_placeholder_1 
lstm_178_while_placeholder_2 
lstm_178_while_placeholder_30
,lstm_178_while_less_lstm_178_strided_slice_1G
Clstm_178_while_lstm_178_while_cond_2192787___redundant_placeholder0G
Clstm_178_while_lstm_178_while_cond_2192787___redundant_placeholder1G
Clstm_178_while_lstm_178_while_cond_2192787___redundant_placeholder2G
Clstm_178_while_lstm_178_while_cond_2192787___redundant_placeholder3
lstm_178_while_identity
?
lstm_178/while/LessLesslstm_178_while_placeholder,lstm_178_while_less_lstm_178_strided_slice_1*
T0*
_output_shapes
: ]
lstm_178/while/IdentityIdentitylstm_178/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_178_while_identity lstm_178/while/Identity:output:0*(
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
E__inference_lstm_177_layer_call_and_return_conditional_losses_2193204
inputs_0?
,lstm_cell_360_matmul_readvariableop_resource:	?A
.lstm_cell_360_matmul_1_readvariableop_resource:	d?<
-lstm_cell_360_biasadd_readvariableop_resource:	?
identity??$lstm_cell_360/BiasAdd/ReadVariableOp?#lstm_cell_360/MatMul/ReadVariableOp?%lstm_cell_360/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_360/MatMul/ReadVariableOpReadVariableOp,lstm_cell_360_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_360/MatMulMatMulstrided_slice_2:output:0+lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_360_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_360/MatMul_1MatMulzeros:output:0-lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_360/addAddV2lstm_cell_360/MatMul:product:0 lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_360_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_360/BiasAddBiasAddlstm_cell_360/add:z:0,lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_360/splitSplit&lstm_cell_360/split/split_dim:output:0lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_360/SigmoidSigmoidlstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_360/Sigmoid_1Sigmoidlstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_360/mulMullstm_cell_360/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_360/ReluRelulstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_360/mul_1Mullstm_cell_360/Sigmoid:y:0 lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_360/add_1AddV2lstm_cell_360/mul:z:0lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_360/Sigmoid_2Sigmoidlstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_360/Relu_1Relulstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_360/mul_2Mullstm_cell_360/Sigmoid_2:y:0"lstm_cell_360/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_360_matmul_readvariableop_resource.lstm_cell_360_matmul_1_readvariableop_resource-lstm_cell_360_biasadd_readvariableop_resource*
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
while_body_2193120*
condR
while_cond_2193119*K
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
NoOpNoOp%^lstm_cell_360/BiasAdd/ReadVariableOp$^lstm_cell_360/MatMul/ReadVariableOp&^lstm_cell_360/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_360/BiasAdd/ReadVariableOp$lstm_cell_360/BiasAdd/ReadVariableOp2J
#lstm_cell_360/MatMul/ReadVariableOp#lstm_cell_360/MatMul/ReadVariableOp2N
%lstm_cell_360/MatMul_1/ReadVariableOp%lstm_cell_360/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_2191644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2191644___redundant_placeholder05
1while_while_cond_2191644___redundant_placeholder15
1while_while_cond_2191644___redundant_placeholder25
1while_while_cond_2191644___redundant_placeholder3
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
*__inference_lstm_179_layer_call_fn_2194293

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
E__inference_lstm_179_layer_call_and_return_conditional_losses_2191564o
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
?
?
J__inference_lstm_cell_361_layer_call_and_return_conditional_losses_2195080

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
?8
?
while_body_2194495
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_362_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_362_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_362_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_362_matmul_readvariableop_resource:2(F
4while_lstm_cell_362_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_362_biasadd_readvariableop_resource:(??*while/lstm_cell_362/BiasAdd/ReadVariableOp?)while/lstm_cell_362/MatMul/ReadVariableOp?+while/lstm_cell_362/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_362/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_362_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_362/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_362_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_362/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_362/addAddV2$while/lstm_cell_362/MatMul:product:0&while/lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_362_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_362/BiasAddBiasAddwhile/lstm_cell_362/add:z:02while/lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_362/splitSplit,while/lstm_cell_362/split/split_dim:output:0$while/lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_362/SigmoidSigmoid"while/lstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_362/Sigmoid_1Sigmoid"while/lstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mulMul!while/lstm_cell_362/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_362/ReluRelu"while/lstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mul_1Mulwhile/lstm_cell_362/Sigmoid:y:0&while/lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/add_1AddV2while/lstm_cell_362/mul:z:0while/lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_362/Sigmoid_2Sigmoid"while/lstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_362/Relu_1Reluwhile/lstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mul_2Mul!while/lstm_cell_362/Sigmoid_2:y:0(while/lstm_cell_362/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_362/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_362/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_362/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_362/BiasAdd/ReadVariableOp*^while/lstm_cell_362/MatMul/ReadVariableOp,^while/lstm_cell_362/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_362_biasadd_readvariableop_resource5while_lstm_cell_362_biasadd_readvariableop_resource_0"n
4while_lstm_cell_362_matmul_1_readvariableop_resource6while_lstm_cell_362_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_362_matmul_readvariableop_resource4while_lstm_cell_362_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_362/BiasAdd/ReadVariableOp*while/lstm_cell_362/BiasAdd/ReadVariableOp2V
)while/lstm_cell_362/MatMul/ReadVariableOp)while/lstm_cell_362/MatMul/ReadVariableOp2Z
+while/lstm_cell_362/MatMul_1/ReadVariableOp+while/lstm_cell_362/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2190120
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2190120___redundant_placeholder05
1while_while_cond_2190120___redundant_placeholder15
1while_while_cond_2190120___redundant_placeholder25
1while_while_cond_2190120___redundant_placeholder3
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
E__inference_dense_59_layer_call_and_return_conditional_losses_2194884

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
J__inference_lstm_cell_361_layer_call_and_return_conditional_losses_2190266

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
while_body_2194165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_361_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_361_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_361_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_361_matmul_readvariableop_resource:	d?G
4while_lstm_cell_361_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_361_biasadd_readvariableop_resource:	???*while/lstm_cell_361/BiasAdd/ReadVariableOp?)while/lstm_cell_361/MatMul/ReadVariableOp?+while/lstm_cell_361/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_361/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_361_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_361/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_361_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_361/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_361/addAddV2$while/lstm_cell_361/MatMul:product:0&while/lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_361_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_361/BiasAddBiasAddwhile/lstm_cell_361/add:z:02while/lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_361/splitSplit,while/lstm_cell_361/split/split_dim:output:0$while/lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_361/SigmoidSigmoid"while/lstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_361/Sigmoid_1Sigmoid"while/lstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mulMul!while/lstm_cell_361/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_361/ReluRelu"while/lstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mul_1Mulwhile/lstm_cell_361/Sigmoid:y:0&while/lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/add_1AddV2while/lstm_cell_361/mul:z:0while/lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_361/Sigmoid_2Sigmoid"while/lstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_361/Relu_1Reluwhile/lstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mul_2Mul!while/lstm_cell_361/Sigmoid_2:y:0(while/lstm_cell_361/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_361/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_361/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_361/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_361/BiasAdd/ReadVariableOp*^while/lstm_cell_361/MatMul/ReadVariableOp,^while/lstm_cell_361/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_361_biasadd_readvariableop_resource5while_lstm_cell_361_biasadd_readvariableop_resource_0"n
4while_lstm_cell_361_matmul_1_readvariableop_resource6while_lstm_cell_361_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_361_matmul_readvariableop_resource4while_lstm_cell_361_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_361/BiasAdd/ReadVariableOp*while/lstm_cell_361/BiasAdd/ReadVariableOp2V
)while/lstm_cell_361/MatMul/ReadVariableOp)while/lstm_cell_361/MatMul/ReadVariableOp2Z
+while/lstm_cell_361/MatMul_1/ReadVariableOp+while/lstm_cell_361/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2191114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_361_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_361_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_361_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_361_matmul_readvariableop_resource:	d?G
4while_lstm_cell_361_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_361_biasadd_readvariableop_resource:	???*while/lstm_cell_361/BiasAdd/ReadVariableOp?)while/lstm_cell_361/MatMul/ReadVariableOp?+while/lstm_cell_361/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_361/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_361_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_361/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_361_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_361/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_361/addAddV2$while/lstm_cell_361/MatMul:product:0&while/lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_361_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_361/BiasAddBiasAddwhile/lstm_cell_361/add:z:02while/lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_361/splitSplit,while/lstm_cell_361/split/split_dim:output:0$while/lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_361/SigmoidSigmoid"while/lstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_361/Sigmoid_1Sigmoid"while/lstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mulMul!while/lstm_cell_361/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_361/ReluRelu"while/lstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mul_1Mulwhile/lstm_cell_361/Sigmoid:y:0&while/lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/add_1AddV2while/lstm_cell_361/mul:z:0while/lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_361/Sigmoid_2Sigmoid"while/lstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_361/Relu_1Reluwhile/lstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mul_2Mul!while/lstm_cell_361/Sigmoid_2:y:0(while/lstm_cell_361/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_361/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_361/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_361/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_361/BiasAdd/ReadVariableOp*^while/lstm_cell_361/MatMul/ReadVariableOp,^while/lstm_cell_361/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_361_biasadd_readvariableop_resource5while_lstm_cell_361_biasadd_readvariableop_resource_0"n
4while_lstm_cell_361_matmul_1_readvariableop_resource6while_lstm_cell_361_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_361_matmul_readvariableop_resource4while_lstm_cell_361_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_361/BiasAdd/ReadVariableOp*while/lstm_cell_361/BiasAdd/ReadVariableOp2V
)while/lstm_cell_361/MatMul/ReadVariableOp)while/lstm_cell_361/MatMul/ReadVariableOp2Z
+while/lstm_cell_361/MatMul_1/ReadVariableOp+while/lstm_cell_361/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_177_layer_call_fn_2193061

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
E__inference_lstm_177_layer_call_and_return_conditional_losses_2191894s
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
?#
?
while_body_2189930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_360_2189954_0:	?0
while_lstm_cell_360_2189956_0:	d?,
while_lstm_cell_360_2189958_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_360_2189954:	?.
while_lstm_cell_360_2189956:	d?*
while_lstm_cell_360_2189958:	???+while/lstm_cell_360/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_360/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_360_2189954_0while_lstm_cell_360_2189956_0while_lstm_cell_360_2189958_0*
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
J__inference_lstm_cell_360_layer_call_and_return_conditional_losses_2189916?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_360/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_360/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_360/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_360/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_360_2189954while_lstm_cell_360_2189954_0"<
while_lstm_cell_360_2189956while_lstm_cell_360_2189956_0"<
while_lstm_cell_360_2189958while_lstm_cell_360_2189958_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_360/StatefulPartitionedCall+while/lstm_cell_360/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_360_layer_call_and_return_conditional_losses_2189916

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
while_body_2190964
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_360_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_360_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_360_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_360_matmul_readvariableop_resource:	?G
4while_lstm_cell_360_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_360_biasadd_readvariableop_resource:	???*while/lstm_cell_360/BiasAdd/ReadVariableOp?)while/lstm_cell_360/MatMul/ReadVariableOp?+while/lstm_cell_360/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_360/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_360_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_360/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_360_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_360/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_360/addAddV2$while/lstm_cell_360/MatMul:product:0&while/lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_360_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_360/BiasAddBiasAddwhile/lstm_cell_360/add:z:02while/lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_360/splitSplit,while/lstm_cell_360/split/split_dim:output:0$while/lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_360/SigmoidSigmoid"while/lstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_360/Sigmoid_1Sigmoid"while/lstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mulMul!while/lstm_cell_360/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_360/ReluRelu"while/lstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mul_1Mulwhile/lstm_cell_360/Sigmoid:y:0&while/lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/add_1AddV2while/lstm_cell_360/mul:z:0while/lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_360/Sigmoid_2Sigmoid"while/lstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_360/Relu_1Reluwhile/lstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mul_2Mul!while/lstm_cell_360/Sigmoid_2:y:0(while/lstm_cell_360/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_360/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_360/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_360/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_360/BiasAdd/ReadVariableOp*^while/lstm_cell_360/MatMul/ReadVariableOp,^while/lstm_cell_360/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_360_biasadd_readvariableop_resource5while_lstm_cell_360_biasadd_readvariableop_resource_0"n
4while_lstm_cell_360_matmul_1_readvariableop_resource6while_lstm_cell_360_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_360_matmul_readvariableop_resource4while_lstm_cell_360_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_360/BiasAdd/ReadVariableOp*while/lstm_cell_360/BiasAdd/ReadVariableOp2V
)while/lstm_cell_360/MatMul/ReadVariableOp)while/lstm_cell_360/MatMul/ReadVariableOp2Z
+while/lstm_cell_360/MatMul_1/ReadVariableOp+while/lstm_cell_360/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2194352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_362_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_362_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_362_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_362_matmul_readvariableop_resource:2(F
4while_lstm_cell_362_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_362_biasadd_readvariableop_resource:(??*while/lstm_cell_362/BiasAdd/ReadVariableOp?)while/lstm_cell_362/MatMul/ReadVariableOp?+while/lstm_cell_362/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_362/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_362_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_362/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_362_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_362/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_362/addAddV2$while/lstm_cell_362/MatMul:product:0&while/lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_362_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_362/BiasAddBiasAddwhile/lstm_cell_362/add:z:02while/lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_362/splitSplit,while/lstm_cell_362/split/split_dim:output:0$while/lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_362/SigmoidSigmoid"while/lstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_362/Sigmoid_1Sigmoid"while/lstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mulMul!while/lstm_cell_362/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_362/ReluRelu"while/lstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mul_1Mulwhile/lstm_cell_362/Sigmoid:y:0&while/lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/add_1AddV2while/lstm_cell_362/mul:z:0while/lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_362/Sigmoid_2Sigmoid"while/lstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_362/Relu_1Reluwhile/lstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mul_2Mul!while/lstm_cell_362/Sigmoid_2:y:0(while/lstm_cell_362/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_362/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_362/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_362/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_362/BiasAdd/ReadVariableOp*^while/lstm_cell_362/MatMul/ReadVariableOp,^while/lstm_cell_362/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_362_biasadd_readvariableop_resource5while_lstm_cell_362_biasadd_readvariableop_resource_0"n
4while_lstm_cell_362_matmul_1_readvariableop_resource6while_lstm_cell_362_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_362_matmul_readvariableop_resource4while_lstm_cell_362_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_362/BiasAdd/ReadVariableOp*while/lstm_cell_362/BiasAdd/ReadVariableOp2V
)while/lstm_cell_362/MatMul/ReadVariableOp)while/lstm_cell_362/MatMul/ReadVariableOp2Z
+while/lstm_cell_362/MatMul_1/ReadVariableOp+while/lstm_cell_362/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2190820
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2190820___redundant_placeholder05
1while_while_cond_2190820___redundant_placeholder15
1while_while_cond_2190820___redundant_placeholder25
1while_while_cond_2190820___redundant_placeholder3
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
?
E__inference_lstm_179_layer_call_and_return_conditional_losses_2190699

inputs'
lstm_cell_362_2190617:2('
lstm_cell_362_2190619:
(#
lstm_cell_362_2190621:(
identity??%lstm_cell_362/StatefulPartitionedCall?while;
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
%lstm_cell_362/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_362_2190617lstm_cell_362_2190619lstm_cell_362_2190621*
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
J__inference_lstm_cell_362_layer_call_and_return_conditional_losses_2190616n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_362_2190617lstm_cell_362_2190619lstm_cell_362_2190621*
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
while_body_2190630*
condR
while_cond_2190629*K
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
NoOpNoOp&^lstm_cell_362/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_362/StatefulPartitionedCall%lstm_cell_362/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?S
?
)sequential_59_lstm_177_while_body_2189481J
Fsequential_59_lstm_177_while_sequential_59_lstm_177_while_loop_counterP
Lsequential_59_lstm_177_while_sequential_59_lstm_177_while_maximum_iterations,
(sequential_59_lstm_177_while_placeholder.
*sequential_59_lstm_177_while_placeholder_1.
*sequential_59_lstm_177_while_placeholder_2.
*sequential_59_lstm_177_while_placeholder_3I
Esequential_59_lstm_177_while_sequential_59_lstm_177_strided_slice_1_0?
?sequential_59_lstm_177_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_177_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_59_lstm_177_while_lstm_cell_360_matmul_readvariableop_resource_0:	?`
Msequential_59_lstm_177_while_lstm_cell_360_matmul_1_readvariableop_resource_0:	d?[
Lsequential_59_lstm_177_while_lstm_cell_360_biasadd_readvariableop_resource_0:	?)
%sequential_59_lstm_177_while_identity+
'sequential_59_lstm_177_while_identity_1+
'sequential_59_lstm_177_while_identity_2+
'sequential_59_lstm_177_while_identity_3+
'sequential_59_lstm_177_while_identity_4+
'sequential_59_lstm_177_while_identity_5G
Csequential_59_lstm_177_while_sequential_59_lstm_177_strided_slice_1?
sequential_59_lstm_177_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_177_tensorarrayunstack_tensorlistfromtensor\
Isequential_59_lstm_177_while_lstm_cell_360_matmul_readvariableop_resource:	?^
Ksequential_59_lstm_177_while_lstm_cell_360_matmul_1_readvariableop_resource:	d?Y
Jsequential_59_lstm_177_while_lstm_cell_360_biasadd_readvariableop_resource:	???Asequential_59/lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOp?@sequential_59/lstm_177/while/lstm_cell_360/MatMul/ReadVariableOp?Bsequential_59/lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOp?
Nsequential_59/lstm_177/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_59/lstm_177/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_59_lstm_177_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_177_tensorarrayunstack_tensorlistfromtensor_0(sequential_59_lstm_177_while_placeholderWsequential_59/lstm_177/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_59/lstm_177/while/lstm_cell_360/MatMul/ReadVariableOpReadVariableOpKsequential_59_lstm_177_while_lstm_cell_360_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_59/lstm_177/while/lstm_cell_360/MatMulMatMulGsequential_59/lstm_177/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_59/lstm_177/while/lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_59/lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOpMsequential_59_lstm_177_while_lstm_cell_360_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_59/lstm_177/while/lstm_cell_360/MatMul_1MatMul*sequential_59_lstm_177_while_placeholder_2Jsequential_59/lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_59/lstm_177/while/lstm_cell_360/addAddV2;sequential_59/lstm_177/while/lstm_cell_360/MatMul:product:0=sequential_59/lstm_177/while/lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_59/lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOpLsequential_59_lstm_177_while_lstm_cell_360_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_59/lstm_177/while/lstm_cell_360/BiasAddBiasAdd2sequential_59/lstm_177/while/lstm_cell_360/add:z:0Isequential_59/lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_59/lstm_177/while/lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_59/lstm_177/while/lstm_cell_360/splitSplitCsequential_59/lstm_177/while/lstm_cell_360/split/split_dim:output:0;sequential_59/lstm_177/while/lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_59/lstm_177/while/lstm_cell_360/SigmoidSigmoid9sequential_59/lstm_177/while/lstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_59/lstm_177/while/lstm_cell_360/Sigmoid_1Sigmoid9sequential_59/lstm_177/while/lstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_59/lstm_177/while/lstm_cell_360/mulMul8sequential_59/lstm_177/while/lstm_cell_360/Sigmoid_1:y:0*sequential_59_lstm_177_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_59/lstm_177/while/lstm_cell_360/ReluRelu9sequential_59/lstm_177/while/lstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_59/lstm_177/while/lstm_cell_360/mul_1Mul6sequential_59/lstm_177/while/lstm_cell_360/Sigmoid:y:0=sequential_59/lstm_177/while/lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_59/lstm_177/while/lstm_cell_360/add_1AddV22sequential_59/lstm_177/while/lstm_cell_360/mul:z:04sequential_59/lstm_177/while/lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_59/lstm_177/while/lstm_cell_360/Sigmoid_2Sigmoid9sequential_59/lstm_177/while/lstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_59/lstm_177/while/lstm_cell_360/Relu_1Relu4sequential_59/lstm_177/while/lstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_59/lstm_177/while/lstm_cell_360/mul_2Mul8sequential_59/lstm_177/while/lstm_cell_360/Sigmoid_2:y:0?sequential_59/lstm_177/while/lstm_cell_360/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_59/lstm_177/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_59_lstm_177_while_placeholder_1(sequential_59_lstm_177_while_placeholder4sequential_59/lstm_177/while/lstm_cell_360/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_59/lstm_177/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_59/lstm_177/while/addAddV2(sequential_59_lstm_177_while_placeholder+sequential_59/lstm_177/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_59/lstm_177/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_59/lstm_177/while/add_1AddV2Fsequential_59_lstm_177_while_sequential_59_lstm_177_while_loop_counter-sequential_59/lstm_177/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_59/lstm_177/while/IdentityIdentity&sequential_59/lstm_177/while/add_1:z:0"^sequential_59/lstm_177/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_177/while/Identity_1IdentityLsequential_59_lstm_177_while_sequential_59_lstm_177_while_maximum_iterations"^sequential_59/lstm_177/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_177/while/Identity_2Identity$sequential_59/lstm_177/while/add:z:0"^sequential_59/lstm_177/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_177/while/Identity_3IdentityQsequential_59/lstm_177/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_59/lstm_177/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_177/while/Identity_4Identity4sequential_59/lstm_177/while/lstm_cell_360/mul_2:z:0"^sequential_59/lstm_177/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_59/lstm_177/while/Identity_5Identity4sequential_59/lstm_177/while/lstm_cell_360/add_1:z:0"^sequential_59/lstm_177/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_59/lstm_177/while/NoOpNoOpB^sequential_59/lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOpA^sequential_59/lstm_177/while/lstm_cell_360/MatMul/ReadVariableOpC^sequential_59/lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_59_lstm_177_while_identity.sequential_59/lstm_177/while/Identity:output:0"[
'sequential_59_lstm_177_while_identity_10sequential_59/lstm_177/while/Identity_1:output:0"[
'sequential_59_lstm_177_while_identity_20sequential_59/lstm_177/while/Identity_2:output:0"[
'sequential_59_lstm_177_while_identity_30sequential_59/lstm_177/while/Identity_3:output:0"[
'sequential_59_lstm_177_while_identity_40sequential_59/lstm_177/while/Identity_4:output:0"[
'sequential_59_lstm_177_while_identity_50sequential_59/lstm_177/while/Identity_5:output:0"?
Jsequential_59_lstm_177_while_lstm_cell_360_biasadd_readvariableop_resourceLsequential_59_lstm_177_while_lstm_cell_360_biasadd_readvariableop_resource_0"?
Ksequential_59_lstm_177_while_lstm_cell_360_matmul_1_readvariableop_resourceMsequential_59_lstm_177_while_lstm_cell_360_matmul_1_readvariableop_resource_0"?
Isequential_59_lstm_177_while_lstm_cell_360_matmul_readvariableop_resourceKsequential_59_lstm_177_while_lstm_cell_360_matmul_readvariableop_resource_0"?
Csequential_59_lstm_177_while_sequential_59_lstm_177_strided_slice_1Esequential_59_lstm_177_while_sequential_59_lstm_177_strided_slice_1_0"?
sequential_59_lstm_177_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_177_tensorarrayunstack_tensorlistfromtensor?sequential_59_lstm_177_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_177_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_59/lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOpAsequential_59/lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOp2?
@sequential_59/lstm_177/while/lstm_cell_360/MatMul/ReadVariableOp@sequential_59/lstm_177/while/lstm_cell_360/MatMul/ReadVariableOp2?
Bsequential_59/lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOpBsequential_59/lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_178_while_body_2192788.
*lstm_178_while_lstm_178_while_loop_counter4
0lstm_178_while_lstm_178_while_maximum_iterations
lstm_178_while_placeholder 
lstm_178_while_placeholder_1 
lstm_178_while_placeholder_2 
lstm_178_while_placeholder_3-
)lstm_178_while_lstm_178_strided_slice_1_0i
elstm_178_while_tensorarrayv2read_tensorlistgetitem_lstm_178_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_178_while_lstm_cell_361_matmul_readvariableop_resource_0:	d?R
?lstm_178_while_lstm_cell_361_matmul_1_readvariableop_resource_0:	2?M
>lstm_178_while_lstm_cell_361_biasadd_readvariableop_resource_0:	?
lstm_178_while_identity
lstm_178_while_identity_1
lstm_178_while_identity_2
lstm_178_while_identity_3
lstm_178_while_identity_4
lstm_178_while_identity_5+
'lstm_178_while_lstm_178_strided_slice_1g
clstm_178_while_tensorarrayv2read_tensorlistgetitem_lstm_178_tensorarrayunstack_tensorlistfromtensorN
;lstm_178_while_lstm_cell_361_matmul_readvariableop_resource:	d?P
=lstm_178_while_lstm_cell_361_matmul_1_readvariableop_resource:	2?K
<lstm_178_while_lstm_cell_361_biasadd_readvariableop_resource:	???3lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOp?2lstm_178/while/lstm_cell_361/MatMul/ReadVariableOp?4lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOp?
@lstm_178/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_178/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_178_while_tensorarrayv2read_tensorlistgetitem_lstm_178_tensorarrayunstack_tensorlistfromtensor_0lstm_178_while_placeholderIlstm_178/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_178/while/lstm_cell_361/MatMul/ReadVariableOpReadVariableOp=lstm_178_while_lstm_cell_361_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_178/while/lstm_cell_361/MatMulMatMul9lstm_178/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_178/while/lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOp?lstm_178_while_lstm_cell_361_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_178/while/lstm_cell_361/MatMul_1MatMullstm_178_while_placeholder_2<lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_178/while/lstm_cell_361/addAddV2-lstm_178/while/lstm_cell_361/MatMul:product:0/lstm_178/while/lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOp>lstm_178_while_lstm_cell_361_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_178/while/lstm_cell_361/BiasAddBiasAdd$lstm_178/while/lstm_cell_361/add:z:0;lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_178/while/lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_178/while/lstm_cell_361/splitSplit5lstm_178/while/lstm_cell_361/split/split_dim:output:0-lstm_178/while/lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_178/while/lstm_cell_361/SigmoidSigmoid+lstm_178/while/lstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_178/while/lstm_cell_361/Sigmoid_1Sigmoid+lstm_178/while/lstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_178/while/lstm_cell_361/mulMul*lstm_178/while/lstm_cell_361/Sigmoid_1:y:0lstm_178_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_178/while/lstm_cell_361/ReluRelu+lstm_178/while/lstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_178/while/lstm_cell_361/mul_1Mul(lstm_178/while/lstm_cell_361/Sigmoid:y:0/lstm_178/while/lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_178/while/lstm_cell_361/add_1AddV2$lstm_178/while/lstm_cell_361/mul:z:0&lstm_178/while/lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_178/while/lstm_cell_361/Sigmoid_2Sigmoid+lstm_178/while/lstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_178/while/lstm_cell_361/Relu_1Relu&lstm_178/while/lstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_178/while/lstm_cell_361/mul_2Mul*lstm_178/while/lstm_cell_361/Sigmoid_2:y:01lstm_178/while/lstm_cell_361/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_178/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_178_while_placeholder_1lstm_178_while_placeholder&lstm_178/while/lstm_cell_361/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_178/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_178/while/addAddV2lstm_178_while_placeholderlstm_178/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_178/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_178/while/add_1AddV2*lstm_178_while_lstm_178_while_loop_counterlstm_178/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_178/while/IdentityIdentitylstm_178/while/add_1:z:0^lstm_178/while/NoOp*
T0*
_output_shapes
: ?
lstm_178/while/Identity_1Identity0lstm_178_while_lstm_178_while_maximum_iterations^lstm_178/while/NoOp*
T0*
_output_shapes
: t
lstm_178/while/Identity_2Identitylstm_178/while/add:z:0^lstm_178/while/NoOp*
T0*
_output_shapes
: ?
lstm_178/while/Identity_3IdentityClstm_178/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_178/while/NoOp*
T0*
_output_shapes
: ?
lstm_178/while/Identity_4Identity&lstm_178/while/lstm_cell_361/mul_2:z:0^lstm_178/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_178/while/Identity_5Identity&lstm_178/while/lstm_cell_361/add_1:z:0^lstm_178/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_178/while/NoOpNoOp4^lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOp3^lstm_178/while/lstm_cell_361/MatMul/ReadVariableOp5^lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_178_while_identity lstm_178/while/Identity:output:0"?
lstm_178_while_identity_1"lstm_178/while/Identity_1:output:0"?
lstm_178_while_identity_2"lstm_178/while/Identity_2:output:0"?
lstm_178_while_identity_3"lstm_178/while/Identity_3:output:0"?
lstm_178_while_identity_4"lstm_178/while/Identity_4:output:0"?
lstm_178_while_identity_5"lstm_178/while/Identity_5:output:0"T
'lstm_178_while_lstm_178_strided_slice_1)lstm_178_while_lstm_178_strided_slice_1_0"~
<lstm_178_while_lstm_cell_361_biasadd_readvariableop_resource>lstm_178_while_lstm_cell_361_biasadd_readvariableop_resource_0"?
=lstm_178_while_lstm_cell_361_matmul_1_readvariableop_resource?lstm_178_while_lstm_cell_361_matmul_1_readvariableop_resource_0"|
;lstm_178_while_lstm_cell_361_matmul_readvariableop_resource=lstm_178_while_lstm_cell_361_matmul_readvariableop_resource_0"?
clstm_178_while_tensorarrayv2read_tensorlistgetitem_lstm_178_tensorarrayunstack_tensorlistfromtensorelstm_178_while_tensorarrayv2read_tensorlistgetitem_lstm_178_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOp3lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOp2h
2lstm_178/while/lstm_cell_361/MatMul/ReadVariableOp2lstm_178/while/lstm_cell_361/MatMul/ReadVariableOp2l
4lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOp4lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_2190280
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_361_2190304_0:	d?0
while_lstm_cell_361_2190306_0:	2?,
while_lstm_cell_361_2190308_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_361_2190304:	d?.
while_lstm_cell_361_2190306:	2?*
while_lstm_cell_361_2190308:	???+while/lstm_cell_361/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_361/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_361_2190304_0while_lstm_cell_361_2190306_0while_lstm_cell_361_2190308_0*
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
J__inference_lstm_cell_361_layer_call_and_return_conditional_losses_2190266?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_361/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_361/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_361/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_361/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_361_2190304while_lstm_cell_361_2190304_0"<
while_lstm_cell_361_2190306while_lstm_cell_361_2190306_0"<
while_lstm_cell_361_2190308while_lstm_cell_361_2190308_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_361/StatefulPartitionedCall+while/lstm_cell_361/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2193549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_360_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_360_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_360_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_360_matmul_readvariableop_resource:	?G
4while_lstm_cell_360_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_360_biasadd_readvariableop_resource:	???*while/lstm_cell_360/BiasAdd/ReadVariableOp?)while/lstm_cell_360/MatMul/ReadVariableOp?+while/lstm_cell_360/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_360/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_360_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_360/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_360_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_360/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_360/addAddV2$while/lstm_cell_360/MatMul:product:0&while/lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_360_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_360/BiasAddBiasAddwhile/lstm_cell_360/add:z:02while/lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_360/splitSplit,while/lstm_cell_360/split/split_dim:output:0$while/lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_360/SigmoidSigmoid"while/lstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_360/Sigmoid_1Sigmoid"while/lstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mulMul!while/lstm_cell_360/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_360/ReluRelu"while/lstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mul_1Mulwhile/lstm_cell_360/Sigmoid:y:0&while/lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/add_1AddV2while/lstm_cell_360/mul:z:0while/lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_360/Sigmoid_2Sigmoid"while/lstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_360/Relu_1Reluwhile/lstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mul_2Mul!while/lstm_cell_360/Sigmoid_2:y:0(while/lstm_cell_360/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_360/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_360/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_360/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_360/BiasAdd/ReadVariableOp*^while/lstm_cell_360/MatMul/ReadVariableOp,^while/lstm_cell_360/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_360_biasadd_readvariableop_resource5while_lstm_cell_360_biasadd_readvariableop_resource_0"n
4while_lstm_cell_360_matmul_1_readvariableop_resource6while_lstm_cell_360_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_360_matmul_readvariableop_resource4while_lstm_cell_360_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_360/BiasAdd/ReadVariableOp*while/lstm_cell_360/BiasAdd/ReadVariableOp2V
)while/lstm_cell_360/MatMul/ReadVariableOp)while/lstm_cell_360/MatMul/ReadVariableOp2Z
+while/lstm_cell_360/MatMul_1/ReadVariableOp+while/lstm_cell_360/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2191263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2191263___redundant_placeholder05
1while_while_cond_2191263___redundant_placeholder15
1while_while_cond_2191263___redundant_placeholder25
1while_while_cond_2191263___redundant_placeholder3
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
*__inference_lstm_178_layer_call_fn_2193655
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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2190540|
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
?
while_cond_2190279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2190279___redundant_placeholder05
1while_while_cond_2190279___redundant_placeholder15
1while_while_cond_2190279___redundant_placeholder25
1while_while_cond_2190279___redundant_placeholder3
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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2193820
inputs_0?
,lstm_cell_361_matmul_readvariableop_resource:	d?A
.lstm_cell_361_matmul_1_readvariableop_resource:	2?<
-lstm_cell_361_biasadd_readvariableop_resource:	?
identity??$lstm_cell_361/BiasAdd/ReadVariableOp?#lstm_cell_361/MatMul/ReadVariableOp?%lstm_cell_361/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_361/MatMul/ReadVariableOpReadVariableOp,lstm_cell_361_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_361/MatMulMatMulstrided_slice_2:output:0+lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_361_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_361/MatMul_1MatMulzeros:output:0-lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_361/addAddV2lstm_cell_361/MatMul:product:0 lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_361_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_361/BiasAddBiasAddlstm_cell_361/add:z:0,lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_361/splitSplit&lstm_cell_361/split/split_dim:output:0lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_361/SigmoidSigmoidlstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_361/Sigmoid_1Sigmoidlstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_361/mulMullstm_cell_361/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_361/ReluRelulstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_361/mul_1Mullstm_cell_361/Sigmoid:y:0 lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_361/add_1AddV2lstm_cell_361/mul:z:0lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_361/Sigmoid_2Sigmoidlstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_361/Relu_1Relulstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_361/mul_2Mullstm_cell_361/Sigmoid_2:y:0"lstm_cell_361/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_361_matmul_readvariableop_resource.lstm_cell_361_matmul_1_readvariableop_resource-lstm_cell_361_biasadd_readvariableop_resource*
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
while_body_2193736*
condR
while_cond_2193735*K
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
NoOpNoOp%^lstm_cell_361/BiasAdd/ReadVariableOp$^lstm_cell_361/MatMul/ReadVariableOp&^lstm_cell_361/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_361/BiasAdd/ReadVariableOp$lstm_cell_361/BiasAdd/ReadVariableOp2J
#lstm_cell_361/MatMul/ReadVariableOp#lstm_cell_361/MatMul/ReadVariableOp2N
%lstm_cell_361/MatMul_1/ReadVariableOp%lstm_cell_361/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?

?
lstm_178_while_cond_2192360.
*lstm_178_while_lstm_178_while_loop_counter4
0lstm_178_while_lstm_178_while_maximum_iterations
lstm_178_while_placeholder 
lstm_178_while_placeholder_1 
lstm_178_while_placeholder_2 
lstm_178_while_placeholder_30
,lstm_178_while_less_lstm_178_strided_slice_1G
Clstm_178_while_lstm_178_while_cond_2192360___redundant_placeholder0G
Clstm_178_while_lstm_178_while_cond_2192360___redundant_placeholder1G
Clstm_178_while_lstm_178_while_cond_2192360___redundant_placeholder2G
Clstm_178_while_lstm_178_while_cond_2192360___redundant_placeholder3
lstm_178_while_identity
?
lstm_178/while/LessLesslstm_178_while_placeholder,lstm_178_while_less_lstm_178_strided_slice_1*
T0*
_output_shapes
: ]
lstm_178/while/IdentityIdentitylstm_178/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_178_while_identity lstm_178/while/Identity:output:0*(
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
while_body_2190121
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_360_2190145_0:	?0
while_lstm_cell_360_2190147_0:	d?,
while_lstm_cell_360_2190149_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_360_2190145:	?.
while_lstm_cell_360_2190147:	d?*
while_lstm_cell_360_2190149:	???+while/lstm_cell_360/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_360/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_360_2190145_0while_lstm_cell_360_2190147_0while_lstm_cell_360_2190149_0*
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
J__inference_lstm_cell_360_layer_call_and_return_conditional_losses_2190062?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_360/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_360/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_360/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_360/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_360_2190145while_lstm_cell_360_2190145_0"<
while_lstm_cell_360_2190147while_lstm_cell_360_2190147_0"<
while_lstm_cell_360_2190149while_lstm_cell_360_2190149_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_360/StatefulPartitionedCall+while/lstm_cell_360/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2190821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_362_2190845_0:2(/
while_lstm_cell_362_2190847_0:
(+
while_lstm_cell_362_2190849_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_362_2190845:2(-
while_lstm_cell_362_2190847:
()
while_lstm_cell_362_2190849:(??+while/lstm_cell_362/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_362/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_362_2190845_0while_lstm_cell_362_2190847_0while_lstm_cell_362_2190849_0*
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
J__inference_lstm_cell_362_layer_call_and_return_conditional_losses_2190762?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_362/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_362/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_362/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_362/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_362_2190845while_lstm_cell_362_2190845_0"<
while_lstm_cell_362_2190847while_lstm_cell_362_2190847_0"<
while_lstm_cell_362_2190849while_lstm_cell_362_2190849_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_362/StatefulPartitionedCall+while/lstm_cell_362/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_59_layer_call_and_return_conditional_losses_2192044
lstm_177_input#
lstm_177_2192017:	?#
lstm_177_2192019:	d?
lstm_177_2192021:	?#
lstm_178_2192024:	d?#
lstm_178_2192026:	2?
lstm_178_2192028:	?"
lstm_179_2192031:2("
lstm_179_2192033:
(
lstm_179_2192035:("
dense_59_2192038:

dense_59_2192040:
identity?? dense_59/StatefulPartitionedCall? lstm_177/StatefulPartitionedCall? lstm_178/StatefulPartitionedCall? lstm_179/StatefulPartitionedCall?
 lstm_177/StatefulPartitionedCallStatefulPartitionedCalllstm_177_inputlstm_177_2192017lstm_177_2192019lstm_177_2192021*
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
E__inference_lstm_177_layer_call_and_return_conditional_losses_2191048?
 lstm_178/StatefulPartitionedCallStatefulPartitionedCall)lstm_177/StatefulPartitionedCall:output:0lstm_178_2192024lstm_178_2192026lstm_178_2192028*
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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2191198?
 lstm_179/StatefulPartitionedCallStatefulPartitionedCall)lstm_178/StatefulPartitionedCall:output:0lstm_179_2192031lstm_179_2192033lstm_179_2192035*
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
E__inference_lstm_179_layer_call_and_return_conditional_losses_2191348?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)lstm_179/StatefulPartitionedCall:output:0dense_59_2192038dense_59_2192040*
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
E__inference_dense_59_layer_call_and_return_conditional_losses_2191366x
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_59/StatefulPartitionedCall!^lstm_177/StatefulPartitionedCall!^lstm_178/StatefulPartitionedCall!^lstm_179/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 lstm_177/StatefulPartitionedCall lstm_177/StatefulPartitionedCall2D
 lstm_178/StatefulPartitionedCall lstm_178/StatefulPartitionedCall2D
 lstm_179/StatefulPartitionedCall lstm_179/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_177_input
?
?
while_cond_2194351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2194351___redundant_placeholder05
1while_while_cond_2194351___redundant_placeholder15
1while_while_cond_2194351___redundant_placeholder25
1while_while_cond_2194351___redundant_placeholder3
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
while_cond_2191113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2191113___redundant_placeholder05
1while_while_cond_2191113___redundant_placeholder15
1while_while_cond_2191113___redundant_placeholder25
1while_while_cond_2191113___redundant_placeholder3
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
%__inference_signature_wrapper_2192109
lstm_177_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_177_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2189849o
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
_user_specified_namelstm_177_input
?J
?
E__inference_lstm_178_layer_call_and_return_conditional_losses_2191729

inputs?
,lstm_cell_361_matmul_readvariableop_resource:	d?A
.lstm_cell_361_matmul_1_readvariableop_resource:	2?<
-lstm_cell_361_biasadd_readvariableop_resource:	?
identity??$lstm_cell_361/BiasAdd/ReadVariableOp?#lstm_cell_361/MatMul/ReadVariableOp?%lstm_cell_361/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_361/MatMul/ReadVariableOpReadVariableOp,lstm_cell_361_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_361/MatMulMatMulstrided_slice_2:output:0+lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_361_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_361/MatMul_1MatMulzeros:output:0-lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_361/addAddV2lstm_cell_361/MatMul:product:0 lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_361_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_361/BiasAddBiasAddlstm_cell_361/add:z:0,lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_361/splitSplit&lstm_cell_361/split/split_dim:output:0lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_361/SigmoidSigmoidlstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_361/Sigmoid_1Sigmoidlstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_361/mulMullstm_cell_361/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_361/ReluRelulstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_361/mul_1Mullstm_cell_361/Sigmoid:y:0 lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_361/add_1AddV2lstm_cell_361/mul:z:0lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_361/Sigmoid_2Sigmoidlstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_361/Relu_1Relulstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_361/mul_2Mullstm_cell_361/Sigmoid_2:y:0"lstm_cell_361/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_361_matmul_readvariableop_resource.lstm_cell_361_matmul_1_readvariableop_resource-lstm_cell_361_biasadd_readvariableop_resource*
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
while_body_2191645*
condR
while_cond_2191644*K
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
NoOpNoOp%^lstm_cell_361/BiasAdd/ReadVariableOp$^lstm_cell_361/MatMul/ReadVariableOp&^lstm_cell_361/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_361/BiasAdd/ReadVariableOp$lstm_cell_361/BiasAdd/ReadVariableOp2J
#lstm_cell_361/MatMul/ReadVariableOp#lstm_cell_361/MatMul/ReadVariableOp2N
%lstm_cell_361/MatMul_1/ReadVariableOp%lstm_cell_361/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_177_layer_call_and_return_conditional_losses_2191048

inputs?
,lstm_cell_360_matmul_readvariableop_resource:	?A
.lstm_cell_360_matmul_1_readvariableop_resource:	d?<
-lstm_cell_360_biasadd_readvariableop_resource:	?
identity??$lstm_cell_360/BiasAdd/ReadVariableOp?#lstm_cell_360/MatMul/ReadVariableOp?%lstm_cell_360/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_360/MatMul/ReadVariableOpReadVariableOp,lstm_cell_360_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_360/MatMulMatMulstrided_slice_2:output:0+lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_360_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_360/MatMul_1MatMulzeros:output:0-lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_360/addAddV2lstm_cell_360/MatMul:product:0 lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_360_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_360/BiasAddBiasAddlstm_cell_360/add:z:0,lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_360/splitSplit&lstm_cell_360/split/split_dim:output:0lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_360/SigmoidSigmoidlstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_360/Sigmoid_1Sigmoidlstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_360/mulMullstm_cell_360/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_360/ReluRelulstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_360/mul_1Mullstm_cell_360/Sigmoid:y:0 lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_360/add_1AddV2lstm_cell_360/mul:z:0lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_360/Sigmoid_2Sigmoidlstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_360/Relu_1Relulstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_360/mul_2Mullstm_cell_360/Sigmoid_2:y:0"lstm_cell_360/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_360_matmul_readvariableop_resource.lstm_cell_360_matmul_1_readvariableop_resource-lstm_cell_360_biasadd_readvariableop_resource*
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
while_body_2190964*
condR
while_cond_2190963*K
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
NoOpNoOp%^lstm_cell_360/BiasAdd/ReadVariableOp$^lstm_cell_360/MatMul/ReadVariableOp&^lstm_cell_360/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_360/BiasAdd/ReadVariableOp$lstm_cell_360/BiasAdd/ReadVariableOp2J
#lstm_cell_360/MatMul/ReadVariableOp#lstm_cell_360/MatMul/ReadVariableOp2N
%lstm_cell_360/MatMul_1/ReadVariableOp%lstm_cell_360/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_179_layer_call_fn_2194282

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
E__inference_lstm_179_layer_call_and_return_conditional_losses_2191348o
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
E__inference_lstm_177_layer_call_and_return_conditional_losses_2193347
inputs_0?
,lstm_cell_360_matmul_readvariableop_resource:	?A
.lstm_cell_360_matmul_1_readvariableop_resource:	d?<
-lstm_cell_360_biasadd_readvariableop_resource:	?
identity??$lstm_cell_360/BiasAdd/ReadVariableOp?#lstm_cell_360/MatMul/ReadVariableOp?%lstm_cell_360/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_360/MatMul/ReadVariableOpReadVariableOp,lstm_cell_360_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_360/MatMulMatMulstrided_slice_2:output:0+lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_360_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_360/MatMul_1MatMulzeros:output:0-lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_360/addAddV2lstm_cell_360/MatMul:product:0 lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_360_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_360/BiasAddBiasAddlstm_cell_360/add:z:0,lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_360/splitSplit&lstm_cell_360/split/split_dim:output:0lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_360/SigmoidSigmoidlstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_360/Sigmoid_1Sigmoidlstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_360/mulMullstm_cell_360/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_360/ReluRelulstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_360/mul_1Mullstm_cell_360/Sigmoid:y:0 lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_360/add_1AddV2lstm_cell_360/mul:z:0lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_360/Sigmoid_2Sigmoidlstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_360/Relu_1Relulstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_360/mul_2Mullstm_cell_360/Sigmoid_2:y:0"lstm_cell_360/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_360_matmul_readvariableop_resource.lstm_cell_360_matmul_1_readvariableop_resource-lstm_cell_360_biasadd_readvariableop_resource*
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
while_body_2193263*
condR
while_cond_2193262*K
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
NoOpNoOp%^lstm_cell_360/BiasAdd/ReadVariableOp$^lstm_cell_360/MatMul/ReadVariableOp&^lstm_cell_360/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_360/BiasAdd/ReadVariableOp$lstm_cell_360/BiasAdd/ReadVariableOp2J
#lstm_cell_360/MatMul/ReadVariableOp#lstm_cell_360/MatMul/ReadVariableOp2N
%lstm_cell_360/MatMul_1/ReadVariableOp%lstm_cell_360/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_362_layer_call_fn_2195097

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
J__inference_lstm_cell_362_layer_call_and_return_conditional_losses_2190616o
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
while_body_2194781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_362_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_362_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_362_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_362_matmul_readvariableop_resource:2(F
4while_lstm_cell_362_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_362_biasadd_readvariableop_resource:(??*while/lstm_cell_362/BiasAdd/ReadVariableOp?)while/lstm_cell_362/MatMul/ReadVariableOp?+while/lstm_cell_362/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_362/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_362_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_362/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_362_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_362/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_362/addAddV2$while/lstm_cell_362/MatMul:product:0&while/lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_362_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_362/BiasAddBiasAddwhile/lstm_cell_362/add:z:02while/lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_362/splitSplit,while/lstm_cell_362/split/split_dim:output:0$while/lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_362/SigmoidSigmoid"while/lstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_362/Sigmoid_1Sigmoid"while/lstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mulMul!while/lstm_cell_362/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_362/ReluRelu"while/lstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mul_1Mulwhile/lstm_cell_362/Sigmoid:y:0&while/lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/add_1AddV2while/lstm_cell_362/mul:z:0while/lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_362/Sigmoid_2Sigmoid"while/lstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_362/Relu_1Reluwhile/lstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mul_2Mul!while/lstm_cell_362/Sigmoid_2:y:0(while/lstm_cell_362/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_362/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_362/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_362/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_362/BiasAdd/ReadVariableOp*^while/lstm_cell_362/MatMul/ReadVariableOp,^while/lstm_cell_362/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_362_biasadd_readvariableop_resource5while_lstm_cell_362_biasadd_readvariableop_resource_0"n
4while_lstm_cell_362_matmul_1_readvariableop_resource6while_lstm_cell_362_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_362_matmul_readvariableop_resource4while_lstm_cell_362_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_362/BiasAdd/ReadVariableOp*while/lstm_cell_362/BiasAdd/ReadVariableOp2V
)while/lstm_cell_362/MatMul/ReadVariableOp)while/lstm_cell_362/MatMul/ReadVariableOp2Z
+while/lstm_cell_362/MatMul_1/ReadVariableOp+while/lstm_cell_362/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_177_layer_call_fn_2193050

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
E__inference_lstm_177_layer_call_and_return_conditional_losses_2191048s
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
while_body_2193736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_361_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_361_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_361_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_361_matmul_readvariableop_resource:	d?G
4while_lstm_cell_361_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_361_biasadd_readvariableop_resource:	???*while/lstm_cell_361/BiasAdd/ReadVariableOp?)while/lstm_cell_361/MatMul/ReadVariableOp?+while/lstm_cell_361/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_361/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_361_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_361/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_361_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_361/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_361/addAddV2$while/lstm_cell_361/MatMul:product:0&while/lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_361_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_361/BiasAddBiasAddwhile/lstm_cell_361/add:z:02while/lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_361/splitSplit,while/lstm_cell_361/split/split_dim:output:0$while/lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_361/SigmoidSigmoid"while/lstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_361/Sigmoid_1Sigmoid"while/lstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mulMul!while/lstm_cell_361/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_361/ReluRelu"while/lstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mul_1Mulwhile/lstm_cell_361/Sigmoid:y:0&while/lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/add_1AddV2while/lstm_cell_361/mul:z:0while/lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_361/Sigmoid_2Sigmoid"while/lstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_361/Relu_1Reluwhile/lstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mul_2Mul!while/lstm_cell_361/Sigmoid_2:y:0(while/lstm_cell_361/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_361/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_361/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_361/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_361/BiasAdd/ReadVariableOp*^while/lstm_cell_361/MatMul/ReadVariableOp,^while/lstm_cell_361/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_361_biasadd_readvariableop_resource5while_lstm_cell_361_biasadd_readvariableop_resource_0"n
4while_lstm_cell_361_matmul_1_readvariableop_resource6while_lstm_cell_361_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_361_matmul_readvariableop_resource4while_lstm_cell_361_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_361/BiasAdd/ReadVariableOp*while/lstm_cell_361/BiasAdd/ReadVariableOp2V
)while/lstm_cell_361/MatMul/ReadVariableOp)while/lstm_cell_361/MatMul/ReadVariableOp2Z
+while/lstm_cell_361/MatMul_1/ReadVariableOp+while/lstm_cell_361/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2193119
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2193119___redundant_placeholder05
1while_while_cond_2193119___redundant_placeholder15
1while_while_cond_2193119___redundant_placeholder25
1while_while_cond_2193119___redundant_placeholder3
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
while_cond_2191809
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2191809___redundant_placeholder05
1while_while_cond_2191809___redundant_placeholder15
1while_while_cond_2191809___redundant_placeholder25
1while_while_cond_2191809___redundant_placeholder3
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
?C
?

lstm_177_while_body_2192649.
*lstm_177_while_lstm_177_while_loop_counter4
0lstm_177_while_lstm_177_while_maximum_iterations
lstm_177_while_placeholder 
lstm_177_while_placeholder_1 
lstm_177_while_placeholder_2 
lstm_177_while_placeholder_3-
)lstm_177_while_lstm_177_strided_slice_1_0i
elstm_177_while_tensorarrayv2read_tensorlistgetitem_lstm_177_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_177_while_lstm_cell_360_matmul_readvariableop_resource_0:	?R
?lstm_177_while_lstm_cell_360_matmul_1_readvariableop_resource_0:	d?M
>lstm_177_while_lstm_cell_360_biasadd_readvariableop_resource_0:	?
lstm_177_while_identity
lstm_177_while_identity_1
lstm_177_while_identity_2
lstm_177_while_identity_3
lstm_177_while_identity_4
lstm_177_while_identity_5+
'lstm_177_while_lstm_177_strided_slice_1g
clstm_177_while_tensorarrayv2read_tensorlistgetitem_lstm_177_tensorarrayunstack_tensorlistfromtensorN
;lstm_177_while_lstm_cell_360_matmul_readvariableop_resource:	?P
=lstm_177_while_lstm_cell_360_matmul_1_readvariableop_resource:	d?K
<lstm_177_while_lstm_cell_360_biasadd_readvariableop_resource:	???3lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOp?2lstm_177/while/lstm_cell_360/MatMul/ReadVariableOp?4lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOp?
@lstm_177/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_177/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_177_while_tensorarrayv2read_tensorlistgetitem_lstm_177_tensorarrayunstack_tensorlistfromtensor_0lstm_177_while_placeholderIlstm_177/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_177/while/lstm_cell_360/MatMul/ReadVariableOpReadVariableOp=lstm_177_while_lstm_cell_360_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_177/while/lstm_cell_360/MatMulMatMul9lstm_177/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_177/while/lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOp?lstm_177_while_lstm_cell_360_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_177/while/lstm_cell_360/MatMul_1MatMullstm_177_while_placeholder_2<lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_177/while/lstm_cell_360/addAddV2-lstm_177/while/lstm_cell_360/MatMul:product:0/lstm_177/while/lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOp>lstm_177_while_lstm_cell_360_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_177/while/lstm_cell_360/BiasAddBiasAdd$lstm_177/while/lstm_cell_360/add:z:0;lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_177/while/lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_177/while/lstm_cell_360/splitSplit5lstm_177/while/lstm_cell_360/split/split_dim:output:0-lstm_177/while/lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_177/while/lstm_cell_360/SigmoidSigmoid+lstm_177/while/lstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_177/while/lstm_cell_360/Sigmoid_1Sigmoid+lstm_177/while/lstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_177/while/lstm_cell_360/mulMul*lstm_177/while/lstm_cell_360/Sigmoid_1:y:0lstm_177_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_177/while/lstm_cell_360/ReluRelu+lstm_177/while/lstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_177/while/lstm_cell_360/mul_1Mul(lstm_177/while/lstm_cell_360/Sigmoid:y:0/lstm_177/while/lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_177/while/lstm_cell_360/add_1AddV2$lstm_177/while/lstm_cell_360/mul:z:0&lstm_177/while/lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_177/while/lstm_cell_360/Sigmoid_2Sigmoid+lstm_177/while/lstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_177/while/lstm_cell_360/Relu_1Relu&lstm_177/while/lstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_177/while/lstm_cell_360/mul_2Mul*lstm_177/while/lstm_cell_360/Sigmoid_2:y:01lstm_177/while/lstm_cell_360/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_177/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_177_while_placeholder_1lstm_177_while_placeholder&lstm_177/while/lstm_cell_360/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_177/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_177/while/addAddV2lstm_177_while_placeholderlstm_177/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_177/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_177/while/add_1AddV2*lstm_177_while_lstm_177_while_loop_counterlstm_177/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_177/while/IdentityIdentitylstm_177/while/add_1:z:0^lstm_177/while/NoOp*
T0*
_output_shapes
: ?
lstm_177/while/Identity_1Identity0lstm_177_while_lstm_177_while_maximum_iterations^lstm_177/while/NoOp*
T0*
_output_shapes
: t
lstm_177/while/Identity_2Identitylstm_177/while/add:z:0^lstm_177/while/NoOp*
T0*
_output_shapes
: ?
lstm_177/while/Identity_3IdentityClstm_177/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_177/while/NoOp*
T0*
_output_shapes
: ?
lstm_177/while/Identity_4Identity&lstm_177/while/lstm_cell_360/mul_2:z:0^lstm_177/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_177/while/Identity_5Identity&lstm_177/while/lstm_cell_360/add_1:z:0^lstm_177/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_177/while/NoOpNoOp4^lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOp3^lstm_177/while/lstm_cell_360/MatMul/ReadVariableOp5^lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_177_while_identity lstm_177/while/Identity:output:0"?
lstm_177_while_identity_1"lstm_177/while/Identity_1:output:0"?
lstm_177_while_identity_2"lstm_177/while/Identity_2:output:0"?
lstm_177_while_identity_3"lstm_177/while/Identity_3:output:0"?
lstm_177_while_identity_4"lstm_177/while/Identity_4:output:0"?
lstm_177_while_identity_5"lstm_177/while/Identity_5:output:0"T
'lstm_177_while_lstm_177_strided_slice_1)lstm_177_while_lstm_177_strided_slice_1_0"~
<lstm_177_while_lstm_cell_360_biasadd_readvariableop_resource>lstm_177_while_lstm_cell_360_biasadd_readvariableop_resource_0"?
=lstm_177_while_lstm_cell_360_matmul_1_readvariableop_resource?lstm_177_while_lstm_cell_360_matmul_1_readvariableop_resource_0"|
;lstm_177_while_lstm_cell_360_matmul_readvariableop_resource=lstm_177_while_lstm_cell_360_matmul_readvariableop_resource_0"?
clstm_177_while_tensorarrayv2read_tensorlistgetitem_lstm_177_tensorarrayunstack_tensorlistfromtensorelstm_177_while_tensorarrayv2read_tensorlistgetitem_lstm_177_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOp3lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOp2h
2lstm_177/while/lstm_cell_360/MatMul/ReadVariableOp2lstm_177/while/lstm_cell_360/MatMul/ReadVariableOp2l
4lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOp4lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_360_layer_call_fn_2194901

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
J__inference_lstm_cell_360_layer_call_and_return_conditional_losses_2189916o
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
?C
?

lstm_178_while_body_2192361.
*lstm_178_while_lstm_178_while_loop_counter4
0lstm_178_while_lstm_178_while_maximum_iterations
lstm_178_while_placeholder 
lstm_178_while_placeholder_1 
lstm_178_while_placeholder_2 
lstm_178_while_placeholder_3-
)lstm_178_while_lstm_178_strided_slice_1_0i
elstm_178_while_tensorarrayv2read_tensorlistgetitem_lstm_178_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_178_while_lstm_cell_361_matmul_readvariableop_resource_0:	d?R
?lstm_178_while_lstm_cell_361_matmul_1_readvariableop_resource_0:	2?M
>lstm_178_while_lstm_cell_361_biasadd_readvariableop_resource_0:	?
lstm_178_while_identity
lstm_178_while_identity_1
lstm_178_while_identity_2
lstm_178_while_identity_3
lstm_178_while_identity_4
lstm_178_while_identity_5+
'lstm_178_while_lstm_178_strided_slice_1g
clstm_178_while_tensorarrayv2read_tensorlistgetitem_lstm_178_tensorarrayunstack_tensorlistfromtensorN
;lstm_178_while_lstm_cell_361_matmul_readvariableop_resource:	d?P
=lstm_178_while_lstm_cell_361_matmul_1_readvariableop_resource:	2?K
<lstm_178_while_lstm_cell_361_biasadd_readvariableop_resource:	???3lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOp?2lstm_178/while/lstm_cell_361/MatMul/ReadVariableOp?4lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOp?
@lstm_178/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_178/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_178_while_tensorarrayv2read_tensorlistgetitem_lstm_178_tensorarrayunstack_tensorlistfromtensor_0lstm_178_while_placeholderIlstm_178/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_178/while/lstm_cell_361/MatMul/ReadVariableOpReadVariableOp=lstm_178_while_lstm_cell_361_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_178/while/lstm_cell_361/MatMulMatMul9lstm_178/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_178/while/lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOp?lstm_178_while_lstm_cell_361_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_178/while/lstm_cell_361/MatMul_1MatMullstm_178_while_placeholder_2<lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_178/while/lstm_cell_361/addAddV2-lstm_178/while/lstm_cell_361/MatMul:product:0/lstm_178/while/lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOp>lstm_178_while_lstm_cell_361_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_178/while/lstm_cell_361/BiasAddBiasAdd$lstm_178/while/lstm_cell_361/add:z:0;lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_178/while/lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_178/while/lstm_cell_361/splitSplit5lstm_178/while/lstm_cell_361/split/split_dim:output:0-lstm_178/while/lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_178/while/lstm_cell_361/SigmoidSigmoid+lstm_178/while/lstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_178/while/lstm_cell_361/Sigmoid_1Sigmoid+lstm_178/while/lstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_178/while/lstm_cell_361/mulMul*lstm_178/while/lstm_cell_361/Sigmoid_1:y:0lstm_178_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_178/while/lstm_cell_361/ReluRelu+lstm_178/while/lstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_178/while/lstm_cell_361/mul_1Mul(lstm_178/while/lstm_cell_361/Sigmoid:y:0/lstm_178/while/lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_178/while/lstm_cell_361/add_1AddV2$lstm_178/while/lstm_cell_361/mul:z:0&lstm_178/while/lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_178/while/lstm_cell_361/Sigmoid_2Sigmoid+lstm_178/while/lstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_178/while/lstm_cell_361/Relu_1Relu&lstm_178/while/lstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_178/while/lstm_cell_361/mul_2Mul*lstm_178/while/lstm_cell_361/Sigmoid_2:y:01lstm_178/while/lstm_cell_361/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_178/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_178_while_placeholder_1lstm_178_while_placeholder&lstm_178/while/lstm_cell_361/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_178/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_178/while/addAddV2lstm_178_while_placeholderlstm_178/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_178/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_178/while/add_1AddV2*lstm_178_while_lstm_178_while_loop_counterlstm_178/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_178/while/IdentityIdentitylstm_178/while/add_1:z:0^lstm_178/while/NoOp*
T0*
_output_shapes
: ?
lstm_178/while/Identity_1Identity0lstm_178_while_lstm_178_while_maximum_iterations^lstm_178/while/NoOp*
T0*
_output_shapes
: t
lstm_178/while/Identity_2Identitylstm_178/while/add:z:0^lstm_178/while/NoOp*
T0*
_output_shapes
: ?
lstm_178/while/Identity_3IdentityClstm_178/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_178/while/NoOp*
T0*
_output_shapes
: ?
lstm_178/while/Identity_4Identity&lstm_178/while/lstm_cell_361/mul_2:z:0^lstm_178/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_178/while/Identity_5Identity&lstm_178/while/lstm_cell_361/add_1:z:0^lstm_178/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_178/while/NoOpNoOp4^lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOp3^lstm_178/while/lstm_cell_361/MatMul/ReadVariableOp5^lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_178_while_identity lstm_178/while/Identity:output:0"?
lstm_178_while_identity_1"lstm_178/while/Identity_1:output:0"?
lstm_178_while_identity_2"lstm_178/while/Identity_2:output:0"?
lstm_178_while_identity_3"lstm_178/while/Identity_3:output:0"?
lstm_178_while_identity_4"lstm_178/while/Identity_4:output:0"?
lstm_178_while_identity_5"lstm_178/while/Identity_5:output:0"T
'lstm_178_while_lstm_178_strided_slice_1)lstm_178_while_lstm_178_strided_slice_1_0"~
<lstm_178_while_lstm_cell_361_biasadd_readvariableop_resource>lstm_178_while_lstm_cell_361_biasadd_readvariableop_resource_0"?
=lstm_178_while_lstm_cell_361_matmul_1_readvariableop_resource?lstm_178_while_lstm_cell_361_matmul_1_readvariableop_resource_0"|
;lstm_178_while_lstm_cell_361_matmul_readvariableop_resource=lstm_178_while_lstm_cell_361_matmul_readvariableop_resource_0"?
clstm_178_while_tensorarrayv2read_tensorlistgetitem_lstm_178_tensorarrayunstack_tensorlistfromtensorelstm_178_while_tensorarrayv2read_tensorlistgetitem_lstm_178_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOp3lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOp2h
2lstm_178/while/lstm_cell_361/MatMul/ReadVariableOp2lstm_178/while/lstm_cell_361/MatMul/ReadVariableOp2l
4lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOp4lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_59_layer_call_fn_2192014
lstm_177_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_177_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_59_layer_call_and_return_conditional_losses_2191962o
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
_user_specified_namelstm_177_input
?C
?

lstm_179_while_body_2192500.
*lstm_179_while_lstm_179_while_loop_counter4
0lstm_179_while_lstm_179_while_maximum_iterations
lstm_179_while_placeholder 
lstm_179_while_placeholder_1 
lstm_179_while_placeholder_2 
lstm_179_while_placeholder_3-
)lstm_179_while_lstm_179_strided_slice_1_0i
elstm_179_while_tensorarrayv2read_tensorlistgetitem_lstm_179_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_179_while_lstm_cell_362_matmul_readvariableop_resource_0:2(Q
?lstm_179_while_lstm_cell_362_matmul_1_readvariableop_resource_0:
(L
>lstm_179_while_lstm_cell_362_biasadd_readvariableop_resource_0:(
lstm_179_while_identity
lstm_179_while_identity_1
lstm_179_while_identity_2
lstm_179_while_identity_3
lstm_179_while_identity_4
lstm_179_while_identity_5+
'lstm_179_while_lstm_179_strided_slice_1g
clstm_179_while_tensorarrayv2read_tensorlistgetitem_lstm_179_tensorarrayunstack_tensorlistfromtensorM
;lstm_179_while_lstm_cell_362_matmul_readvariableop_resource:2(O
=lstm_179_while_lstm_cell_362_matmul_1_readvariableop_resource:
(J
<lstm_179_while_lstm_cell_362_biasadd_readvariableop_resource:(??3lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOp?2lstm_179/while/lstm_cell_362/MatMul/ReadVariableOp?4lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOp?
@lstm_179/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_179/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_179_while_tensorarrayv2read_tensorlistgetitem_lstm_179_tensorarrayunstack_tensorlistfromtensor_0lstm_179_while_placeholderIlstm_179/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_179/while/lstm_cell_362/MatMul/ReadVariableOpReadVariableOp=lstm_179_while_lstm_cell_362_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_179/while/lstm_cell_362/MatMulMatMul9lstm_179/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_179/while/lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOp?lstm_179_while_lstm_cell_362_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_179/while/lstm_cell_362/MatMul_1MatMullstm_179_while_placeholder_2<lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_179/while/lstm_cell_362/addAddV2-lstm_179/while/lstm_cell_362/MatMul:product:0/lstm_179/while/lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOp>lstm_179_while_lstm_cell_362_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_179/while/lstm_cell_362/BiasAddBiasAdd$lstm_179/while/lstm_cell_362/add:z:0;lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_179/while/lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_179/while/lstm_cell_362/splitSplit5lstm_179/while/lstm_cell_362/split/split_dim:output:0-lstm_179/while/lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_179/while/lstm_cell_362/SigmoidSigmoid+lstm_179/while/lstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_179/while/lstm_cell_362/Sigmoid_1Sigmoid+lstm_179/while/lstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_179/while/lstm_cell_362/mulMul*lstm_179/while/lstm_cell_362/Sigmoid_1:y:0lstm_179_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_179/while/lstm_cell_362/ReluRelu+lstm_179/while/lstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_179/while/lstm_cell_362/mul_1Mul(lstm_179/while/lstm_cell_362/Sigmoid:y:0/lstm_179/while/lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_179/while/lstm_cell_362/add_1AddV2$lstm_179/while/lstm_cell_362/mul:z:0&lstm_179/while/lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_179/while/lstm_cell_362/Sigmoid_2Sigmoid+lstm_179/while/lstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_179/while/lstm_cell_362/Relu_1Relu&lstm_179/while/lstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_179/while/lstm_cell_362/mul_2Mul*lstm_179/while/lstm_cell_362/Sigmoid_2:y:01lstm_179/while/lstm_cell_362/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_179/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_179_while_placeholder_1lstm_179_while_placeholder&lstm_179/while/lstm_cell_362/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_179/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_179/while/addAddV2lstm_179_while_placeholderlstm_179/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_179/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_179/while/add_1AddV2*lstm_179_while_lstm_179_while_loop_counterlstm_179/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_179/while/IdentityIdentitylstm_179/while/add_1:z:0^lstm_179/while/NoOp*
T0*
_output_shapes
: ?
lstm_179/while/Identity_1Identity0lstm_179_while_lstm_179_while_maximum_iterations^lstm_179/while/NoOp*
T0*
_output_shapes
: t
lstm_179/while/Identity_2Identitylstm_179/while/add:z:0^lstm_179/while/NoOp*
T0*
_output_shapes
: ?
lstm_179/while/Identity_3IdentityClstm_179/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_179/while/NoOp*
T0*
_output_shapes
: ?
lstm_179/while/Identity_4Identity&lstm_179/while/lstm_cell_362/mul_2:z:0^lstm_179/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_179/while/Identity_5Identity&lstm_179/while/lstm_cell_362/add_1:z:0^lstm_179/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_179/while/NoOpNoOp4^lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOp3^lstm_179/while/lstm_cell_362/MatMul/ReadVariableOp5^lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_179_while_identity lstm_179/while/Identity:output:0"?
lstm_179_while_identity_1"lstm_179/while/Identity_1:output:0"?
lstm_179_while_identity_2"lstm_179/while/Identity_2:output:0"?
lstm_179_while_identity_3"lstm_179/while/Identity_3:output:0"?
lstm_179_while_identity_4"lstm_179/while/Identity_4:output:0"?
lstm_179_while_identity_5"lstm_179/while/Identity_5:output:0"T
'lstm_179_while_lstm_179_strided_slice_1)lstm_179_while_lstm_179_strided_slice_1_0"~
<lstm_179_while_lstm_cell_362_biasadd_readvariableop_resource>lstm_179_while_lstm_cell_362_biasadd_readvariableop_resource_0"?
=lstm_179_while_lstm_cell_362_matmul_1_readvariableop_resource?lstm_179_while_lstm_cell_362_matmul_1_readvariableop_resource_0"|
;lstm_179_while_lstm_cell_362_matmul_readvariableop_resource=lstm_179_while_lstm_cell_362_matmul_readvariableop_resource_0"?
clstm_179_while_tensorarrayv2read_tensorlistgetitem_lstm_179_tensorarrayunstack_tensorlistfromtensorelstm_179_while_tensorarrayv2read_tensorlistgetitem_lstm_179_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOp3lstm_179/while/lstm_cell_362/BiasAdd/ReadVariableOp2h
2lstm_179/while/lstm_cell_362/MatMul/ReadVariableOp2lstm_179/while/lstm_cell_362/MatMul/ReadVariableOp2l
4lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOp4lstm_179/while/lstm_cell_362/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_361_layer_call_fn_2194999

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
J__inference_lstm_cell_361_layer_call_and_return_conditional_losses_2190266o
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

?
/__inference_sequential_59_layer_call_fn_2192163

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
J__inference_sequential_59_layer_call_and_return_conditional_losses_2191962o
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
*__inference_dense_59_layer_call_fn_2194874

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
E__inference_dense_59_layer_call_and_return_conditional_losses_2191366o
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
?
?
/__inference_lstm_cell_360_layer_call_fn_2194918

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
J__inference_lstm_cell_360_layer_call_and_return_conditional_losses_2190062o
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
while_cond_2194494
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2194494___redundant_placeholder05
1while_while_cond_2194494___redundant_placeholder15
1while_while_cond_2194494___redundant_placeholder25
1while_while_cond_2194494___redundant_placeholder3
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
while_body_2191645
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_361_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_361_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_361_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_361_matmul_readvariableop_resource:	d?G
4while_lstm_cell_361_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_361_biasadd_readvariableop_resource:	???*while/lstm_cell_361/BiasAdd/ReadVariableOp?)while/lstm_cell_361/MatMul/ReadVariableOp?+while/lstm_cell_361/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_361/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_361_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_361/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_361_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_361/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_361/addAddV2$while/lstm_cell_361/MatMul:product:0&while/lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_361_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_361/BiasAddBiasAddwhile/lstm_cell_361/add:z:02while/lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_361/splitSplit,while/lstm_cell_361/split/split_dim:output:0$while/lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_361/SigmoidSigmoid"while/lstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_361/Sigmoid_1Sigmoid"while/lstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mulMul!while/lstm_cell_361/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_361/ReluRelu"while/lstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mul_1Mulwhile/lstm_cell_361/Sigmoid:y:0&while/lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/add_1AddV2while/lstm_cell_361/mul:z:0while/lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_361/Sigmoid_2Sigmoid"while/lstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_361/Relu_1Reluwhile/lstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mul_2Mul!while/lstm_cell_361/Sigmoid_2:y:0(while/lstm_cell_361/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_361/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_361/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_361/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_361/BiasAdd/ReadVariableOp*^while/lstm_cell_361/MatMul/ReadVariableOp,^while/lstm_cell_361/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_361_biasadd_readvariableop_resource5while_lstm_cell_361_biasadd_readvariableop_resource_0"n
4while_lstm_cell_361_matmul_1_readvariableop_resource6while_lstm_cell_361_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_361_matmul_readvariableop_resource4while_lstm_cell_361_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_361/BiasAdd/ReadVariableOp*while/lstm_cell_361/BiasAdd/ReadVariableOp2V
)while/lstm_cell_361/MatMul/ReadVariableOp)while/lstm_cell_361/MatMul/ReadVariableOp2Z
+while/lstm_cell_361/MatMul_1/ReadVariableOp+while/lstm_cell_361/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_177_layer_call_fn_2193028
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
E__inference_lstm_177_layer_call_and_return_conditional_losses_2189999|
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
?
*__inference_lstm_179_layer_call_fn_2194271
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
E__inference_lstm_179_layer_call_and_return_conditional_losses_2190890o
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
?
*__inference_lstm_178_layer_call_fn_2193677

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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2191729s
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
E__inference_dense_59_layer_call_and_return_conditional_losses_2191366

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
?
?
*__inference_lstm_177_layer_call_fn_2193039
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
E__inference_lstm_177_layer_call_and_return_conditional_losses_2190190|
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
?8
?
while_body_2194022
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_361_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_361_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_361_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_361_matmul_readvariableop_resource:	d?G
4while_lstm_cell_361_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_361_biasadd_readvariableop_resource:	???*while/lstm_cell_361/BiasAdd/ReadVariableOp?)while/lstm_cell_361/MatMul/ReadVariableOp?+while/lstm_cell_361/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_361/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_361_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_361/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_361_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_361/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_361/addAddV2$while/lstm_cell_361/MatMul:product:0&while/lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_361_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_361/BiasAddBiasAddwhile/lstm_cell_361/add:z:02while/lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_361/splitSplit,while/lstm_cell_361/split/split_dim:output:0$while/lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_361/SigmoidSigmoid"while/lstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_361/Sigmoid_1Sigmoid"while/lstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mulMul!while/lstm_cell_361/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_361/ReluRelu"while/lstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mul_1Mulwhile/lstm_cell_361/Sigmoid:y:0&while/lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/add_1AddV2while/lstm_cell_361/mul:z:0while/lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_361/Sigmoid_2Sigmoid"while/lstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_361/Relu_1Reluwhile/lstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mul_2Mul!while/lstm_cell_361/Sigmoid_2:y:0(while/lstm_cell_361/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_361/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_361/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_361/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_361/BiasAdd/ReadVariableOp*^while/lstm_cell_361/MatMul/ReadVariableOp,^while/lstm_cell_361/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_361_biasadd_readvariableop_resource5while_lstm_cell_361_biasadd_readvariableop_resource_0"n
4while_lstm_cell_361_matmul_1_readvariableop_resource6while_lstm_cell_361_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_361_matmul_readvariableop_resource4while_lstm_cell_361_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_361/BiasAdd/ReadVariableOp*while/lstm_cell_361/BiasAdd/ReadVariableOp2V
)while/lstm_cell_361/MatMul/ReadVariableOp)while/lstm_cell_361/MatMul/ReadVariableOp2Z
+while/lstm_cell_361/MatMul_1/ReadVariableOp+while/lstm_cell_361/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_179_while_cond_2192926.
*lstm_179_while_lstm_179_while_loop_counter4
0lstm_179_while_lstm_179_while_maximum_iterations
lstm_179_while_placeholder 
lstm_179_while_placeholder_1 
lstm_179_while_placeholder_2 
lstm_179_while_placeholder_30
,lstm_179_while_less_lstm_179_strided_slice_1G
Clstm_179_while_lstm_179_while_cond_2192926___redundant_placeholder0G
Clstm_179_while_lstm_179_while_cond_2192926___redundant_placeholder1G
Clstm_179_while_lstm_179_while_cond_2192926___redundant_placeholder2G
Clstm_179_while_lstm_179_while_cond_2192926___redundant_placeholder3
lstm_179_while_identity
?
lstm_179/while/LessLesslstm_179_while_placeholder,lstm_179_while_less_lstm_179_strided_slice_1*
T0*
_output_shapes
: ]
lstm_179/while/IdentityIdentitylstm_179/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_179_while_identity lstm_179/while/Identity:output:0*(
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
J__inference_lstm_cell_360_layer_call_and_return_conditional_losses_2194950

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
?C
?

lstm_177_while_body_2192222.
*lstm_177_while_lstm_177_while_loop_counter4
0lstm_177_while_lstm_177_while_maximum_iterations
lstm_177_while_placeholder 
lstm_177_while_placeholder_1 
lstm_177_while_placeholder_2 
lstm_177_while_placeholder_3-
)lstm_177_while_lstm_177_strided_slice_1_0i
elstm_177_while_tensorarrayv2read_tensorlistgetitem_lstm_177_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_177_while_lstm_cell_360_matmul_readvariableop_resource_0:	?R
?lstm_177_while_lstm_cell_360_matmul_1_readvariableop_resource_0:	d?M
>lstm_177_while_lstm_cell_360_biasadd_readvariableop_resource_0:	?
lstm_177_while_identity
lstm_177_while_identity_1
lstm_177_while_identity_2
lstm_177_while_identity_3
lstm_177_while_identity_4
lstm_177_while_identity_5+
'lstm_177_while_lstm_177_strided_slice_1g
clstm_177_while_tensorarrayv2read_tensorlistgetitem_lstm_177_tensorarrayunstack_tensorlistfromtensorN
;lstm_177_while_lstm_cell_360_matmul_readvariableop_resource:	?P
=lstm_177_while_lstm_cell_360_matmul_1_readvariableop_resource:	d?K
<lstm_177_while_lstm_cell_360_biasadd_readvariableop_resource:	???3lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOp?2lstm_177/while/lstm_cell_360/MatMul/ReadVariableOp?4lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOp?
@lstm_177/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_177/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_177_while_tensorarrayv2read_tensorlistgetitem_lstm_177_tensorarrayunstack_tensorlistfromtensor_0lstm_177_while_placeholderIlstm_177/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_177/while/lstm_cell_360/MatMul/ReadVariableOpReadVariableOp=lstm_177_while_lstm_cell_360_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_177/while/lstm_cell_360/MatMulMatMul9lstm_177/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_177/while/lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOp?lstm_177_while_lstm_cell_360_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_177/while/lstm_cell_360/MatMul_1MatMullstm_177_while_placeholder_2<lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_177/while/lstm_cell_360/addAddV2-lstm_177/while/lstm_cell_360/MatMul:product:0/lstm_177/while/lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOp>lstm_177_while_lstm_cell_360_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_177/while/lstm_cell_360/BiasAddBiasAdd$lstm_177/while/lstm_cell_360/add:z:0;lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_177/while/lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_177/while/lstm_cell_360/splitSplit5lstm_177/while/lstm_cell_360/split/split_dim:output:0-lstm_177/while/lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_177/while/lstm_cell_360/SigmoidSigmoid+lstm_177/while/lstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_177/while/lstm_cell_360/Sigmoid_1Sigmoid+lstm_177/while/lstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_177/while/lstm_cell_360/mulMul*lstm_177/while/lstm_cell_360/Sigmoid_1:y:0lstm_177_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_177/while/lstm_cell_360/ReluRelu+lstm_177/while/lstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_177/while/lstm_cell_360/mul_1Mul(lstm_177/while/lstm_cell_360/Sigmoid:y:0/lstm_177/while/lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_177/while/lstm_cell_360/add_1AddV2$lstm_177/while/lstm_cell_360/mul:z:0&lstm_177/while/lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_177/while/lstm_cell_360/Sigmoid_2Sigmoid+lstm_177/while/lstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_177/while/lstm_cell_360/Relu_1Relu&lstm_177/while/lstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_177/while/lstm_cell_360/mul_2Mul*lstm_177/while/lstm_cell_360/Sigmoid_2:y:01lstm_177/while/lstm_cell_360/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_177/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_177_while_placeholder_1lstm_177_while_placeholder&lstm_177/while/lstm_cell_360/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_177/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_177/while/addAddV2lstm_177_while_placeholderlstm_177/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_177/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_177/while/add_1AddV2*lstm_177_while_lstm_177_while_loop_counterlstm_177/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_177/while/IdentityIdentitylstm_177/while/add_1:z:0^lstm_177/while/NoOp*
T0*
_output_shapes
: ?
lstm_177/while/Identity_1Identity0lstm_177_while_lstm_177_while_maximum_iterations^lstm_177/while/NoOp*
T0*
_output_shapes
: t
lstm_177/while/Identity_2Identitylstm_177/while/add:z:0^lstm_177/while/NoOp*
T0*
_output_shapes
: ?
lstm_177/while/Identity_3IdentityClstm_177/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_177/while/NoOp*
T0*
_output_shapes
: ?
lstm_177/while/Identity_4Identity&lstm_177/while/lstm_cell_360/mul_2:z:0^lstm_177/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_177/while/Identity_5Identity&lstm_177/while/lstm_cell_360/add_1:z:0^lstm_177/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_177/while/NoOpNoOp4^lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOp3^lstm_177/while/lstm_cell_360/MatMul/ReadVariableOp5^lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_177_while_identity lstm_177/while/Identity:output:0"?
lstm_177_while_identity_1"lstm_177/while/Identity_1:output:0"?
lstm_177_while_identity_2"lstm_177/while/Identity_2:output:0"?
lstm_177_while_identity_3"lstm_177/while/Identity_3:output:0"?
lstm_177_while_identity_4"lstm_177/while/Identity_4:output:0"?
lstm_177_while_identity_5"lstm_177/while/Identity_5:output:0"T
'lstm_177_while_lstm_177_strided_slice_1)lstm_177_while_lstm_177_strided_slice_1_0"~
<lstm_177_while_lstm_cell_360_biasadd_readvariableop_resource>lstm_177_while_lstm_cell_360_biasadd_readvariableop_resource_0"?
=lstm_177_while_lstm_cell_360_matmul_1_readvariableop_resource?lstm_177_while_lstm_cell_360_matmul_1_readvariableop_resource_0"|
;lstm_177_while_lstm_cell_360_matmul_readvariableop_resource=lstm_177_while_lstm_cell_360_matmul_readvariableop_resource_0"?
clstm_177_while_tensorarrayv2read_tensorlistgetitem_lstm_177_tensorarrayunstack_tensorlistfromtensorelstm_177_while_tensorarrayv2read_tensorlistgetitem_lstm_177_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOp3lstm_177/while/lstm_cell_360/BiasAdd/ReadVariableOp2h
2lstm_177/while/lstm_cell_360/MatMul/ReadVariableOp2lstm_177/while/lstm_cell_360/MatMul/ReadVariableOp2l
4lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOp4lstm_177/while/lstm_cell_360/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2193879
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_361_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_361_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_361_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_361_matmul_readvariableop_resource:	d?G
4while_lstm_cell_361_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_361_biasadd_readvariableop_resource:	???*while/lstm_cell_361/BiasAdd/ReadVariableOp?)while/lstm_cell_361/MatMul/ReadVariableOp?+while/lstm_cell_361/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_361/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_361_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_361/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_361_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_361/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_361/addAddV2$while/lstm_cell_361/MatMul:product:0&while/lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_361_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_361/BiasAddBiasAddwhile/lstm_cell_361/add:z:02while/lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_361/splitSplit,while/lstm_cell_361/split/split_dim:output:0$while/lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_361/SigmoidSigmoid"while/lstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_361/Sigmoid_1Sigmoid"while/lstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mulMul!while/lstm_cell_361/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_361/ReluRelu"while/lstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mul_1Mulwhile/lstm_cell_361/Sigmoid:y:0&while/lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/add_1AddV2while/lstm_cell_361/mul:z:0while/lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_361/Sigmoid_2Sigmoid"while/lstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_361/Relu_1Reluwhile/lstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_361/mul_2Mul!while/lstm_cell_361/Sigmoid_2:y:0(while/lstm_cell_361/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_361/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_361/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_361/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_361/BiasAdd/ReadVariableOp*^while/lstm_cell_361/MatMul/ReadVariableOp,^while/lstm_cell_361/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_361_biasadd_readvariableop_resource5while_lstm_cell_361_biasadd_readvariableop_resource_0"n
4while_lstm_cell_361_matmul_1_readvariableop_resource6while_lstm_cell_361_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_361_matmul_readvariableop_resource4while_lstm_cell_361_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_361/BiasAdd/ReadVariableOp*while/lstm_cell_361/BiasAdd/ReadVariableOp2V
)while/lstm_cell_361/MatMul/ReadVariableOp)while/lstm_cell_361/MatMul/ReadVariableOp2Z
+while/lstm_cell_361/MatMul_1/ReadVariableOp+while/lstm_cell_361/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_59_lstm_178_while_cond_2189619J
Fsequential_59_lstm_178_while_sequential_59_lstm_178_while_loop_counterP
Lsequential_59_lstm_178_while_sequential_59_lstm_178_while_maximum_iterations,
(sequential_59_lstm_178_while_placeholder.
*sequential_59_lstm_178_while_placeholder_1.
*sequential_59_lstm_178_while_placeholder_2.
*sequential_59_lstm_178_while_placeholder_3L
Hsequential_59_lstm_178_while_less_sequential_59_lstm_178_strided_slice_1c
_sequential_59_lstm_178_while_sequential_59_lstm_178_while_cond_2189619___redundant_placeholder0c
_sequential_59_lstm_178_while_sequential_59_lstm_178_while_cond_2189619___redundant_placeholder1c
_sequential_59_lstm_178_while_sequential_59_lstm_178_while_cond_2189619___redundant_placeholder2c
_sequential_59_lstm_178_while_sequential_59_lstm_178_while_cond_2189619___redundant_placeholder3)
%sequential_59_lstm_178_while_identity
?
!sequential_59/lstm_178/while/LessLess(sequential_59_lstm_178_while_placeholderHsequential_59_lstm_178_while_less_sequential_59_lstm_178_strided_slice_1*
T0*
_output_shapes
: y
%sequential_59/lstm_178/while/IdentityIdentity%sequential_59/lstm_178/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_59_lstm_178_while_identity.sequential_59/lstm_178/while/Identity:output:0*(
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
)sequential_59_lstm_179_while_cond_2189758J
Fsequential_59_lstm_179_while_sequential_59_lstm_179_while_loop_counterP
Lsequential_59_lstm_179_while_sequential_59_lstm_179_while_maximum_iterations,
(sequential_59_lstm_179_while_placeholder.
*sequential_59_lstm_179_while_placeholder_1.
*sequential_59_lstm_179_while_placeholder_2.
*sequential_59_lstm_179_while_placeholder_3L
Hsequential_59_lstm_179_while_less_sequential_59_lstm_179_strided_slice_1c
_sequential_59_lstm_179_while_sequential_59_lstm_179_while_cond_2189758___redundant_placeholder0c
_sequential_59_lstm_179_while_sequential_59_lstm_179_while_cond_2189758___redundant_placeholder1c
_sequential_59_lstm_179_while_sequential_59_lstm_179_while_cond_2189758___redundant_placeholder2c
_sequential_59_lstm_179_while_sequential_59_lstm_179_while_cond_2189758___redundant_placeholder3)
%sequential_59_lstm_179_while_identity
?
!sequential_59/lstm_179/while/LessLess(sequential_59_lstm_179_while_placeholderHsequential_59_lstm_179_while_less_sequential_59_lstm_179_strided_slice_1*
T0*
_output_shapes
: y
%sequential_59/lstm_179/while/IdentityIdentity%sequential_59/lstm_179/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_59_lstm_179_while_identity.sequential_59/lstm_179/while/Identity:output:0*(
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
E__inference_lstm_179_layer_call_and_return_conditional_losses_2191564

inputs>
,lstm_cell_362_matmul_readvariableop_resource:2(@
.lstm_cell_362_matmul_1_readvariableop_resource:
(;
-lstm_cell_362_biasadd_readvariableop_resource:(
identity??$lstm_cell_362/BiasAdd/ReadVariableOp?#lstm_cell_362/MatMul/ReadVariableOp?%lstm_cell_362/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_362/MatMul/ReadVariableOpReadVariableOp,lstm_cell_362_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_362/MatMulMatMulstrided_slice_2:output:0+lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_362_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_362/MatMul_1MatMulzeros:output:0-lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_362/addAddV2lstm_cell_362/MatMul:product:0 lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_362_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_362/BiasAddBiasAddlstm_cell_362/add:z:0,lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_362/splitSplit&lstm_cell_362/split/split_dim:output:0lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_362/SigmoidSigmoidlstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_362/Sigmoid_1Sigmoidlstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_362/mulMullstm_cell_362/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_362/ReluRelulstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_362/mul_1Mullstm_cell_362/Sigmoid:y:0 lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_362/add_1AddV2lstm_cell_362/mul:z:0lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_362/Sigmoid_2Sigmoidlstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_362/Relu_1Relulstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_362/mul_2Mullstm_cell_362/Sigmoid_2:y:0"lstm_cell_362/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_362_matmul_readvariableop_resource.lstm_cell_362_matmul_1_readvariableop_resource-lstm_cell_362_biasadd_readvariableop_resource*
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
while_body_2191480*
condR
while_cond_2191479*K
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
NoOpNoOp%^lstm_cell_362/BiasAdd/ReadVariableOp$^lstm_cell_362/MatMul/ReadVariableOp&^lstm_cell_362/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_362/BiasAdd/ReadVariableOp$lstm_cell_362/BiasAdd/ReadVariableOp2J
#lstm_cell_362/MatMul/ReadVariableOp#lstm_cell_362/MatMul/ReadVariableOp2N
%lstm_cell_362/MatMul_1/ReadVariableOp%lstm_cell_362/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?S
?
)sequential_59_lstm_178_while_body_2189620J
Fsequential_59_lstm_178_while_sequential_59_lstm_178_while_loop_counterP
Lsequential_59_lstm_178_while_sequential_59_lstm_178_while_maximum_iterations,
(sequential_59_lstm_178_while_placeholder.
*sequential_59_lstm_178_while_placeholder_1.
*sequential_59_lstm_178_while_placeholder_2.
*sequential_59_lstm_178_while_placeholder_3I
Esequential_59_lstm_178_while_sequential_59_lstm_178_strided_slice_1_0?
?sequential_59_lstm_178_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_178_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_59_lstm_178_while_lstm_cell_361_matmul_readvariableop_resource_0:	d?`
Msequential_59_lstm_178_while_lstm_cell_361_matmul_1_readvariableop_resource_0:	2?[
Lsequential_59_lstm_178_while_lstm_cell_361_biasadd_readvariableop_resource_0:	?)
%sequential_59_lstm_178_while_identity+
'sequential_59_lstm_178_while_identity_1+
'sequential_59_lstm_178_while_identity_2+
'sequential_59_lstm_178_while_identity_3+
'sequential_59_lstm_178_while_identity_4+
'sequential_59_lstm_178_while_identity_5G
Csequential_59_lstm_178_while_sequential_59_lstm_178_strided_slice_1?
sequential_59_lstm_178_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_178_tensorarrayunstack_tensorlistfromtensor\
Isequential_59_lstm_178_while_lstm_cell_361_matmul_readvariableop_resource:	d?^
Ksequential_59_lstm_178_while_lstm_cell_361_matmul_1_readvariableop_resource:	2?Y
Jsequential_59_lstm_178_while_lstm_cell_361_biasadd_readvariableop_resource:	???Asequential_59/lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOp?@sequential_59/lstm_178/while/lstm_cell_361/MatMul/ReadVariableOp?Bsequential_59/lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOp?
Nsequential_59/lstm_178/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_59/lstm_178/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_59_lstm_178_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_178_tensorarrayunstack_tensorlistfromtensor_0(sequential_59_lstm_178_while_placeholderWsequential_59/lstm_178/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_59/lstm_178/while/lstm_cell_361/MatMul/ReadVariableOpReadVariableOpKsequential_59_lstm_178_while_lstm_cell_361_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_59/lstm_178/while/lstm_cell_361/MatMulMatMulGsequential_59/lstm_178/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_59/lstm_178/while/lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_59/lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOpMsequential_59_lstm_178_while_lstm_cell_361_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_59/lstm_178/while/lstm_cell_361/MatMul_1MatMul*sequential_59_lstm_178_while_placeholder_2Jsequential_59/lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_59/lstm_178/while/lstm_cell_361/addAddV2;sequential_59/lstm_178/while/lstm_cell_361/MatMul:product:0=sequential_59/lstm_178/while/lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_59/lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOpLsequential_59_lstm_178_while_lstm_cell_361_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_59/lstm_178/while/lstm_cell_361/BiasAddBiasAdd2sequential_59/lstm_178/while/lstm_cell_361/add:z:0Isequential_59/lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_59/lstm_178/while/lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_59/lstm_178/while/lstm_cell_361/splitSplitCsequential_59/lstm_178/while/lstm_cell_361/split/split_dim:output:0;sequential_59/lstm_178/while/lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_59/lstm_178/while/lstm_cell_361/SigmoidSigmoid9sequential_59/lstm_178/while/lstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_59/lstm_178/while/lstm_cell_361/Sigmoid_1Sigmoid9sequential_59/lstm_178/while/lstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_59/lstm_178/while/lstm_cell_361/mulMul8sequential_59/lstm_178/while/lstm_cell_361/Sigmoid_1:y:0*sequential_59_lstm_178_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_59/lstm_178/while/lstm_cell_361/ReluRelu9sequential_59/lstm_178/while/lstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_59/lstm_178/while/lstm_cell_361/mul_1Mul6sequential_59/lstm_178/while/lstm_cell_361/Sigmoid:y:0=sequential_59/lstm_178/while/lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_59/lstm_178/while/lstm_cell_361/add_1AddV22sequential_59/lstm_178/while/lstm_cell_361/mul:z:04sequential_59/lstm_178/while/lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_59/lstm_178/while/lstm_cell_361/Sigmoid_2Sigmoid9sequential_59/lstm_178/while/lstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_59/lstm_178/while/lstm_cell_361/Relu_1Relu4sequential_59/lstm_178/while/lstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_59/lstm_178/while/lstm_cell_361/mul_2Mul8sequential_59/lstm_178/while/lstm_cell_361/Sigmoid_2:y:0?sequential_59/lstm_178/while/lstm_cell_361/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_59/lstm_178/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_59_lstm_178_while_placeholder_1(sequential_59_lstm_178_while_placeholder4sequential_59/lstm_178/while/lstm_cell_361/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_59/lstm_178/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_59/lstm_178/while/addAddV2(sequential_59_lstm_178_while_placeholder+sequential_59/lstm_178/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_59/lstm_178/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_59/lstm_178/while/add_1AddV2Fsequential_59_lstm_178_while_sequential_59_lstm_178_while_loop_counter-sequential_59/lstm_178/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_59/lstm_178/while/IdentityIdentity&sequential_59/lstm_178/while/add_1:z:0"^sequential_59/lstm_178/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_178/while/Identity_1IdentityLsequential_59_lstm_178_while_sequential_59_lstm_178_while_maximum_iterations"^sequential_59/lstm_178/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_178/while/Identity_2Identity$sequential_59/lstm_178/while/add:z:0"^sequential_59/lstm_178/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_178/while/Identity_3IdentityQsequential_59/lstm_178/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_59/lstm_178/while/NoOp*
T0*
_output_shapes
: ?
'sequential_59/lstm_178/while/Identity_4Identity4sequential_59/lstm_178/while/lstm_cell_361/mul_2:z:0"^sequential_59/lstm_178/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_59/lstm_178/while/Identity_5Identity4sequential_59/lstm_178/while/lstm_cell_361/add_1:z:0"^sequential_59/lstm_178/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_59/lstm_178/while/NoOpNoOpB^sequential_59/lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOpA^sequential_59/lstm_178/while/lstm_cell_361/MatMul/ReadVariableOpC^sequential_59/lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_59_lstm_178_while_identity.sequential_59/lstm_178/while/Identity:output:0"[
'sequential_59_lstm_178_while_identity_10sequential_59/lstm_178/while/Identity_1:output:0"[
'sequential_59_lstm_178_while_identity_20sequential_59/lstm_178/while/Identity_2:output:0"[
'sequential_59_lstm_178_while_identity_30sequential_59/lstm_178/while/Identity_3:output:0"[
'sequential_59_lstm_178_while_identity_40sequential_59/lstm_178/while/Identity_4:output:0"[
'sequential_59_lstm_178_while_identity_50sequential_59/lstm_178/while/Identity_5:output:0"?
Jsequential_59_lstm_178_while_lstm_cell_361_biasadd_readvariableop_resourceLsequential_59_lstm_178_while_lstm_cell_361_biasadd_readvariableop_resource_0"?
Ksequential_59_lstm_178_while_lstm_cell_361_matmul_1_readvariableop_resourceMsequential_59_lstm_178_while_lstm_cell_361_matmul_1_readvariableop_resource_0"?
Isequential_59_lstm_178_while_lstm_cell_361_matmul_readvariableop_resourceKsequential_59_lstm_178_while_lstm_cell_361_matmul_readvariableop_resource_0"?
Csequential_59_lstm_178_while_sequential_59_lstm_178_strided_slice_1Esequential_59_lstm_178_while_sequential_59_lstm_178_strided_slice_1_0"?
sequential_59_lstm_178_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_178_tensorarrayunstack_tensorlistfromtensor?sequential_59_lstm_178_while_tensorarrayv2read_tensorlistgetitem_sequential_59_lstm_178_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_59/lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOpAsequential_59/lstm_178/while/lstm_cell_361/BiasAdd/ReadVariableOp2?
@sequential_59/lstm_178/while/lstm_cell_361/MatMul/ReadVariableOp@sequential_59/lstm_178/while/lstm_cell_361/MatMul/ReadVariableOp2?
Bsequential_59/lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOpBsequential_59/lstm_178/while/lstm_cell_361/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2193735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2193735___redundant_placeholder05
1while_while_cond_2193735___redundant_placeholder15
1while_while_cond_2193735___redundant_placeholder25
1while_while_cond_2193735___redundant_placeholder3
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
while_body_2193263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_360_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_360_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_360_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_360_matmul_readvariableop_resource:	?G
4while_lstm_cell_360_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_360_biasadd_readvariableop_resource:	???*while/lstm_cell_360/BiasAdd/ReadVariableOp?)while/lstm_cell_360/MatMul/ReadVariableOp?+while/lstm_cell_360/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_360/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_360_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_360/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_360_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_360/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_360/addAddV2$while/lstm_cell_360/MatMul:product:0&while/lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_360_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_360/BiasAddBiasAddwhile/lstm_cell_360/add:z:02while/lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_360/splitSplit,while/lstm_cell_360/split/split_dim:output:0$while/lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_360/SigmoidSigmoid"while/lstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_360/Sigmoid_1Sigmoid"while/lstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mulMul!while/lstm_cell_360/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_360/ReluRelu"while/lstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mul_1Mulwhile/lstm_cell_360/Sigmoid:y:0&while/lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/add_1AddV2while/lstm_cell_360/mul:z:0while/lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_360/Sigmoid_2Sigmoid"while/lstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_360/Relu_1Reluwhile/lstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mul_2Mul!while/lstm_cell_360/Sigmoid_2:y:0(while/lstm_cell_360/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_360/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_360/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_360/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_360/BiasAdd/ReadVariableOp*^while/lstm_cell_360/MatMul/ReadVariableOp,^while/lstm_cell_360/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_360_biasadd_readvariableop_resource5while_lstm_cell_360_biasadd_readvariableop_resource_0"n
4while_lstm_cell_360_matmul_1_readvariableop_resource6while_lstm_cell_360_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_360_matmul_readvariableop_resource4while_lstm_cell_360_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_360/BiasAdd/ReadVariableOp*while/lstm_cell_360/BiasAdd/ReadVariableOp2V
)while/lstm_cell_360/MatMul/ReadVariableOp)while/lstm_cell_360/MatMul/ReadVariableOp2Z
+while/lstm_cell_360/MatMul_1/ReadVariableOp+while/lstm_cell_360/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2194164
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2194164___redundant_placeholder05
1while_while_cond_2194164___redundant_placeholder15
1while_while_cond_2194164___redundant_placeholder25
1while_while_cond_2194164___redundant_placeholder3
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
while_body_2190630
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_362_2190654_0:2(/
while_lstm_cell_362_2190656_0:
(+
while_lstm_cell_362_2190658_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_362_2190654:2(-
while_lstm_cell_362_2190656:
()
while_lstm_cell_362_2190658:(??+while/lstm_cell_362/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_362/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_362_2190654_0while_lstm_cell_362_2190656_0while_lstm_cell_362_2190658_0*
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
J__inference_lstm_cell_362_layer_call_and_return_conditional_losses_2190616?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_362/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_362/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_362/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_362/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_362_2190654while_lstm_cell_362_2190654_0"<
while_lstm_cell_362_2190656while_lstm_cell_362_2190656_0"<
while_lstm_cell_362_2190658while_lstm_cell_362_2190658_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_362/StatefulPartitionedCall+while/lstm_cell_362/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_2191810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_360_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_360_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_360_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_360_matmul_readvariableop_resource:	?G
4while_lstm_cell_360_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_360_biasadd_readvariableop_resource:	???*while/lstm_cell_360/BiasAdd/ReadVariableOp?)while/lstm_cell_360/MatMul/ReadVariableOp?+while/lstm_cell_360/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_360/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_360_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_360/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_360_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_360/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_360/addAddV2$while/lstm_cell_360/MatMul:product:0&while/lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_360_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_360/BiasAddBiasAddwhile/lstm_cell_360/add:z:02while/lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_360/splitSplit,while/lstm_cell_360/split/split_dim:output:0$while/lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_360/SigmoidSigmoid"while/lstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_360/Sigmoid_1Sigmoid"while/lstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mulMul!while/lstm_cell_360/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_360/ReluRelu"while/lstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mul_1Mulwhile/lstm_cell_360/Sigmoid:y:0&while/lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/add_1AddV2while/lstm_cell_360/mul:z:0while/lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_360/Sigmoid_2Sigmoid"while/lstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_360/Relu_1Reluwhile/lstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_360/mul_2Mul!while/lstm_cell_360/Sigmoid_2:y:0(while/lstm_cell_360/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_360/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_360/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_360/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_360/BiasAdd/ReadVariableOp*^while/lstm_cell_360/MatMul/ReadVariableOp,^while/lstm_cell_360/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_360_biasadd_readvariableop_resource5while_lstm_cell_360_biasadd_readvariableop_resource_0"n
4while_lstm_cell_360_matmul_1_readvariableop_resource6while_lstm_cell_360_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_360_matmul_readvariableop_resource4while_lstm_cell_360_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_360/BiasAdd/ReadVariableOp*while/lstm_cell_360/BiasAdd/ReadVariableOp2V
)while/lstm_cell_360/MatMul/ReadVariableOp)while/lstm_cell_360/MatMul/ReadVariableOp2Z
+while/lstm_cell_360/MatMul_1/ReadVariableOp+while/lstm_cell_360/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_179_layer_call_and_return_conditional_losses_2194579
inputs_0>
,lstm_cell_362_matmul_readvariableop_resource:2(@
.lstm_cell_362_matmul_1_readvariableop_resource:
(;
-lstm_cell_362_biasadd_readvariableop_resource:(
identity??$lstm_cell_362/BiasAdd/ReadVariableOp?#lstm_cell_362/MatMul/ReadVariableOp?%lstm_cell_362/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_362/MatMul/ReadVariableOpReadVariableOp,lstm_cell_362_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_362/MatMulMatMulstrided_slice_2:output:0+lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_362_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_362/MatMul_1MatMulzeros:output:0-lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_362/addAddV2lstm_cell_362/MatMul:product:0 lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_362_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_362/BiasAddBiasAddlstm_cell_362/add:z:0,lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_362/splitSplit&lstm_cell_362/split/split_dim:output:0lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_362/SigmoidSigmoidlstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_362/Sigmoid_1Sigmoidlstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_362/mulMullstm_cell_362/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_362/ReluRelulstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_362/mul_1Mullstm_cell_362/Sigmoid:y:0 lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_362/add_1AddV2lstm_cell_362/mul:z:0lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_362/Sigmoid_2Sigmoidlstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_362/Relu_1Relulstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_362/mul_2Mullstm_cell_362/Sigmoid_2:y:0"lstm_cell_362/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_362_matmul_readvariableop_resource.lstm_cell_362_matmul_1_readvariableop_resource-lstm_cell_362_biasadd_readvariableop_resource*
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
while_body_2194495*
condR
while_cond_2194494*K
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
NoOpNoOp%^lstm_cell_362/BiasAdd/ReadVariableOp$^lstm_cell_362/MatMul/ReadVariableOp&^lstm_cell_362/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_362/BiasAdd/ReadVariableOp$lstm_cell_362/BiasAdd/ReadVariableOp2J
#lstm_cell_362/MatMul/ReadVariableOp#lstm_cell_362/MatMul/ReadVariableOp2N
%lstm_cell_362/MatMul_1/ReadVariableOp%lstm_cell_362/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_361_layer_call_and_return_conditional_losses_2195048

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
J__inference_lstm_cell_360_layer_call_and_return_conditional_losses_2190062

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
?
E__inference_lstm_179_layer_call_and_return_conditional_losses_2190890

inputs'
lstm_cell_362_2190808:2('
lstm_cell_362_2190810:
(#
lstm_cell_362_2190812:(
identity??%lstm_cell_362/StatefulPartitionedCall?while;
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
%lstm_cell_362/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_362_2190808lstm_cell_362_2190810lstm_cell_362_2190812*
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
J__inference_lstm_cell_362_layer_call_and_return_conditional_losses_2190762n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_362_2190808lstm_cell_362_2190810lstm_cell_362_2190812*
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
while_body_2190821*
condR
while_cond_2190820*K
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
NoOpNoOp&^lstm_cell_362/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_362/StatefulPartitionedCall%lstm_cell_362/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_177_layer_call_and_return_conditional_losses_2190190

inputs(
lstm_cell_360_2190108:	?(
lstm_cell_360_2190110:	d?$
lstm_cell_360_2190112:	?
identity??%lstm_cell_360/StatefulPartitionedCall?while;
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
%lstm_cell_360/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_360_2190108lstm_cell_360_2190110lstm_cell_360_2190112*
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
J__inference_lstm_cell_360_layer_call_and_return_conditional_losses_2190062n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_360_2190108lstm_cell_360_2190110lstm_cell_360_2190112*
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
while_body_2190121*
condR
while_cond_2190120*K
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
NoOpNoOp&^lstm_cell_360/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_360/StatefulPartitionedCall%lstm_cell_360/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_178_layer_call_fn_2193666

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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2191198s
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
lstm_177_while_cond_2192221.
*lstm_177_while_lstm_177_while_loop_counter4
0lstm_177_while_lstm_177_while_maximum_iterations
lstm_177_while_placeholder 
lstm_177_while_placeholder_1 
lstm_177_while_placeholder_2 
lstm_177_while_placeholder_30
,lstm_177_while_less_lstm_177_strided_slice_1G
Clstm_177_while_lstm_177_while_cond_2192221___redundant_placeholder0G
Clstm_177_while_lstm_177_while_cond_2192221___redundant_placeholder1G
Clstm_177_while_lstm_177_while_cond_2192221___redundant_placeholder2G
Clstm_177_while_lstm_177_while_cond_2192221___redundant_placeholder3
lstm_177_while_identity
?
lstm_177/while/LessLesslstm_177_while_placeholder,lstm_177_while_less_lstm_177_strided_slice_1*
T0*
_output_shapes
: ]
lstm_177/while/IdentityIdentitylstm_177/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_177_while_identity lstm_177/while/Identity:output:0*(
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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2194249

inputs?
,lstm_cell_361_matmul_readvariableop_resource:	d?A
.lstm_cell_361_matmul_1_readvariableop_resource:	2?<
-lstm_cell_361_biasadd_readvariableop_resource:	?
identity??$lstm_cell_361/BiasAdd/ReadVariableOp?#lstm_cell_361/MatMul/ReadVariableOp?%lstm_cell_361/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_361/MatMul/ReadVariableOpReadVariableOp,lstm_cell_361_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_361/MatMulMatMulstrided_slice_2:output:0+lstm_cell_361/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_361/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_361_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_361/MatMul_1MatMulzeros:output:0-lstm_cell_361/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_361/addAddV2lstm_cell_361/MatMul:product:0 lstm_cell_361/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_361/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_361_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_361/BiasAddBiasAddlstm_cell_361/add:z:0,lstm_cell_361/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_361/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_361/splitSplit&lstm_cell_361/split/split_dim:output:0lstm_cell_361/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_361/SigmoidSigmoidlstm_cell_361/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_361/Sigmoid_1Sigmoidlstm_cell_361/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_361/mulMullstm_cell_361/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_361/ReluRelulstm_cell_361/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_361/mul_1Mullstm_cell_361/Sigmoid:y:0 lstm_cell_361/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_361/add_1AddV2lstm_cell_361/mul:z:0lstm_cell_361/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_361/Sigmoid_2Sigmoidlstm_cell_361/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_361/Relu_1Relulstm_cell_361/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_361/mul_2Mullstm_cell_361/Sigmoid_2:y:0"lstm_cell_361/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_361_matmul_readvariableop_resource.lstm_cell_361_matmul_1_readvariableop_resource-lstm_cell_361_biasadd_readvariableop_resource*
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
while_body_2194165*
condR
while_cond_2194164*K
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
NoOpNoOp%^lstm_cell_361/BiasAdd/ReadVariableOp$^lstm_cell_361/MatMul/ReadVariableOp&^lstm_cell_361/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_361/BiasAdd/ReadVariableOp$lstm_cell_361/BiasAdd/ReadVariableOp2J
#lstm_cell_361/MatMul/ReadVariableOp#lstm_cell_361/MatMul/ReadVariableOp2N
%lstm_cell_361/MatMul_1/ReadVariableOp%lstm_cell_361/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_360_layer_call_and_return_conditional_losses_2194982

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
?8
?
while_body_2194638
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_362_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_362_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_362_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_362_matmul_readvariableop_resource:2(F
4while_lstm_cell_362_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_362_biasadd_readvariableop_resource:(??*while/lstm_cell_362/BiasAdd/ReadVariableOp?)while/lstm_cell_362/MatMul/ReadVariableOp?+while/lstm_cell_362/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_362/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_362_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_362/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_362_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_362/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_362/addAddV2$while/lstm_cell_362/MatMul:product:0&while/lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_362_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_362/BiasAddBiasAddwhile/lstm_cell_362/add:z:02while/lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_362/splitSplit,while/lstm_cell_362/split/split_dim:output:0$while/lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_362/SigmoidSigmoid"while/lstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_362/Sigmoid_1Sigmoid"while/lstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mulMul!while/lstm_cell_362/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_362/ReluRelu"while/lstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mul_1Mulwhile/lstm_cell_362/Sigmoid:y:0&while/lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/add_1AddV2while/lstm_cell_362/mul:z:0while/lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_362/Sigmoid_2Sigmoid"while/lstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_362/Relu_1Reluwhile/lstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mul_2Mul!while/lstm_cell_362/Sigmoid_2:y:0(while/lstm_cell_362/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_362/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_362/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_362/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_362/BiasAdd/ReadVariableOp*^while/lstm_cell_362/MatMul/ReadVariableOp,^while/lstm_cell_362/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_362_biasadd_readvariableop_resource5while_lstm_cell_362_biasadd_readvariableop_resource_0"n
4while_lstm_cell_362_matmul_1_readvariableop_resource6while_lstm_cell_362_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_362_matmul_readvariableop_resource4while_lstm_cell_362_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_362/BiasAdd/ReadVariableOp*while/lstm_cell_362/BiasAdd/ReadVariableOp2V
)while/lstm_cell_362/MatMul/ReadVariableOp)while/lstm_cell_362/MatMul/ReadVariableOp2Z
+while/lstm_cell_362/MatMul_1/ReadVariableOp+while/lstm_cell_362/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2194021
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2194021___redundant_placeholder05
1while_while_cond_2194021___redundant_placeholder15
1while_while_cond_2194021___redundant_placeholder25
1while_while_cond_2194021___redundant_placeholder3
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
J__inference_lstm_cell_362_layer_call_and_return_conditional_losses_2190616

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
while_body_2191264
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_362_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_362_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_362_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_362_matmul_readvariableop_resource:2(F
4while_lstm_cell_362_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_362_biasadd_readvariableop_resource:(??*while/lstm_cell_362/BiasAdd/ReadVariableOp?)while/lstm_cell_362/MatMul/ReadVariableOp?+while/lstm_cell_362/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_362/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_362_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_362/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_362_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_362/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_362/addAddV2$while/lstm_cell_362/MatMul:product:0&while/lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_362_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_362/BiasAddBiasAddwhile/lstm_cell_362/add:z:02while/lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_362/splitSplit,while/lstm_cell_362/split/split_dim:output:0$while/lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_362/SigmoidSigmoid"while/lstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_362/Sigmoid_1Sigmoid"while/lstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mulMul!while/lstm_cell_362/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_362/ReluRelu"while/lstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mul_1Mulwhile/lstm_cell_362/Sigmoid:y:0&while/lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/add_1AddV2while/lstm_cell_362/mul:z:0while/lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_362/Sigmoid_2Sigmoid"while/lstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_362/Relu_1Reluwhile/lstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_362/mul_2Mul!while/lstm_cell_362/Sigmoid_2:y:0(while/lstm_cell_362/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_362/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_362/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_362/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_362/BiasAdd/ReadVariableOp*^while/lstm_cell_362/MatMul/ReadVariableOp,^while/lstm_cell_362/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_362_biasadd_readvariableop_resource5while_lstm_cell_362_biasadd_readvariableop_resource_0"n
4while_lstm_cell_362_matmul_1_readvariableop_resource6while_lstm_cell_362_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_362_matmul_readvariableop_resource4while_lstm_cell_362_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_362/BiasAdd/ReadVariableOp*while/lstm_cell_362/BiasAdd/ReadVariableOp2V
)while/lstm_cell_362/MatMul/ReadVariableOp)while/lstm_cell_362/MatMul/ReadVariableOp2Z
+while/lstm_cell_362/MatMul_1/ReadVariableOp+while/lstm_cell_362/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

?
/__inference_sequential_59_layer_call_fn_2192136

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
J__inference_sequential_59_layer_call_and_return_conditional_losses_2191373o
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
?8
?
E__inference_lstm_177_layer_call_and_return_conditional_losses_2189999

inputs(
lstm_cell_360_2189917:	?(
lstm_cell_360_2189919:	d?$
lstm_cell_360_2189921:	?
identity??%lstm_cell_360/StatefulPartitionedCall?while;
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
%lstm_cell_360/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_360_2189917lstm_cell_360_2189919lstm_cell_360_2189921*
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
J__inference_lstm_cell_360_layer_call_and_return_conditional_losses_2189916n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_360_2189917lstm_cell_360_2189919lstm_cell_360_2189921*
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
while_body_2189930*
condR
while_cond_2189929*K
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
NoOpNoOp&^lstm_cell_360/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_360/StatefulPartitionedCall%lstm_cell_360/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_179_layer_call_and_return_conditional_losses_2194722

inputs>
,lstm_cell_362_matmul_readvariableop_resource:2(@
.lstm_cell_362_matmul_1_readvariableop_resource:
(;
-lstm_cell_362_biasadd_readvariableop_resource:(
identity??$lstm_cell_362/BiasAdd/ReadVariableOp?#lstm_cell_362/MatMul/ReadVariableOp?%lstm_cell_362/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_362/MatMul/ReadVariableOpReadVariableOp,lstm_cell_362_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_362/MatMulMatMulstrided_slice_2:output:0+lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_362_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_362/MatMul_1MatMulzeros:output:0-lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_362/addAddV2lstm_cell_362/MatMul:product:0 lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_362_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_362/BiasAddBiasAddlstm_cell_362/add:z:0,lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_362/splitSplit&lstm_cell_362/split/split_dim:output:0lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_362/SigmoidSigmoidlstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_362/Sigmoid_1Sigmoidlstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_362/mulMullstm_cell_362/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_362/ReluRelulstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_362/mul_1Mullstm_cell_362/Sigmoid:y:0 lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_362/add_1AddV2lstm_cell_362/mul:z:0lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_362/Sigmoid_2Sigmoidlstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_362/Relu_1Relulstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_362/mul_2Mullstm_cell_362/Sigmoid_2:y:0"lstm_cell_362/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_362_matmul_readvariableop_resource.lstm_cell_362_matmul_1_readvariableop_resource-lstm_cell_362_biasadd_readvariableop_resource*
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
while_body_2194638*
condR
while_cond_2194637*K
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
NoOpNoOp%^lstm_cell_362/BiasAdd/ReadVariableOp$^lstm_cell_362/MatMul/ReadVariableOp&^lstm_cell_362/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_362/BiasAdd/ReadVariableOp$lstm_cell_362/BiasAdd/ReadVariableOp2J
#lstm_cell_362/MatMul/ReadVariableOp#lstm_cell_362/MatMul/ReadVariableOp2N
%lstm_cell_362/MatMul_1/ReadVariableOp%lstm_cell_362/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_sequential_59_layer_call_and_return_conditional_losses_2191373

inputs#
lstm_177_2191049:	?#
lstm_177_2191051:	d?
lstm_177_2191053:	?#
lstm_178_2191199:	d?#
lstm_178_2191201:	2?
lstm_178_2191203:	?"
lstm_179_2191349:2("
lstm_179_2191351:
(
lstm_179_2191353:("
dense_59_2191367:

dense_59_2191369:
identity?? dense_59/StatefulPartitionedCall? lstm_177/StatefulPartitionedCall? lstm_178/StatefulPartitionedCall? lstm_179/StatefulPartitionedCall?
 lstm_177/StatefulPartitionedCallStatefulPartitionedCallinputslstm_177_2191049lstm_177_2191051lstm_177_2191053*
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
E__inference_lstm_177_layer_call_and_return_conditional_losses_2191048?
 lstm_178/StatefulPartitionedCallStatefulPartitionedCall)lstm_177/StatefulPartitionedCall:output:0lstm_178_2191199lstm_178_2191201lstm_178_2191203*
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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2191198?
 lstm_179/StatefulPartitionedCallStatefulPartitionedCall)lstm_178/StatefulPartitionedCall:output:0lstm_179_2191349lstm_179_2191351lstm_179_2191353*
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
E__inference_lstm_179_layer_call_and_return_conditional_losses_2191348?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)lstm_179/StatefulPartitionedCall:output:0dense_59_2191367dense_59_2191369*
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
E__inference_dense_59_layer_call_and_return_conditional_losses_2191366x
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_59/StatefulPartitionedCall!^lstm_177/StatefulPartitionedCall!^lstm_178/StatefulPartitionedCall!^lstm_179/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 lstm_177/StatefulPartitionedCall lstm_177/StatefulPartitionedCall2D
 lstm_178/StatefulPartitionedCall lstm_178/StatefulPartitionedCall2D
 lstm_179/StatefulPartitionedCall lstm_179/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_362_layer_call_and_return_conditional_losses_2190762

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
E__inference_lstm_179_layer_call_and_return_conditional_losses_2194865

inputs>
,lstm_cell_362_matmul_readvariableop_resource:2(@
.lstm_cell_362_matmul_1_readvariableop_resource:
(;
-lstm_cell_362_biasadd_readvariableop_resource:(
identity??$lstm_cell_362/BiasAdd/ReadVariableOp?#lstm_cell_362/MatMul/ReadVariableOp?%lstm_cell_362/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_362/MatMul/ReadVariableOpReadVariableOp,lstm_cell_362_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_362/MatMulMatMulstrided_slice_2:output:0+lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_362_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_362/MatMul_1MatMulzeros:output:0-lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_362/addAddV2lstm_cell_362/MatMul:product:0 lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_362_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_362/BiasAddBiasAddlstm_cell_362/add:z:0,lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_362/splitSplit&lstm_cell_362/split/split_dim:output:0lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_362/SigmoidSigmoidlstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_362/Sigmoid_1Sigmoidlstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_362/mulMullstm_cell_362/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_362/ReluRelulstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_362/mul_1Mullstm_cell_362/Sigmoid:y:0 lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_362/add_1AddV2lstm_cell_362/mul:z:0lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_362/Sigmoid_2Sigmoidlstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_362/Relu_1Relulstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_362/mul_2Mullstm_cell_362/Sigmoid_2:y:0"lstm_cell_362/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_362_matmul_readvariableop_resource.lstm_cell_362_matmul_1_readvariableop_resource-lstm_cell_362_biasadd_readvariableop_resource*
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
while_body_2194781*
condR
while_cond_2194780*K
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
NoOpNoOp%^lstm_cell_362/BiasAdd/ReadVariableOp$^lstm_cell_362/MatMul/ReadVariableOp&^lstm_cell_362/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_362/BiasAdd/ReadVariableOp$lstm_cell_362/BiasAdd/ReadVariableOp2J
#lstm_cell_362/MatMul/ReadVariableOp#lstm_cell_362/MatMul/ReadVariableOp2N
%lstm_cell_362/MatMul_1/ReadVariableOp%lstm_cell_362/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_179_layer_call_and_return_conditional_losses_2194436
inputs_0>
,lstm_cell_362_matmul_readvariableop_resource:2(@
.lstm_cell_362_matmul_1_readvariableop_resource:
(;
-lstm_cell_362_biasadd_readvariableop_resource:(
identity??$lstm_cell_362/BiasAdd/ReadVariableOp?#lstm_cell_362/MatMul/ReadVariableOp?%lstm_cell_362/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_362/MatMul/ReadVariableOpReadVariableOp,lstm_cell_362_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_362/MatMulMatMulstrided_slice_2:output:0+lstm_cell_362/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_362/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_362_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_362/MatMul_1MatMulzeros:output:0-lstm_cell_362/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_362/addAddV2lstm_cell_362/MatMul:product:0 lstm_cell_362/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_362/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_362_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_362/BiasAddBiasAddlstm_cell_362/add:z:0,lstm_cell_362/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_362/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_362/splitSplit&lstm_cell_362/split/split_dim:output:0lstm_cell_362/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_362/SigmoidSigmoidlstm_cell_362/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_362/Sigmoid_1Sigmoidlstm_cell_362/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_362/mulMullstm_cell_362/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_362/ReluRelulstm_cell_362/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_362/mul_1Mullstm_cell_362/Sigmoid:y:0 lstm_cell_362/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_362/add_1AddV2lstm_cell_362/mul:z:0lstm_cell_362/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_362/Sigmoid_2Sigmoidlstm_cell_362/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_362/Relu_1Relulstm_cell_362/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_362/mul_2Mullstm_cell_362/Sigmoid_2:y:0"lstm_cell_362/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_362_matmul_readvariableop_resource.lstm_cell_362_matmul_1_readvariableop_resource-lstm_cell_362_biasadd_readvariableop_resource*
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
while_body_2194352*
condR
while_cond_2194351*K
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
NoOpNoOp%^lstm_cell_362/BiasAdd/ReadVariableOp$^lstm_cell_362/MatMul/ReadVariableOp&^lstm_cell_362/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_362/BiasAdd/ReadVariableOp$lstm_cell_362/BiasAdd/ReadVariableOp2J
#lstm_cell_362/MatMul/ReadVariableOp#lstm_cell_362/MatMul/ReadVariableOp2N
%lstm_cell_362/MatMul_1/ReadVariableOp%lstm_cell_362/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
/__inference_sequential_59_layer_call_fn_2191398
lstm_177_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_177_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_59_layer_call_and_return_conditional_losses_2191373o
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
_user_specified_namelstm_177_input
?
?
J__inference_lstm_cell_361_layer_call_and_return_conditional_losses_2190412

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
E__inference_lstm_177_layer_call_and_return_conditional_losses_2193490

inputs?
,lstm_cell_360_matmul_readvariableop_resource:	?A
.lstm_cell_360_matmul_1_readvariableop_resource:	d?<
-lstm_cell_360_biasadd_readvariableop_resource:	?
identity??$lstm_cell_360/BiasAdd/ReadVariableOp?#lstm_cell_360/MatMul/ReadVariableOp?%lstm_cell_360/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_360/MatMul/ReadVariableOpReadVariableOp,lstm_cell_360_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_360/MatMulMatMulstrided_slice_2:output:0+lstm_cell_360/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_360/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_360_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_360/MatMul_1MatMulzeros:output:0-lstm_cell_360/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_360/addAddV2lstm_cell_360/MatMul:product:0 lstm_cell_360/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_360/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_360_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_360/BiasAddBiasAddlstm_cell_360/add:z:0,lstm_cell_360/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_360/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_360/splitSplit&lstm_cell_360/split/split_dim:output:0lstm_cell_360/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_360/SigmoidSigmoidlstm_cell_360/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_360/Sigmoid_1Sigmoidlstm_cell_360/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_360/mulMullstm_cell_360/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_360/ReluRelulstm_cell_360/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_360/mul_1Mullstm_cell_360/Sigmoid:y:0 lstm_cell_360/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_360/add_1AddV2lstm_cell_360/mul:z:0lstm_cell_360/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_360/Sigmoid_2Sigmoidlstm_cell_360/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_360/Relu_1Relulstm_cell_360/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_360/mul_2Mullstm_cell_360/Sigmoid_2:y:0"lstm_cell_360/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_360_matmul_readvariableop_resource.lstm_cell_360_matmul_1_readvariableop_resource-lstm_cell_360_biasadd_readvariableop_resource*
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
while_body_2193406*
condR
while_cond_2193405*K
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
NoOpNoOp%^lstm_cell_360/BiasAdd/ReadVariableOp$^lstm_cell_360/MatMul/ReadVariableOp&^lstm_cell_360/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_360/BiasAdd/ReadVariableOp$lstm_cell_360/BiasAdd/ReadVariableOp2J
#lstm_cell_360/MatMul/ReadVariableOp#lstm_cell_360/MatMul/ReadVariableOp2N
%lstm_cell_360/MatMul_1/ReadVariableOp%lstm_cell_360/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_59_layer_call_and_return_conditional_losses_2192074
lstm_177_input#
lstm_177_2192047:	?#
lstm_177_2192049:	d?
lstm_177_2192051:	?#
lstm_178_2192054:	d?#
lstm_178_2192056:	2?
lstm_178_2192058:	?"
lstm_179_2192061:2("
lstm_179_2192063:
(
lstm_179_2192065:("
dense_59_2192068:

dense_59_2192070:
identity?? dense_59/StatefulPartitionedCall? lstm_177/StatefulPartitionedCall? lstm_178/StatefulPartitionedCall? lstm_179/StatefulPartitionedCall?
 lstm_177/StatefulPartitionedCallStatefulPartitionedCalllstm_177_inputlstm_177_2192047lstm_177_2192049lstm_177_2192051*
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
E__inference_lstm_177_layer_call_and_return_conditional_losses_2191894?
 lstm_178/StatefulPartitionedCallStatefulPartitionedCall)lstm_177/StatefulPartitionedCall:output:0lstm_178_2192054lstm_178_2192056lstm_178_2192058*
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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2191729?
 lstm_179/StatefulPartitionedCallStatefulPartitionedCall)lstm_178/StatefulPartitionedCall:output:0lstm_179_2192061lstm_179_2192063lstm_179_2192065*
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
E__inference_lstm_179_layer_call_and_return_conditional_losses_2191564?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)lstm_179/StatefulPartitionedCall:output:0dense_59_2192068dense_59_2192070*
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
E__inference_dense_59_layer_call_and_return_conditional_losses_2191366x
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_59/StatefulPartitionedCall!^lstm_177/StatefulPartitionedCall!^lstm_178/StatefulPartitionedCall!^lstm_179/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 lstm_177/StatefulPartitionedCall lstm_177/StatefulPartitionedCall2D
 lstm_178/StatefulPartitionedCall lstm_178/StatefulPartitionedCall2D
 lstm_179/StatefulPartitionedCall lstm_179/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_177_input
?

?
lstm_177_while_cond_2192648.
*lstm_177_while_lstm_177_while_loop_counter4
0lstm_177_while_lstm_177_while_maximum_iterations
lstm_177_while_placeholder 
lstm_177_while_placeholder_1 
lstm_177_while_placeholder_2 
lstm_177_while_placeholder_30
,lstm_177_while_less_lstm_177_strided_slice_1G
Clstm_177_while_lstm_177_while_cond_2192648___redundant_placeholder0G
Clstm_177_while_lstm_177_while_cond_2192648___redundant_placeholder1G
Clstm_177_while_lstm_177_while_cond_2192648___redundant_placeholder2G
Clstm_177_while_lstm_177_while_cond_2192648___redundant_placeholder3
lstm_177_while_identity
?
lstm_177/while/LessLesslstm_177_while_placeholder,lstm_177_while_less_lstm_177_strided_slice_1*
T0*
_output_shapes
: ]
lstm_177/while/IdentityIdentitylstm_177/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_177_while_identity lstm_177/while/Identity:output:0*(
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
while_cond_2193878
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2193878___redundant_placeholder05
1while_while_cond_2193878___redundant_placeholder15
1while_while_cond_2193878___redundant_placeholder25
1while_while_cond_2193878___redundant_placeholder3
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
*__inference_lstm_179_layer_call_fn_2194260
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
E__inference_lstm_179_layer_call_and_return_conditional_losses_2190699o
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
 __inference__traced_save_2195321
file_prefix.
*savev2_dense_59_kernel_read_readvariableop,
(savev2_dense_59_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_177_lstm_cell_177_kernel_read_readvariableopF
Bsavev2_lstm_177_lstm_cell_177_recurrent_kernel_read_readvariableop:
6savev2_lstm_177_lstm_cell_177_bias_read_readvariableop<
8savev2_lstm_178_lstm_cell_178_kernel_read_readvariableopF
Bsavev2_lstm_178_lstm_cell_178_recurrent_kernel_read_readvariableop:
6savev2_lstm_178_lstm_cell_178_bias_read_readvariableop<
8savev2_lstm_179_lstm_cell_179_kernel_read_readvariableopF
Bsavev2_lstm_179_lstm_cell_179_recurrent_kernel_read_readvariableop:
6savev2_lstm_179_lstm_cell_179_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_59_kernel_m_read_readvariableop3
/savev2_adam_dense_59_bias_m_read_readvariableopC
?savev2_adam_lstm_177_lstm_cell_177_kernel_m_read_readvariableopM
Isavev2_adam_lstm_177_lstm_cell_177_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_177_lstm_cell_177_bias_m_read_readvariableopC
?savev2_adam_lstm_178_lstm_cell_178_kernel_m_read_readvariableopM
Isavev2_adam_lstm_178_lstm_cell_178_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_178_lstm_cell_178_bias_m_read_readvariableopC
?savev2_adam_lstm_179_lstm_cell_179_kernel_m_read_readvariableopM
Isavev2_adam_lstm_179_lstm_cell_179_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_179_lstm_cell_179_bias_m_read_readvariableop5
1savev2_adam_dense_59_kernel_v_read_readvariableop3
/savev2_adam_dense_59_bias_v_read_readvariableopC
?savev2_adam_lstm_177_lstm_cell_177_kernel_v_read_readvariableopM
Isavev2_adam_lstm_177_lstm_cell_177_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_177_lstm_cell_177_bias_v_read_readvariableopC
?savev2_adam_lstm_178_lstm_cell_178_kernel_v_read_readvariableopM
Isavev2_adam_lstm_178_lstm_cell_178_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_178_lstm_cell_178_bias_v_read_readvariableopC
?savev2_adam_lstm_179_lstm_cell_179_kernel_v_read_readvariableopM
Isavev2_adam_lstm_179_lstm_cell_179_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_179_lstm_cell_179_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_59_kernel_read_readvariableop(savev2_dense_59_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_177_lstm_cell_177_kernel_read_readvariableopBsavev2_lstm_177_lstm_cell_177_recurrent_kernel_read_readvariableop6savev2_lstm_177_lstm_cell_177_bias_read_readvariableop8savev2_lstm_178_lstm_cell_178_kernel_read_readvariableopBsavev2_lstm_178_lstm_cell_178_recurrent_kernel_read_readvariableop6savev2_lstm_178_lstm_cell_178_bias_read_readvariableop8savev2_lstm_179_lstm_cell_179_kernel_read_readvariableopBsavev2_lstm_179_lstm_cell_179_recurrent_kernel_read_readvariableop6savev2_lstm_179_lstm_cell_179_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_59_kernel_m_read_readvariableop/savev2_adam_dense_59_bias_m_read_readvariableop?savev2_adam_lstm_177_lstm_cell_177_kernel_m_read_readvariableopIsavev2_adam_lstm_177_lstm_cell_177_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_177_lstm_cell_177_bias_m_read_readvariableop?savev2_adam_lstm_178_lstm_cell_178_kernel_m_read_readvariableopIsavev2_adam_lstm_178_lstm_cell_178_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_178_lstm_cell_178_bias_m_read_readvariableop?savev2_adam_lstm_179_lstm_cell_179_kernel_m_read_readvariableopIsavev2_adam_lstm_179_lstm_cell_179_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_179_lstm_cell_179_bias_m_read_readvariableop1savev2_adam_dense_59_kernel_v_read_readvariableop/savev2_adam_dense_59_bias_v_read_readvariableop?savev2_adam_lstm_177_lstm_cell_177_kernel_v_read_readvariableopIsavev2_adam_lstm_177_lstm_cell_177_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_177_lstm_cell_177_bias_v_read_readvariableop?savev2_adam_lstm_178_lstm_cell_178_kernel_v_read_readvariableopIsavev2_adam_lstm_178_lstm_cell_178_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_178_lstm_cell_178_bias_v_read_readvariableop?savev2_adam_lstm_179_lstm_cell_179_kernel_v_read_readvariableopIsavev2_adam_lstm_179_lstm_cell_179_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_179_lstm_cell_179_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
?
while_cond_2190629
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2190629___redundant_placeholder05
1while_while_cond_2190629___redundant_placeholder15
1while_while_cond_2190629___redundant_placeholder25
1while_while_cond_2190629___redundant_placeholder3
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
*__inference_lstm_178_layer_call_fn_2193644
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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2190349|
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
inputs/0"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_177_input;
 serving_default_lstm_177_input:0?????????<
dense_590
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
2dense_59/kernel
:2dense_59/bias
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
0:.	?2lstm_177/lstm_cell_177/kernel
::8	d?2'lstm_177/lstm_cell_177/recurrent_kernel
*:(?2lstm_177/lstm_cell_177/bias
0:.	d?2lstm_178/lstm_cell_178/kernel
::8	2?2'lstm_178/lstm_cell_178/recurrent_kernel
*:(?2lstm_178/lstm_cell_178/bias
/:-2(2lstm_179/lstm_cell_179/kernel
9:7
(2'lstm_179/lstm_cell_179/recurrent_kernel
):'(2lstm_179/lstm_cell_179/bias
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
2Adam/dense_59/kernel/m
 :2Adam/dense_59/bias/m
5:3	?2$Adam/lstm_177/lstm_cell_177/kernel/m
?:=	d?2.Adam/lstm_177/lstm_cell_177/recurrent_kernel/m
/:-?2"Adam/lstm_177/lstm_cell_177/bias/m
5:3	d?2$Adam/lstm_178/lstm_cell_178/kernel/m
?:=	2?2.Adam/lstm_178/lstm_cell_178/recurrent_kernel/m
/:-?2"Adam/lstm_178/lstm_cell_178/bias/m
4:22(2$Adam/lstm_179/lstm_cell_179/kernel/m
>:<
(2.Adam/lstm_179/lstm_cell_179/recurrent_kernel/m
.:,(2"Adam/lstm_179/lstm_cell_179/bias/m
&:$
2Adam/dense_59/kernel/v
 :2Adam/dense_59/bias/v
5:3	?2$Adam/lstm_177/lstm_cell_177/kernel/v
?:=	d?2.Adam/lstm_177/lstm_cell_177/recurrent_kernel/v
/:-?2"Adam/lstm_177/lstm_cell_177/bias/v
5:3	d?2$Adam/lstm_178/lstm_cell_178/kernel/v
?:=	2?2.Adam/lstm_178/lstm_cell_178/recurrent_kernel/v
/:-?2"Adam/lstm_178/lstm_cell_178/bias/v
4:22(2$Adam/lstm_179/lstm_cell_179/kernel/v
>:<
(2.Adam/lstm_179/lstm_cell_179/recurrent_kernel/v
.:,(2"Adam/lstm_179/lstm_cell_179/bias/v
?2?
/__inference_sequential_59_layer_call_fn_2191398
/__inference_sequential_59_layer_call_fn_2192136
/__inference_sequential_59_layer_call_fn_2192163
/__inference_sequential_59_layer_call_fn_2192014?
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
J__inference_sequential_59_layer_call_and_return_conditional_losses_2192590
J__inference_sequential_59_layer_call_and_return_conditional_losses_2193017
J__inference_sequential_59_layer_call_and_return_conditional_losses_2192044
J__inference_sequential_59_layer_call_and_return_conditional_losses_2192074?
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
"__inference__wrapped_model_2189849lstm_177_input"?
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
*__inference_lstm_177_layer_call_fn_2193028
*__inference_lstm_177_layer_call_fn_2193039
*__inference_lstm_177_layer_call_fn_2193050
*__inference_lstm_177_layer_call_fn_2193061?
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
E__inference_lstm_177_layer_call_and_return_conditional_losses_2193204
E__inference_lstm_177_layer_call_and_return_conditional_losses_2193347
E__inference_lstm_177_layer_call_and_return_conditional_losses_2193490
E__inference_lstm_177_layer_call_and_return_conditional_losses_2193633?
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
*__inference_lstm_178_layer_call_fn_2193644
*__inference_lstm_178_layer_call_fn_2193655
*__inference_lstm_178_layer_call_fn_2193666
*__inference_lstm_178_layer_call_fn_2193677?
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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2193820
E__inference_lstm_178_layer_call_and_return_conditional_losses_2193963
E__inference_lstm_178_layer_call_and_return_conditional_losses_2194106
E__inference_lstm_178_layer_call_and_return_conditional_losses_2194249?
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
*__inference_lstm_179_layer_call_fn_2194260
*__inference_lstm_179_layer_call_fn_2194271
*__inference_lstm_179_layer_call_fn_2194282
*__inference_lstm_179_layer_call_fn_2194293?
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
E__inference_lstm_179_layer_call_and_return_conditional_losses_2194436
E__inference_lstm_179_layer_call_and_return_conditional_losses_2194579
E__inference_lstm_179_layer_call_and_return_conditional_losses_2194722
E__inference_lstm_179_layer_call_and_return_conditional_losses_2194865?
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
*__inference_dense_59_layer_call_fn_2194874?
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
E__inference_dense_59_layer_call_and_return_conditional_losses_2194884?
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
%__inference_signature_wrapper_2192109lstm_177_input"?
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
/__inference_lstm_cell_360_layer_call_fn_2194901
/__inference_lstm_cell_360_layer_call_fn_2194918?
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
J__inference_lstm_cell_360_layer_call_and_return_conditional_losses_2194950
J__inference_lstm_cell_360_layer_call_and_return_conditional_losses_2194982?
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
/__inference_lstm_cell_361_layer_call_fn_2194999
/__inference_lstm_cell_361_layer_call_fn_2195016?
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
J__inference_lstm_cell_361_layer_call_and_return_conditional_losses_2195048
J__inference_lstm_cell_361_layer_call_and_return_conditional_losses_2195080?
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
/__inference_lstm_cell_362_layer_call_fn_2195097
/__inference_lstm_cell_362_layer_call_fn_2195114?
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
J__inference_lstm_cell_362_layer_call_and_return_conditional_losses_2195146
J__inference_lstm_cell_362_layer_call_and_return_conditional_losses_2195178?
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
"__inference__wrapped_model_2189849-./012345!";?8
1?.
,?)
lstm_177_input?????????
? "3?0
.
dense_59"?
dense_59??????????
E__inference_dense_59_layer_call_and_return_conditional_losses_2194884\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_59_layer_call_fn_2194874O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_177_layer_call_and_return_conditional_losses_2193204?-./O?L
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
E__inference_lstm_177_layer_call_and_return_conditional_losses_2193347?-./O?L
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
E__inference_lstm_177_layer_call_and_return_conditional_losses_2193490q-./??<
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
E__inference_lstm_177_layer_call_and_return_conditional_losses_2193633q-./??<
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
*__inference_lstm_177_layer_call_fn_2193028}-./O?L
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
*__inference_lstm_177_layer_call_fn_2193039}-./O?L
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
*__inference_lstm_177_layer_call_fn_2193050d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_177_layer_call_fn_2193061d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_178_layer_call_and_return_conditional_losses_2193820?012O?L
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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2193963?012O?L
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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2194106q012??<
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
E__inference_lstm_178_layer_call_and_return_conditional_losses_2194249q012??<
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
*__inference_lstm_178_layer_call_fn_2193644}012O?L
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
*__inference_lstm_178_layer_call_fn_2193655}012O?L
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
*__inference_lstm_178_layer_call_fn_2193666d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_178_layer_call_fn_2193677d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_179_layer_call_and_return_conditional_losses_2194436}345O?L
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
E__inference_lstm_179_layer_call_and_return_conditional_losses_2194579}345O?L
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
E__inference_lstm_179_layer_call_and_return_conditional_losses_2194722m345??<
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
E__inference_lstm_179_layer_call_and_return_conditional_losses_2194865m345??<
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
*__inference_lstm_179_layer_call_fn_2194260p345O?L
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
*__inference_lstm_179_layer_call_fn_2194271p345O?L
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
*__inference_lstm_179_layer_call_fn_2194282`345??<
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
*__inference_lstm_179_layer_call_fn_2194293`345??<
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
J__inference_lstm_cell_360_layer_call_and_return_conditional_losses_2194950?-./??}
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
J__inference_lstm_cell_360_layer_call_and_return_conditional_losses_2194982?-./??}
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
/__inference_lstm_cell_360_layer_call_fn_2194901?-./??}
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
/__inference_lstm_cell_360_layer_call_fn_2194918?-./??}
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
J__inference_lstm_cell_361_layer_call_and_return_conditional_losses_2195048?012??}
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
J__inference_lstm_cell_361_layer_call_and_return_conditional_losses_2195080?012??}
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
/__inference_lstm_cell_361_layer_call_fn_2194999?012??}
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
/__inference_lstm_cell_361_layer_call_fn_2195016?012??}
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
J__inference_lstm_cell_362_layer_call_and_return_conditional_losses_2195146?345??}
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
J__inference_lstm_cell_362_layer_call_and_return_conditional_losses_2195178?345??}
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
/__inference_lstm_cell_362_layer_call_fn_2195097?345??}
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
/__inference_lstm_cell_362_layer_call_fn_2195114?345??}
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
J__inference_sequential_59_layer_call_and_return_conditional_losses_2192044y-./012345!"C?@
9?6
,?)
lstm_177_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_59_layer_call_and_return_conditional_losses_2192074y-./012345!"C?@
9?6
,?)
lstm_177_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_59_layer_call_and_return_conditional_losses_2192590q-./012345!";?8
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
J__inference_sequential_59_layer_call_and_return_conditional_losses_2193017q-./012345!";?8
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
/__inference_sequential_59_layer_call_fn_2191398l-./012345!"C?@
9?6
,?)
lstm_177_input?????????
p 

 
? "???????????
/__inference_sequential_59_layer_call_fn_2192014l-./012345!"C?@
9?6
,?)
lstm_177_input?????????
p

 
? "???????????
/__inference_sequential_59_layer_call_fn_2192136d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_59_layer_call_fn_2192163d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2192109?-./012345!"M?J
? 
C?@
>
lstm_177_input,?)
lstm_177_input?????????"3?0
.
dense_59"?
dense_59?????????