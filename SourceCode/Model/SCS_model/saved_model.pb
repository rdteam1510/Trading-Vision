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
dense_75/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_75/kernel
s
#dense_75/kernel/Read/ReadVariableOpReadVariableOpdense_75/kernel*
_output_shapes

:
*
dtype0
r
dense_75/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_75/bias
k
!dense_75/bias/Read/ReadVariableOpReadVariableOpdense_75/bias*
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
lstm_225/lstm_cell_225/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_225/lstm_cell_225/kernel
?
1lstm_225/lstm_cell_225/kernel/Read/ReadVariableOpReadVariableOplstm_225/lstm_cell_225/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_225/lstm_cell_225/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_225/lstm_cell_225/recurrent_kernel
?
;lstm_225/lstm_cell_225/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_225/lstm_cell_225/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_225/lstm_cell_225/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_225/lstm_cell_225/bias
?
/lstm_225/lstm_cell_225/bias/Read/ReadVariableOpReadVariableOplstm_225/lstm_cell_225/bias*
_output_shapes	
:?*
dtype0
?
lstm_226/lstm_cell_226/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_226/lstm_cell_226/kernel
?
1lstm_226/lstm_cell_226/kernel/Read/ReadVariableOpReadVariableOplstm_226/lstm_cell_226/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_226/lstm_cell_226/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_226/lstm_cell_226/recurrent_kernel
?
;lstm_226/lstm_cell_226/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_226/lstm_cell_226/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_226/lstm_cell_226/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_226/lstm_cell_226/bias
?
/lstm_226/lstm_cell_226/bias/Read/ReadVariableOpReadVariableOplstm_226/lstm_cell_226/bias*
_output_shapes	
:?*
dtype0
?
lstm_227/lstm_cell_227/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_227/lstm_cell_227/kernel
?
1lstm_227/lstm_cell_227/kernel/Read/ReadVariableOpReadVariableOplstm_227/lstm_cell_227/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_227/lstm_cell_227/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_227/lstm_cell_227/recurrent_kernel
?
;lstm_227/lstm_cell_227/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_227/lstm_cell_227/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_227/lstm_cell_227/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_227/lstm_cell_227/bias
?
/lstm_227/lstm_cell_227/bias/Read/ReadVariableOpReadVariableOplstm_227/lstm_cell_227/bias*
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
Adam/dense_75/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_75/kernel/m
?
*Adam/dense_75/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_75/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_75/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_75/bias/m
y
(Adam/dense_75/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_75/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_225/lstm_cell_225/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_225/lstm_cell_225/kernel/m
?
8Adam/lstm_225/lstm_cell_225/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_225/lstm_cell_225/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_225/lstm_cell_225/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_225/lstm_cell_225/recurrent_kernel/m
?
BAdam/lstm_225/lstm_cell_225/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_225/lstm_cell_225/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_225/lstm_cell_225/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_225/lstm_cell_225/bias/m
?
6Adam/lstm_225/lstm_cell_225/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_225/lstm_cell_225/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_226/lstm_cell_226/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_226/lstm_cell_226/kernel/m
?
8Adam/lstm_226/lstm_cell_226/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_226/lstm_cell_226/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_226/lstm_cell_226/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_226/lstm_cell_226/recurrent_kernel/m
?
BAdam/lstm_226/lstm_cell_226/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_226/lstm_cell_226/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_226/lstm_cell_226/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_226/lstm_cell_226/bias/m
?
6Adam/lstm_226/lstm_cell_226/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_226/lstm_cell_226/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_227/lstm_cell_227/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_227/lstm_cell_227/kernel/m
?
8Adam/lstm_227/lstm_cell_227/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_227/lstm_cell_227/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_227/lstm_cell_227/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_227/lstm_cell_227/recurrent_kernel/m
?
BAdam/lstm_227/lstm_cell_227/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_227/lstm_cell_227/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_227/lstm_cell_227/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_227/lstm_cell_227/bias/m
?
6Adam/lstm_227/lstm_cell_227/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_227/lstm_cell_227/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_75/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_75/kernel/v
?
*Adam/dense_75/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_75/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_75/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_75/bias/v
y
(Adam/dense_75/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_75/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_225/lstm_cell_225/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_225/lstm_cell_225/kernel/v
?
8Adam/lstm_225/lstm_cell_225/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_225/lstm_cell_225/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_225/lstm_cell_225/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_225/lstm_cell_225/recurrent_kernel/v
?
BAdam/lstm_225/lstm_cell_225/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_225/lstm_cell_225/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_225/lstm_cell_225/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_225/lstm_cell_225/bias/v
?
6Adam/lstm_225/lstm_cell_225/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_225/lstm_cell_225/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_226/lstm_cell_226/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_226/lstm_cell_226/kernel/v
?
8Adam/lstm_226/lstm_cell_226/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_226/lstm_cell_226/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_226/lstm_cell_226/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_226/lstm_cell_226/recurrent_kernel/v
?
BAdam/lstm_226/lstm_cell_226/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_226/lstm_cell_226/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_226/lstm_cell_226/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_226/lstm_cell_226/bias/v
?
6Adam/lstm_226/lstm_cell_226/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_226/lstm_cell_226/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_227/lstm_cell_227/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_227/lstm_cell_227/kernel/v
?
8Adam/lstm_227/lstm_cell_227/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_227/lstm_cell_227/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_227/lstm_cell_227/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_227/lstm_cell_227/recurrent_kernel/v
?
BAdam/lstm_227/lstm_cell_227/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_227/lstm_cell_227/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_227/lstm_cell_227/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_227/lstm_cell_227/bias/v
?
6Adam/lstm_227/lstm_cell_227/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_227/lstm_cell_227/bias/v*
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
VARIABLE_VALUEdense_75/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_75/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_225/lstm_cell_225/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_225/lstm_cell_225/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_225/lstm_cell_225/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_226/lstm_cell_226/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_226/lstm_cell_226/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_226/lstm_cell_226/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_227/lstm_cell_227/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_227/lstm_cell_227/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_227/lstm_cell_227/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_75/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_75/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_225/lstm_cell_225/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_225/lstm_cell_225/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_225/lstm_cell_225/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_226/lstm_cell_226/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_226/lstm_cell_226/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_226/lstm_cell_226/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_227/lstm_cell_227/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_227/lstm_cell_227/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_227/lstm_cell_227/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_75/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_75/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_225/lstm_cell_225/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_225/lstm_cell_225/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_225/lstm_cell_225/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_226/lstm_cell_226/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_226/lstm_cell_226/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_226/lstm_cell_226/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_227/lstm_cell_227/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_227/lstm_cell_227/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_227/lstm_cell_227/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_225_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_225_inputlstm_225/lstm_cell_225/kernel'lstm_225/lstm_cell_225/recurrent_kernellstm_225/lstm_cell_225/biaslstm_226/lstm_cell_226/kernel'lstm_226/lstm_cell_226/recurrent_kernellstm_226/lstm_cell_226/biaslstm_227/lstm_cell_227/kernel'lstm_227/lstm_cell_227/recurrent_kernellstm_227/lstm_cell_227/biasdense_75/kerneldense_75/bias*
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
%__inference_signature_wrapper_3116989
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_75/kernel/Read/ReadVariableOp!dense_75/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_225/lstm_cell_225/kernel/Read/ReadVariableOp;lstm_225/lstm_cell_225/recurrent_kernel/Read/ReadVariableOp/lstm_225/lstm_cell_225/bias/Read/ReadVariableOp1lstm_226/lstm_cell_226/kernel/Read/ReadVariableOp;lstm_226/lstm_cell_226/recurrent_kernel/Read/ReadVariableOp/lstm_226/lstm_cell_226/bias/Read/ReadVariableOp1lstm_227/lstm_cell_227/kernel/Read/ReadVariableOp;lstm_227/lstm_cell_227/recurrent_kernel/Read/ReadVariableOp/lstm_227/lstm_cell_227/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_75/kernel/m/Read/ReadVariableOp(Adam/dense_75/bias/m/Read/ReadVariableOp8Adam/lstm_225/lstm_cell_225/kernel/m/Read/ReadVariableOpBAdam/lstm_225/lstm_cell_225/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_225/lstm_cell_225/bias/m/Read/ReadVariableOp8Adam/lstm_226/lstm_cell_226/kernel/m/Read/ReadVariableOpBAdam/lstm_226/lstm_cell_226/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_226/lstm_cell_226/bias/m/Read/ReadVariableOp8Adam/lstm_227/lstm_cell_227/kernel/m/Read/ReadVariableOpBAdam/lstm_227/lstm_cell_227/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_227/lstm_cell_227/bias/m/Read/ReadVariableOp*Adam/dense_75/kernel/v/Read/ReadVariableOp(Adam/dense_75/bias/v/Read/ReadVariableOp8Adam/lstm_225/lstm_cell_225/kernel/v/Read/ReadVariableOpBAdam/lstm_225/lstm_cell_225/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_225/lstm_cell_225/bias/v/Read/ReadVariableOp8Adam/lstm_226/lstm_cell_226/kernel/v/Read/ReadVariableOpBAdam/lstm_226/lstm_cell_226/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_226/lstm_cell_226/bias/v/Read/ReadVariableOp8Adam/lstm_227/lstm_cell_227/kernel/v/Read/ReadVariableOpBAdam/lstm_227/lstm_cell_227/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_227/lstm_cell_227/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3120201
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_75/kerneldense_75/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_225/lstm_cell_225/kernel'lstm_225/lstm_cell_225/recurrent_kernellstm_225/lstm_cell_225/biaslstm_226/lstm_cell_226/kernel'lstm_226/lstm_cell_226/recurrent_kernellstm_226/lstm_cell_226/biaslstm_227/lstm_cell_227/kernel'lstm_227/lstm_cell_227/recurrent_kernellstm_227/lstm_cell_227/biastotalcountAdam/dense_75/kernel/mAdam/dense_75/bias/m$Adam/lstm_225/lstm_cell_225/kernel/m.Adam/lstm_225/lstm_cell_225/recurrent_kernel/m"Adam/lstm_225/lstm_cell_225/bias/m$Adam/lstm_226/lstm_cell_226/kernel/m.Adam/lstm_226/lstm_cell_226/recurrent_kernel/m"Adam/lstm_226/lstm_cell_226/bias/m$Adam/lstm_227/lstm_cell_227/kernel/m.Adam/lstm_227/lstm_cell_227/recurrent_kernel/m"Adam/lstm_227/lstm_cell_227/bias/mAdam/dense_75/kernel/vAdam/dense_75/bias/v$Adam/lstm_225/lstm_cell_225/kernel/v.Adam/lstm_225/lstm_cell_225/recurrent_kernel/v"Adam/lstm_225/lstm_cell_225/bias/v$Adam/lstm_226/lstm_cell_226/kernel/v.Adam/lstm_226/lstm_cell_226/recurrent_kernel/v"Adam/lstm_226/lstm_cell_226/bias/v$Adam/lstm_227/lstm_cell_227/kernel/v.Adam/lstm_227/lstm_cell_227/recurrent_kernel/v"Adam/lstm_227/lstm_cell_227/bias/v*4
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
#__inference__traced_restore_3120331??+
?8
?
while_body_3118902
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_514_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_514_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_514_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_514_matmul_readvariableop_resource:	d?G
4while_lstm_cell_514_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_514_biasadd_readvariableop_resource:	???*while/lstm_cell_514/BiasAdd/ReadVariableOp?)while/lstm_cell_514/MatMul/ReadVariableOp?+while/lstm_cell_514/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_514/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_514_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_514/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_514_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_514/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_514/addAddV2$while/lstm_cell_514/MatMul:product:0&while/lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_514_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_514/BiasAddBiasAddwhile/lstm_cell_514/add:z:02while/lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_514/splitSplit,while/lstm_cell_514/split/split_dim:output:0$while/lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_514/SigmoidSigmoid"while/lstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_514/Sigmoid_1Sigmoid"while/lstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mulMul!while/lstm_cell_514/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_514/ReluRelu"while/lstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mul_1Mulwhile/lstm_cell_514/Sigmoid:y:0&while/lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/add_1AddV2while/lstm_cell_514/mul:z:0while/lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_514/Sigmoid_2Sigmoid"while/lstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_514/Relu_1Reluwhile/lstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mul_2Mul!while/lstm_cell_514/Sigmoid_2:y:0(while/lstm_cell_514/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_514/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_514/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_514/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_514/BiasAdd/ReadVariableOp*^while/lstm_cell_514/MatMul/ReadVariableOp,^while/lstm_cell_514/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_514_biasadd_readvariableop_resource5while_lstm_cell_514_biasadd_readvariableop_resource_0"n
4while_lstm_cell_514_matmul_1_readvariableop_resource6while_lstm_cell_514_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_514_matmul_readvariableop_resource4while_lstm_cell_514_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_514/BiasAdd/ReadVariableOp*while/lstm_cell_514/BiasAdd/ReadVariableOp2V
)while/lstm_cell_514/MatMul/ReadVariableOp)while/lstm_cell_514/MatMul/ReadVariableOp2Z
+while/lstm_cell_514/MatMul_1/ReadVariableOp+while/lstm_cell_514/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3115350
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3115350___redundant_placeholder05
1while_while_cond_3115350___redundant_placeholder15
1while_while_cond_3115350___redundant_placeholder25
1while_while_cond_3115350___redundant_placeholder3
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
E__inference_lstm_227_layer_call_and_return_conditional_losses_3119602

inputs>
,lstm_cell_515_matmul_readvariableop_resource:2(@
.lstm_cell_515_matmul_1_readvariableop_resource:
(;
-lstm_cell_515_biasadd_readvariableop_resource:(
identity??$lstm_cell_515/BiasAdd/ReadVariableOp?#lstm_cell_515/MatMul/ReadVariableOp?%lstm_cell_515/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_515/MatMul/ReadVariableOpReadVariableOp,lstm_cell_515_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_515/MatMulMatMulstrided_slice_2:output:0+lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_515_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_515/MatMul_1MatMulzeros:output:0-lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_515/addAddV2lstm_cell_515/MatMul:product:0 lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_515_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_515/BiasAddBiasAddlstm_cell_515/add:z:0,lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_515/splitSplit&lstm_cell_515/split/split_dim:output:0lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_515/SigmoidSigmoidlstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_515/Sigmoid_1Sigmoidlstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_515/mulMullstm_cell_515/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_515/ReluRelulstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_515/mul_1Mullstm_cell_515/Sigmoid:y:0 lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_515/add_1AddV2lstm_cell_515/mul:z:0lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_515/Sigmoid_2Sigmoidlstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_515/Relu_1Relulstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_515/mul_2Mullstm_cell_515/Sigmoid_2:y:0"lstm_cell_515/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_515_matmul_readvariableop_resource.lstm_cell_515_matmul_1_readvariableop_resource-lstm_cell_515_biasadd_readvariableop_resource*
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
while_body_3119518*
condR
while_cond_3119517*K
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
NoOpNoOp%^lstm_cell_515/BiasAdd/ReadVariableOp$^lstm_cell_515/MatMul/ReadVariableOp&^lstm_cell_515/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_515/BiasAdd/ReadVariableOp$lstm_cell_515/BiasAdd/ReadVariableOp2J
#lstm_cell_515/MatMul/ReadVariableOp#lstm_cell_515/MatMul/ReadVariableOp2N
%lstm_cell_515/MatMul_1/ReadVariableOp%lstm_cell_515/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3116359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3116359___redundant_placeholder05
1while_while_cond_3116359___redundant_placeholder15
1while_while_cond_3116359___redundant_placeholder25
1while_while_cond_3116359___redundant_placeholder3
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
/__inference_sequential_75_layer_call_fn_3116278
lstm_225_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_225_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_75_layer_call_and_return_conditional_losses_3116253o
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
_user_specified_namelstm_225_input
?
?
*__inference_lstm_226_layer_call_fn_3118557

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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3116609s
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
?K
?
E__inference_lstm_225_layer_call_and_return_conditional_losses_3118227
inputs_0?
,lstm_cell_513_matmul_readvariableop_resource:	?A
.lstm_cell_513_matmul_1_readvariableop_resource:	d?<
-lstm_cell_513_biasadd_readvariableop_resource:	?
identity??$lstm_cell_513/BiasAdd/ReadVariableOp?#lstm_cell_513/MatMul/ReadVariableOp?%lstm_cell_513/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_513/MatMul/ReadVariableOpReadVariableOp,lstm_cell_513_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_513/MatMulMatMulstrided_slice_2:output:0+lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_513_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_513/MatMul_1MatMulzeros:output:0-lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_513/addAddV2lstm_cell_513/MatMul:product:0 lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_513_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_513/BiasAddBiasAddlstm_cell_513/add:z:0,lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_513/splitSplit&lstm_cell_513/split/split_dim:output:0lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_513/SigmoidSigmoidlstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_513/Sigmoid_1Sigmoidlstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_513/mulMullstm_cell_513/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_513/ReluRelulstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_513/mul_1Mullstm_cell_513/Sigmoid:y:0 lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_513/add_1AddV2lstm_cell_513/mul:z:0lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_513/Sigmoid_2Sigmoidlstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_513/Relu_1Relulstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_513/mul_2Mullstm_cell_513/Sigmoid_2:y:0"lstm_cell_513/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_513_matmul_readvariableop_resource.lstm_cell_513_matmul_1_readvariableop_resource-lstm_cell_513_biasadd_readvariableop_resource*
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
while_body_3118143*
condR
while_cond_3118142*K
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
NoOpNoOp%^lstm_cell_513/BiasAdd/ReadVariableOp$^lstm_cell_513/MatMul/ReadVariableOp&^lstm_cell_513/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_513/BiasAdd/ReadVariableOp$lstm_cell_513/BiasAdd/ReadVariableOp2J
#lstm_cell_513/MatMul/ReadVariableOp#lstm_cell_513/MatMul/ReadVariableOp2N
%lstm_cell_513/MatMul_1/ReadVariableOp%lstm_cell_513/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3115159
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3115159___redundant_placeholder05
1while_while_cond_3115159___redundant_placeholder15
1while_while_cond_3115159___redundant_placeholder25
1while_while_cond_3115159___redundant_placeholder3
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
while_body_3116525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_514_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_514_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_514_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_514_matmul_readvariableop_resource:	d?G
4while_lstm_cell_514_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_514_biasadd_readvariableop_resource:	???*while/lstm_cell_514/BiasAdd/ReadVariableOp?)while/lstm_cell_514/MatMul/ReadVariableOp?+while/lstm_cell_514/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_514/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_514_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_514/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_514_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_514/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_514/addAddV2$while/lstm_cell_514/MatMul:product:0&while/lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_514_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_514/BiasAddBiasAddwhile/lstm_cell_514/add:z:02while/lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_514/splitSplit,while/lstm_cell_514/split/split_dim:output:0$while/lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_514/SigmoidSigmoid"while/lstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_514/Sigmoid_1Sigmoid"while/lstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mulMul!while/lstm_cell_514/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_514/ReluRelu"while/lstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mul_1Mulwhile/lstm_cell_514/Sigmoid:y:0&while/lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/add_1AddV2while/lstm_cell_514/mul:z:0while/lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_514/Sigmoid_2Sigmoid"while/lstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_514/Relu_1Reluwhile/lstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mul_2Mul!while/lstm_cell_514/Sigmoid_2:y:0(while/lstm_cell_514/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_514/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_514/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_514/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_514/BiasAdd/ReadVariableOp*^while/lstm_cell_514/MatMul/ReadVariableOp,^while/lstm_cell_514/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_514_biasadd_readvariableop_resource5while_lstm_cell_514_biasadd_readvariableop_resource_0"n
4while_lstm_cell_514_matmul_1_readvariableop_resource6while_lstm_cell_514_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_514_matmul_readvariableop_resource4while_lstm_cell_514_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_514/BiasAdd/ReadVariableOp*while/lstm_cell_514/BiasAdd/ReadVariableOp2V
)while/lstm_cell_514/MatMul/ReadVariableOp)while/lstm_cell_514/MatMul/ReadVariableOp2Z
+while/lstm_cell_514/MatMul_1/ReadVariableOp+while/lstm_cell_514/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_513_layer_call_and_return_conditional_losses_3114942

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
?#
?
while_body_3115351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_514_3115375_0:	d?0
while_lstm_cell_514_3115377_0:	2?,
while_lstm_cell_514_3115379_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_514_3115375:	d?.
while_lstm_cell_514_3115377:	2?*
while_lstm_cell_514_3115379:	???+while/lstm_cell_514/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_514/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_514_3115375_0while_lstm_cell_514_3115377_0while_lstm_cell_514_3115379_0*
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
J__inference_lstm_cell_514_layer_call_and_return_conditional_losses_3115292?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_514/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_514/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_514/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_514/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_514_3115375while_lstm_cell_514_3115375_0"<
while_lstm_cell_514_3115377while_lstm_cell_514_3115377_0"<
while_lstm_cell_514_3115379while_lstm_cell_514_3115379_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_514/StatefulPartitionedCall+while/lstm_cell_514/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_75_layer_call_and_return_conditional_losses_3119764

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
while_body_3119661
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_515_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_515_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_515_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_515_matmul_readvariableop_resource:2(F
4while_lstm_cell_515_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_515_biasadd_readvariableop_resource:(??*while/lstm_cell_515/BiasAdd/ReadVariableOp?)while/lstm_cell_515/MatMul/ReadVariableOp?+while/lstm_cell_515/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_515/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_515_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_515/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_515_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_515/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_515/addAddV2$while/lstm_cell_515/MatMul:product:0&while/lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_515_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_515/BiasAddBiasAddwhile/lstm_cell_515/add:z:02while/lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_515/splitSplit,while/lstm_cell_515/split/split_dim:output:0$while/lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_515/SigmoidSigmoid"while/lstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_515/Sigmoid_1Sigmoid"while/lstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mulMul!while/lstm_cell_515/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_515/ReluRelu"while/lstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mul_1Mulwhile/lstm_cell_515/Sigmoid:y:0&while/lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/add_1AddV2while/lstm_cell_515/mul:z:0while/lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_515/Sigmoid_2Sigmoid"while/lstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_515/Relu_1Reluwhile/lstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mul_2Mul!while/lstm_cell_515/Sigmoid_2:y:0(while/lstm_cell_515/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_515/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_515/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_515/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_515/BiasAdd/ReadVariableOp*^while/lstm_cell_515/MatMul/ReadVariableOp,^while/lstm_cell_515/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_515_biasadd_readvariableop_resource5while_lstm_cell_515_biasadd_readvariableop_resource_0"n
4while_lstm_cell_515_matmul_1_readvariableop_resource6while_lstm_cell_515_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_515_matmul_readvariableop_resource4while_lstm_cell_515_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_515/BiasAdd/ReadVariableOp*while/lstm_cell_515/BiasAdd/ReadVariableOp2V
)while/lstm_cell_515/MatMul/ReadVariableOp)while/lstm_cell_515/MatMul/ReadVariableOp2Z
+while/lstm_cell_515/MatMul_1/ReadVariableOp+while/lstm_cell_515/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3116689
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3116689___redundant_placeholder05
1while_while_cond_3116689___redundant_placeholder15
1while_while_cond_3116689___redundant_placeholder25
1while_while_cond_3116689___redundant_placeholder3
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
?
?
*__inference_dense_75_layer_call_fn_3119754

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
E__inference_dense_75_layer_call_and_return_conditional_losses_3116246o
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

?
lstm_225_while_cond_3117101.
*lstm_225_while_lstm_225_while_loop_counter4
0lstm_225_while_lstm_225_while_maximum_iterations
lstm_225_while_placeholder 
lstm_225_while_placeholder_1 
lstm_225_while_placeholder_2 
lstm_225_while_placeholder_30
,lstm_225_while_less_lstm_225_strided_slice_1G
Clstm_225_while_lstm_225_while_cond_3117101___redundant_placeholder0G
Clstm_225_while_lstm_225_while_cond_3117101___redundant_placeholder1G
Clstm_225_while_lstm_225_while_cond_3117101___redundant_placeholder2G
Clstm_225_while_lstm_225_while_cond_3117101___redundant_placeholder3
lstm_225_while_identity
?
lstm_225/while/LessLesslstm_225_while_placeholder,lstm_225_while_less_lstm_225_strided_slice_1*
T0*
_output_shapes
: ]
lstm_225/while/IdentityIdentitylstm_225/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_225_while_identity lstm_225/while/Identity:output:0*(
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
E__inference_dense_75_layer_call_and_return_conditional_losses_3116246

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
?S
?
)sequential_75_lstm_226_while_body_3114500J
Fsequential_75_lstm_226_while_sequential_75_lstm_226_while_loop_counterP
Lsequential_75_lstm_226_while_sequential_75_lstm_226_while_maximum_iterations,
(sequential_75_lstm_226_while_placeholder.
*sequential_75_lstm_226_while_placeholder_1.
*sequential_75_lstm_226_while_placeholder_2.
*sequential_75_lstm_226_while_placeholder_3I
Esequential_75_lstm_226_while_sequential_75_lstm_226_strided_slice_1_0?
?sequential_75_lstm_226_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_226_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_75_lstm_226_while_lstm_cell_514_matmul_readvariableop_resource_0:	d?`
Msequential_75_lstm_226_while_lstm_cell_514_matmul_1_readvariableop_resource_0:	2?[
Lsequential_75_lstm_226_while_lstm_cell_514_biasadd_readvariableop_resource_0:	?)
%sequential_75_lstm_226_while_identity+
'sequential_75_lstm_226_while_identity_1+
'sequential_75_lstm_226_while_identity_2+
'sequential_75_lstm_226_while_identity_3+
'sequential_75_lstm_226_while_identity_4+
'sequential_75_lstm_226_while_identity_5G
Csequential_75_lstm_226_while_sequential_75_lstm_226_strided_slice_1?
sequential_75_lstm_226_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_226_tensorarrayunstack_tensorlistfromtensor\
Isequential_75_lstm_226_while_lstm_cell_514_matmul_readvariableop_resource:	d?^
Ksequential_75_lstm_226_while_lstm_cell_514_matmul_1_readvariableop_resource:	2?Y
Jsequential_75_lstm_226_while_lstm_cell_514_biasadd_readvariableop_resource:	???Asequential_75/lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOp?@sequential_75/lstm_226/while/lstm_cell_514/MatMul/ReadVariableOp?Bsequential_75/lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOp?
Nsequential_75/lstm_226/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_75/lstm_226/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_75_lstm_226_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_226_tensorarrayunstack_tensorlistfromtensor_0(sequential_75_lstm_226_while_placeholderWsequential_75/lstm_226/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_75/lstm_226/while/lstm_cell_514/MatMul/ReadVariableOpReadVariableOpKsequential_75_lstm_226_while_lstm_cell_514_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_75/lstm_226/while/lstm_cell_514/MatMulMatMulGsequential_75/lstm_226/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_75/lstm_226/while/lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_75/lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOpMsequential_75_lstm_226_while_lstm_cell_514_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_75/lstm_226/while/lstm_cell_514/MatMul_1MatMul*sequential_75_lstm_226_while_placeholder_2Jsequential_75/lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_75/lstm_226/while/lstm_cell_514/addAddV2;sequential_75/lstm_226/while/lstm_cell_514/MatMul:product:0=sequential_75/lstm_226/while/lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_75/lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOpLsequential_75_lstm_226_while_lstm_cell_514_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_75/lstm_226/while/lstm_cell_514/BiasAddBiasAdd2sequential_75/lstm_226/while/lstm_cell_514/add:z:0Isequential_75/lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_75/lstm_226/while/lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_75/lstm_226/while/lstm_cell_514/splitSplitCsequential_75/lstm_226/while/lstm_cell_514/split/split_dim:output:0;sequential_75/lstm_226/while/lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_75/lstm_226/while/lstm_cell_514/SigmoidSigmoid9sequential_75/lstm_226/while/lstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_75/lstm_226/while/lstm_cell_514/Sigmoid_1Sigmoid9sequential_75/lstm_226/while/lstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_75/lstm_226/while/lstm_cell_514/mulMul8sequential_75/lstm_226/while/lstm_cell_514/Sigmoid_1:y:0*sequential_75_lstm_226_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_75/lstm_226/while/lstm_cell_514/ReluRelu9sequential_75/lstm_226/while/lstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_75/lstm_226/while/lstm_cell_514/mul_1Mul6sequential_75/lstm_226/while/lstm_cell_514/Sigmoid:y:0=sequential_75/lstm_226/while/lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_75/lstm_226/while/lstm_cell_514/add_1AddV22sequential_75/lstm_226/while/lstm_cell_514/mul:z:04sequential_75/lstm_226/while/lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_75/lstm_226/while/lstm_cell_514/Sigmoid_2Sigmoid9sequential_75/lstm_226/while/lstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_75/lstm_226/while/lstm_cell_514/Relu_1Relu4sequential_75/lstm_226/while/lstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_75/lstm_226/while/lstm_cell_514/mul_2Mul8sequential_75/lstm_226/while/lstm_cell_514/Sigmoid_2:y:0?sequential_75/lstm_226/while/lstm_cell_514/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_75/lstm_226/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_75_lstm_226_while_placeholder_1(sequential_75_lstm_226_while_placeholder4sequential_75/lstm_226/while/lstm_cell_514/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_75/lstm_226/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_75/lstm_226/while/addAddV2(sequential_75_lstm_226_while_placeholder+sequential_75/lstm_226/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_75/lstm_226/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_75/lstm_226/while/add_1AddV2Fsequential_75_lstm_226_while_sequential_75_lstm_226_while_loop_counter-sequential_75/lstm_226/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_75/lstm_226/while/IdentityIdentity&sequential_75/lstm_226/while/add_1:z:0"^sequential_75/lstm_226/while/NoOp*
T0*
_output_shapes
: ?
'sequential_75/lstm_226/while/Identity_1IdentityLsequential_75_lstm_226_while_sequential_75_lstm_226_while_maximum_iterations"^sequential_75/lstm_226/while/NoOp*
T0*
_output_shapes
: ?
'sequential_75/lstm_226/while/Identity_2Identity$sequential_75/lstm_226/while/add:z:0"^sequential_75/lstm_226/while/NoOp*
T0*
_output_shapes
: ?
'sequential_75/lstm_226/while/Identity_3IdentityQsequential_75/lstm_226/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_75/lstm_226/while/NoOp*
T0*
_output_shapes
: ?
'sequential_75/lstm_226/while/Identity_4Identity4sequential_75/lstm_226/while/lstm_cell_514/mul_2:z:0"^sequential_75/lstm_226/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_75/lstm_226/while/Identity_5Identity4sequential_75/lstm_226/while/lstm_cell_514/add_1:z:0"^sequential_75/lstm_226/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_75/lstm_226/while/NoOpNoOpB^sequential_75/lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOpA^sequential_75/lstm_226/while/lstm_cell_514/MatMul/ReadVariableOpC^sequential_75/lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_75_lstm_226_while_identity.sequential_75/lstm_226/while/Identity:output:0"[
'sequential_75_lstm_226_while_identity_10sequential_75/lstm_226/while/Identity_1:output:0"[
'sequential_75_lstm_226_while_identity_20sequential_75/lstm_226/while/Identity_2:output:0"[
'sequential_75_lstm_226_while_identity_30sequential_75/lstm_226/while/Identity_3:output:0"[
'sequential_75_lstm_226_while_identity_40sequential_75/lstm_226/while/Identity_4:output:0"[
'sequential_75_lstm_226_while_identity_50sequential_75/lstm_226/while/Identity_5:output:0"?
Jsequential_75_lstm_226_while_lstm_cell_514_biasadd_readvariableop_resourceLsequential_75_lstm_226_while_lstm_cell_514_biasadd_readvariableop_resource_0"?
Ksequential_75_lstm_226_while_lstm_cell_514_matmul_1_readvariableop_resourceMsequential_75_lstm_226_while_lstm_cell_514_matmul_1_readvariableop_resource_0"?
Isequential_75_lstm_226_while_lstm_cell_514_matmul_readvariableop_resourceKsequential_75_lstm_226_while_lstm_cell_514_matmul_readvariableop_resource_0"?
Csequential_75_lstm_226_while_sequential_75_lstm_226_strided_slice_1Esequential_75_lstm_226_while_sequential_75_lstm_226_strided_slice_1_0"?
sequential_75_lstm_226_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_226_tensorarrayunstack_tensorlistfromtensor?sequential_75_lstm_226_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_226_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_75/lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOpAsequential_75/lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOp2?
@sequential_75/lstm_226/while/lstm_cell_514/MatMul/ReadVariableOp@sequential_75/lstm_226/while/lstm_cell_514/MatMul/ReadVariableOp2?
Bsequential_75/lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOpBsequential_75/lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?S
?
)sequential_75_lstm_227_while_body_3114639J
Fsequential_75_lstm_227_while_sequential_75_lstm_227_while_loop_counterP
Lsequential_75_lstm_227_while_sequential_75_lstm_227_while_maximum_iterations,
(sequential_75_lstm_227_while_placeholder.
*sequential_75_lstm_227_while_placeholder_1.
*sequential_75_lstm_227_while_placeholder_2.
*sequential_75_lstm_227_while_placeholder_3I
Esequential_75_lstm_227_while_sequential_75_lstm_227_strided_slice_1_0?
?sequential_75_lstm_227_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_227_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_75_lstm_227_while_lstm_cell_515_matmul_readvariableop_resource_0:2(_
Msequential_75_lstm_227_while_lstm_cell_515_matmul_1_readvariableop_resource_0:
(Z
Lsequential_75_lstm_227_while_lstm_cell_515_biasadd_readvariableop_resource_0:()
%sequential_75_lstm_227_while_identity+
'sequential_75_lstm_227_while_identity_1+
'sequential_75_lstm_227_while_identity_2+
'sequential_75_lstm_227_while_identity_3+
'sequential_75_lstm_227_while_identity_4+
'sequential_75_lstm_227_while_identity_5G
Csequential_75_lstm_227_while_sequential_75_lstm_227_strided_slice_1?
sequential_75_lstm_227_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_227_tensorarrayunstack_tensorlistfromtensor[
Isequential_75_lstm_227_while_lstm_cell_515_matmul_readvariableop_resource:2(]
Ksequential_75_lstm_227_while_lstm_cell_515_matmul_1_readvariableop_resource:
(X
Jsequential_75_lstm_227_while_lstm_cell_515_biasadd_readvariableop_resource:(??Asequential_75/lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOp?@sequential_75/lstm_227/while/lstm_cell_515/MatMul/ReadVariableOp?Bsequential_75/lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOp?
Nsequential_75/lstm_227/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_75/lstm_227/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_75_lstm_227_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_227_tensorarrayunstack_tensorlistfromtensor_0(sequential_75_lstm_227_while_placeholderWsequential_75/lstm_227/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_75/lstm_227/while/lstm_cell_515/MatMul/ReadVariableOpReadVariableOpKsequential_75_lstm_227_while_lstm_cell_515_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_75/lstm_227/while/lstm_cell_515/MatMulMatMulGsequential_75/lstm_227/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_75/lstm_227/while/lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_75/lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOpMsequential_75_lstm_227_while_lstm_cell_515_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_75/lstm_227/while/lstm_cell_515/MatMul_1MatMul*sequential_75_lstm_227_while_placeholder_2Jsequential_75/lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_75/lstm_227/while/lstm_cell_515/addAddV2;sequential_75/lstm_227/while/lstm_cell_515/MatMul:product:0=sequential_75/lstm_227/while/lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_75/lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOpLsequential_75_lstm_227_while_lstm_cell_515_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_75/lstm_227/while/lstm_cell_515/BiasAddBiasAdd2sequential_75/lstm_227/while/lstm_cell_515/add:z:0Isequential_75/lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_75/lstm_227/while/lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_75/lstm_227/while/lstm_cell_515/splitSplitCsequential_75/lstm_227/while/lstm_cell_515/split/split_dim:output:0;sequential_75/lstm_227/while/lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_75/lstm_227/while/lstm_cell_515/SigmoidSigmoid9sequential_75/lstm_227/while/lstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_75/lstm_227/while/lstm_cell_515/Sigmoid_1Sigmoid9sequential_75/lstm_227/while/lstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_75/lstm_227/while/lstm_cell_515/mulMul8sequential_75/lstm_227/while/lstm_cell_515/Sigmoid_1:y:0*sequential_75_lstm_227_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_75/lstm_227/while/lstm_cell_515/ReluRelu9sequential_75/lstm_227/while/lstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_75/lstm_227/while/lstm_cell_515/mul_1Mul6sequential_75/lstm_227/while/lstm_cell_515/Sigmoid:y:0=sequential_75/lstm_227/while/lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_75/lstm_227/while/lstm_cell_515/add_1AddV22sequential_75/lstm_227/while/lstm_cell_515/mul:z:04sequential_75/lstm_227/while/lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_75/lstm_227/while/lstm_cell_515/Sigmoid_2Sigmoid9sequential_75/lstm_227/while/lstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_75/lstm_227/while/lstm_cell_515/Relu_1Relu4sequential_75/lstm_227/while/lstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_75/lstm_227/while/lstm_cell_515/mul_2Mul8sequential_75/lstm_227/while/lstm_cell_515/Sigmoid_2:y:0?sequential_75/lstm_227/while/lstm_cell_515/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_75/lstm_227/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_75_lstm_227_while_placeholder_1(sequential_75_lstm_227_while_placeholder4sequential_75/lstm_227/while/lstm_cell_515/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_75/lstm_227/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_75/lstm_227/while/addAddV2(sequential_75_lstm_227_while_placeholder+sequential_75/lstm_227/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_75/lstm_227/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_75/lstm_227/while/add_1AddV2Fsequential_75_lstm_227_while_sequential_75_lstm_227_while_loop_counter-sequential_75/lstm_227/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_75/lstm_227/while/IdentityIdentity&sequential_75/lstm_227/while/add_1:z:0"^sequential_75/lstm_227/while/NoOp*
T0*
_output_shapes
: ?
'sequential_75/lstm_227/while/Identity_1IdentityLsequential_75_lstm_227_while_sequential_75_lstm_227_while_maximum_iterations"^sequential_75/lstm_227/while/NoOp*
T0*
_output_shapes
: ?
'sequential_75/lstm_227/while/Identity_2Identity$sequential_75/lstm_227/while/add:z:0"^sequential_75/lstm_227/while/NoOp*
T0*
_output_shapes
: ?
'sequential_75/lstm_227/while/Identity_3IdentityQsequential_75/lstm_227/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_75/lstm_227/while/NoOp*
T0*
_output_shapes
: ?
'sequential_75/lstm_227/while/Identity_4Identity4sequential_75/lstm_227/while/lstm_cell_515/mul_2:z:0"^sequential_75/lstm_227/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_75/lstm_227/while/Identity_5Identity4sequential_75/lstm_227/while/lstm_cell_515/add_1:z:0"^sequential_75/lstm_227/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_75/lstm_227/while/NoOpNoOpB^sequential_75/lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOpA^sequential_75/lstm_227/while/lstm_cell_515/MatMul/ReadVariableOpC^sequential_75/lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_75_lstm_227_while_identity.sequential_75/lstm_227/while/Identity:output:0"[
'sequential_75_lstm_227_while_identity_10sequential_75/lstm_227/while/Identity_1:output:0"[
'sequential_75_lstm_227_while_identity_20sequential_75/lstm_227/while/Identity_2:output:0"[
'sequential_75_lstm_227_while_identity_30sequential_75/lstm_227/while/Identity_3:output:0"[
'sequential_75_lstm_227_while_identity_40sequential_75/lstm_227/while/Identity_4:output:0"[
'sequential_75_lstm_227_while_identity_50sequential_75/lstm_227/while/Identity_5:output:0"?
Jsequential_75_lstm_227_while_lstm_cell_515_biasadd_readvariableop_resourceLsequential_75_lstm_227_while_lstm_cell_515_biasadd_readvariableop_resource_0"?
Ksequential_75_lstm_227_while_lstm_cell_515_matmul_1_readvariableop_resourceMsequential_75_lstm_227_while_lstm_cell_515_matmul_1_readvariableop_resource_0"?
Isequential_75_lstm_227_while_lstm_cell_515_matmul_readvariableop_resourceKsequential_75_lstm_227_while_lstm_cell_515_matmul_readvariableop_resource_0"?
Csequential_75_lstm_227_while_sequential_75_lstm_227_strided_slice_1Esequential_75_lstm_227_while_sequential_75_lstm_227_strided_slice_1_0"?
sequential_75_lstm_227_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_227_tensorarrayunstack_tensorlistfromtensor?sequential_75_lstm_227_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_227_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_75/lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOpAsequential_75/lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOp2?
@sequential_75/lstm_227/while/lstm_cell_515/MatMul/ReadVariableOp@sequential_75/lstm_227/while/lstm_cell_515/MatMul/ReadVariableOp2?
Bsequential_75/lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOpBsequential_75/lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?K
?
E__inference_lstm_225_layer_call_and_return_conditional_losses_3118084
inputs_0?
,lstm_cell_513_matmul_readvariableop_resource:	?A
.lstm_cell_513_matmul_1_readvariableop_resource:	d?<
-lstm_cell_513_biasadd_readvariableop_resource:	?
identity??$lstm_cell_513/BiasAdd/ReadVariableOp?#lstm_cell_513/MatMul/ReadVariableOp?%lstm_cell_513/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_513/MatMul/ReadVariableOpReadVariableOp,lstm_cell_513_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_513/MatMulMatMulstrided_slice_2:output:0+lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_513_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_513/MatMul_1MatMulzeros:output:0-lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_513/addAddV2lstm_cell_513/MatMul:product:0 lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_513_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_513/BiasAddBiasAddlstm_cell_513/add:z:0,lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_513/splitSplit&lstm_cell_513/split/split_dim:output:0lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_513/SigmoidSigmoidlstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_513/Sigmoid_1Sigmoidlstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_513/mulMullstm_cell_513/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_513/ReluRelulstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_513/mul_1Mullstm_cell_513/Sigmoid:y:0 lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_513/add_1AddV2lstm_cell_513/mul:z:0lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_513/Sigmoid_2Sigmoidlstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_513/Relu_1Relulstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_513/mul_2Mullstm_cell_513/Sigmoid_2:y:0"lstm_cell_513/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_513_matmul_readvariableop_resource.lstm_cell_513_matmul_1_readvariableop_resource-lstm_cell_513_biasadd_readvariableop_resource*
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
while_body_3118000*
condR
while_cond_3117999*K
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
NoOpNoOp%^lstm_cell_513/BiasAdd/ReadVariableOp$^lstm_cell_513/MatMul/ReadVariableOp&^lstm_cell_513/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_513/BiasAdd/ReadVariableOp$lstm_cell_513/BiasAdd/ReadVariableOp2J
#lstm_cell_513/MatMul/ReadVariableOp#lstm_cell_513/MatMul/ReadVariableOp2N
%lstm_cell_513/MatMul_1/ReadVariableOp%lstm_cell_513/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
/__inference_sequential_75_layer_call_fn_3117016

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
J__inference_sequential_75_layer_call_and_return_conditional_losses_3116253o
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
?
?
*__inference_lstm_226_layer_call_fn_3118546

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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3116078s
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
?
*__inference_lstm_227_layer_call_fn_3119151
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
E__inference_lstm_227_layer_call_and_return_conditional_losses_3115770o
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
?
while_body_3118616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_514_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_514_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_514_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_514_matmul_readvariableop_resource:	d?G
4while_lstm_cell_514_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_514_biasadd_readvariableop_resource:	???*while/lstm_cell_514/BiasAdd/ReadVariableOp?)while/lstm_cell_514/MatMul/ReadVariableOp?+while/lstm_cell_514/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_514/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_514_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_514/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_514_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_514/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_514/addAddV2$while/lstm_cell_514/MatMul:product:0&while/lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_514_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_514/BiasAddBiasAddwhile/lstm_cell_514/add:z:02while/lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_514/splitSplit,while/lstm_cell_514/split/split_dim:output:0$while/lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_514/SigmoidSigmoid"while/lstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_514/Sigmoid_1Sigmoid"while/lstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mulMul!while/lstm_cell_514/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_514/ReluRelu"while/lstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mul_1Mulwhile/lstm_cell_514/Sigmoid:y:0&while/lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/add_1AddV2while/lstm_cell_514/mul:z:0while/lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_514/Sigmoid_2Sigmoid"while/lstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_514/Relu_1Reluwhile/lstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mul_2Mul!while/lstm_cell_514/Sigmoid_2:y:0(while/lstm_cell_514/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_514/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_514/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_514/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_514/BiasAdd/ReadVariableOp*^while/lstm_cell_514/MatMul/ReadVariableOp,^while/lstm_cell_514/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_514_biasadd_readvariableop_resource5while_lstm_cell_514_biasadd_readvariableop_resource_0"n
4while_lstm_cell_514_matmul_1_readvariableop_resource6while_lstm_cell_514_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_514_matmul_readvariableop_resource4while_lstm_cell_514_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_514/BiasAdd/ReadVariableOp*while/lstm_cell_514/BiasAdd/ReadVariableOp2V
)while/lstm_cell_514/MatMul/ReadVariableOp)while/lstm_cell_514/MatMul/ReadVariableOp2Z
+while/lstm_cell_514/MatMul_1/ReadVariableOp+while/lstm_cell_514/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_515_layer_call_and_return_conditional_losses_3115642

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

?
%__inference_signature_wrapper_3116989
lstm_225_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_225_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3114729o
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
_user_specified_namelstm_225_input
?
?
while_cond_3115700
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3115700___redundant_placeholder05
1while_while_cond_3115700___redundant_placeholder15
1while_while_cond_3115700___redundant_placeholder25
1while_while_cond_3115700___redundant_placeholder3
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

?
lstm_227_while_cond_3117379.
*lstm_227_while_lstm_227_while_loop_counter4
0lstm_227_while_lstm_227_while_maximum_iterations
lstm_227_while_placeholder 
lstm_227_while_placeholder_1 
lstm_227_while_placeholder_2 
lstm_227_while_placeholder_30
,lstm_227_while_less_lstm_227_strided_slice_1G
Clstm_227_while_lstm_227_while_cond_3117379___redundant_placeholder0G
Clstm_227_while_lstm_227_while_cond_3117379___redundant_placeholder1G
Clstm_227_while_lstm_227_while_cond_3117379___redundant_placeholder2G
Clstm_227_while_lstm_227_while_cond_3117379___redundant_placeholder3
lstm_227_while_identity
?
lstm_227/while/LessLesslstm_227_while_placeholder,lstm_227_while_less_lstm_227_strided_slice_1*
T0*
_output_shapes
: ]
lstm_227/while/IdentityIdentitylstm_227/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_227_while_identity lstm_227/while/Identity:output:0*(
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
*__inference_lstm_225_layer_call_fn_3117930

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
E__inference_lstm_225_layer_call_and_return_conditional_losses_3115928s
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
*__inference_lstm_227_layer_call_fn_3119173

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
E__inference_lstm_227_layer_call_and_return_conditional_losses_3116444o
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
??
?
"__inference__wrapped_model_3114729
lstm_225_inputV
Csequential_75_lstm_225_lstm_cell_513_matmul_readvariableop_resource:	?X
Esequential_75_lstm_225_lstm_cell_513_matmul_1_readvariableop_resource:	d?S
Dsequential_75_lstm_225_lstm_cell_513_biasadd_readvariableop_resource:	?V
Csequential_75_lstm_226_lstm_cell_514_matmul_readvariableop_resource:	d?X
Esequential_75_lstm_226_lstm_cell_514_matmul_1_readvariableop_resource:	2?S
Dsequential_75_lstm_226_lstm_cell_514_biasadd_readvariableop_resource:	?U
Csequential_75_lstm_227_lstm_cell_515_matmul_readvariableop_resource:2(W
Esequential_75_lstm_227_lstm_cell_515_matmul_1_readvariableop_resource:
(R
Dsequential_75_lstm_227_lstm_cell_515_biasadd_readvariableop_resource:(G
5sequential_75_dense_75_matmul_readvariableop_resource:
D
6sequential_75_dense_75_biasadd_readvariableop_resource:
identity??-sequential_75/dense_75/BiasAdd/ReadVariableOp?,sequential_75/dense_75/MatMul/ReadVariableOp?;sequential_75/lstm_225/lstm_cell_513/BiasAdd/ReadVariableOp?:sequential_75/lstm_225/lstm_cell_513/MatMul/ReadVariableOp?<sequential_75/lstm_225/lstm_cell_513/MatMul_1/ReadVariableOp?sequential_75/lstm_225/while?;sequential_75/lstm_226/lstm_cell_514/BiasAdd/ReadVariableOp?:sequential_75/lstm_226/lstm_cell_514/MatMul/ReadVariableOp?<sequential_75/lstm_226/lstm_cell_514/MatMul_1/ReadVariableOp?sequential_75/lstm_226/while?;sequential_75/lstm_227/lstm_cell_515/BiasAdd/ReadVariableOp?:sequential_75/lstm_227/lstm_cell_515/MatMul/ReadVariableOp?<sequential_75/lstm_227/lstm_cell_515/MatMul_1/ReadVariableOp?sequential_75/lstm_227/whileZ
sequential_75/lstm_225/ShapeShapelstm_225_input*
T0*
_output_shapes
:t
*sequential_75/lstm_225/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_75/lstm_225/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_75/lstm_225/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_75/lstm_225/strided_sliceStridedSlice%sequential_75/lstm_225/Shape:output:03sequential_75/lstm_225/strided_slice/stack:output:05sequential_75/lstm_225/strided_slice/stack_1:output:05sequential_75/lstm_225/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_75/lstm_225/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_75/lstm_225/zeros/packedPack-sequential_75/lstm_225/strided_slice:output:0.sequential_75/lstm_225/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_75/lstm_225/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_75/lstm_225/zerosFill,sequential_75/lstm_225/zeros/packed:output:0+sequential_75/lstm_225/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_75/lstm_225/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_75/lstm_225/zeros_1/packedPack-sequential_75/lstm_225/strided_slice:output:00sequential_75/lstm_225/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_75/lstm_225/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_75/lstm_225/zeros_1Fill.sequential_75/lstm_225/zeros_1/packed:output:0-sequential_75/lstm_225/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_75/lstm_225/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_75/lstm_225/transpose	Transposelstm_225_input.sequential_75/lstm_225/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_75/lstm_225/Shape_1Shape$sequential_75/lstm_225/transpose:y:0*
T0*
_output_shapes
:v
,sequential_75/lstm_225/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_75/lstm_225/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_75/lstm_225/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_75/lstm_225/strided_slice_1StridedSlice'sequential_75/lstm_225/Shape_1:output:05sequential_75/lstm_225/strided_slice_1/stack:output:07sequential_75/lstm_225/strided_slice_1/stack_1:output:07sequential_75/lstm_225/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_75/lstm_225/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_75/lstm_225/TensorArrayV2TensorListReserve;sequential_75/lstm_225/TensorArrayV2/element_shape:output:0/sequential_75/lstm_225/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_75/lstm_225/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_75/lstm_225/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_75/lstm_225/transpose:y:0Usequential_75/lstm_225/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_75/lstm_225/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_75/lstm_225/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_75/lstm_225/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_75/lstm_225/strided_slice_2StridedSlice$sequential_75/lstm_225/transpose:y:05sequential_75/lstm_225/strided_slice_2/stack:output:07sequential_75/lstm_225/strided_slice_2/stack_1:output:07sequential_75/lstm_225/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_75/lstm_225/lstm_cell_513/MatMul/ReadVariableOpReadVariableOpCsequential_75_lstm_225_lstm_cell_513_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_75/lstm_225/lstm_cell_513/MatMulMatMul/sequential_75/lstm_225/strided_slice_2:output:0Bsequential_75/lstm_225/lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_75/lstm_225/lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOpEsequential_75_lstm_225_lstm_cell_513_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_75/lstm_225/lstm_cell_513/MatMul_1MatMul%sequential_75/lstm_225/zeros:output:0Dsequential_75/lstm_225/lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_75/lstm_225/lstm_cell_513/addAddV25sequential_75/lstm_225/lstm_cell_513/MatMul:product:07sequential_75/lstm_225/lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_75/lstm_225/lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOpDsequential_75_lstm_225_lstm_cell_513_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_75/lstm_225/lstm_cell_513/BiasAddBiasAdd,sequential_75/lstm_225/lstm_cell_513/add:z:0Csequential_75/lstm_225/lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_75/lstm_225/lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_75/lstm_225/lstm_cell_513/splitSplit=sequential_75/lstm_225/lstm_cell_513/split/split_dim:output:05sequential_75/lstm_225/lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_75/lstm_225/lstm_cell_513/SigmoidSigmoid3sequential_75/lstm_225/lstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_75/lstm_225/lstm_cell_513/Sigmoid_1Sigmoid3sequential_75/lstm_225/lstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_75/lstm_225/lstm_cell_513/mulMul2sequential_75/lstm_225/lstm_cell_513/Sigmoid_1:y:0'sequential_75/lstm_225/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_75/lstm_225/lstm_cell_513/ReluRelu3sequential_75/lstm_225/lstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_75/lstm_225/lstm_cell_513/mul_1Mul0sequential_75/lstm_225/lstm_cell_513/Sigmoid:y:07sequential_75/lstm_225/lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_75/lstm_225/lstm_cell_513/add_1AddV2,sequential_75/lstm_225/lstm_cell_513/mul:z:0.sequential_75/lstm_225/lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_75/lstm_225/lstm_cell_513/Sigmoid_2Sigmoid3sequential_75/lstm_225/lstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_75/lstm_225/lstm_cell_513/Relu_1Relu.sequential_75/lstm_225/lstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_75/lstm_225/lstm_cell_513/mul_2Mul2sequential_75/lstm_225/lstm_cell_513/Sigmoid_2:y:09sequential_75/lstm_225/lstm_cell_513/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_75/lstm_225/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_75/lstm_225/TensorArrayV2_1TensorListReserve=sequential_75/lstm_225/TensorArrayV2_1/element_shape:output:0/sequential_75/lstm_225/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_75/lstm_225/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_75/lstm_225/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_75/lstm_225/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_75/lstm_225/whileWhile2sequential_75/lstm_225/while/loop_counter:output:08sequential_75/lstm_225/while/maximum_iterations:output:0$sequential_75/lstm_225/time:output:0/sequential_75/lstm_225/TensorArrayV2_1:handle:0%sequential_75/lstm_225/zeros:output:0'sequential_75/lstm_225/zeros_1:output:0/sequential_75/lstm_225/strided_slice_1:output:0Nsequential_75/lstm_225/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_75_lstm_225_lstm_cell_513_matmul_readvariableop_resourceEsequential_75_lstm_225_lstm_cell_513_matmul_1_readvariableop_resourceDsequential_75_lstm_225_lstm_cell_513_biasadd_readvariableop_resource*
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
)sequential_75_lstm_225_while_body_3114361*5
cond-R+
)sequential_75_lstm_225_while_cond_3114360*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_75/lstm_225/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_75/lstm_225/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_75/lstm_225/while:output:3Psequential_75/lstm_225/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_75/lstm_225/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_75/lstm_225/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_75/lstm_225/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_75/lstm_225/strided_slice_3StridedSliceBsequential_75/lstm_225/TensorArrayV2Stack/TensorListStack:tensor:05sequential_75/lstm_225/strided_slice_3/stack:output:07sequential_75/lstm_225/strided_slice_3/stack_1:output:07sequential_75/lstm_225/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_75/lstm_225/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_75/lstm_225/transpose_1	TransposeBsequential_75/lstm_225/TensorArrayV2Stack/TensorListStack:tensor:00sequential_75/lstm_225/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_75/lstm_225/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_75/lstm_226/ShapeShape&sequential_75/lstm_225/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_75/lstm_226/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_75/lstm_226/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_75/lstm_226/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_75/lstm_226/strided_sliceStridedSlice%sequential_75/lstm_226/Shape:output:03sequential_75/lstm_226/strided_slice/stack:output:05sequential_75/lstm_226/strided_slice/stack_1:output:05sequential_75/lstm_226/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_75/lstm_226/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_75/lstm_226/zeros/packedPack-sequential_75/lstm_226/strided_slice:output:0.sequential_75/lstm_226/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_75/lstm_226/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_75/lstm_226/zerosFill,sequential_75/lstm_226/zeros/packed:output:0+sequential_75/lstm_226/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_75/lstm_226/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_75/lstm_226/zeros_1/packedPack-sequential_75/lstm_226/strided_slice:output:00sequential_75/lstm_226/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_75/lstm_226/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_75/lstm_226/zeros_1Fill.sequential_75/lstm_226/zeros_1/packed:output:0-sequential_75/lstm_226/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_75/lstm_226/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_75/lstm_226/transpose	Transpose&sequential_75/lstm_225/transpose_1:y:0.sequential_75/lstm_226/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_75/lstm_226/Shape_1Shape$sequential_75/lstm_226/transpose:y:0*
T0*
_output_shapes
:v
,sequential_75/lstm_226/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_75/lstm_226/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_75/lstm_226/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_75/lstm_226/strided_slice_1StridedSlice'sequential_75/lstm_226/Shape_1:output:05sequential_75/lstm_226/strided_slice_1/stack:output:07sequential_75/lstm_226/strided_slice_1/stack_1:output:07sequential_75/lstm_226/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_75/lstm_226/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_75/lstm_226/TensorArrayV2TensorListReserve;sequential_75/lstm_226/TensorArrayV2/element_shape:output:0/sequential_75/lstm_226/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_75/lstm_226/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_75/lstm_226/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_75/lstm_226/transpose:y:0Usequential_75/lstm_226/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_75/lstm_226/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_75/lstm_226/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_75/lstm_226/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_75/lstm_226/strided_slice_2StridedSlice$sequential_75/lstm_226/transpose:y:05sequential_75/lstm_226/strided_slice_2/stack:output:07sequential_75/lstm_226/strided_slice_2/stack_1:output:07sequential_75/lstm_226/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_75/lstm_226/lstm_cell_514/MatMul/ReadVariableOpReadVariableOpCsequential_75_lstm_226_lstm_cell_514_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_75/lstm_226/lstm_cell_514/MatMulMatMul/sequential_75/lstm_226/strided_slice_2:output:0Bsequential_75/lstm_226/lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_75/lstm_226/lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOpEsequential_75_lstm_226_lstm_cell_514_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_75/lstm_226/lstm_cell_514/MatMul_1MatMul%sequential_75/lstm_226/zeros:output:0Dsequential_75/lstm_226/lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_75/lstm_226/lstm_cell_514/addAddV25sequential_75/lstm_226/lstm_cell_514/MatMul:product:07sequential_75/lstm_226/lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_75/lstm_226/lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOpDsequential_75_lstm_226_lstm_cell_514_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_75/lstm_226/lstm_cell_514/BiasAddBiasAdd,sequential_75/lstm_226/lstm_cell_514/add:z:0Csequential_75/lstm_226/lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_75/lstm_226/lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_75/lstm_226/lstm_cell_514/splitSplit=sequential_75/lstm_226/lstm_cell_514/split/split_dim:output:05sequential_75/lstm_226/lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_75/lstm_226/lstm_cell_514/SigmoidSigmoid3sequential_75/lstm_226/lstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_75/lstm_226/lstm_cell_514/Sigmoid_1Sigmoid3sequential_75/lstm_226/lstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_75/lstm_226/lstm_cell_514/mulMul2sequential_75/lstm_226/lstm_cell_514/Sigmoid_1:y:0'sequential_75/lstm_226/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_75/lstm_226/lstm_cell_514/ReluRelu3sequential_75/lstm_226/lstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_75/lstm_226/lstm_cell_514/mul_1Mul0sequential_75/lstm_226/lstm_cell_514/Sigmoid:y:07sequential_75/lstm_226/lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_75/lstm_226/lstm_cell_514/add_1AddV2,sequential_75/lstm_226/lstm_cell_514/mul:z:0.sequential_75/lstm_226/lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_75/lstm_226/lstm_cell_514/Sigmoid_2Sigmoid3sequential_75/lstm_226/lstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_75/lstm_226/lstm_cell_514/Relu_1Relu.sequential_75/lstm_226/lstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_75/lstm_226/lstm_cell_514/mul_2Mul2sequential_75/lstm_226/lstm_cell_514/Sigmoid_2:y:09sequential_75/lstm_226/lstm_cell_514/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_75/lstm_226/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_75/lstm_226/TensorArrayV2_1TensorListReserve=sequential_75/lstm_226/TensorArrayV2_1/element_shape:output:0/sequential_75/lstm_226/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_75/lstm_226/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_75/lstm_226/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_75/lstm_226/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_75/lstm_226/whileWhile2sequential_75/lstm_226/while/loop_counter:output:08sequential_75/lstm_226/while/maximum_iterations:output:0$sequential_75/lstm_226/time:output:0/sequential_75/lstm_226/TensorArrayV2_1:handle:0%sequential_75/lstm_226/zeros:output:0'sequential_75/lstm_226/zeros_1:output:0/sequential_75/lstm_226/strided_slice_1:output:0Nsequential_75/lstm_226/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_75_lstm_226_lstm_cell_514_matmul_readvariableop_resourceEsequential_75_lstm_226_lstm_cell_514_matmul_1_readvariableop_resourceDsequential_75_lstm_226_lstm_cell_514_biasadd_readvariableop_resource*
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
)sequential_75_lstm_226_while_body_3114500*5
cond-R+
)sequential_75_lstm_226_while_cond_3114499*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_75/lstm_226/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_75/lstm_226/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_75/lstm_226/while:output:3Psequential_75/lstm_226/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_75/lstm_226/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_75/lstm_226/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_75/lstm_226/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_75/lstm_226/strided_slice_3StridedSliceBsequential_75/lstm_226/TensorArrayV2Stack/TensorListStack:tensor:05sequential_75/lstm_226/strided_slice_3/stack:output:07sequential_75/lstm_226/strided_slice_3/stack_1:output:07sequential_75/lstm_226/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_75/lstm_226/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_75/lstm_226/transpose_1	TransposeBsequential_75/lstm_226/TensorArrayV2Stack/TensorListStack:tensor:00sequential_75/lstm_226/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_75/lstm_226/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_75/lstm_227/ShapeShape&sequential_75/lstm_226/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_75/lstm_227/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_75/lstm_227/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_75/lstm_227/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_75/lstm_227/strided_sliceStridedSlice%sequential_75/lstm_227/Shape:output:03sequential_75/lstm_227/strided_slice/stack:output:05sequential_75/lstm_227/strided_slice/stack_1:output:05sequential_75/lstm_227/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_75/lstm_227/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_75/lstm_227/zeros/packedPack-sequential_75/lstm_227/strided_slice:output:0.sequential_75/lstm_227/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_75/lstm_227/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_75/lstm_227/zerosFill,sequential_75/lstm_227/zeros/packed:output:0+sequential_75/lstm_227/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_75/lstm_227/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_75/lstm_227/zeros_1/packedPack-sequential_75/lstm_227/strided_slice:output:00sequential_75/lstm_227/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_75/lstm_227/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_75/lstm_227/zeros_1Fill.sequential_75/lstm_227/zeros_1/packed:output:0-sequential_75/lstm_227/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_75/lstm_227/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_75/lstm_227/transpose	Transpose&sequential_75/lstm_226/transpose_1:y:0.sequential_75/lstm_227/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_75/lstm_227/Shape_1Shape$sequential_75/lstm_227/transpose:y:0*
T0*
_output_shapes
:v
,sequential_75/lstm_227/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_75/lstm_227/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_75/lstm_227/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_75/lstm_227/strided_slice_1StridedSlice'sequential_75/lstm_227/Shape_1:output:05sequential_75/lstm_227/strided_slice_1/stack:output:07sequential_75/lstm_227/strided_slice_1/stack_1:output:07sequential_75/lstm_227/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_75/lstm_227/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_75/lstm_227/TensorArrayV2TensorListReserve;sequential_75/lstm_227/TensorArrayV2/element_shape:output:0/sequential_75/lstm_227/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_75/lstm_227/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_75/lstm_227/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_75/lstm_227/transpose:y:0Usequential_75/lstm_227/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_75/lstm_227/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_75/lstm_227/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_75/lstm_227/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_75/lstm_227/strided_slice_2StridedSlice$sequential_75/lstm_227/transpose:y:05sequential_75/lstm_227/strided_slice_2/stack:output:07sequential_75/lstm_227/strided_slice_2/stack_1:output:07sequential_75/lstm_227/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_75/lstm_227/lstm_cell_515/MatMul/ReadVariableOpReadVariableOpCsequential_75_lstm_227_lstm_cell_515_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_75/lstm_227/lstm_cell_515/MatMulMatMul/sequential_75/lstm_227/strided_slice_2:output:0Bsequential_75/lstm_227/lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_75/lstm_227/lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOpEsequential_75_lstm_227_lstm_cell_515_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_75/lstm_227/lstm_cell_515/MatMul_1MatMul%sequential_75/lstm_227/zeros:output:0Dsequential_75/lstm_227/lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_75/lstm_227/lstm_cell_515/addAddV25sequential_75/lstm_227/lstm_cell_515/MatMul:product:07sequential_75/lstm_227/lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_75/lstm_227/lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOpDsequential_75_lstm_227_lstm_cell_515_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_75/lstm_227/lstm_cell_515/BiasAddBiasAdd,sequential_75/lstm_227/lstm_cell_515/add:z:0Csequential_75/lstm_227/lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_75/lstm_227/lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_75/lstm_227/lstm_cell_515/splitSplit=sequential_75/lstm_227/lstm_cell_515/split/split_dim:output:05sequential_75/lstm_227/lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_75/lstm_227/lstm_cell_515/SigmoidSigmoid3sequential_75/lstm_227/lstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_75/lstm_227/lstm_cell_515/Sigmoid_1Sigmoid3sequential_75/lstm_227/lstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_75/lstm_227/lstm_cell_515/mulMul2sequential_75/lstm_227/lstm_cell_515/Sigmoid_1:y:0'sequential_75/lstm_227/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_75/lstm_227/lstm_cell_515/ReluRelu3sequential_75/lstm_227/lstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_75/lstm_227/lstm_cell_515/mul_1Mul0sequential_75/lstm_227/lstm_cell_515/Sigmoid:y:07sequential_75/lstm_227/lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_75/lstm_227/lstm_cell_515/add_1AddV2,sequential_75/lstm_227/lstm_cell_515/mul:z:0.sequential_75/lstm_227/lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_75/lstm_227/lstm_cell_515/Sigmoid_2Sigmoid3sequential_75/lstm_227/lstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_75/lstm_227/lstm_cell_515/Relu_1Relu.sequential_75/lstm_227/lstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_75/lstm_227/lstm_cell_515/mul_2Mul2sequential_75/lstm_227/lstm_cell_515/Sigmoid_2:y:09sequential_75/lstm_227/lstm_cell_515/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_75/lstm_227/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_75/lstm_227/TensorArrayV2_1TensorListReserve=sequential_75/lstm_227/TensorArrayV2_1/element_shape:output:0/sequential_75/lstm_227/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_75/lstm_227/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_75/lstm_227/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_75/lstm_227/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_75/lstm_227/whileWhile2sequential_75/lstm_227/while/loop_counter:output:08sequential_75/lstm_227/while/maximum_iterations:output:0$sequential_75/lstm_227/time:output:0/sequential_75/lstm_227/TensorArrayV2_1:handle:0%sequential_75/lstm_227/zeros:output:0'sequential_75/lstm_227/zeros_1:output:0/sequential_75/lstm_227/strided_slice_1:output:0Nsequential_75/lstm_227/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_75_lstm_227_lstm_cell_515_matmul_readvariableop_resourceEsequential_75_lstm_227_lstm_cell_515_matmul_1_readvariableop_resourceDsequential_75_lstm_227_lstm_cell_515_biasadd_readvariableop_resource*
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
)sequential_75_lstm_227_while_body_3114639*5
cond-R+
)sequential_75_lstm_227_while_cond_3114638*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_75/lstm_227/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_75/lstm_227/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_75/lstm_227/while:output:3Psequential_75/lstm_227/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_75/lstm_227/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_75/lstm_227/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_75/lstm_227/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_75/lstm_227/strided_slice_3StridedSliceBsequential_75/lstm_227/TensorArrayV2Stack/TensorListStack:tensor:05sequential_75/lstm_227/strided_slice_3/stack:output:07sequential_75/lstm_227/strided_slice_3/stack_1:output:07sequential_75/lstm_227/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_75/lstm_227/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_75/lstm_227/transpose_1	TransposeBsequential_75/lstm_227/TensorArrayV2Stack/TensorListStack:tensor:00sequential_75/lstm_227/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_75/lstm_227/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_75/dense_75/MatMul/ReadVariableOpReadVariableOp5sequential_75_dense_75_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_75/dense_75/MatMulMatMul/sequential_75/lstm_227/strided_slice_3:output:04sequential_75/dense_75/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_75/dense_75/BiasAdd/ReadVariableOpReadVariableOp6sequential_75_dense_75_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_75/dense_75/BiasAddBiasAdd'sequential_75/dense_75/MatMul:product:05sequential_75/dense_75/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_75/dense_75/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_75/dense_75/BiasAdd/ReadVariableOp-^sequential_75/dense_75/MatMul/ReadVariableOp<^sequential_75/lstm_225/lstm_cell_513/BiasAdd/ReadVariableOp;^sequential_75/lstm_225/lstm_cell_513/MatMul/ReadVariableOp=^sequential_75/lstm_225/lstm_cell_513/MatMul_1/ReadVariableOp^sequential_75/lstm_225/while<^sequential_75/lstm_226/lstm_cell_514/BiasAdd/ReadVariableOp;^sequential_75/lstm_226/lstm_cell_514/MatMul/ReadVariableOp=^sequential_75/lstm_226/lstm_cell_514/MatMul_1/ReadVariableOp^sequential_75/lstm_226/while<^sequential_75/lstm_227/lstm_cell_515/BiasAdd/ReadVariableOp;^sequential_75/lstm_227/lstm_cell_515/MatMul/ReadVariableOp=^sequential_75/lstm_227/lstm_cell_515/MatMul_1/ReadVariableOp^sequential_75/lstm_227/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_75/dense_75/BiasAdd/ReadVariableOp-sequential_75/dense_75/BiasAdd/ReadVariableOp2\
,sequential_75/dense_75/MatMul/ReadVariableOp,sequential_75/dense_75/MatMul/ReadVariableOp2z
;sequential_75/lstm_225/lstm_cell_513/BiasAdd/ReadVariableOp;sequential_75/lstm_225/lstm_cell_513/BiasAdd/ReadVariableOp2x
:sequential_75/lstm_225/lstm_cell_513/MatMul/ReadVariableOp:sequential_75/lstm_225/lstm_cell_513/MatMul/ReadVariableOp2|
<sequential_75/lstm_225/lstm_cell_513/MatMul_1/ReadVariableOp<sequential_75/lstm_225/lstm_cell_513/MatMul_1/ReadVariableOp2<
sequential_75/lstm_225/whilesequential_75/lstm_225/while2z
;sequential_75/lstm_226/lstm_cell_514/BiasAdd/ReadVariableOp;sequential_75/lstm_226/lstm_cell_514/BiasAdd/ReadVariableOp2x
:sequential_75/lstm_226/lstm_cell_514/MatMul/ReadVariableOp:sequential_75/lstm_226/lstm_cell_514/MatMul/ReadVariableOp2|
<sequential_75/lstm_226/lstm_cell_514/MatMul_1/ReadVariableOp<sequential_75/lstm_226/lstm_cell_514/MatMul_1/ReadVariableOp2<
sequential_75/lstm_226/whilesequential_75/lstm_226/while2z
;sequential_75/lstm_227/lstm_cell_515/BiasAdd/ReadVariableOp;sequential_75/lstm_227/lstm_cell_515/BiasAdd/ReadVariableOp2x
:sequential_75/lstm_227/lstm_cell_515/MatMul/ReadVariableOp:sequential_75/lstm_227/lstm_cell_515/MatMul/ReadVariableOp2|
<sequential_75/lstm_227/lstm_cell_515/MatMul_1/ReadVariableOp<sequential_75/lstm_227/lstm_cell_515/MatMul_1/ReadVariableOp2<
sequential_75/lstm_227/whilesequential_75/lstm_227/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_225_input
?C
?

lstm_226_while_body_3117668.
*lstm_226_while_lstm_226_while_loop_counter4
0lstm_226_while_lstm_226_while_maximum_iterations
lstm_226_while_placeholder 
lstm_226_while_placeholder_1 
lstm_226_while_placeholder_2 
lstm_226_while_placeholder_3-
)lstm_226_while_lstm_226_strided_slice_1_0i
elstm_226_while_tensorarrayv2read_tensorlistgetitem_lstm_226_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_226_while_lstm_cell_514_matmul_readvariableop_resource_0:	d?R
?lstm_226_while_lstm_cell_514_matmul_1_readvariableop_resource_0:	2?M
>lstm_226_while_lstm_cell_514_biasadd_readvariableop_resource_0:	?
lstm_226_while_identity
lstm_226_while_identity_1
lstm_226_while_identity_2
lstm_226_while_identity_3
lstm_226_while_identity_4
lstm_226_while_identity_5+
'lstm_226_while_lstm_226_strided_slice_1g
clstm_226_while_tensorarrayv2read_tensorlistgetitem_lstm_226_tensorarrayunstack_tensorlistfromtensorN
;lstm_226_while_lstm_cell_514_matmul_readvariableop_resource:	d?P
=lstm_226_while_lstm_cell_514_matmul_1_readvariableop_resource:	2?K
<lstm_226_while_lstm_cell_514_biasadd_readvariableop_resource:	???3lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOp?2lstm_226/while/lstm_cell_514/MatMul/ReadVariableOp?4lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOp?
@lstm_226/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_226/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_226_while_tensorarrayv2read_tensorlistgetitem_lstm_226_tensorarrayunstack_tensorlistfromtensor_0lstm_226_while_placeholderIlstm_226/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_226/while/lstm_cell_514/MatMul/ReadVariableOpReadVariableOp=lstm_226_while_lstm_cell_514_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_226/while/lstm_cell_514/MatMulMatMul9lstm_226/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_226/while/lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOp?lstm_226_while_lstm_cell_514_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_226/while/lstm_cell_514/MatMul_1MatMullstm_226_while_placeholder_2<lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_226/while/lstm_cell_514/addAddV2-lstm_226/while/lstm_cell_514/MatMul:product:0/lstm_226/while/lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOp>lstm_226_while_lstm_cell_514_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_226/while/lstm_cell_514/BiasAddBiasAdd$lstm_226/while/lstm_cell_514/add:z:0;lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_226/while/lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_226/while/lstm_cell_514/splitSplit5lstm_226/while/lstm_cell_514/split/split_dim:output:0-lstm_226/while/lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_226/while/lstm_cell_514/SigmoidSigmoid+lstm_226/while/lstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_226/while/lstm_cell_514/Sigmoid_1Sigmoid+lstm_226/while/lstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_226/while/lstm_cell_514/mulMul*lstm_226/while/lstm_cell_514/Sigmoid_1:y:0lstm_226_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_226/while/lstm_cell_514/ReluRelu+lstm_226/while/lstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_226/while/lstm_cell_514/mul_1Mul(lstm_226/while/lstm_cell_514/Sigmoid:y:0/lstm_226/while/lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_226/while/lstm_cell_514/add_1AddV2$lstm_226/while/lstm_cell_514/mul:z:0&lstm_226/while/lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_226/while/lstm_cell_514/Sigmoid_2Sigmoid+lstm_226/while/lstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_226/while/lstm_cell_514/Relu_1Relu&lstm_226/while/lstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_226/while/lstm_cell_514/mul_2Mul*lstm_226/while/lstm_cell_514/Sigmoid_2:y:01lstm_226/while/lstm_cell_514/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_226/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_226_while_placeholder_1lstm_226_while_placeholder&lstm_226/while/lstm_cell_514/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_226/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_226/while/addAddV2lstm_226_while_placeholderlstm_226/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_226/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_226/while/add_1AddV2*lstm_226_while_lstm_226_while_loop_counterlstm_226/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_226/while/IdentityIdentitylstm_226/while/add_1:z:0^lstm_226/while/NoOp*
T0*
_output_shapes
: ?
lstm_226/while/Identity_1Identity0lstm_226_while_lstm_226_while_maximum_iterations^lstm_226/while/NoOp*
T0*
_output_shapes
: t
lstm_226/while/Identity_2Identitylstm_226/while/add:z:0^lstm_226/while/NoOp*
T0*
_output_shapes
: ?
lstm_226/while/Identity_3IdentityClstm_226/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_226/while/NoOp*
T0*
_output_shapes
: ?
lstm_226/while/Identity_4Identity&lstm_226/while/lstm_cell_514/mul_2:z:0^lstm_226/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_226/while/Identity_5Identity&lstm_226/while/lstm_cell_514/add_1:z:0^lstm_226/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_226/while/NoOpNoOp4^lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOp3^lstm_226/while/lstm_cell_514/MatMul/ReadVariableOp5^lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_226_while_identity lstm_226/while/Identity:output:0"?
lstm_226_while_identity_1"lstm_226/while/Identity_1:output:0"?
lstm_226_while_identity_2"lstm_226/while/Identity_2:output:0"?
lstm_226_while_identity_3"lstm_226/while/Identity_3:output:0"?
lstm_226_while_identity_4"lstm_226/while/Identity_4:output:0"?
lstm_226_while_identity_5"lstm_226/while/Identity_5:output:0"T
'lstm_226_while_lstm_226_strided_slice_1)lstm_226_while_lstm_226_strided_slice_1_0"~
<lstm_226_while_lstm_cell_514_biasadd_readvariableop_resource>lstm_226_while_lstm_cell_514_biasadd_readvariableop_resource_0"?
=lstm_226_while_lstm_cell_514_matmul_1_readvariableop_resource?lstm_226_while_lstm_cell_514_matmul_1_readvariableop_resource_0"|
;lstm_226_while_lstm_cell_514_matmul_readvariableop_resource=lstm_226_while_lstm_cell_514_matmul_readvariableop_resource_0"?
clstm_226_while_tensorarrayv2read_tensorlistgetitem_lstm_226_tensorarrayunstack_tensorlistfromtensorelstm_226_while_tensorarrayv2read_tensorlistgetitem_lstm_226_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOp3lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOp2h
2lstm_226/while/lstm_cell_514/MatMul/ReadVariableOp2lstm_226/while/lstm_cell_514/MatMul/ReadVariableOp2l
4lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOp4lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3118843
inputs_0?
,lstm_cell_514_matmul_readvariableop_resource:	d?A
.lstm_cell_514_matmul_1_readvariableop_resource:	2?<
-lstm_cell_514_biasadd_readvariableop_resource:	?
identity??$lstm_cell_514/BiasAdd/ReadVariableOp?#lstm_cell_514/MatMul/ReadVariableOp?%lstm_cell_514/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_514/MatMul/ReadVariableOpReadVariableOp,lstm_cell_514_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_514/MatMulMatMulstrided_slice_2:output:0+lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_514_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_514/MatMul_1MatMulzeros:output:0-lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_514/addAddV2lstm_cell_514/MatMul:product:0 lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_514_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_514/BiasAddBiasAddlstm_cell_514/add:z:0,lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_514/splitSplit&lstm_cell_514/split/split_dim:output:0lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_514/SigmoidSigmoidlstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_514/Sigmoid_1Sigmoidlstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_514/mulMullstm_cell_514/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_514/ReluRelulstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_514/mul_1Mullstm_cell_514/Sigmoid:y:0 lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_514/add_1AddV2lstm_cell_514/mul:z:0lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_514/Sigmoid_2Sigmoidlstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_514/Relu_1Relulstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_514/mul_2Mullstm_cell_514/Sigmoid_2:y:0"lstm_cell_514/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_514_matmul_readvariableop_resource.lstm_cell_514_matmul_1_readvariableop_resource-lstm_cell_514_biasadd_readvariableop_resource*
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
while_body_3118759*
condR
while_cond_3118758*K
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
NoOpNoOp%^lstm_cell_514/BiasAdd/ReadVariableOp$^lstm_cell_514/MatMul/ReadVariableOp&^lstm_cell_514/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_514/BiasAdd/ReadVariableOp$lstm_cell_514/BiasAdd/ReadVariableOp2J
#lstm_cell_514/MatMul/ReadVariableOp#lstm_cell_514/MatMul/ReadVariableOp2N
%lstm_cell_514/MatMul_1/ReadVariableOp%lstm_cell_514/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_514_layer_call_and_return_conditional_losses_3119960

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
?
/__inference_lstm_cell_515_layer_call_fn_3119977

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
J__inference_lstm_cell_515_layer_call_and_return_conditional_losses_3115496o
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
while_cond_3116143
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3116143___redundant_placeholder05
1while_while_cond_3116143___redundant_placeholder15
1while_while_cond_3116143___redundant_placeholder25
1while_while_cond_3116143___redundant_placeholder3
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
while_body_3116690
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_513_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_513_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_513_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_513_matmul_readvariableop_resource:	?G
4while_lstm_cell_513_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_513_biasadd_readvariableop_resource:	???*while/lstm_cell_513/BiasAdd/ReadVariableOp?)while/lstm_cell_513/MatMul/ReadVariableOp?+while/lstm_cell_513/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_513/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_513_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_513/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_513_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_513/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_513/addAddV2$while/lstm_cell_513/MatMul:product:0&while/lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_513_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_513/BiasAddBiasAddwhile/lstm_cell_513/add:z:02while/lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_513/splitSplit,while/lstm_cell_513/split/split_dim:output:0$while/lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_513/SigmoidSigmoid"while/lstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_513/Sigmoid_1Sigmoid"while/lstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mulMul!while/lstm_cell_513/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_513/ReluRelu"while/lstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mul_1Mulwhile/lstm_cell_513/Sigmoid:y:0&while/lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/add_1AddV2while/lstm_cell_513/mul:z:0while/lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_513/Sigmoid_2Sigmoid"while/lstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_513/Relu_1Reluwhile/lstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mul_2Mul!while/lstm_cell_513/Sigmoid_2:y:0(while/lstm_cell_513/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_513/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_513/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_513/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_513/BiasAdd/ReadVariableOp*^while/lstm_cell_513/MatMul/ReadVariableOp,^while/lstm_cell_513/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_513_biasadd_readvariableop_resource5while_lstm_cell_513_biasadd_readvariableop_resource_0"n
4while_lstm_cell_513_matmul_1_readvariableop_resource6while_lstm_cell_513_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_513_matmul_readvariableop_resource4while_lstm_cell_513_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_513/BiasAdd/ReadVariableOp*while/lstm_cell_513/BiasAdd/ReadVariableOp2V
)while/lstm_cell_513/MatMul/ReadVariableOp)while/lstm_cell_513/MatMul/ReadVariableOp2Z
+while/lstm_cell_513/MatMul_1/ReadVariableOp+while/lstm_cell_513/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3118758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3118758___redundant_placeholder05
1while_while_cond_3118758___redundant_placeholder15
1while_while_cond_3118758___redundant_placeholder25
1while_while_cond_3118758___redundant_placeholder3
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
while_body_3115001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_513_3115025_0:	?0
while_lstm_cell_513_3115027_0:	d?,
while_lstm_cell_513_3115029_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_513_3115025:	?.
while_lstm_cell_513_3115027:	d?*
while_lstm_cell_513_3115029:	???+while/lstm_cell_513/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_513/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_513_3115025_0while_lstm_cell_513_3115027_0while_lstm_cell_513_3115029_0*
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
J__inference_lstm_cell_513_layer_call_and_return_conditional_losses_3114942?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_513/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_513/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_513/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_513/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_513_3115025while_lstm_cell_513_3115025_0"<
while_lstm_cell_513_3115027while_lstm_cell_513_3115027_0"<
while_lstm_cell_513_3115029while_lstm_cell_513_3115029_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_513/StatefulPartitionedCall+while/lstm_cell_513/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_513_layer_call_fn_3119781

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
J__inference_lstm_cell_513_layer_call_and_return_conditional_losses_3114796o
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
while_cond_3115000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3115000___redundant_placeholder05
1while_while_cond_3115000___redundant_placeholder15
1while_while_cond_3115000___redundant_placeholder25
1while_while_cond_3115000___redundant_placeholder3
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
J__inference_lstm_cell_513_layer_call_and_return_conditional_losses_3119830

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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3116078

inputs?
,lstm_cell_514_matmul_readvariableop_resource:	d?A
.lstm_cell_514_matmul_1_readvariableop_resource:	2?<
-lstm_cell_514_biasadd_readvariableop_resource:	?
identity??$lstm_cell_514/BiasAdd/ReadVariableOp?#lstm_cell_514/MatMul/ReadVariableOp?%lstm_cell_514/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_514/MatMul/ReadVariableOpReadVariableOp,lstm_cell_514_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_514/MatMulMatMulstrided_slice_2:output:0+lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_514_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_514/MatMul_1MatMulzeros:output:0-lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_514/addAddV2lstm_cell_514/MatMul:product:0 lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_514_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_514/BiasAddBiasAddlstm_cell_514/add:z:0,lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_514/splitSplit&lstm_cell_514/split/split_dim:output:0lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_514/SigmoidSigmoidlstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_514/Sigmoid_1Sigmoidlstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_514/mulMullstm_cell_514/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_514/ReluRelulstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_514/mul_1Mullstm_cell_514/Sigmoid:y:0 lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_514/add_1AddV2lstm_cell_514/mul:z:0lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_514/Sigmoid_2Sigmoidlstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_514/Relu_1Relulstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_514/mul_2Mullstm_cell_514/Sigmoid_2:y:0"lstm_cell_514/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_514_matmul_readvariableop_resource.lstm_cell_514_matmul_1_readvariableop_resource-lstm_cell_514_biasadd_readvariableop_resource*
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
while_body_3115994*
condR
while_cond_3115993*K
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
NoOpNoOp%^lstm_cell_514/BiasAdd/ReadVariableOp$^lstm_cell_514/MatMul/ReadVariableOp&^lstm_cell_514/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_514/BiasAdd/ReadVariableOp$lstm_cell_514/BiasAdd/ReadVariableOp2J
#lstm_cell_514/MatMul/ReadVariableOp#lstm_cell_514/MatMul/ReadVariableOp2N
%lstm_cell_514/MatMul_1/ReadVariableOp%lstm_cell_514/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_3115993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3115993___redundant_placeholder05
1while_while_cond_3115993___redundant_placeholder15
1while_while_cond_3115993___redundant_placeholder25
1while_while_cond_3115993___redundant_placeholder3
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
J__inference_lstm_cell_513_layer_call_and_return_conditional_losses_3114796

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
while_cond_3118428
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3118428___redundant_placeholder05
1while_while_cond_3118428___redundant_placeholder15
1while_while_cond_3118428___redundant_placeholder25
1while_while_cond_3118428___redundant_placeholder3
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
while_body_3114810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_513_3114834_0:	?0
while_lstm_cell_513_3114836_0:	d?,
while_lstm_cell_513_3114838_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_513_3114834:	?.
while_lstm_cell_513_3114836:	d?*
while_lstm_cell_513_3114838:	???+while/lstm_cell_513/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_513/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_513_3114834_0while_lstm_cell_513_3114836_0while_lstm_cell_513_3114838_0*
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
J__inference_lstm_cell_513_layer_call_and_return_conditional_losses_3114796?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_513/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_513/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_513/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_513/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_513_3114834while_lstm_cell_513_3114834_0"<
while_lstm_cell_513_3114836while_lstm_cell_513_3114836_0"<
while_lstm_cell_513_3114838while_lstm_cell_513_3114838_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_513/StatefulPartitionedCall+while/lstm_cell_513/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
?
)sequential_75_lstm_226_while_cond_3114499J
Fsequential_75_lstm_226_while_sequential_75_lstm_226_while_loop_counterP
Lsequential_75_lstm_226_while_sequential_75_lstm_226_while_maximum_iterations,
(sequential_75_lstm_226_while_placeholder.
*sequential_75_lstm_226_while_placeholder_1.
*sequential_75_lstm_226_while_placeholder_2.
*sequential_75_lstm_226_while_placeholder_3L
Hsequential_75_lstm_226_while_less_sequential_75_lstm_226_strided_slice_1c
_sequential_75_lstm_226_while_sequential_75_lstm_226_while_cond_3114499___redundant_placeholder0c
_sequential_75_lstm_226_while_sequential_75_lstm_226_while_cond_3114499___redundant_placeholder1c
_sequential_75_lstm_226_while_sequential_75_lstm_226_while_cond_3114499___redundant_placeholder2c
_sequential_75_lstm_226_while_sequential_75_lstm_226_while_cond_3114499___redundant_placeholder3)
%sequential_75_lstm_226_while_identity
?
!sequential_75/lstm_226/while/LessLess(sequential_75_lstm_226_while_placeholderHsequential_75_lstm_226_while_less_sequential_75_lstm_226_strided_slice_1*
T0*
_output_shapes
: y
%sequential_75/lstm_226/while/IdentityIdentity%sequential_75/lstm_226/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_75_lstm_226_while_identity.sequential_75/lstm_226/while/Identity:output:0*(
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
while_cond_3114809
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3114809___redundant_placeholder05
1while_while_cond_3114809___redundant_placeholder15
1while_while_cond_3114809___redundant_placeholder25
1while_while_cond_3114809___redundant_placeholder3
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
J__inference_sequential_75_layer_call_and_return_conditional_losses_3116253

inputs#
lstm_225_3115929:	?#
lstm_225_3115931:	d?
lstm_225_3115933:	?#
lstm_226_3116079:	d?#
lstm_226_3116081:	2?
lstm_226_3116083:	?"
lstm_227_3116229:2("
lstm_227_3116231:
(
lstm_227_3116233:("
dense_75_3116247:

dense_75_3116249:
identity?? dense_75/StatefulPartitionedCall? lstm_225/StatefulPartitionedCall? lstm_226/StatefulPartitionedCall? lstm_227/StatefulPartitionedCall?
 lstm_225/StatefulPartitionedCallStatefulPartitionedCallinputslstm_225_3115929lstm_225_3115931lstm_225_3115933*
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
E__inference_lstm_225_layer_call_and_return_conditional_losses_3115928?
 lstm_226/StatefulPartitionedCallStatefulPartitionedCall)lstm_225/StatefulPartitionedCall:output:0lstm_226_3116079lstm_226_3116081lstm_226_3116083*
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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3116078?
 lstm_227/StatefulPartitionedCallStatefulPartitionedCall)lstm_226/StatefulPartitionedCall:output:0lstm_227_3116229lstm_227_3116231lstm_227_3116233*
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
E__inference_lstm_227_layer_call_and_return_conditional_losses_3116228?
 dense_75/StatefulPartitionedCallStatefulPartitionedCall)lstm_227/StatefulPartitionedCall:output:0dense_75_3116247dense_75_3116249*
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
E__inference_dense_75_layer_call_and_return_conditional_losses_3116246x
IdentityIdentity)dense_75/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_75/StatefulPartitionedCall!^lstm_225/StatefulPartitionedCall!^lstm_226/StatefulPartitionedCall!^lstm_227/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2D
 lstm_225/StatefulPartitionedCall lstm_225/StatefulPartitionedCall2D
 lstm_226/StatefulPartitionedCall lstm_226/StatefulPartitionedCall2D
 lstm_227/StatefulPartitionedCall lstm_227/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_225_layer_call_and_return_conditional_losses_3116774

inputs?
,lstm_cell_513_matmul_readvariableop_resource:	?A
.lstm_cell_513_matmul_1_readvariableop_resource:	d?<
-lstm_cell_513_biasadd_readvariableop_resource:	?
identity??$lstm_cell_513/BiasAdd/ReadVariableOp?#lstm_cell_513/MatMul/ReadVariableOp?%lstm_cell_513/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_513/MatMul/ReadVariableOpReadVariableOp,lstm_cell_513_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_513/MatMulMatMulstrided_slice_2:output:0+lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_513_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_513/MatMul_1MatMulzeros:output:0-lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_513/addAddV2lstm_cell_513/MatMul:product:0 lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_513_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_513/BiasAddBiasAddlstm_cell_513/add:z:0,lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_513/splitSplit&lstm_cell_513/split/split_dim:output:0lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_513/SigmoidSigmoidlstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_513/Sigmoid_1Sigmoidlstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_513/mulMullstm_cell_513/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_513/ReluRelulstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_513/mul_1Mullstm_cell_513/Sigmoid:y:0 lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_513/add_1AddV2lstm_cell_513/mul:z:0lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_513/Sigmoid_2Sigmoidlstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_513/Relu_1Relulstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_513/mul_2Mullstm_cell_513/Sigmoid_2:y:0"lstm_cell_513/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_513_matmul_readvariableop_resource.lstm_cell_513_matmul_1_readvariableop_resource-lstm_cell_513_biasadd_readvariableop_resource*
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
while_body_3116690*
condR
while_cond_3116689*K
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
NoOpNoOp%^lstm_cell_513/BiasAdd/ReadVariableOp$^lstm_cell_513/MatMul/ReadVariableOp&^lstm_cell_513/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_513/BiasAdd/ReadVariableOp$lstm_cell_513/BiasAdd/ReadVariableOp2J
#lstm_cell_513/MatMul/ReadVariableOp#lstm_cell_513/MatMul/ReadVariableOp2N
%lstm_cell_513/MatMul_1/ReadVariableOp%lstm_cell_513/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_3120201
file_prefix.
*savev2_dense_75_kernel_read_readvariableop,
(savev2_dense_75_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_225_lstm_cell_225_kernel_read_readvariableopF
Bsavev2_lstm_225_lstm_cell_225_recurrent_kernel_read_readvariableop:
6savev2_lstm_225_lstm_cell_225_bias_read_readvariableop<
8savev2_lstm_226_lstm_cell_226_kernel_read_readvariableopF
Bsavev2_lstm_226_lstm_cell_226_recurrent_kernel_read_readvariableop:
6savev2_lstm_226_lstm_cell_226_bias_read_readvariableop<
8savev2_lstm_227_lstm_cell_227_kernel_read_readvariableopF
Bsavev2_lstm_227_lstm_cell_227_recurrent_kernel_read_readvariableop:
6savev2_lstm_227_lstm_cell_227_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_75_kernel_m_read_readvariableop3
/savev2_adam_dense_75_bias_m_read_readvariableopC
?savev2_adam_lstm_225_lstm_cell_225_kernel_m_read_readvariableopM
Isavev2_adam_lstm_225_lstm_cell_225_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_225_lstm_cell_225_bias_m_read_readvariableopC
?savev2_adam_lstm_226_lstm_cell_226_kernel_m_read_readvariableopM
Isavev2_adam_lstm_226_lstm_cell_226_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_226_lstm_cell_226_bias_m_read_readvariableopC
?savev2_adam_lstm_227_lstm_cell_227_kernel_m_read_readvariableopM
Isavev2_adam_lstm_227_lstm_cell_227_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_227_lstm_cell_227_bias_m_read_readvariableop5
1savev2_adam_dense_75_kernel_v_read_readvariableop3
/savev2_adam_dense_75_bias_v_read_readvariableopC
?savev2_adam_lstm_225_lstm_cell_225_kernel_v_read_readvariableopM
Isavev2_adam_lstm_225_lstm_cell_225_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_225_lstm_cell_225_bias_v_read_readvariableopC
?savev2_adam_lstm_226_lstm_cell_226_kernel_v_read_readvariableopM
Isavev2_adam_lstm_226_lstm_cell_226_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_226_lstm_cell_226_bias_v_read_readvariableopC
?savev2_adam_lstm_227_lstm_cell_227_kernel_v_read_readvariableopM
Isavev2_adam_lstm_227_lstm_cell_227_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_227_lstm_cell_227_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_75_kernel_read_readvariableop(savev2_dense_75_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_225_lstm_cell_225_kernel_read_readvariableopBsavev2_lstm_225_lstm_cell_225_recurrent_kernel_read_readvariableop6savev2_lstm_225_lstm_cell_225_bias_read_readvariableop8savev2_lstm_226_lstm_cell_226_kernel_read_readvariableopBsavev2_lstm_226_lstm_cell_226_recurrent_kernel_read_readvariableop6savev2_lstm_226_lstm_cell_226_bias_read_readvariableop8savev2_lstm_227_lstm_cell_227_kernel_read_readvariableopBsavev2_lstm_227_lstm_cell_227_recurrent_kernel_read_readvariableop6savev2_lstm_227_lstm_cell_227_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_75_kernel_m_read_readvariableop/savev2_adam_dense_75_bias_m_read_readvariableop?savev2_adam_lstm_225_lstm_cell_225_kernel_m_read_readvariableopIsavev2_adam_lstm_225_lstm_cell_225_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_225_lstm_cell_225_bias_m_read_readvariableop?savev2_adam_lstm_226_lstm_cell_226_kernel_m_read_readvariableopIsavev2_adam_lstm_226_lstm_cell_226_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_226_lstm_cell_226_bias_m_read_readvariableop?savev2_adam_lstm_227_lstm_cell_227_kernel_m_read_readvariableopIsavev2_adam_lstm_227_lstm_cell_227_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_227_lstm_cell_227_bias_m_read_readvariableop1savev2_adam_dense_75_kernel_v_read_readvariableop/savev2_adam_dense_75_bias_v_read_readvariableop?savev2_adam_lstm_225_lstm_cell_225_kernel_v_read_readvariableopIsavev2_adam_lstm_225_lstm_cell_225_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_225_lstm_cell_225_bias_v_read_readvariableop?savev2_adam_lstm_226_lstm_cell_226_kernel_v_read_readvariableopIsavev2_adam_lstm_226_lstm_cell_226_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_226_lstm_cell_226_bias_v_read_readvariableop?savev2_adam_lstm_227_lstm_cell_227_kernel_v_read_readvariableopIsavev2_adam_lstm_227_lstm_cell_227_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_227_lstm_cell_227_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?8
?
while_body_3118000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_513_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_513_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_513_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_513_matmul_readvariableop_resource:	?G
4while_lstm_cell_513_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_513_biasadd_readvariableop_resource:	???*while/lstm_cell_513/BiasAdd/ReadVariableOp?)while/lstm_cell_513/MatMul/ReadVariableOp?+while/lstm_cell_513/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_513/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_513_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_513/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_513_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_513/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_513/addAddV2$while/lstm_cell_513/MatMul:product:0&while/lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_513_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_513/BiasAddBiasAddwhile/lstm_cell_513/add:z:02while/lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_513/splitSplit,while/lstm_cell_513/split/split_dim:output:0$while/lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_513/SigmoidSigmoid"while/lstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_513/Sigmoid_1Sigmoid"while/lstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mulMul!while/lstm_cell_513/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_513/ReluRelu"while/lstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mul_1Mulwhile/lstm_cell_513/Sigmoid:y:0&while/lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/add_1AddV2while/lstm_cell_513/mul:z:0while/lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_513/Sigmoid_2Sigmoid"while/lstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_513/Relu_1Reluwhile/lstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mul_2Mul!while/lstm_cell_513/Sigmoid_2:y:0(while/lstm_cell_513/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_513/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_513/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_513/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_513/BiasAdd/ReadVariableOp*^while/lstm_cell_513/MatMul/ReadVariableOp,^while/lstm_cell_513/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_513_biasadd_readvariableop_resource5while_lstm_cell_513_biasadd_readvariableop_resource_0"n
4while_lstm_cell_513_matmul_1_readvariableop_resource6while_lstm_cell_513_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_513_matmul_readvariableop_resource4while_lstm_cell_513_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_513/BiasAdd/ReadVariableOp*while/lstm_cell_513/BiasAdd/ReadVariableOp2V
)while/lstm_cell_513/MatMul/ReadVariableOp)while/lstm_cell_513/MatMul/ReadVariableOp2Z
+while/lstm_cell_513/MatMul_1/ReadVariableOp+while/lstm_cell_513/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3118285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3118285___redundant_placeholder05
1while_while_cond_3118285___redundant_placeholder15
1while_while_cond_3118285___redundant_placeholder25
1while_while_cond_3118285___redundant_placeholder3
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
E__inference_lstm_225_layer_call_and_return_conditional_losses_3115928

inputs?
,lstm_cell_513_matmul_readvariableop_resource:	?A
.lstm_cell_513_matmul_1_readvariableop_resource:	d?<
-lstm_cell_513_biasadd_readvariableop_resource:	?
identity??$lstm_cell_513/BiasAdd/ReadVariableOp?#lstm_cell_513/MatMul/ReadVariableOp?%lstm_cell_513/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_513/MatMul/ReadVariableOpReadVariableOp,lstm_cell_513_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_513/MatMulMatMulstrided_slice_2:output:0+lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_513_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_513/MatMul_1MatMulzeros:output:0-lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_513/addAddV2lstm_cell_513/MatMul:product:0 lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_513_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_513/BiasAddBiasAddlstm_cell_513/add:z:0,lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_513/splitSplit&lstm_cell_513/split/split_dim:output:0lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_513/SigmoidSigmoidlstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_513/Sigmoid_1Sigmoidlstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_513/mulMullstm_cell_513/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_513/ReluRelulstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_513/mul_1Mullstm_cell_513/Sigmoid:y:0 lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_513/add_1AddV2lstm_cell_513/mul:z:0lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_513/Sigmoid_2Sigmoidlstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_513/Relu_1Relulstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_513/mul_2Mullstm_cell_513/Sigmoid_2:y:0"lstm_cell_513/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_513_matmul_readvariableop_resource.lstm_cell_513_matmul_1_readvariableop_resource-lstm_cell_513_biasadd_readvariableop_resource*
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
while_body_3115844*
condR
while_cond_3115843*K
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
NoOpNoOp%^lstm_cell_513/BiasAdd/ReadVariableOp$^lstm_cell_513/MatMul/ReadVariableOp&^lstm_cell_513/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_513/BiasAdd/ReadVariableOp$lstm_cell_513/BiasAdd/ReadVariableOp2J
#lstm_cell_513/MatMul/ReadVariableOp#lstm_cell_513/MatMul/ReadVariableOp2N
%lstm_cell_513/MatMul_1/ReadVariableOp%lstm_cell_513/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3119375
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_515_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_515_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_515_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_515_matmul_readvariableop_resource:2(F
4while_lstm_cell_515_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_515_biasadd_readvariableop_resource:(??*while/lstm_cell_515/BiasAdd/ReadVariableOp?)while/lstm_cell_515/MatMul/ReadVariableOp?+while/lstm_cell_515/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_515/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_515_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_515/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_515_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_515/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_515/addAddV2$while/lstm_cell_515/MatMul:product:0&while/lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_515_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_515/BiasAddBiasAddwhile/lstm_cell_515/add:z:02while/lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_515/splitSplit,while/lstm_cell_515/split/split_dim:output:0$while/lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_515/SigmoidSigmoid"while/lstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_515/Sigmoid_1Sigmoid"while/lstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mulMul!while/lstm_cell_515/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_515/ReluRelu"while/lstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mul_1Mulwhile/lstm_cell_515/Sigmoid:y:0&while/lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/add_1AddV2while/lstm_cell_515/mul:z:0while/lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_515/Sigmoid_2Sigmoid"while/lstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_515/Relu_1Reluwhile/lstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mul_2Mul!while/lstm_cell_515/Sigmoid_2:y:0(while/lstm_cell_515/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_515/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_515/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_515/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_515/BiasAdd/ReadVariableOp*^while/lstm_cell_515/MatMul/ReadVariableOp,^while/lstm_cell_515/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_515_biasadd_readvariableop_resource5while_lstm_cell_515_biasadd_readvariableop_resource_0"n
4while_lstm_cell_515_matmul_1_readvariableop_resource6while_lstm_cell_515_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_515_matmul_readvariableop_resource4while_lstm_cell_515_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_515/BiasAdd/ReadVariableOp*while/lstm_cell_515/BiasAdd/ReadVariableOp2V
)while/lstm_cell_515/MatMul/ReadVariableOp)while/lstm_cell_515/MatMul/ReadVariableOp2Z
+while/lstm_cell_515/MatMul_1/ReadVariableOp+while/lstm_cell_515/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3119231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3119231___redundant_placeholder05
1while_while_cond_3119231___redundant_placeholder15
1while_while_cond_3119231___redundant_placeholder25
1while_while_cond_3119231___redundant_placeholder3
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
while_body_3116144
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_515_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_515_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_515_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_515_matmul_readvariableop_resource:2(F
4while_lstm_cell_515_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_515_biasadd_readvariableop_resource:(??*while/lstm_cell_515/BiasAdd/ReadVariableOp?)while/lstm_cell_515/MatMul/ReadVariableOp?+while/lstm_cell_515/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_515/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_515_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_515/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_515_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_515/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_515/addAddV2$while/lstm_cell_515/MatMul:product:0&while/lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_515_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_515/BiasAddBiasAddwhile/lstm_cell_515/add:z:02while/lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_515/splitSplit,while/lstm_cell_515/split/split_dim:output:0$while/lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_515/SigmoidSigmoid"while/lstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_515/Sigmoid_1Sigmoid"while/lstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mulMul!while/lstm_cell_515/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_515/ReluRelu"while/lstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mul_1Mulwhile/lstm_cell_515/Sigmoid:y:0&while/lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/add_1AddV2while/lstm_cell_515/mul:z:0while/lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_515/Sigmoid_2Sigmoid"while/lstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_515/Relu_1Reluwhile/lstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mul_2Mul!while/lstm_cell_515/Sigmoid_2:y:0(while/lstm_cell_515/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_515/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_515/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_515/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_515/BiasAdd/ReadVariableOp*^while/lstm_cell_515/MatMul/ReadVariableOp,^while/lstm_cell_515/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_515_biasadd_readvariableop_resource5while_lstm_cell_515_biasadd_readvariableop_resource_0"n
4while_lstm_cell_515_matmul_1_readvariableop_resource6while_lstm_cell_515_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_515_matmul_readvariableop_resource4while_lstm_cell_515_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_515/BiasAdd/ReadVariableOp*while/lstm_cell_515/BiasAdd/ReadVariableOp2V
)while/lstm_cell_515/MatMul/ReadVariableOp)while/lstm_cell_515/MatMul/ReadVariableOp2Z
+while/lstm_cell_515/MatMul_1/ReadVariableOp+while/lstm_cell_515/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_225_layer_call_and_return_conditional_losses_3115070

inputs(
lstm_cell_513_3114988:	?(
lstm_cell_513_3114990:	d?$
lstm_cell_513_3114992:	?
identity??%lstm_cell_513/StatefulPartitionedCall?while;
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
%lstm_cell_513/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_513_3114988lstm_cell_513_3114990lstm_cell_513_3114992*
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
J__inference_lstm_cell_513_layer_call_and_return_conditional_losses_3114942n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_513_3114988lstm_cell_513_3114990lstm_cell_513_3114992*
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
while_body_3115001*
condR
while_cond_3115000*K
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
NoOpNoOp&^lstm_cell_513/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_513/StatefulPartitionedCall%lstm_cell_513/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
)sequential_75_lstm_225_while_cond_3114360J
Fsequential_75_lstm_225_while_sequential_75_lstm_225_while_loop_counterP
Lsequential_75_lstm_225_while_sequential_75_lstm_225_while_maximum_iterations,
(sequential_75_lstm_225_while_placeholder.
*sequential_75_lstm_225_while_placeholder_1.
*sequential_75_lstm_225_while_placeholder_2.
*sequential_75_lstm_225_while_placeholder_3L
Hsequential_75_lstm_225_while_less_sequential_75_lstm_225_strided_slice_1c
_sequential_75_lstm_225_while_sequential_75_lstm_225_while_cond_3114360___redundant_placeholder0c
_sequential_75_lstm_225_while_sequential_75_lstm_225_while_cond_3114360___redundant_placeholder1c
_sequential_75_lstm_225_while_sequential_75_lstm_225_while_cond_3114360___redundant_placeholder2c
_sequential_75_lstm_225_while_sequential_75_lstm_225_while_cond_3114360___redundant_placeholder3)
%sequential_75_lstm_225_while_identity
?
!sequential_75/lstm_225/while/LessLess(sequential_75_lstm_225_while_placeholderHsequential_75_lstm_225_while_less_sequential_75_lstm_225_strided_slice_1*
T0*
_output_shapes
: y
%sequential_75/lstm_225/while/IdentityIdentity%sequential_75/lstm_225/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_75_lstm_225_while_identity.sequential_75/lstm_225/while/Identity:output:0*(
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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3116609

inputs?
,lstm_cell_514_matmul_readvariableop_resource:	d?A
.lstm_cell_514_matmul_1_readvariableop_resource:	2?<
-lstm_cell_514_biasadd_readvariableop_resource:	?
identity??$lstm_cell_514/BiasAdd/ReadVariableOp?#lstm_cell_514/MatMul/ReadVariableOp?%lstm_cell_514/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_514/MatMul/ReadVariableOpReadVariableOp,lstm_cell_514_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_514/MatMulMatMulstrided_slice_2:output:0+lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_514_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_514/MatMul_1MatMulzeros:output:0-lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_514/addAddV2lstm_cell_514/MatMul:product:0 lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_514_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_514/BiasAddBiasAddlstm_cell_514/add:z:0,lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_514/splitSplit&lstm_cell_514/split/split_dim:output:0lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_514/SigmoidSigmoidlstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_514/Sigmoid_1Sigmoidlstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_514/mulMullstm_cell_514/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_514/ReluRelulstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_514/mul_1Mullstm_cell_514/Sigmoid:y:0 lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_514/add_1AddV2lstm_cell_514/mul:z:0lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_514/Sigmoid_2Sigmoidlstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_514/Relu_1Relulstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_514/mul_2Mullstm_cell_514/Sigmoid_2:y:0"lstm_cell_514/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_514_matmul_readvariableop_resource.lstm_cell_514_matmul_1_readvariableop_resource-lstm_cell_514_biasadd_readvariableop_resource*
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
while_body_3116525*
condR
while_cond_3116524*K
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
NoOpNoOp%^lstm_cell_514/BiasAdd/ReadVariableOp$^lstm_cell_514/MatMul/ReadVariableOp&^lstm_cell_514/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_514/BiasAdd/ReadVariableOp$lstm_cell_514/BiasAdd/ReadVariableOp2J
#lstm_cell_514/MatMul/ReadVariableOp#lstm_cell_514/MatMul/ReadVariableOp2N
%lstm_cell_514/MatMul_1/ReadVariableOp%lstm_cell_514/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_225_layer_call_fn_3117941

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
E__inference_lstm_225_layer_call_and_return_conditional_losses_3116774s
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
E__inference_lstm_227_layer_call_and_return_conditional_losses_3116228

inputs>
,lstm_cell_515_matmul_readvariableop_resource:2(@
.lstm_cell_515_matmul_1_readvariableop_resource:
(;
-lstm_cell_515_biasadd_readvariableop_resource:(
identity??$lstm_cell_515/BiasAdd/ReadVariableOp?#lstm_cell_515/MatMul/ReadVariableOp?%lstm_cell_515/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_515/MatMul/ReadVariableOpReadVariableOp,lstm_cell_515_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_515/MatMulMatMulstrided_slice_2:output:0+lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_515_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_515/MatMul_1MatMulzeros:output:0-lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_515/addAddV2lstm_cell_515/MatMul:product:0 lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_515_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_515/BiasAddBiasAddlstm_cell_515/add:z:0,lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_515/splitSplit&lstm_cell_515/split/split_dim:output:0lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_515/SigmoidSigmoidlstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_515/Sigmoid_1Sigmoidlstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_515/mulMullstm_cell_515/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_515/ReluRelulstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_515/mul_1Mullstm_cell_515/Sigmoid:y:0 lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_515/add_1AddV2lstm_cell_515/mul:z:0lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_515/Sigmoid_2Sigmoidlstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_515/Relu_1Relulstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_515/mul_2Mullstm_cell_515/Sigmoid_2:y:0"lstm_cell_515/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_515_matmul_readvariableop_resource.lstm_cell_515_matmul_1_readvariableop_resource-lstm_cell_515_biasadd_readvariableop_resource*
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
while_body_3116144*
condR
while_cond_3116143*K
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
NoOpNoOp%^lstm_cell_515/BiasAdd/ReadVariableOp$^lstm_cell_515/MatMul/ReadVariableOp&^lstm_cell_515/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_515/BiasAdd/ReadVariableOp$lstm_cell_515/BiasAdd/ReadVariableOp2J
#lstm_cell_515/MatMul/ReadVariableOp#lstm_cell_515/MatMul/ReadVariableOp2N
%lstm_cell_515/MatMul_1/ReadVariableOp%lstm_cell_515/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_226_while_cond_3117667.
*lstm_226_while_lstm_226_while_loop_counter4
0lstm_226_while_lstm_226_while_maximum_iterations
lstm_226_while_placeholder 
lstm_226_while_placeholder_1 
lstm_226_while_placeholder_2 
lstm_226_while_placeholder_30
,lstm_226_while_less_lstm_226_strided_slice_1G
Clstm_226_while_lstm_226_while_cond_3117667___redundant_placeholder0G
Clstm_226_while_lstm_226_while_cond_3117667___redundant_placeholder1G
Clstm_226_while_lstm_226_while_cond_3117667___redundant_placeholder2G
Clstm_226_while_lstm_226_while_cond_3117667___redundant_placeholder3
lstm_226_while_identity
?
lstm_226/while/LessLesslstm_226_while_placeholder,lstm_226_while_less_lstm_226_strided_slice_1*
T0*
_output_shapes
: ]
lstm_226/while/IdentityIdentitylstm_226/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_226_while_identity lstm_226/while/Identity:output:0*(
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
while_cond_3119660
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3119660___redundant_placeholder05
1while_while_cond_3119660___redundant_placeholder15
1while_while_cond_3119660___redundant_placeholder25
1while_while_cond_3119660___redundant_placeholder3
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
?
?
J__inference_sequential_75_layer_call_and_return_conditional_losses_3116954
lstm_225_input#
lstm_225_3116927:	?#
lstm_225_3116929:	d?
lstm_225_3116931:	?#
lstm_226_3116934:	d?#
lstm_226_3116936:	2?
lstm_226_3116938:	?"
lstm_227_3116941:2("
lstm_227_3116943:
(
lstm_227_3116945:("
dense_75_3116948:

dense_75_3116950:
identity?? dense_75/StatefulPartitionedCall? lstm_225/StatefulPartitionedCall? lstm_226/StatefulPartitionedCall? lstm_227/StatefulPartitionedCall?
 lstm_225/StatefulPartitionedCallStatefulPartitionedCalllstm_225_inputlstm_225_3116927lstm_225_3116929lstm_225_3116931*
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
E__inference_lstm_225_layer_call_and_return_conditional_losses_3116774?
 lstm_226/StatefulPartitionedCallStatefulPartitionedCall)lstm_225/StatefulPartitionedCall:output:0lstm_226_3116934lstm_226_3116936lstm_226_3116938*
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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3116609?
 lstm_227/StatefulPartitionedCallStatefulPartitionedCall)lstm_226/StatefulPartitionedCall:output:0lstm_227_3116941lstm_227_3116943lstm_227_3116945*
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
E__inference_lstm_227_layer_call_and_return_conditional_losses_3116444?
 dense_75/StatefulPartitionedCallStatefulPartitionedCall)lstm_227/StatefulPartitionedCall:output:0dense_75_3116948dense_75_3116950*
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
E__inference_dense_75_layer_call_and_return_conditional_losses_3116246x
IdentityIdentity)dense_75/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_75/StatefulPartitionedCall!^lstm_225/StatefulPartitionedCall!^lstm_226/StatefulPartitionedCall!^lstm_227/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2D
 lstm_225/StatefulPartitionedCall lstm_225/StatefulPartitionedCall2D
 lstm_226/StatefulPartitionedCall lstm_226/StatefulPartitionedCall2D
 lstm_227/StatefulPartitionedCall lstm_227/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_225_input
?
?
*__inference_lstm_227_layer_call_fn_3119140
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
E__inference_lstm_227_layer_call_and_return_conditional_losses_3115579o
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
?
while_body_3118286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_513_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_513_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_513_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_513_matmul_readvariableop_resource:	?G
4while_lstm_cell_513_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_513_biasadd_readvariableop_resource:	???*while/lstm_cell_513/BiasAdd/ReadVariableOp?)while/lstm_cell_513/MatMul/ReadVariableOp?+while/lstm_cell_513/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_513/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_513_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_513/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_513_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_513/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_513/addAddV2$while/lstm_cell_513/MatMul:product:0&while/lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_513_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_513/BiasAddBiasAddwhile/lstm_cell_513/add:z:02while/lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_513/splitSplit,while/lstm_cell_513/split/split_dim:output:0$while/lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_513/SigmoidSigmoid"while/lstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_513/Sigmoid_1Sigmoid"while/lstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mulMul!while/lstm_cell_513/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_513/ReluRelu"while/lstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mul_1Mulwhile/lstm_cell_513/Sigmoid:y:0&while/lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/add_1AddV2while/lstm_cell_513/mul:z:0while/lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_513/Sigmoid_2Sigmoid"while/lstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_513/Relu_1Reluwhile/lstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mul_2Mul!while/lstm_cell_513/Sigmoid_2:y:0(while/lstm_cell_513/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_513/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_513/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_513/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_513/BiasAdd/ReadVariableOp*^while/lstm_cell_513/MatMul/ReadVariableOp,^while/lstm_cell_513/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_513_biasadd_readvariableop_resource5while_lstm_cell_513_biasadd_readvariableop_resource_0"n
4while_lstm_cell_513_matmul_1_readvariableop_resource6while_lstm_cell_513_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_513_matmul_readvariableop_resource4while_lstm_cell_513_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_513/BiasAdd/ReadVariableOp*while/lstm_cell_513/BiasAdd/ReadVariableOp2V
)while/lstm_cell_513/MatMul/ReadVariableOp)while/lstm_cell_513/MatMul/ReadVariableOp2Z
+while/lstm_cell_513/MatMul_1/ReadVariableOp+while/lstm_cell_513/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3115701
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_515_3115725_0:2(/
while_lstm_cell_515_3115727_0:
(+
while_lstm_cell_515_3115729_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_515_3115725:2(-
while_lstm_cell_515_3115727:
()
while_lstm_cell_515_3115729:(??+while/lstm_cell_515/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_515/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_515_3115725_0while_lstm_cell_515_3115727_0while_lstm_cell_515_3115729_0*
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
J__inference_lstm_cell_515_layer_call_and_return_conditional_losses_3115642?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_515/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_515/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_515/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_515/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_515_3115725while_lstm_cell_515_3115725_0"<
while_lstm_cell_515_3115727while_lstm_cell_515_3115727_0"<
while_lstm_cell_515_3115729while_lstm_cell_515_3115729_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_515/StatefulPartitionedCall+while/lstm_cell_515/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_225_while_body_3117102.
*lstm_225_while_lstm_225_while_loop_counter4
0lstm_225_while_lstm_225_while_maximum_iterations
lstm_225_while_placeholder 
lstm_225_while_placeholder_1 
lstm_225_while_placeholder_2 
lstm_225_while_placeholder_3-
)lstm_225_while_lstm_225_strided_slice_1_0i
elstm_225_while_tensorarrayv2read_tensorlistgetitem_lstm_225_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_225_while_lstm_cell_513_matmul_readvariableop_resource_0:	?R
?lstm_225_while_lstm_cell_513_matmul_1_readvariableop_resource_0:	d?M
>lstm_225_while_lstm_cell_513_biasadd_readvariableop_resource_0:	?
lstm_225_while_identity
lstm_225_while_identity_1
lstm_225_while_identity_2
lstm_225_while_identity_3
lstm_225_while_identity_4
lstm_225_while_identity_5+
'lstm_225_while_lstm_225_strided_slice_1g
clstm_225_while_tensorarrayv2read_tensorlistgetitem_lstm_225_tensorarrayunstack_tensorlistfromtensorN
;lstm_225_while_lstm_cell_513_matmul_readvariableop_resource:	?P
=lstm_225_while_lstm_cell_513_matmul_1_readvariableop_resource:	d?K
<lstm_225_while_lstm_cell_513_biasadd_readvariableop_resource:	???3lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOp?2lstm_225/while/lstm_cell_513/MatMul/ReadVariableOp?4lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOp?
@lstm_225/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_225/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_225_while_tensorarrayv2read_tensorlistgetitem_lstm_225_tensorarrayunstack_tensorlistfromtensor_0lstm_225_while_placeholderIlstm_225/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_225/while/lstm_cell_513/MatMul/ReadVariableOpReadVariableOp=lstm_225_while_lstm_cell_513_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_225/while/lstm_cell_513/MatMulMatMul9lstm_225/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_225/while/lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOp?lstm_225_while_lstm_cell_513_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_225/while/lstm_cell_513/MatMul_1MatMullstm_225_while_placeholder_2<lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_225/while/lstm_cell_513/addAddV2-lstm_225/while/lstm_cell_513/MatMul:product:0/lstm_225/while/lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOp>lstm_225_while_lstm_cell_513_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_225/while/lstm_cell_513/BiasAddBiasAdd$lstm_225/while/lstm_cell_513/add:z:0;lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_225/while/lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_225/while/lstm_cell_513/splitSplit5lstm_225/while/lstm_cell_513/split/split_dim:output:0-lstm_225/while/lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_225/while/lstm_cell_513/SigmoidSigmoid+lstm_225/while/lstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_225/while/lstm_cell_513/Sigmoid_1Sigmoid+lstm_225/while/lstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_225/while/lstm_cell_513/mulMul*lstm_225/while/lstm_cell_513/Sigmoid_1:y:0lstm_225_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_225/while/lstm_cell_513/ReluRelu+lstm_225/while/lstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_225/while/lstm_cell_513/mul_1Mul(lstm_225/while/lstm_cell_513/Sigmoid:y:0/lstm_225/while/lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_225/while/lstm_cell_513/add_1AddV2$lstm_225/while/lstm_cell_513/mul:z:0&lstm_225/while/lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_225/while/lstm_cell_513/Sigmoid_2Sigmoid+lstm_225/while/lstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_225/while/lstm_cell_513/Relu_1Relu&lstm_225/while/lstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_225/while/lstm_cell_513/mul_2Mul*lstm_225/while/lstm_cell_513/Sigmoid_2:y:01lstm_225/while/lstm_cell_513/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_225/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_225_while_placeholder_1lstm_225_while_placeholder&lstm_225/while/lstm_cell_513/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_225/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_225/while/addAddV2lstm_225_while_placeholderlstm_225/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_225/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_225/while/add_1AddV2*lstm_225_while_lstm_225_while_loop_counterlstm_225/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_225/while/IdentityIdentitylstm_225/while/add_1:z:0^lstm_225/while/NoOp*
T0*
_output_shapes
: ?
lstm_225/while/Identity_1Identity0lstm_225_while_lstm_225_while_maximum_iterations^lstm_225/while/NoOp*
T0*
_output_shapes
: t
lstm_225/while/Identity_2Identitylstm_225/while/add:z:0^lstm_225/while/NoOp*
T0*
_output_shapes
: ?
lstm_225/while/Identity_3IdentityClstm_225/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_225/while/NoOp*
T0*
_output_shapes
: ?
lstm_225/while/Identity_4Identity&lstm_225/while/lstm_cell_513/mul_2:z:0^lstm_225/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_225/while/Identity_5Identity&lstm_225/while/lstm_cell_513/add_1:z:0^lstm_225/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_225/while/NoOpNoOp4^lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOp3^lstm_225/while/lstm_cell_513/MatMul/ReadVariableOp5^lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_225_while_identity lstm_225/while/Identity:output:0"?
lstm_225_while_identity_1"lstm_225/while/Identity_1:output:0"?
lstm_225_while_identity_2"lstm_225/while/Identity_2:output:0"?
lstm_225_while_identity_3"lstm_225/while/Identity_3:output:0"?
lstm_225_while_identity_4"lstm_225/while/Identity_4:output:0"?
lstm_225_while_identity_5"lstm_225/while/Identity_5:output:0"T
'lstm_225_while_lstm_225_strided_slice_1)lstm_225_while_lstm_225_strided_slice_1_0"~
<lstm_225_while_lstm_cell_513_biasadd_readvariableop_resource>lstm_225_while_lstm_cell_513_biasadd_readvariableop_resource_0"?
=lstm_225_while_lstm_cell_513_matmul_1_readvariableop_resource?lstm_225_while_lstm_cell_513_matmul_1_readvariableop_resource_0"|
;lstm_225_while_lstm_cell_513_matmul_readvariableop_resource=lstm_225_while_lstm_cell_513_matmul_readvariableop_resource_0"?
clstm_225_while_tensorarrayv2read_tensorlistgetitem_lstm_225_tensorarrayunstack_tensorlistfromtensorelstm_225_while_tensorarrayv2read_tensorlistgetitem_lstm_225_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOp3lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOp2h
2lstm_225/while/lstm_cell_513/MatMul/ReadVariableOp2lstm_225/while/lstm_cell_513/MatMul/ReadVariableOp2l
4lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOp4lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_225_while_body_3117529.
*lstm_225_while_lstm_225_while_loop_counter4
0lstm_225_while_lstm_225_while_maximum_iterations
lstm_225_while_placeholder 
lstm_225_while_placeholder_1 
lstm_225_while_placeholder_2 
lstm_225_while_placeholder_3-
)lstm_225_while_lstm_225_strided_slice_1_0i
elstm_225_while_tensorarrayv2read_tensorlistgetitem_lstm_225_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_225_while_lstm_cell_513_matmul_readvariableop_resource_0:	?R
?lstm_225_while_lstm_cell_513_matmul_1_readvariableop_resource_0:	d?M
>lstm_225_while_lstm_cell_513_biasadd_readvariableop_resource_0:	?
lstm_225_while_identity
lstm_225_while_identity_1
lstm_225_while_identity_2
lstm_225_while_identity_3
lstm_225_while_identity_4
lstm_225_while_identity_5+
'lstm_225_while_lstm_225_strided_slice_1g
clstm_225_while_tensorarrayv2read_tensorlistgetitem_lstm_225_tensorarrayunstack_tensorlistfromtensorN
;lstm_225_while_lstm_cell_513_matmul_readvariableop_resource:	?P
=lstm_225_while_lstm_cell_513_matmul_1_readvariableop_resource:	d?K
<lstm_225_while_lstm_cell_513_biasadd_readvariableop_resource:	???3lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOp?2lstm_225/while/lstm_cell_513/MatMul/ReadVariableOp?4lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOp?
@lstm_225/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_225/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_225_while_tensorarrayv2read_tensorlistgetitem_lstm_225_tensorarrayunstack_tensorlistfromtensor_0lstm_225_while_placeholderIlstm_225/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_225/while/lstm_cell_513/MatMul/ReadVariableOpReadVariableOp=lstm_225_while_lstm_cell_513_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_225/while/lstm_cell_513/MatMulMatMul9lstm_225/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_225/while/lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOp?lstm_225_while_lstm_cell_513_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_225/while/lstm_cell_513/MatMul_1MatMullstm_225_while_placeholder_2<lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_225/while/lstm_cell_513/addAddV2-lstm_225/while/lstm_cell_513/MatMul:product:0/lstm_225/while/lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOp>lstm_225_while_lstm_cell_513_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_225/while/lstm_cell_513/BiasAddBiasAdd$lstm_225/while/lstm_cell_513/add:z:0;lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_225/while/lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_225/while/lstm_cell_513/splitSplit5lstm_225/while/lstm_cell_513/split/split_dim:output:0-lstm_225/while/lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_225/while/lstm_cell_513/SigmoidSigmoid+lstm_225/while/lstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_225/while/lstm_cell_513/Sigmoid_1Sigmoid+lstm_225/while/lstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_225/while/lstm_cell_513/mulMul*lstm_225/while/lstm_cell_513/Sigmoid_1:y:0lstm_225_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_225/while/lstm_cell_513/ReluRelu+lstm_225/while/lstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_225/while/lstm_cell_513/mul_1Mul(lstm_225/while/lstm_cell_513/Sigmoid:y:0/lstm_225/while/lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_225/while/lstm_cell_513/add_1AddV2$lstm_225/while/lstm_cell_513/mul:z:0&lstm_225/while/lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_225/while/lstm_cell_513/Sigmoid_2Sigmoid+lstm_225/while/lstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_225/while/lstm_cell_513/Relu_1Relu&lstm_225/while/lstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_225/while/lstm_cell_513/mul_2Mul*lstm_225/while/lstm_cell_513/Sigmoid_2:y:01lstm_225/while/lstm_cell_513/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_225/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_225_while_placeholder_1lstm_225_while_placeholder&lstm_225/while/lstm_cell_513/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_225/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_225/while/addAddV2lstm_225_while_placeholderlstm_225/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_225/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_225/while/add_1AddV2*lstm_225_while_lstm_225_while_loop_counterlstm_225/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_225/while/IdentityIdentitylstm_225/while/add_1:z:0^lstm_225/while/NoOp*
T0*
_output_shapes
: ?
lstm_225/while/Identity_1Identity0lstm_225_while_lstm_225_while_maximum_iterations^lstm_225/while/NoOp*
T0*
_output_shapes
: t
lstm_225/while/Identity_2Identitylstm_225/while/add:z:0^lstm_225/while/NoOp*
T0*
_output_shapes
: ?
lstm_225/while/Identity_3IdentityClstm_225/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_225/while/NoOp*
T0*
_output_shapes
: ?
lstm_225/while/Identity_4Identity&lstm_225/while/lstm_cell_513/mul_2:z:0^lstm_225/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_225/while/Identity_5Identity&lstm_225/while/lstm_cell_513/add_1:z:0^lstm_225/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_225/while/NoOpNoOp4^lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOp3^lstm_225/while/lstm_cell_513/MatMul/ReadVariableOp5^lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_225_while_identity lstm_225/while/Identity:output:0"?
lstm_225_while_identity_1"lstm_225/while/Identity_1:output:0"?
lstm_225_while_identity_2"lstm_225/while/Identity_2:output:0"?
lstm_225_while_identity_3"lstm_225/while/Identity_3:output:0"?
lstm_225_while_identity_4"lstm_225/while/Identity_4:output:0"?
lstm_225_while_identity_5"lstm_225/while/Identity_5:output:0"T
'lstm_225_while_lstm_225_strided_slice_1)lstm_225_while_lstm_225_strided_slice_1_0"~
<lstm_225_while_lstm_cell_513_biasadd_readvariableop_resource>lstm_225_while_lstm_cell_513_biasadd_readvariableop_resource_0"?
=lstm_225_while_lstm_cell_513_matmul_1_readvariableop_resource?lstm_225_while_lstm_cell_513_matmul_1_readvariableop_resource_0"|
;lstm_225_while_lstm_cell_513_matmul_readvariableop_resource=lstm_225_while_lstm_cell_513_matmul_readvariableop_resource_0"?
clstm_225_while_tensorarrayv2read_tensorlistgetitem_lstm_225_tensorarrayunstack_tensorlistfromtensorelstm_225_while_tensorarrayv2read_tensorlistgetitem_lstm_225_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOp3lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOp2h
2lstm_225/while/lstm_cell_513/MatMul/ReadVariableOp2lstm_225/while/lstm_cell_513/MatMul/ReadVariableOp2l
4lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOp4lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3117999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3117999___redundant_placeholder05
1while_while_cond_3117999___redundant_placeholder15
1while_while_cond_3117999___redundant_placeholder25
1while_while_cond_3117999___redundant_placeholder3
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
/__inference_sequential_75_layer_call_fn_3116894
lstm_225_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_225_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_75_layer_call_and_return_conditional_losses_3116842o
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
_user_specified_namelstm_225_input
??
?
J__inference_sequential_75_layer_call_and_return_conditional_losses_3117897

inputsH
5lstm_225_lstm_cell_513_matmul_readvariableop_resource:	?J
7lstm_225_lstm_cell_513_matmul_1_readvariableop_resource:	d?E
6lstm_225_lstm_cell_513_biasadd_readvariableop_resource:	?H
5lstm_226_lstm_cell_514_matmul_readvariableop_resource:	d?J
7lstm_226_lstm_cell_514_matmul_1_readvariableop_resource:	2?E
6lstm_226_lstm_cell_514_biasadd_readvariableop_resource:	?G
5lstm_227_lstm_cell_515_matmul_readvariableop_resource:2(I
7lstm_227_lstm_cell_515_matmul_1_readvariableop_resource:
(D
6lstm_227_lstm_cell_515_biasadd_readvariableop_resource:(9
'dense_75_matmul_readvariableop_resource:
6
(dense_75_biasadd_readvariableop_resource:
identity??dense_75/BiasAdd/ReadVariableOp?dense_75/MatMul/ReadVariableOp?-lstm_225/lstm_cell_513/BiasAdd/ReadVariableOp?,lstm_225/lstm_cell_513/MatMul/ReadVariableOp?.lstm_225/lstm_cell_513/MatMul_1/ReadVariableOp?lstm_225/while?-lstm_226/lstm_cell_514/BiasAdd/ReadVariableOp?,lstm_226/lstm_cell_514/MatMul/ReadVariableOp?.lstm_226/lstm_cell_514/MatMul_1/ReadVariableOp?lstm_226/while?-lstm_227/lstm_cell_515/BiasAdd/ReadVariableOp?,lstm_227/lstm_cell_515/MatMul/ReadVariableOp?.lstm_227/lstm_cell_515/MatMul_1/ReadVariableOp?lstm_227/whileD
lstm_225/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_225/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_225/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_225/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_225/strided_sliceStridedSlicelstm_225/Shape:output:0%lstm_225/strided_slice/stack:output:0'lstm_225/strided_slice/stack_1:output:0'lstm_225/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_225/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_225/zeros/packedPacklstm_225/strided_slice:output:0 lstm_225/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_225/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_225/zerosFilllstm_225/zeros/packed:output:0lstm_225/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_225/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_225/zeros_1/packedPacklstm_225/strided_slice:output:0"lstm_225/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_225/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_225/zeros_1Fill lstm_225/zeros_1/packed:output:0lstm_225/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_225/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_225/transpose	Transposeinputs lstm_225/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_225/Shape_1Shapelstm_225/transpose:y:0*
T0*
_output_shapes
:h
lstm_225/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_225/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_225/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_225/strided_slice_1StridedSlicelstm_225/Shape_1:output:0'lstm_225/strided_slice_1/stack:output:0)lstm_225/strided_slice_1/stack_1:output:0)lstm_225/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_225/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_225/TensorArrayV2TensorListReserve-lstm_225/TensorArrayV2/element_shape:output:0!lstm_225/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_225/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_225/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_225/transpose:y:0Glstm_225/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_225/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_225/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_225/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_225/strided_slice_2StridedSlicelstm_225/transpose:y:0'lstm_225/strided_slice_2/stack:output:0)lstm_225/strided_slice_2/stack_1:output:0)lstm_225/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_225/lstm_cell_513/MatMul/ReadVariableOpReadVariableOp5lstm_225_lstm_cell_513_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_225/lstm_cell_513/MatMulMatMul!lstm_225/strided_slice_2:output:04lstm_225/lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_225/lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOp7lstm_225_lstm_cell_513_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_225/lstm_cell_513/MatMul_1MatMullstm_225/zeros:output:06lstm_225/lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_225/lstm_cell_513/addAddV2'lstm_225/lstm_cell_513/MatMul:product:0)lstm_225/lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_225/lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOp6lstm_225_lstm_cell_513_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_225/lstm_cell_513/BiasAddBiasAddlstm_225/lstm_cell_513/add:z:05lstm_225/lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_225/lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_225/lstm_cell_513/splitSplit/lstm_225/lstm_cell_513/split/split_dim:output:0'lstm_225/lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_225/lstm_cell_513/SigmoidSigmoid%lstm_225/lstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_225/lstm_cell_513/Sigmoid_1Sigmoid%lstm_225/lstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_225/lstm_cell_513/mulMul$lstm_225/lstm_cell_513/Sigmoid_1:y:0lstm_225/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_225/lstm_cell_513/ReluRelu%lstm_225/lstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_225/lstm_cell_513/mul_1Mul"lstm_225/lstm_cell_513/Sigmoid:y:0)lstm_225/lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_225/lstm_cell_513/add_1AddV2lstm_225/lstm_cell_513/mul:z:0 lstm_225/lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_225/lstm_cell_513/Sigmoid_2Sigmoid%lstm_225/lstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_225/lstm_cell_513/Relu_1Relu lstm_225/lstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_225/lstm_cell_513/mul_2Mul$lstm_225/lstm_cell_513/Sigmoid_2:y:0+lstm_225/lstm_cell_513/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_225/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_225/TensorArrayV2_1TensorListReserve/lstm_225/TensorArrayV2_1/element_shape:output:0!lstm_225/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_225/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_225/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_225/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_225/whileWhile$lstm_225/while/loop_counter:output:0*lstm_225/while/maximum_iterations:output:0lstm_225/time:output:0!lstm_225/TensorArrayV2_1:handle:0lstm_225/zeros:output:0lstm_225/zeros_1:output:0!lstm_225/strided_slice_1:output:0@lstm_225/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_225_lstm_cell_513_matmul_readvariableop_resource7lstm_225_lstm_cell_513_matmul_1_readvariableop_resource6lstm_225_lstm_cell_513_biasadd_readvariableop_resource*
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
lstm_225_while_body_3117529*'
condR
lstm_225_while_cond_3117528*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_225/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_225/TensorArrayV2Stack/TensorListStackTensorListStacklstm_225/while:output:3Blstm_225/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_225/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_225/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_225/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_225/strided_slice_3StridedSlice4lstm_225/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_225/strided_slice_3/stack:output:0)lstm_225/strided_slice_3/stack_1:output:0)lstm_225/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_225/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_225/transpose_1	Transpose4lstm_225/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_225/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_225/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_226/ShapeShapelstm_225/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_226/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_226/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_226/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_226/strided_sliceStridedSlicelstm_226/Shape:output:0%lstm_226/strided_slice/stack:output:0'lstm_226/strided_slice/stack_1:output:0'lstm_226/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_226/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_226/zeros/packedPacklstm_226/strided_slice:output:0 lstm_226/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_226/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_226/zerosFilllstm_226/zeros/packed:output:0lstm_226/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_226/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_226/zeros_1/packedPacklstm_226/strided_slice:output:0"lstm_226/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_226/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_226/zeros_1Fill lstm_226/zeros_1/packed:output:0lstm_226/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_226/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_226/transpose	Transposelstm_225/transpose_1:y:0 lstm_226/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_226/Shape_1Shapelstm_226/transpose:y:0*
T0*
_output_shapes
:h
lstm_226/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_226/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_226/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_226/strided_slice_1StridedSlicelstm_226/Shape_1:output:0'lstm_226/strided_slice_1/stack:output:0)lstm_226/strided_slice_1/stack_1:output:0)lstm_226/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_226/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_226/TensorArrayV2TensorListReserve-lstm_226/TensorArrayV2/element_shape:output:0!lstm_226/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_226/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_226/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_226/transpose:y:0Glstm_226/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_226/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_226/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_226/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_226/strided_slice_2StridedSlicelstm_226/transpose:y:0'lstm_226/strided_slice_2/stack:output:0)lstm_226/strided_slice_2/stack_1:output:0)lstm_226/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_226/lstm_cell_514/MatMul/ReadVariableOpReadVariableOp5lstm_226_lstm_cell_514_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_226/lstm_cell_514/MatMulMatMul!lstm_226/strided_slice_2:output:04lstm_226/lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_226/lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOp7lstm_226_lstm_cell_514_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_226/lstm_cell_514/MatMul_1MatMullstm_226/zeros:output:06lstm_226/lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_226/lstm_cell_514/addAddV2'lstm_226/lstm_cell_514/MatMul:product:0)lstm_226/lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_226/lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOp6lstm_226_lstm_cell_514_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_226/lstm_cell_514/BiasAddBiasAddlstm_226/lstm_cell_514/add:z:05lstm_226/lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_226/lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_226/lstm_cell_514/splitSplit/lstm_226/lstm_cell_514/split/split_dim:output:0'lstm_226/lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_226/lstm_cell_514/SigmoidSigmoid%lstm_226/lstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_226/lstm_cell_514/Sigmoid_1Sigmoid%lstm_226/lstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_226/lstm_cell_514/mulMul$lstm_226/lstm_cell_514/Sigmoid_1:y:0lstm_226/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_226/lstm_cell_514/ReluRelu%lstm_226/lstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_226/lstm_cell_514/mul_1Mul"lstm_226/lstm_cell_514/Sigmoid:y:0)lstm_226/lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_226/lstm_cell_514/add_1AddV2lstm_226/lstm_cell_514/mul:z:0 lstm_226/lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_226/lstm_cell_514/Sigmoid_2Sigmoid%lstm_226/lstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_226/lstm_cell_514/Relu_1Relu lstm_226/lstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_226/lstm_cell_514/mul_2Mul$lstm_226/lstm_cell_514/Sigmoid_2:y:0+lstm_226/lstm_cell_514/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_226/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_226/TensorArrayV2_1TensorListReserve/lstm_226/TensorArrayV2_1/element_shape:output:0!lstm_226/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_226/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_226/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_226/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_226/whileWhile$lstm_226/while/loop_counter:output:0*lstm_226/while/maximum_iterations:output:0lstm_226/time:output:0!lstm_226/TensorArrayV2_1:handle:0lstm_226/zeros:output:0lstm_226/zeros_1:output:0!lstm_226/strided_slice_1:output:0@lstm_226/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_226_lstm_cell_514_matmul_readvariableop_resource7lstm_226_lstm_cell_514_matmul_1_readvariableop_resource6lstm_226_lstm_cell_514_biasadd_readvariableop_resource*
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
lstm_226_while_body_3117668*'
condR
lstm_226_while_cond_3117667*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_226/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_226/TensorArrayV2Stack/TensorListStackTensorListStacklstm_226/while:output:3Blstm_226/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_226/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_226/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_226/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_226/strided_slice_3StridedSlice4lstm_226/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_226/strided_slice_3/stack:output:0)lstm_226/strided_slice_3/stack_1:output:0)lstm_226/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_226/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_226/transpose_1	Transpose4lstm_226/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_226/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_226/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_227/ShapeShapelstm_226/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_227/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_227/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_227/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_227/strided_sliceStridedSlicelstm_227/Shape:output:0%lstm_227/strided_slice/stack:output:0'lstm_227/strided_slice/stack_1:output:0'lstm_227/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_227/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_227/zeros/packedPacklstm_227/strided_slice:output:0 lstm_227/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_227/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_227/zerosFilllstm_227/zeros/packed:output:0lstm_227/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_227/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_227/zeros_1/packedPacklstm_227/strided_slice:output:0"lstm_227/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_227/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_227/zeros_1Fill lstm_227/zeros_1/packed:output:0lstm_227/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_227/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_227/transpose	Transposelstm_226/transpose_1:y:0 lstm_227/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_227/Shape_1Shapelstm_227/transpose:y:0*
T0*
_output_shapes
:h
lstm_227/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_227/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_227/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_227/strided_slice_1StridedSlicelstm_227/Shape_1:output:0'lstm_227/strided_slice_1/stack:output:0)lstm_227/strided_slice_1/stack_1:output:0)lstm_227/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_227/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_227/TensorArrayV2TensorListReserve-lstm_227/TensorArrayV2/element_shape:output:0!lstm_227/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_227/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_227/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_227/transpose:y:0Glstm_227/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_227/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_227/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_227/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_227/strided_slice_2StridedSlicelstm_227/transpose:y:0'lstm_227/strided_slice_2/stack:output:0)lstm_227/strided_slice_2/stack_1:output:0)lstm_227/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_227/lstm_cell_515/MatMul/ReadVariableOpReadVariableOp5lstm_227_lstm_cell_515_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_227/lstm_cell_515/MatMulMatMul!lstm_227/strided_slice_2:output:04lstm_227/lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_227/lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOp7lstm_227_lstm_cell_515_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_227/lstm_cell_515/MatMul_1MatMullstm_227/zeros:output:06lstm_227/lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_227/lstm_cell_515/addAddV2'lstm_227/lstm_cell_515/MatMul:product:0)lstm_227/lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_227/lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOp6lstm_227_lstm_cell_515_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_227/lstm_cell_515/BiasAddBiasAddlstm_227/lstm_cell_515/add:z:05lstm_227/lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_227/lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_227/lstm_cell_515/splitSplit/lstm_227/lstm_cell_515/split/split_dim:output:0'lstm_227/lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_227/lstm_cell_515/SigmoidSigmoid%lstm_227/lstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_227/lstm_cell_515/Sigmoid_1Sigmoid%lstm_227/lstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_227/lstm_cell_515/mulMul$lstm_227/lstm_cell_515/Sigmoid_1:y:0lstm_227/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_227/lstm_cell_515/ReluRelu%lstm_227/lstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_227/lstm_cell_515/mul_1Mul"lstm_227/lstm_cell_515/Sigmoid:y:0)lstm_227/lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_227/lstm_cell_515/add_1AddV2lstm_227/lstm_cell_515/mul:z:0 lstm_227/lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_227/lstm_cell_515/Sigmoid_2Sigmoid%lstm_227/lstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_227/lstm_cell_515/Relu_1Relu lstm_227/lstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_227/lstm_cell_515/mul_2Mul$lstm_227/lstm_cell_515/Sigmoid_2:y:0+lstm_227/lstm_cell_515/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_227/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_227/TensorArrayV2_1TensorListReserve/lstm_227/TensorArrayV2_1/element_shape:output:0!lstm_227/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_227/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_227/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_227/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_227/whileWhile$lstm_227/while/loop_counter:output:0*lstm_227/while/maximum_iterations:output:0lstm_227/time:output:0!lstm_227/TensorArrayV2_1:handle:0lstm_227/zeros:output:0lstm_227/zeros_1:output:0!lstm_227/strided_slice_1:output:0@lstm_227/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_227_lstm_cell_515_matmul_readvariableop_resource7lstm_227_lstm_cell_515_matmul_1_readvariableop_resource6lstm_227_lstm_cell_515_biasadd_readvariableop_resource*
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
lstm_227_while_body_3117807*'
condR
lstm_227_while_cond_3117806*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_227/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_227/TensorArrayV2Stack/TensorListStackTensorListStacklstm_227/while:output:3Blstm_227/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_227/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_227/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_227/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_227/strided_slice_3StridedSlice4lstm_227/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_227/strided_slice_3/stack:output:0)lstm_227/strided_slice_3/stack_1:output:0)lstm_227/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_227/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_227/transpose_1	Transpose4lstm_227/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_227/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_227/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_75/MatMul/ReadVariableOpReadVariableOp'dense_75_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_75/MatMulMatMul!lstm_227/strided_slice_3:output:0&dense_75/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_75/BiasAdd/ReadVariableOpReadVariableOp(dense_75_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_75/BiasAddBiasAdddense_75/MatMul:product:0'dense_75/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_75/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_75/BiasAdd/ReadVariableOp^dense_75/MatMul/ReadVariableOp.^lstm_225/lstm_cell_513/BiasAdd/ReadVariableOp-^lstm_225/lstm_cell_513/MatMul/ReadVariableOp/^lstm_225/lstm_cell_513/MatMul_1/ReadVariableOp^lstm_225/while.^lstm_226/lstm_cell_514/BiasAdd/ReadVariableOp-^lstm_226/lstm_cell_514/MatMul/ReadVariableOp/^lstm_226/lstm_cell_514/MatMul_1/ReadVariableOp^lstm_226/while.^lstm_227/lstm_cell_515/BiasAdd/ReadVariableOp-^lstm_227/lstm_cell_515/MatMul/ReadVariableOp/^lstm_227/lstm_cell_515/MatMul_1/ReadVariableOp^lstm_227/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_75/BiasAdd/ReadVariableOpdense_75/BiasAdd/ReadVariableOp2@
dense_75/MatMul/ReadVariableOpdense_75/MatMul/ReadVariableOp2^
-lstm_225/lstm_cell_513/BiasAdd/ReadVariableOp-lstm_225/lstm_cell_513/BiasAdd/ReadVariableOp2\
,lstm_225/lstm_cell_513/MatMul/ReadVariableOp,lstm_225/lstm_cell_513/MatMul/ReadVariableOp2`
.lstm_225/lstm_cell_513/MatMul_1/ReadVariableOp.lstm_225/lstm_cell_513/MatMul_1/ReadVariableOp2 
lstm_225/whilelstm_225/while2^
-lstm_226/lstm_cell_514/BiasAdd/ReadVariableOp-lstm_226/lstm_cell_514/BiasAdd/ReadVariableOp2\
,lstm_226/lstm_cell_514/MatMul/ReadVariableOp,lstm_226/lstm_cell_514/MatMul/ReadVariableOp2`
.lstm_226/lstm_cell_514/MatMul_1/ReadVariableOp.lstm_226/lstm_cell_514/MatMul_1/ReadVariableOp2 
lstm_226/whilelstm_226/while2^
-lstm_227/lstm_cell_515/BiasAdd/ReadVariableOp-lstm_227/lstm_cell_515/BiasAdd/ReadVariableOp2\
,lstm_227/lstm_cell_515/MatMul/ReadVariableOp,lstm_227/lstm_cell_515/MatMul/ReadVariableOp2`
.lstm_227/lstm_cell_515/MatMul_1/ReadVariableOp.lstm_227/lstm_cell_515/MatMul_1/ReadVariableOp2 
lstm_227/whilelstm_227/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3115509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3115509___redundant_placeholder05
1while_while_cond_3115509___redundant_placeholder15
1while_while_cond_3115509___redundant_placeholder25
1while_while_cond_3115509___redundant_placeholder3
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
while_body_3119518
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_515_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_515_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_515_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_515_matmul_readvariableop_resource:2(F
4while_lstm_cell_515_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_515_biasadd_readvariableop_resource:(??*while/lstm_cell_515/BiasAdd/ReadVariableOp?)while/lstm_cell_515/MatMul/ReadVariableOp?+while/lstm_cell_515/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_515/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_515_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_515/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_515_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_515/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_515/addAddV2$while/lstm_cell_515/MatMul:product:0&while/lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_515_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_515/BiasAddBiasAddwhile/lstm_cell_515/add:z:02while/lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_515/splitSplit,while/lstm_cell_515/split/split_dim:output:0$while/lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_515/SigmoidSigmoid"while/lstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_515/Sigmoid_1Sigmoid"while/lstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mulMul!while/lstm_cell_515/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_515/ReluRelu"while/lstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mul_1Mulwhile/lstm_cell_515/Sigmoid:y:0&while/lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/add_1AddV2while/lstm_cell_515/mul:z:0while/lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_515/Sigmoid_2Sigmoid"while/lstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_515/Relu_1Reluwhile/lstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mul_2Mul!while/lstm_cell_515/Sigmoid_2:y:0(while/lstm_cell_515/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_515/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_515/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_515/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_515/BiasAdd/ReadVariableOp*^while/lstm_cell_515/MatMul/ReadVariableOp,^while/lstm_cell_515/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_515_biasadd_readvariableop_resource5while_lstm_cell_515_biasadd_readvariableop_resource_0"n
4while_lstm_cell_515_matmul_1_readvariableop_resource6while_lstm_cell_515_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_515_matmul_readvariableop_resource4while_lstm_cell_515_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_515/BiasAdd/ReadVariableOp*while/lstm_cell_515/BiasAdd/ReadVariableOp2V
)while/lstm_cell_515/MatMul/ReadVariableOp)while/lstm_cell_515/MatMul/ReadVariableOp2Z
+while/lstm_cell_515/MatMul_1/ReadVariableOp+while/lstm_cell_515/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_515_layer_call_and_return_conditional_losses_3115496

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
??
?
J__inference_sequential_75_layer_call_and_return_conditional_losses_3117470

inputsH
5lstm_225_lstm_cell_513_matmul_readvariableop_resource:	?J
7lstm_225_lstm_cell_513_matmul_1_readvariableop_resource:	d?E
6lstm_225_lstm_cell_513_biasadd_readvariableop_resource:	?H
5lstm_226_lstm_cell_514_matmul_readvariableop_resource:	d?J
7lstm_226_lstm_cell_514_matmul_1_readvariableop_resource:	2?E
6lstm_226_lstm_cell_514_biasadd_readvariableop_resource:	?G
5lstm_227_lstm_cell_515_matmul_readvariableop_resource:2(I
7lstm_227_lstm_cell_515_matmul_1_readvariableop_resource:
(D
6lstm_227_lstm_cell_515_biasadd_readvariableop_resource:(9
'dense_75_matmul_readvariableop_resource:
6
(dense_75_biasadd_readvariableop_resource:
identity??dense_75/BiasAdd/ReadVariableOp?dense_75/MatMul/ReadVariableOp?-lstm_225/lstm_cell_513/BiasAdd/ReadVariableOp?,lstm_225/lstm_cell_513/MatMul/ReadVariableOp?.lstm_225/lstm_cell_513/MatMul_1/ReadVariableOp?lstm_225/while?-lstm_226/lstm_cell_514/BiasAdd/ReadVariableOp?,lstm_226/lstm_cell_514/MatMul/ReadVariableOp?.lstm_226/lstm_cell_514/MatMul_1/ReadVariableOp?lstm_226/while?-lstm_227/lstm_cell_515/BiasAdd/ReadVariableOp?,lstm_227/lstm_cell_515/MatMul/ReadVariableOp?.lstm_227/lstm_cell_515/MatMul_1/ReadVariableOp?lstm_227/whileD
lstm_225/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_225/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_225/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_225/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_225/strided_sliceStridedSlicelstm_225/Shape:output:0%lstm_225/strided_slice/stack:output:0'lstm_225/strided_slice/stack_1:output:0'lstm_225/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_225/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_225/zeros/packedPacklstm_225/strided_slice:output:0 lstm_225/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_225/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_225/zerosFilllstm_225/zeros/packed:output:0lstm_225/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_225/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_225/zeros_1/packedPacklstm_225/strided_slice:output:0"lstm_225/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_225/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_225/zeros_1Fill lstm_225/zeros_1/packed:output:0lstm_225/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_225/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_225/transpose	Transposeinputs lstm_225/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_225/Shape_1Shapelstm_225/transpose:y:0*
T0*
_output_shapes
:h
lstm_225/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_225/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_225/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_225/strided_slice_1StridedSlicelstm_225/Shape_1:output:0'lstm_225/strided_slice_1/stack:output:0)lstm_225/strided_slice_1/stack_1:output:0)lstm_225/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_225/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_225/TensorArrayV2TensorListReserve-lstm_225/TensorArrayV2/element_shape:output:0!lstm_225/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_225/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_225/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_225/transpose:y:0Glstm_225/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_225/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_225/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_225/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_225/strided_slice_2StridedSlicelstm_225/transpose:y:0'lstm_225/strided_slice_2/stack:output:0)lstm_225/strided_slice_2/stack_1:output:0)lstm_225/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_225/lstm_cell_513/MatMul/ReadVariableOpReadVariableOp5lstm_225_lstm_cell_513_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_225/lstm_cell_513/MatMulMatMul!lstm_225/strided_slice_2:output:04lstm_225/lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_225/lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOp7lstm_225_lstm_cell_513_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_225/lstm_cell_513/MatMul_1MatMullstm_225/zeros:output:06lstm_225/lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_225/lstm_cell_513/addAddV2'lstm_225/lstm_cell_513/MatMul:product:0)lstm_225/lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_225/lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOp6lstm_225_lstm_cell_513_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_225/lstm_cell_513/BiasAddBiasAddlstm_225/lstm_cell_513/add:z:05lstm_225/lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_225/lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_225/lstm_cell_513/splitSplit/lstm_225/lstm_cell_513/split/split_dim:output:0'lstm_225/lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_225/lstm_cell_513/SigmoidSigmoid%lstm_225/lstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_225/lstm_cell_513/Sigmoid_1Sigmoid%lstm_225/lstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_225/lstm_cell_513/mulMul$lstm_225/lstm_cell_513/Sigmoid_1:y:0lstm_225/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_225/lstm_cell_513/ReluRelu%lstm_225/lstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_225/lstm_cell_513/mul_1Mul"lstm_225/lstm_cell_513/Sigmoid:y:0)lstm_225/lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_225/lstm_cell_513/add_1AddV2lstm_225/lstm_cell_513/mul:z:0 lstm_225/lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_225/lstm_cell_513/Sigmoid_2Sigmoid%lstm_225/lstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_225/lstm_cell_513/Relu_1Relu lstm_225/lstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_225/lstm_cell_513/mul_2Mul$lstm_225/lstm_cell_513/Sigmoid_2:y:0+lstm_225/lstm_cell_513/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_225/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_225/TensorArrayV2_1TensorListReserve/lstm_225/TensorArrayV2_1/element_shape:output:0!lstm_225/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_225/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_225/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_225/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_225/whileWhile$lstm_225/while/loop_counter:output:0*lstm_225/while/maximum_iterations:output:0lstm_225/time:output:0!lstm_225/TensorArrayV2_1:handle:0lstm_225/zeros:output:0lstm_225/zeros_1:output:0!lstm_225/strided_slice_1:output:0@lstm_225/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_225_lstm_cell_513_matmul_readvariableop_resource7lstm_225_lstm_cell_513_matmul_1_readvariableop_resource6lstm_225_lstm_cell_513_biasadd_readvariableop_resource*
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
lstm_225_while_body_3117102*'
condR
lstm_225_while_cond_3117101*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_225/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_225/TensorArrayV2Stack/TensorListStackTensorListStacklstm_225/while:output:3Blstm_225/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_225/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_225/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_225/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_225/strided_slice_3StridedSlice4lstm_225/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_225/strided_slice_3/stack:output:0)lstm_225/strided_slice_3/stack_1:output:0)lstm_225/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_225/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_225/transpose_1	Transpose4lstm_225/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_225/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_225/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_226/ShapeShapelstm_225/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_226/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_226/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_226/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_226/strided_sliceStridedSlicelstm_226/Shape:output:0%lstm_226/strided_slice/stack:output:0'lstm_226/strided_slice/stack_1:output:0'lstm_226/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_226/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_226/zeros/packedPacklstm_226/strided_slice:output:0 lstm_226/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_226/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_226/zerosFilllstm_226/zeros/packed:output:0lstm_226/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_226/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_226/zeros_1/packedPacklstm_226/strided_slice:output:0"lstm_226/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_226/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_226/zeros_1Fill lstm_226/zeros_1/packed:output:0lstm_226/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_226/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_226/transpose	Transposelstm_225/transpose_1:y:0 lstm_226/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_226/Shape_1Shapelstm_226/transpose:y:0*
T0*
_output_shapes
:h
lstm_226/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_226/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_226/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_226/strided_slice_1StridedSlicelstm_226/Shape_1:output:0'lstm_226/strided_slice_1/stack:output:0)lstm_226/strided_slice_1/stack_1:output:0)lstm_226/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_226/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_226/TensorArrayV2TensorListReserve-lstm_226/TensorArrayV2/element_shape:output:0!lstm_226/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_226/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_226/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_226/transpose:y:0Glstm_226/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_226/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_226/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_226/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_226/strided_slice_2StridedSlicelstm_226/transpose:y:0'lstm_226/strided_slice_2/stack:output:0)lstm_226/strided_slice_2/stack_1:output:0)lstm_226/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_226/lstm_cell_514/MatMul/ReadVariableOpReadVariableOp5lstm_226_lstm_cell_514_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_226/lstm_cell_514/MatMulMatMul!lstm_226/strided_slice_2:output:04lstm_226/lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_226/lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOp7lstm_226_lstm_cell_514_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_226/lstm_cell_514/MatMul_1MatMullstm_226/zeros:output:06lstm_226/lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_226/lstm_cell_514/addAddV2'lstm_226/lstm_cell_514/MatMul:product:0)lstm_226/lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_226/lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOp6lstm_226_lstm_cell_514_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_226/lstm_cell_514/BiasAddBiasAddlstm_226/lstm_cell_514/add:z:05lstm_226/lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_226/lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_226/lstm_cell_514/splitSplit/lstm_226/lstm_cell_514/split/split_dim:output:0'lstm_226/lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_226/lstm_cell_514/SigmoidSigmoid%lstm_226/lstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_226/lstm_cell_514/Sigmoid_1Sigmoid%lstm_226/lstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_226/lstm_cell_514/mulMul$lstm_226/lstm_cell_514/Sigmoid_1:y:0lstm_226/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_226/lstm_cell_514/ReluRelu%lstm_226/lstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_226/lstm_cell_514/mul_1Mul"lstm_226/lstm_cell_514/Sigmoid:y:0)lstm_226/lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_226/lstm_cell_514/add_1AddV2lstm_226/lstm_cell_514/mul:z:0 lstm_226/lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_226/lstm_cell_514/Sigmoid_2Sigmoid%lstm_226/lstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_226/lstm_cell_514/Relu_1Relu lstm_226/lstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_226/lstm_cell_514/mul_2Mul$lstm_226/lstm_cell_514/Sigmoid_2:y:0+lstm_226/lstm_cell_514/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_226/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_226/TensorArrayV2_1TensorListReserve/lstm_226/TensorArrayV2_1/element_shape:output:0!lstm_226/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_226/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_226/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_226/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_226/whileWhile$lstm_226/while/loop_counter:output:0*lstm_226/while/maximum_iterations:output:0lstm_226/time:output:0!lstm_226/TensorArrayV2_1:handle:0lstm_226/zeros:output:0lstm_226/zeros_1:output:0!lstm_226/strided_slice_1:output:0@lstm_226/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_226_lstm_cell_514_matmul_readvariableop_resource7lstm_226_lstm_cell_514_matmul_1_readvariableop_resource6lstm_226_lstm_cell_514_biasadd_readvariableop_resource*
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
lstm_226_while_body_3117241*'
condR
lstm_226_while_cond_3117240*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_226/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_226/TensorArrayV2Stack/TensorListStackTensorListStacklstm_226/while:output:3Blstm_226/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_226/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_226/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_226/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_226/strided_slice_3StridedSlice4lstm_226/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_226/strided_slice_3/stack:output:0)lstm_226/strided_slice_3/stack_1:output:0)lstm_226/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_226/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_226/transpose_1	Transpose4lstm_226/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_226/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_226/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_227/ShapeShapelstm_226/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_227/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_227/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_227/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_227/strided_sliceStridedSlicelstm_227/Shape:output:0%lstm_227/strided_slice/stack:output:0'lstm_227/strided_slice/stack_1:output:0'lstm_227/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_227/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_227/zeros/packedPacklstm_227/strided_slice:output:0 lstm_227/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_227/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_227/zerosFilllstm_227/zeros/packed:output:0lstm_227/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_227/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_227/zeros_1/packedPacklstm_227/strided_slice:output:0"lstm_227/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_227/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_227/zeros_1Fill lstm_227/zeros_1/packed:output:0lstm_227/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_227/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_227/transpose	Transposelstm_226/transpose_1:y:0 lstm_227/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_227/Shape_1Shapelstm_227/transpose:y:0*
T0*
_output_shapes
:h
lstm_227/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_227/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_227/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_227/strided_slice_1StridedSlicelstm_227/Shape_1:output:0'lstm_227/strided_slice_1/stack:output:0)lstm_227/strided_slice_1/stack_1:output:0)lstm_227/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_227/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_227/TensorArrayV2TensorListReserve-lstm_227/TensorArrayV2/element_shape:output:0!lstm_227/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_227/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_227/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_227/transpose:y:0Glstm_227/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_227/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_227/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_227/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_227/strided_slice_2StridedSlicelstm_227/transpose:y:0'lstm_227/strided_slice_2/stack:output:0)lstm_227/strided_slice_2/stack_1:output:0)lstm_227/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_227/lstm_cell_515/MatMul/ReadVariableOpReadVariableOp5lstm_227_lstm_cell_515_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_227/lstm_cell_515/MatMulMatMul!lstm_227/strided_slice_2:output:04lstm_227/lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_227/lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOp7lstm_227_lstm_cell_515_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_227/lstm_cell_515/MatMul_1MatMullstm_227/zeros:output:06lstm_227/lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_227/lstm_cell_515/addAddV2'lstm_227/lstm_cell_515/MatMul:product:0)lstm_227/lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_227/lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOp6lstm_227_lstm_cell_515_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_227/lstm_cell_515/BiasAddBiasAddlstm_227/lstm_cell_515/add:z:05lstm_227/lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_227/lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_227/lstm_cell_515/splitSplit/lstm_227/lstm_cell_515/split/split_dim:output:0'lstm_227/lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_227/lstm_cell_515/SigmoidSigmoid%lstm_227/lstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_227/lstm_cell_515/Sigmoid_1Sigmoid%lstm_227/lstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_227/lstm_cell_515/mulMul$lstm_227/lstm_cell_515/Sigmoid_1:y:0lstm_227/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_227/lstm_cell_515/ReluRelu%lstm_227/lstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_227/lstm_cell_515/mul_1Mul"lstm_227/lstm_cell_515/Sigmoid:y:0)lstm_227/lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_227/lstm_cell_515/add_1AddV2lstm_227/lstm_cell_515/mul:z:0 lstm_227/lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_227/lstm_cell_515/Sigmoid_2Sigmoid%lstm_227/lstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_227/lstm_cell_515/Relu_1Relu lstm_227/lstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_227/lstm_cell_515/mul_2Mul$lstm_227/lstm_cell_515/Sigmoid_2:y:0+lstm_227/lstm_cell_515/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_227/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_227/TensorArrayV2_1TensorListReserve/lstm_227/TensorArrayV2_1/element_shape:output:0!lstm_227/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_227/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_227/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_227/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_227/whileWhile$lstm_227/while/loop_counter:output:0*lstm_227/while/maximum_iterations:output:0lstm_227/time:output:0!lstm_227/TensorArrayV2_1:handle:0lstm_227/zeros:output:0lstm_227/zeros_1:output:0!lstm_227/strided_slice_1:output:0@lstm_227/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_227_lstm_cell_515_matmul_readvariableop_resource7lstm_227_lstm_cell_515_matmul_1_readvariableop_resource6lstm_227_lstm_cell_515_biasadd_readvariableop_resource*
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
lstm_227_while_body_3117380*'
condR
lstm_227_while_cond_3117379*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_227/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_227/TensorArrayV2Stack/TensorListStackTensorListStacklstm_227/while:output:3Blstm_227/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_227/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_227/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_227/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_227/strided_slice_3StridedSlice4lstm_227/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_227/strided_slice_3/stack:output:0)lstm_227/strided_slice_3/stack_1:output:0)lstm_227/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_227/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_227/transpose_1	Transpose4lstm_227/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_227/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_227/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_75/MatMul/ReadVariableOpReadVariableOp'dense_75_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_75/MatMulMatMul!lstm_227/strided_slice_3:output:0&dense_75/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_75/BiasAdd/ReadVariableOpReadVariableOp(dense_75_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_75/BiasAddBiasAdddense_75/MatMul:product:0'dense_75/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_75/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_75/BiasAdd/ReadVariableOp^dense_75/MatMul/ReadVariableOp.^lstm_225/lstm_cell_513/BiasAdd/ReadVariableOp-^lstm_225/lstm_cell_513/MatMul/ReadVariableOp/^lstm_225/lstm_cell_513/MatMul_1/ReadVariableOp^lstm_225/while.^lstm_226/lstm_cell_514/BiasAdd/ReadVariableOp-^lstm_226/lstm_cell_514/MatMul/ReadVariableOp/^lstm_226/lstm_cell_514/MatMul_1/ReadVariableOp^lstm_226/while.^lstm_227/lstm_cell_515/BiasAdd/ReadVariableOp-^lstm_227/lstm_cell_515/MatMul/ReadVariableOp/^lstm_227/lstm_cell_515/MatMul_1/ReadVariableOp^lstm_227/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_75/BiasAdd/ReadVariableOpdense_75/BiasAdd/ReadVariableOp2@
dense_75/MatMul/ReadVariableOpdense_75/MatMul/ReadVariableOp2^
-lstm_225/lstm_cell_513/BiasAdd/ReadVariableOp-lstm_225/lstm_cell_513/BiasAdd/ReadVariableOp2\
,lstm_225/lstm_cell_513/MatMul/ReadVariableOp,lstm_225/lstm_cell_513/MatMul/ReadVariableOp2`
.lstm_225/lstm_cell_513/MatMul_1/ReadVariableOp.lstm_225/lstm_cell_513/MatMul_1/ReadVariableOp2 
lstm_225/whilelstm_225/while2^
-lstm_226/lstm_cell_514/BiasAdd/ReadVariableOp-lstm_226/lstm_cell_514/BiasAdd/ReadVariableOp2\
,lstm_226/lstm_cell_514/MatMul/ReadVariableOp,lstm_226/lstm_cell_514/MatMul/ReadVariableOp2`
.lstm_226/lstm_cell_514/MatMul_1/ReadVariableOp.lstm_226/lstm_cell_514/MatMul_1/ReadVariableOp2 
lstm_226/whilelstm_226/while2^
-lstm_227/lstm_cell_515/BiasAdd/ReadVariableOp-lstm_227/lstm_cell_515/BiasAdd/ReadVariableOp2\
,lstm_227/lstm_cell_515/MatMul/ReadVariableOp,lstm_227/lstm_cell_515/MatMul/ReadVariableOp2`
.lstm_227/lstm_cell_515/MatMul_1/ReadVariableOp.lstm_227/lstm_cell_515/MatMul_1/ReadVariableOp2 
lstm_227/whilelstm_227/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_226_layer_call_fn_3118524
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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3115229|
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
*__inference_lstm_225_layer_call_fn_3117919
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
E__inference_lstm_225_layer_call_and_return_conditional_losses_3115070|
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
*__inference_lstm_226_layer_call_fn_3118535
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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3115420|
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
?J
?
E__inference_lstm_227_layer_call_and_return_conditional_losses_3116444

inputs>
,lstm_cell_515_matmul_readvariableop_resource:2(@
.lstm_cell_515_matmul_1_readvariableop_resource:
(;
-lstm_cell_515_biasadd_readvariableop_resource:(
identity??$lstm_cell_515/BiasAdd/ReadVariableOp?#lstm_cell_515/MatMul/ReadVariableOp?%lstm_cell_515/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_515/MatMul/ReadVariableOpReadVariableOp,lstm_cell_515_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_515/MatMulMatMulstrided_slice_2:output:0+lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_515_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_515/MatMul_1MatMulzeros:output:0-lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_515/addAddV2lstm_cell_515/MatMul:product:0 lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_515_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_515/BiasAddBiasAddlstm_cell_515/add:z:0,lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_515/splitSplit&lstm_cell_515/split/split_dim:output:0lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_515/SigmoidSigmoidlstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_515/Sigmoid_1Sigmoidlstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_515/mulMullstm_cell_515/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_515/ReluRelulstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_515/mul_1Mullstm_cell_515/Sigmoid:y:0 lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_515/add_1AddV2lstm_cell_515/mul:z:0lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_515/Sigmoid_2Sigmoidlstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_515/Relu_1Relulstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_515/mul_2Mullstm_cell_515/Sigmoid_2:y:0"lstm_cell_515/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_515_matmul_readvariableop_resource.lstm_cell_515_matmul_1_readvariableop_resource-lstm_cell_515_biasadd_readvariableop_resource*
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
while_body_3116360*
condR
while_cond_3116359*K
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
NoOpNoOp%^lstm_cell_515/BiasAdd/ReadVariableOp$^lstm_cell_515/MatMul/ReadVariableOp&^lstm_cell_515/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_515/BiasAdd/ReadVariableOp$lstm_cell_515/BiasAdd/ReadVariableOp2J
#lstm_cell_515/MatMul/ReadVariableOp#lstm_cell_515/MatMul/ReadVariableOp2N
%lstm_cell_515/MatMul_1/ReadVariableOp%lstm_cell_515/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3118615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3118615___redundant_placeholder05
1while_while_cond_3118615___redundant_placeholder15
1while_while_cond_3118615___redundant_placeholder25
1while_while_cond_3118615___redundant_placeholder3
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
?C
?

lstm_227_while_body_3117380.
*lstm_227_while_lstm_227_while_loop_counter4
0lstm_227_while_lstm_227_while_maximum_iterations
lstm_227_while_placeholder 
lstm_227_while_placeholder_1 
lstm_227_while_placeholder_2 
lstm_227_while_placeholder_3-
)lstm_227_while_lstm_227_strided_slice_1_0i
elstm_227_while_tensorarrayv2read_tensorlistgetitem_lstm_227_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_227_while_lstm_cell_515_matmul_readvariableop_resource_0:2(Q
?lstm_227_while_lstm_cell_515_matmul_1_readvariableop_resource_0:
(L
>lstm_227_while_lstm_cell_515_biasadd_readvariableop_resource_0:(
lstm_227_while_identity
lstm_227_while_identity_1
lstm_227_while_identity_2
lstm_227_while_identity_3
lstm_227_while_identity_4
lstm_227_while_identity_5+
'lstm_227_while_lstm_227_strided_slice_1g
clstm_227_while_tensorarrayv2read_tensorlistgetitem_lstm_227_tensorarrayunstack_tensorlistfromtensorM
;lstm_227_while_lstm_cell_515_matmul_readvariableop_resource:2(O
=lstm_227_while_lstm_cell_515_matmul_1_readvariableop_resource:
(J
<lstm_227_while_lstm_cell_515_biasadd_readvariableop_resource:(??3lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOp?2lstm_227/while/lstm_cell_515/MatMul/ReadVariableOp?4lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOp?
@lstm_227/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_227/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_227_while_tensorarrayv2read_tensorlistgetitem_lstm_227_tensorarrayunstack_tensorlistfromtensor_0lstm_227_while_placeholderIlstm_227/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_227/while/lstm_cell_515/MatMul/ReadVariableOpReadVariableOp=lstm_227_while_lstm_cell_515_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_227/while/lstm_cell_515/MatMulMatMul9lstm_227/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_227/while/lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOp?lstm_227_while_lstm_cell_515_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_227/while/lstm_cell_515/MatMul_1MatMullstm_227_while_placeholder_2<lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_227/while/lstm_cell_515/addAddV2-lstm_227/while/lstm_cell_515/MatMul:product:0/lstm_227/while/lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOp>lstm_227_while_lstm_cell_515_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_227/while/lstm_cell_515/BiasAddBiasAdd$lstm_227/while/lstm_cell_515/add:z:0;lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_227/while/lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_227/while/lstm_cell_515/splitSplit5lstm_227/while/lstm_cell_515/split/split_dim:output:0-lstm_227/while/lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_227/while/lstm_cell_515/SigmoidSigmoid+lstm_227/while/lstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_227/while/lstm_cell_515/Sigmoid_1Sigmoid+lstm_227/while/lstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_227/while/lstm_cell_515/mulMul*lstm_227/while/lstm_cell_515/Sigmoid_1:y:0lstm_227_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_227/while/lstm_cell_515/ReluRelu+lstm_227/while/lstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_227/while/lstm_cell_515/mul_1Mul(lstm_227/while/lstm_cell_515/Sigmoid:y:0/lstm_227/while/lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_227/while/lstm_cell_515/add_1AddV2$lstm_227/while/lstm_cell_515/mul:z:0&lstm_227/while/lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_227/while/lstm_cell_515/Sigmoid_2Sigmoid+lstm_227/while/lstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_227/while/lstm_cell_515/Relu_1Relu&lstm_227/while/lstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_227/while/lstm_cell_515/mul_2Mul*lstm_227/while/lstm_cell_515/Sigmoid_2:y:01lstm_227/while/lstm_cell_515/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_227/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_227_while_placeholder_1lstm_227_while_placeholder&lstm_227/while/lstm_cell_515/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_227/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_227/while/addAddV2lstm_227_while_placeholderlstm_227/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_227/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_227/while/add_1AddV2*lstm_227_while_lstm_227_while_loop_counterlstm_227/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_227/while/IdentityIdentitylstm_227/while/add_1:z:0^lstm_227/while/NoOp*
T0*
_output_shapes
: ?
lstm_227/while/Identity_1Identity0lstm_227_while_lstm_227_while_maximum_iterations^lstm_227/while/NoOp*
T0*
_output_shapes
: t
lstm_227/while/Identity_2Identitylstm_227/while/add:z:0^lstm_227/while/NoOp*
T0*
_output_shapes
: ?
lstm_227/while/Identity_3IdentityClstm_227/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_227/while/NoOp*
T0*
_output_shapes
: ?
lstm_227/while/Identity_4Identity&lstm_227/while/lstm_cell_515/mul_2:z:0^lstm_227/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_227/while/Identity_5Identity&lstm_227/while/lstm_cell_515/add_1:z:0^lstm_227/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_227/while/NoOpNoOp4^lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOp3^lstm_227/while/lstm_cell_515/MatMul/ReadVariableOp5^lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_227_while_identity lstm_227/while/Identity:output:0"?
lstm_227_while_identity_1"lstm_227/while/Identity_1:output:0"?
lstm_227_while_identity_2"lstm_227/while/Identity_2:output:0"?
lstm_227_while_identity_3"lstm_227/while/Identity_3:output:0"?
lstm_227_while_identity_4"lstm_227/while/Identity_4:output:0"?
lstm_227_while_identity_5"lstm_227/while/Identity_5:output:0"T
'lstm_227_while_lstm_227_strided_slice_1)lstm_227_while_lstm_227_strided_slice_1_0"~
<lstm_227_while_lstm_cell_515_biasadd_readvariableop_resource>lstm_227_while_lstm_cell_515_biasadd_readvariableop_resource_0"?
=lstm_227_while_lstm_cell_515_matmul_1_readvariableop_resource?lstm_227_while_lstm_cell_515_matmul_1_readvariableop_resource_0"|
;lstm_227_while_lstm_cell_515_matmul_readvariableop_resource=lstm_227_while_lstm_cell_515_matmul_readvariableop_resource_0"?
clstm_227_while_tensorarrayv2read_tensorlistgetitem_lstm_227_tensorarrayunstack_tensorlistfromtensorelstm_227_while_tensorarrayv2read_tensorlistgetitem_lstm_227_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOp3lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOp2h
2lstm_227/while/lstm_cell_515/MatMul/ReadVariableOp2lstm_227/while/lstm_cell_515/MatMul/ReadVariableOp2l
4lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOp4lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_75_layer_call_and_return_conditional_losses_3116842

inputs#
lstm_225_3116815:	?#
lstm_225_3116817:	d?
lstm_225_3116819:	?#
lstm_226_3116822:	d?#
lstm_226_3116824:	2?
lstm_226_3116826:	?"
lstm_227_3116829:2("
lstm_227_3116831:
(
lstm_227_3116833:("
dense_75_3116836:

dense_75_3116838:
identity?? dense_75/StatefulPartitionedCall? lstm_225/StatefulPartitionedCall? lstm_226/StatefulPartitionedCall? lstm_227/StatefulPartitionedCall?
 lstm_225/StatefulPartitionedCallStatefulPartitionedCallinputslstm_225_3116815lstm_225_3116817lstm_225_3116819*
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
E__inference_lstm_225_layer_call_and_return_conditional_losses_3116774?
 lstm_226/StatefulPartitionedCallStatefulPartitionedCall)lstm_225/StatefulPartitionedCall:output:0lstm_226_3116822lstm_226_3116824lstm_226_3116826*
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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3116609?
 lstm_227/StatefulPartitionedCallStatefulPartitionedCall)lstm_226/StatefulPartitionedCall:output:0lstm_227_3116829lstm_227_3116831lstm_227_3116833*
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
E__inference_lstm_227_layer_call_and_return_conditional_losses_3116444?
 dense_75/StatefulPartitionedCallStatefulPartitionedCall)lstm_227/StatefulPartitionedCall:output:0dense_75_3116836dense_75_3116838*
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
E__inference_dense_75_layer_call_and_return_conditional_losses_3116246x
IdentityIdentity)dense_75/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_75/StatefulPartitionedCall!^lstm_225/StatefulPartitionedCall!^lstm_226/StatefulPartitionedCall!^lstm_227/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2D
 lstm_225/StatefulPartitionedCall lstm_225/StatefulPartitionedCall2D
 lstm_226/StatefulPartitionedCall lstm_226/StatefulPartitionedCall2D
 lstm_227/StatefulPartitionedCall lstm_227/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_3115160
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_514_3115184_0:	d?0
while_lstm_cell_514_3115186_0:	2?,
while_lstm_cell_514_3115188_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_514_3115184:	d?.
while_lstm_cell_514_3115186:	2?*
while_lstm_cell_514_3115188:	???+while/lstm_cell_514/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_514/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_514_3115184_0while_lstm_cell_514_3115186_0while_lstm_cell_514_3115188_0*
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
J__inference_lstm_cell_514_layer_call_and_return_conditional_losses_3115146?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_514/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_514/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_514/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_514/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_514_3115184while_lstm_cell_514_3115184_0"<
while_lstm_cell_514_3115186while_lstm_cell_514_3115186_0"<
while_lstm_cell_514_3115188while_lstm_cell_514_3115188_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_514/StatefulPartitionedCall+while/lstm_cell_514/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_227_layer_call_and_return_conditional_losses_3119745

inputs>
,lstm_cell_515_matmul_readvariableop_resource:2(@
.lstm_cell_515_matmul_1_readvariableop_resource:
(;
-lstm_cell_515_biasadd_readvariableop_resource:(
identity??$lstm_cell_515/BiasAdd/ReadVariableOp?#lstm_cell_515/MatMul/ReadVariableOp?%lstm_cell_515/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_515/MatMul/ReadVariableOpReadVariableOp,lstm_cell_515_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_515/MatMulMatMulstrided_slice_2:output:0+lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_515_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_515/MatMul_1MatMulzeros:output:0-lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_515/addAddV2lstm_cell_515/MatMul:product:0 lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_515_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_515/BiasAddBiasAddlstm_cell_515/add:z:0,lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_515/splitSplit&lstm_cell_515/split/split_dim:output:0lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_515/SigmoidSigmoidlstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_515/Sigmoid_1Sigmoidlstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_515/mulMullstm_cell_515/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_515/ReluRelulstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_515/mul_1Mullstm_cell_515/Sigmoid:y:0 lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_515/add_1AddV2lstm_cell_515/mul:z:0lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_515/Sigmoid_2Sigmoidlstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_515/Relu_1Relulstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_515/mul_2Mullstm_cell_515/Sigmoid_2:y:0"lstm_cell_515/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_515_matmul_readvariableop_resource.lstm_cell_515_matmul_1_readvariableop_resource-lstm_cell_515_biasadd_readvariableop_resource*
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
while_body_3119661*
condR
while_cond_3119660*K
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
NoOpNoOp%^lstm_cell_515/BiasAdd/ReadVariableOp$^lstm_cell_515/MatMul/ReadVariableOp&^lstm_cell_515/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_515/BiasAdd/ReadVariableOp$lstm_cell_515/BiasAdd/ReadVariableOp2J
#lstm_cell_515/MatMul/ReadVariableOp#lstm_cell_515/MatMul/ReadVariableOp2N
%lstm_cell_515/MatMul_1/ReadVariableOp%lstm_cell_515/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_513_layer_call_and_return_conditional_losses_3119862

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
?K
?
E__inference_lstm_227_layer_call_and_return_conditional_losses_3119459
inputs_0>
,lstm_cell_515_matmul_readvariableop_resource:2(@
.lstm_cell_515_matmul_1_readvariableop_resource:
(;
-lstm_cell_515_biasadd_readvariableop_resource:(
identity??$lstm_cell_515/BiasAdd/ReadVariableOp?#lstm_cell_515/MatMul/ReadVariableOp?%lstm_cell_515/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_515/MatMul/ReadVariableOpReadVariableOp,lstm_cell_515_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_515/MatMulMatMulstrided_slice_2:output:0+lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_515_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_515/MatMul_1MatMulzeros:output:0-lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_515/addAddV2lstm_cell_515/MatMul:product:0 lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_515_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_515/BiasAddBiasAddlstm_cell_515/add:z:0,lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_515/splitSplit&lstm_cell_515/split/split_dim:output:0lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_515/SigmoidSigmoidlstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_515/Sigmoid_1Sigmoidlstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_515/mulMullstm_cell_515/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_515/ReluRelulstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_515/mul_1Mullstm_cell_515/Sigmoid:y:0 lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_515/add_1AddV2lstm_cell_515/mul:z:0lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_515/Sigmoid_2Sigmoidlstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_515/Relu_1Relulstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_515/mul_2Mullstm_cell_515/Sigmoid_2:y:0"lstm_cell_515/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_515_matmul_readvariableop_resource.lstm_cell_515_matmul_1_readvariableop_resource-lstm_cell_515_biasadd_readvariableop_resource*
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
while_body_3119375*
condR
while_cond_3119374*K
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
NoOpNoOp%^lstm_cell_515/BiasAdd/ReadVariableOp$^lstm_cell_515/MatMul/ReadVariableOp&^lstm_cell_515/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_515/BiasAdd/ReadVariableOp$lstm_cell_515/BiasAdd/ReadVariableOp2J
#lstm_cell_515/MatMul/ReadVariableOp#lstm_cell_515/MatMul/ReadVariableOp2N
%lstm_cell_515/MatMul_1/ReadVariableOp%lstm_cell_515/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_227_layer_call_and_return_conditional_losses_3115770

inputs'
lstm_cell_515_3115688:2('
lstm_cell_515_3115690:
(#
lstm_cell_515_3115692:(
identity??%lstm_cell_515/StatefulPartitionedCall?while;
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
%lstm_cell_515/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_515_3115688lstm_cell_515_3115690lstm_cell_515_3115692*
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
J__inference_lstm_cell_515_layer_call_and_return_conditional_losses_3115642n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_515_3115688lstm_cell_515_3115690lstm_cell_515_3115692*
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
while_body_3115701*
condR
while_cond_3115700*K
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
NoOpNoOp&^lstm_cell_515/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_515/StatefulPartitionedCall%lstm_cell_515/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_227_layer_call_and_return_conditional_losses_3115579

inputs'
lstm_cell_515_3115497:2('
lstm_cell_515_3115499:
(#
lstm_cell_515_3115501:(
identity??%lstm_cell_515/StatefulPartitionedCall?while;
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
%lstm_cell_515/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_515_3115497lstm_cell_515_3115499lstm_cell_515_3115501*
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
J__inference_lstm_cell_515_layer_call_and_return_conditional_losses_3115496n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_515_3115497lstm_cell_515_3115499lstm_cell_515_3115501*
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
while_body_3115510*
condR
while_cond_3115509*K
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
NoOpNoOp&^lstm_cell_515/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_515/StatefulPartitionedCall%lstm_cell_515/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
)sequential_75_lstm_227_while_cond_3114638J
Fsequential_75_lstm_227_while_sequential_75_lstm_227_while_loop_counterP
Lsequential_75_lstm_227_while_sequential_75_lstm_227_while_maximum_iterations,
(sequential_75_lstm_227_while_placeholder.
*sequential_75_lstm_227_while_placeholder_1.
*sequential_75_lstm_227_while_placeholder_2.
*sequential_75_lstm_227_while_placeholder_3L
Hsequential_75_lstm_227_while_less_sequential_75_lstm_227_strided_slice_1c
_sequential_75_lstm_227_while_sequential_75_lstm_227_while_cond_3114638___redundant_placeholder0c
_sequential_75_lstm_227_while_sequential_75_lstm_227_while_cond_3114638___redundant_placeholder1c
_sequential_75_lstm_227_while_sequential_75_lstm_227_while_cond_3114638___redundant_placeholder2c
_sequential_75_lstm_227_while_sequential_75_lstm_227_while_cond_3114638___redundant_placeholder3)
%sequential_75_lstm_227_while_identity
?
!sequential_75/lstm_227/while/LessLess(sequential_75_lstm_227_while_placeholderHsequential_75_lstm_227_while_less_sequential_75_lstm_227_strided_slice_1*
T0*
_output_shapes
: y
%sequential_75/lstm_227/while/IdentityIdentity%sequential_75/lstm_227/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_75_lstm_227_while_identity.sequential_75/lstm_227/while/Identity:output:0*(
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
while_body_3119232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_515_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_515_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_515_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_515_matmul_readvariableop_resource:2(F
4while_lstm_cell_515_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_515_biasadd_readvariableop_resource:(??*while/lstm_cell_515/BiasAdd/ReadVariableOp?)while/lstm_cell_515/MatMul/ReadVariableOp?+while/lstm_cell_515/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_515/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_515_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_515/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_515_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_515/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_515/addAddV2$while/lstm_cell_515/MatMul:product:0&while/lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_515_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_515/BiasAddBiasAddwhile/lstm_cell_515/add:z:02while/lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_515/splitSplit,while/lstm_cell_515/split/split_dim:output:0$while/lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_515/SigmoidSigmoid"while/lstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_515/Sigmoid_1Sigmoid"while/lstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mulMul!while/lstm_cell_515/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_515/ReluRelu"while/lstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mul_1Mulwhile/lstm_cell_515/Sigmoid:y:0&while/lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/add_1AddV2while/lstm_cell_515/mul:z:0while/lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_515/Sigmoid_2Sigmoid"while/lstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_515/Relu_1Reluwhile/lstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mul_2Mul!while/lstm_cell_515/Sigmoid_2:y:0(while/lstm_cell_515/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_515/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_515/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_515/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_515/BiasAdd/ReadVariableOp*^while/lstm_cell_515/MatMul/ReadVariableOp,^while/lstm_cell_515/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_515_biasadd_readvariableop_resource5while_lstm_cell_515_biasadd_readvariableop_resource_0"n
4while_lstm_cell_515_matmul_1_readvariableop_resource6while_lstm_cell_515_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_515_matmul_readvariableop_resource4while_lstm_cell_515_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_515/BiasAdd/ReadVariableOp*while/lstm_cell_515/BiasAdd/ReadVariableOp2V
)while/lstm_cell_515/MatMul/ReadVariableOp)while/lstm_cell_515/MatMul/ReadVariableOp2Z
+while/lstm_cell_515/MatMul_1/ReadVariableOp+while/lstm_cell_515/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_225_layer_call_fn_3117908
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
E__inference_lstm_225_layer_call_and_return_conditional_losses_3114879|
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
while_body_3115510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_515_3115534_0:2(/
while_lstm_cell_515_3115536_0:
(+
while_lstm_cell_515_3115538_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_515_3115534:2(-
while_lstm_cell_515_3115536:
()
while_lstm_cell_515_3115538:(??+while/lstm_cell_515/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_515/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_515_3115534_0while_lstm_cell_515_3115536_0while_lstm_cell_515_3115538_0*
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
J__inference_lstm_cell_515_layer_call_and_return_conditional_losses_3115496?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_515/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_515/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_515/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_515/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_515_3115534while_lstm_cell_515_3115534_0"<
while_lstm_cell_515_3115536while_lstm_cell_515_3115536_0"<
while_lstm_cell_515_3115538while_lstm_cell_515_3115538_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_515/StatefulPartitionedCall+while/lstm_cell_515/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3118143
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_513_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_513_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_513_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_513_matmul_readvariableop_resource:	?G
4while_lstm_cell_513_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_513_biasadd_readvariableop_resource:	???*while/lstm_cell_513/BiasAdd/ReadVariableOp?)while/lstm_cell_513/MatMul/ReadVariableOp?+while/lstm_cell_513/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_513/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_513_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_513/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_513_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_513/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_513/addAddV2$while/lstm_cell_513/MatMul:product:0&while/lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_513_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_513/BiasAddBiasAddwhile/lstm_cell_513/add:z:02while/lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_513/splitSplit,while/lstm_cell_513/split/split_dim:output:0$while/lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_513/SigmoidSigmoid"while/lstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_513/Sigmoid_1Sigmoid"while/lstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mulMul!while/lstm_cell_513/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_513/ReluRelu"while/lstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mul_1Mulwhile/lstm_cell_513/Sigmoid:y:0&while/lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/add_1AddV2while/lstm_cell_513/mul:z:0while/lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_513/Sigmoid_2Sigmoid"while/lstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_513/Relu_1Reluwhile/lstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mul_2Mul!while/lstm_cell_513/Sigmoid_2:y:0(while/lstm_cell_513/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_513/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_513/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_513/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_513/BiasAdd/ReadVariableOp*^while/lstm_cell_513/MatMul/ReadVariableOp,^while/lstm_cell_513/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_513_biasadd_readvariableop_resource5while_lstm_cell_513_biasadd_readvariableop_resource_0"n
4while_lstm_cell_513_matmul_1_readvariableop_resource6while_lstm_cell_513_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_513_matmul_readvariableop_resource4while_lstm_cell_513_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_513/BiasAdd/ReadVariableOp*while/lstm_cell_513/BiasAdd/ReadVariableOp2V
)while/lstm_cell_513/MatMul/ReadVariableOp)while/lstm_cell_513/MatMul/ReadVariableOp2Z
+while/lstm_cell_513/MatMul_1/ReadVariableOp+while/lstm_cell_513/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3119129

inputs?
,lstm_cell_514_matmul_readvariableop_resource:	d?A
.lstm_cell_514_matmul_1_readvariableop_resource:	2?<
-lstm_cell_514_biasadd_readvariableop_resource:	?
identity??$lstm_cell_514/BiasAdd/ReadVariableOp?#lstm_cell_514/MatMul/ReadVariableOp?%lstm_cell_514/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_514/MatMul/ReadVariableOpReadVariableOp,lstm_cell_514_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_514/MatMulMatMulstrided_slice_2:output:0+lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_514_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_514/MatMul_1MatMulzeros:output:0-lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_514/addAddV2lstm_cell_514/MatMul:product:0 lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_514_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_514/BiasAddBiasAddlstm_cell_514/add:z:0,lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_514/splitSplit&lstm_cell_514/split/split_dim:output:0lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_514/SigmoidSigmoidlstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_514/Sigmoid_1Sigmoidlstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_514/mulMullstm_cell_514/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_514/ReluRelulstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_514/mul_1Mullstm_cell_514/Sigmoid:y:0 lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_514/add_1AddV2lstm_cell_514/mul:z:0lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_514/Sigmoid_2Sigmoidlstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_514/Relu_1Relulstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_514/mul_2Mullstm_cell_514/Sigmoid_2:y:0"lstm_cell_514/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_514_matmul_readvariableop_resource.lstm_cell_514_matmul_1_readvariableop_resource-lstm_cell_514_biasadd_readvariableop_resource*
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
while_body_3119045*
condR
while_cond_3119044*K
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
NoOpNoOp%^lstm_cell_514/BiasAdd/ReadVariableOp$^lstm_cell_514/MatMul/ReadVariableOp&^lstm_cell_514/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_514/BiasAdd/ReadVariableOp$lstm_cell_514/BiasAdd/ReadVariableOp2J
#lstm_cell_514/MatMul/ReadVariableOp#lstm_cell_514/MatMul/ReadVariableOp2N
%lstm_cell_514/MatMul_1/ReadVariableOp%lstm_cell_514/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_227_while_cond_3117806.
*lstm_227_while_lstm_227_while_loop_counter4
0lstm_227_while_lstm_227_while_maximum_iterations
lstm_227_while_placeholder 
lstm_227_while_placeholder_1 
lstm_227_while_placeholder_2 
lstm_227_while_placeholder_30
,lstm_227_while_less_lstm_227_strided_slice_1G
Clstm_227_while_lstm_227_while_cond_3117806___redundant_placeholder0G
Clstm_227_while_lstm_227_while_cond_3117806___redundant_placeholder1G
Clstm_227_while_lstm_227_while_cond_3117806___redundant_placeholder2G
Clstm_227_while_lstm_227_while_cond_3117806___redundant_placeholder3
lstm_227_while_identity
?
lstm_227/while/LessLesslstm_227_while_placeholder,lstm_227_while_less_lstm_227_strided_slice_1*
T0*
_output_shapes
: ]
lstm_227/while/IdentityIdentitylstm_227/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_227_while_identity lstm_227/while/Identity:output:0*(
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
?
/__inference_lstm_cell_514_layer_call_fn_3119896

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
J__inference_lstm_cell_514_layer_call_and_return_conditional_losses_3115292o
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
while_body_3115994
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_514_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_514_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_514_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_514_matmul_readvariableop_resource:	d?G
4while_lstm_cell_514_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_514_biasadd_readvariableop_resource:	???*while/lstm_cell_514/BiasAdd/ReadVariableOp?)while/lstm_cell_514/MatMul/ReadVariableOp?+while/lstm_cell_514/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_514/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_514_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_514/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_514_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_514/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_514/addAddV2$while/lstm_cell_514/MatMul:product:0&while/lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_514_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_514/BiasAddBiasAddwhile/lstm_cell_514/add:z:02while/lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_514/splitSplit,while/lstm_cell_514/split/split_dim:output:0$while/lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_514/SigmoidSigmoid"while/lstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_514/Sigmoid_1Sigmoid"while/lstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mulMul!while/lstm_cell_514/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_514/ReluRelu"while/lstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mul_1Mulwhile/lstm_cell_514/Sigmoid:y:0&while/lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/add_1AddV2while/lstm_cell_514/mul:z:0while/lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_514/Sigmoid_2Sigmoid"while/lstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_514/Relu_1Reluwhile/lstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mul_2Mul!while/lstm_cell_514/Sigmoid_2:y:0(while/lstm_cell_514/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_514/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_514/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_514/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_514/BiasAdd/ReadVariableOp*^while/lstm_cell_514/MatMul/ReadVariableOp,^while/lstm_cell_514/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_514_biasadd_readvariableop_resource5while_lstm_cell_514_biasadd_readvariableop_resource_0"n
4while_lstm_cell_514_matmul_1_readvariableop_resource6while_lstm_cell_514_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_514_matmul_readvariableop_resource4while_lstm_cell_514_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_514/BiasAdd/ReadVariableOp*while/lstm_cell_514/BiasAdd/ReadVariableOp2V
)while/lstm_cell_514/MatMul/ReadVariableOp)while/lstm_cell_514/MatMul/ReadVariableOp2Z
+while/lstm_cell_514/MatMul_1/ReadVariableOp+while/lstm_cell_514/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3118759
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_514_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_514_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_514_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_514_matmul_readvariableop_resource:	d?G
4while_lstm_cell_514_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_514_biasadd_readvariableop_resource:	???*while/lstm_cell_514/BiasAdd/ReadVariableOp?)while/lstm_cell_514/MatMul/ReadVariableOp?+while/lstm_cell_514/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_514/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_514_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_514/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_514_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_514/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_514/addAddV2$while/lstm_cell_514/MatMul:product:0&while/lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_514_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_514/BiasAddBiasAddwhile/lstm_cell_514/add:z:02while/lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_514/splitSplit,while/lstm_cell_514/split/split_dim:output:0$while/lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_514/SigmoidSigmoid"while/lstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_514/Sigmoid_1Sigmoid"while/lstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mulMul!while/lstm_cell_514/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_514/ReluRelu"while/lstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mul_1Mulwhile/lstm_cell_514/Sigmoid:y:0&while/lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/add_1AddV2while/lstm_cell_514/mul:z:0while/lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_514/Sigmoid_2Sigmoid"while/lstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_514/Relu_1Reluwhile/lstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mul_2Mul!while/lstm_cell_514/Sigmoid_2:y:0(while/lstm_cell_514/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_514/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_514/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_514/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_514/BiasAdd/ReadVariableOp*^while/lstm_cell_514/MatMul/ReadVariableOp,^while/lstm_cell_514/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_514_biasadd_readvariableop_resource5while_lstm_cell_514_biasadd_readvariableop_resource_0"n
4while_lstm_cell_514_matmul_1_readvariableop_resource6while_lstm_cell_514_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_514_matmul_readvariableop_resource4while_lstm_cell_514_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_514/BiasAdd/ReadVariableOp*while/lstm_cell_514/BiasAdd/ReadVariableOp2V
)while/lstm_cell_514/MatMul/ReadVariableOp)while/lstm_cell_514/MatMul/ReadVariableOp2Z
+while/lstm_cell_514/MatMul_1/ReadVariableOp+while/lstm_cell_514/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3119374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3119374___redundant_placeholder05
1while_while_cond_3119374___redundant_placeholder15
1while_while_cond_3119374___redundant_placeholder25
1while_while_cond_3119374___redundant_placeholder3
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
)sequential_75_lstm_225_while_body_3114361J
Fsequential_75_lstm_225_while_sequential_75_lstm_225_while_loop_counterP
Lsequential_75_lstm_225_while_sequential_75_lstm_225_while_maximum_iterations,
(sequential_75_lstm_225_while_placeholder.
*sequential_75_lstm_225_while_placeholder_1.
*sequential_75_lstm_225_while_placeholder_2.
*sequential_75_lstm_225_while_placeholder_3I
Esequential_75_lstm_225_while_sequential_75_lstm_225_strided_slice_1_0?
?sequential_75_lstm_225_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_225_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_75_lstm_225_while_lstm_cell_513_matmul_readvariableop_resource_0:	?`
Msequential_75_lstm_225_while_lstm_cell_513_matmul_1_readvariableop_resource_0:	d?[
Lsequential_75_lstm_225_while_lstm_cell_513_biasadd_readvariableop_resource_0:	?)
%sequential_75_lstm_225_while_identity+
'sequential_75_lstm_225_while_identity_1+
'sequential_75_lstm_225_while_identity_2+
'sequential_75_lstm_225_while_identity_3+
'sequential_75_lstm_225_while_identity_4+
'sequential_75_lstm_225_while_identity_5G
Csequential_75_lstm_225_while_sequential_75_lstm_225_strided_slice_1?
sequential_75_lstm_225_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_225_tensorarrayunstack_tensorlistfromtensor\
Isequential_75_lstm_225_while_lstm_cell_513_matmul_readvariableop_resource:	?^
Ksequential_75_lstm_225_while_lstm_cell_513_matmul_1_readvariableop_resource:	d?Y
Jsequential_75_lstm_225_while_lstm_cell_513_biasadd_readvariableop_resource:	???Asequential_75/lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOp?@sequential_75/lstm_225/while/lstm_cell_513/MatMul/ReadVariableOp?Bsequential_75/lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOp?
Nsequential_75/lstm_225/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_75/lstm_225/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_75_lstm_225_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_225_tensorarrayunstack_tensorlistfromtensor_0(sequential_75_lstm_225_while_placeholderWsequential_75/lstm_225/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_75/lstm_225/while/lstm_cell_513/MatMul/ReadVariableOpReadVariableOpKsequential_75_lstm_225_while_lstm_cell_513_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_75/lstm_225/while/lstm_cell_513/MatMulMatMulGsequential_75/lstm_225/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_75/lstm_225/while/lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_75/lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOpMsequential_75_lstm_225_while_lstm_cell_513_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_75/lstm_225/while/lstm_cell_513/MatMul_1MatMul*sequential_75_lstm_225_while_placeholder_2Jsequential_75/lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_75/lstm_225/while/lstm_cell_513/addAddV2;sequential_75/lstm_225/while/lstm_cell_513/MatMul:product:0=sequential_75/lstm_225/while/lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_75/lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOpLsequential_75_lstm_225_while_lstm_cell_513_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_75/lstm_225/while/lstm_cell_513/BiasAddBiasAdd2sequential_75/lstm_225/while/lstm_cell_513/add:z:0Isequential_75/lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_75/lstm_225/while/lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_75/lstm_225/while/lstm_cell_513/splitSplitCsequential_75/lstm_225/while/lstm_cell_513/split/split_dim:output:0;sequential_75/lstm_225/while/lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_75/lstm_225/while/lstm_cell_513/SigmoidSigmoid9sequential_75/lstm_225/while/lstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_75/lstm_225/while/lstm_cell_513/Sigmoid_1Sigmoid9sequential_75/lstm_225/while/lstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_75/lstm_225/while/lstm_cell_513/mulMul8sequential_75/lstm_225/while/lstm_cell_513/Sigmoid_1:y:0*sequential_75_lstm_225_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_75/lstm_225/while/lstm_cell_513/ReluRelu9sequential_75/lstm_225/while/lstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_75/lstm_225/while/lstm_cell_513/mul_1Mul6sequential_75/lstm_225/while/lstm_cell_513/Sigmoid:y:0=sequential_75/lstm_225/while/lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_75/lstm_225/while/lstm_cell_513/add_1AddV22sequential_75/lstm_225/while/lstm_cell_513/mul:z:04sequential_75/lstm_225/while/lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_75/lstm_225/while/lstm_cell_513/Sigmoid_2Sigmoid9sequential_75/lstm_225/while/lstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_75/lstm_225/while/lstm_cell_513/Relu_1Relu4sequential_75/lstm_225/while/lstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_75/lstm_225/while/lstm_cell_513/mul_2Mul8sequential_75/lstm_225/while/lstm_cell_513/Sigmoid_2:y:0?sequential_75/lstm_225/while/lstm_cell_513/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_75/lstm_225/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_75_lstm_225_while_placeholder_1(sequential_75_lstm_225_while_placeholder4sequential_75/lstm_225/while/lstm_cell_513/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_75/lstm_225/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_75/lstm_225/while/addAddV2(sequential_75_lstm_225_while_placeholder+sequential_75/lstm_225/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_75/lstm_225/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_75/lstm_225/while/add_1AddV2Fsequential_75_lstm_225_while_sequential_75_lstm_225_while_loop_counter-sequential_75/lstm_225/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_75/lstm_225/while/IdentityIdentity&sequential_75/lstm_225/while/add_1:z:0"^sequential_75/lstm_225/while/NoOp*
T0*
_output_shapes
: ?
'sequential_75/lstm_225/while/Identity_1IdentityLsequential_75_lstm_225_while_sequential_75_lstm_225_while_maximum_iterations"^sequential_75/lstm_225/while/NoOp*
T0*
_output_shapes
: ?
'sequential_75/lstm_225/while/Identity_2Identity$sequential_75/lstm_225/while/add:z:0"^sequential_75/lstm_225/while/NoOp*
T0*
_output_shapes
: ?
'sequential_75/lstm_225/while/Identity_3IdentityQsequential_75/lstm_225/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_75/lstm_225/while/NoOp*
T0*
_output_shapes
: ?
'sequential_75/lstm_225/while/Identity_4Identity4sequential_75/lstm_225/while/lstm_cell_513/mul_2:z:0"^sequential_75/lstm_225/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_75/lstm_225/while/Identity_5Identity4sequential_75/lstm_225/while/lstm_cell_513/add_1:z:0"^sequential_75/lstm_225/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_75/lstm_225/while/NoOpNoOpB^sequential_75/lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOpA^sequential_75/lstm_225/while/lstm_cell_513/MatMul/ReadVariableOpC^sequential_75/lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_75_lstm_225_while_identity.sequential_75/lstm_225/while/Identity:output:0"[
'sequential_75_lstm_225_while_identity_10sequential_75/lstm_225/while/Identity_1:output:0"[
'sequential_75_lstm_225_while_identity_20sequential_75/lstm_225/while/Identity_2:output:0"[
'sequential_75_lstm_225_while_identity_30sequential_75/lstm_225/while/Identity_3:output:0"[
'sequential_75_lstm_225_while_identity_40sequential_75/lstm_225/while/Identity_4:output:0"[
'sequential_75_lstm_225_while_identity_50sequential_75/lstm_225/while/Identity_5:output:0"?
Jsequential_75_lstm_225_while_lstm_cell_513_biasadd_readvariableop_resourceLsequential_75_lstm_225_while_lstm_cell_513_biasadd_readvariableop_resource_0"?
Ksequential_75_lstm_225_while_lstm_cell_513_matmul_1_readvariableop_resourceMsequential_75_lstm_225_while_lstm_cell_513_matmul_1_readvariableop_resource_0"?
Isequential_75_lstm_225_while_lstm_cell_513_matmul_readvariableop_resourceKsequential_75_lstm_225_while_lstm_cell_513_matmul_readvariableop_resource_0"?
Csequential_75_lstm_225_while_sequential_75_lstm_225_strided_slice_1Esequential_75_lstm_225_while_sequential_75_lstm_225_strided_slice_1_0"?
sequential_75_lstm_225_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_225_tensorarrayunstack_tensorlistfromtensor?sequential_75_lstm_225_while_tensorarrayv2read_tensorlistgetitem_sequential_75_lstm_225_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_75/lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOpAsequential_75/lstm_225/while/lstm_cell_513/BiasAdd/ReadVariableOp2?
@sequential_75/lstm_225/while/lstm_cell_513/MatMul/ReadVariableOp@sequential_75/lstm_225/while/lstm_cell_513/MatMul/ReadVariableOp2?
Bsequential_75/lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOpBsequential_75/lstm_225/while/lstm_cell_513/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_226_while_cond_3117240.
*lstm_226_while_lstm_226_while_loop_counter4
0lstm_226_while_lstm_226_while_maximum_iterations
lstm_226_while_placeholder 
lstm_226_while_placeholder_1 
lstm_226_while_placeholder_2 
lstm_226_while_placeholder_30
,lstm_226_while_less_lstm_226_strided_slice_1G
Clstm_226_while_lstm_226_while_cond_3117240___redundant_placeholder0G
Clstm_226_while_lstm_226_while_cond_3117240___redundant_placeholder1G
Clstm_226_while_lstm_226_while_cond_3117240___redundant_placeholder2G
Clstm_226_while_lstm_226_while_cond_3117240___redundant_placeholder3
lstm_226_while_identity
?
lstm_226/while/LessLesslstm_226_while_placeholder,lstm_226_while_less_lstm_226_strided_slice_1*
T0*
_output_shapes
: ]
lstm_226/while/IdentityIdentitylstm_226/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_226_while_identity lstm_226/while/Identity:output:0*(
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
lstm_225_while_cond_3117528.
*lstm_225_while_lstm_225_while_loop_counter4
0lstm_225_while_lstm_225_while_maximum_iterations
lstm_225_while_placeholder 
lstm_225_while_placeholder_1 
lstm_225_while_placeholder_2 
lstm_225_while_placeholder_30
,lstm_225_while_less_lstm_225_strided_slice_1G
Clstm_225_while_lstm_225_while_cond_3117528___redundant_placeholder0G
Clstm_225_while_lstm_225_while_cond_3117528___redundant_placeholder1G
Clstm_225_while_lstm_225_while_cond_3117528___redundant_placeholder2G
Clstm_225_while_lstm_225_while_cond_3117528___redundant_placeholder3
lstm_225_while_identity
?
lstm_225/while/LessLesslstm_225_while_placeholder,lstm_225_while_less_lstm_225_strided_slice_1*
T0*
_output_shapes
: ]
lstm_225/while/IdentityIdentitylstm_225/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_225_while_identity lstm_225/while/Identity:output:0*(
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
while_cond_3116524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3116524___redundant_placeholder05
1while_while_cond_3116524___redundant_placeholder15
1while_while_cond_3116524___redundant_placeholder25
1while_while_cond_3116524___redundant_placeholder3
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
while_cond_3119517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3119517___redundant_placeholder05
1while_while_cond_3119517___redundant_placeholder15
1while_while_cond_3119517___redundant_placeholder25
1while_while_cond_3119517___redundant_placeholder3
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
while_cond_3119044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3119044___redundant_placeholder05
1while_while_cond_3119044___redundant_placeholder15
1while_while_cond_3119044___redundant_placeholder25
1while_while_cond_3119044___redundant_placeholder3
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
while_body_3115844
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_513_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_513_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_513_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_513_matmul_readvariableop_resource:	?G
4while_lstm_cell_513_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_513_biasadd_readvariableop_resource:	???*while/lstm_cell_513/BiasAdd/ReadVariableOp?)while/lstm_cell_513/MatMul/ReadVariableOp?+while/lstm_cell_513/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_513/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_513_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_513/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_513_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_513/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_513/addAddV2$while/lstm_cell_513/MatMul:product:0&while/lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_513_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_513/BiasAddBiasAddwhile/lstm_cell_513/add:z:02while/lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_513/splitSplit,while/lstm_cell_513/split/split_dim:output:0$while/lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_513/SigmoidSigmoid"while/lstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_513/Sigmoid_1Sigmoid"while/lstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mulMul!while/lstm_cell_513/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_513/ReluRelu"while/lstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mul_1Mulwhile/lstm_cell_513/Sigmoid:y:0&while/lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/add_1AddV2while/lstm_cell_513/mul:z:0while/lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_513/Sigmoid_2Sigmoid"while/lstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_513/Relu_1Reluwhile/lstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mul_2Mul!while/lstm_cell_513/Sigmoid_2:y:0(while/lstm_cell_513/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_513/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_513/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_513/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_513/BiasAdd/ReadVariableOp*^while/lstm_cell_513/MatMul/ReadVariableOp,^while/lstm_cell_513/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_513_biasadd_readvariableop_resource5while_lstm_cell_513_biasadd_readvariableop_resource_0"n
4while_lstm_cell_513_matmul_1_readvariableop_resource6while_lstm_cell_513_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_513_matmul_readvariableop_resource4while_lstm_cell_513_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_513/BiasAdd/ReadVariableOp*while/lstm_cell_513/BiasAdd/ReadVariableOp2V
)while/lstm_cell_513/MatMul/ReadVariableOp)while/lstm_cell_513/MatMul/ReadVariableOp2Z
+while/lstm_cell_513/MatMul_1/ReadVariableOp+while/lstm_cell_513/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
E__inference_lstm_226_layer_call_and_return_conditional_losses_3115229

inputs(
lstm_cell_514_3115147:	d?(
lstm_cell_514_3115149:	2?$
lstm_cell_514_3115151:	?
identity??%lstm_cell_514/StatefulPartitionedCall?while;
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
%lstm_cell_514/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_514_3115147lstm_cell_514_3115149lstm_cell_514_3115151*
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
J__inference_lstm_cell_514_layer_call_and_return_conditional_losses_3115146n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_514_3115147lstm_cell_514_3115149lstm_cell_514_3115151*
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
while_body_3115160*
condR
while_cond_3115159*K
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
NoOpNoOp&^lstm_cell_514/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_514/StatefulPartitionedCall%lstm_cell_514/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
while_cond_3118142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3118142___redundant_placeholder05
1while_while_cond_3118142___redundant_placeholder15
1while_while_cond_3118142___redundant_placeholder25
1while_while_cond_3118142___redundant_placeholder3
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
E__inference_lstm_225_layer_call_and_return_conditional_losses_3114879

inputs(
lstm_cell_513_3114797:	?(
lstm_cell_513_3114799:	d?$
lstm_cell_513_3114801:	?
identity??%lstm_cell_513/StatefulPartitionedCall?while;
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
%lstm_cell_513/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_513_3114797lstm_cell_513_3114799lstm_cell_513_3114801*
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
J__inference_lstm_cell_513_layer_call_and_return_conditional_losses_3114796n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_513_3114797lstm_cell_513_3114799lstm_cell_513_3114801*
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
while_body_3114810*
condR
while_cond_3114809*K
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
NoOpNoOp&^lstm_cell_513/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_513/StatefulPartitionedCall%lstm_cell_513/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_514_layer_call_and_return_conditional_losses_3115292

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
while_body_3118429
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_513_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_513_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_513_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_513_matmul_readvariableop_resource:	?G
4while_lstm_cell_513_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_513_biasadd_readvariableop_resource:	???*while/lstm_cell_513/BiasAdd/ReadVariableOp?)while/lstm_cell_513/MatMul/ReadVariableOp?+while/lstm_cell_513/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_513/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_513_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_513/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_513_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_513/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_513/addAddV2$while/lstm_cell_513/MatMul:product:0&while/lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_513_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_513/BiasAddBiasAddwhile/lstm_cell_513/add:z:02while/lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_513/splitSplit,while/lstm_cell_513/split/split_dim:output:0$while/lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_513/SigmoidSigmoid"while/lstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_513/Sigmoid_1Sigmoid"while/lstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mulMul!while/lstm_cell_513/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_513/ReluRelu"while/lstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mul_1Mulwhile/lstm_cell_513/Sigmoid:y:0&while/lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/add_1AddV2while/lstm_cell_513/mul:z:0while/lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_513/Sigmoid_2Sigmoid"while/lstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_513/Relu_1Reluwhile/lstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_513/mul_2Mul!while/lstm_cell_513/Sigmoid_2:y:0(while/lstm_cell_513/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_513/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_513/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_513/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_513/BiasAdd/ReadVariableOp*^while/lstm_cell_513/MatMul/ReadVariableOp,^while/lstm_cell_513/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_513_biasadd_readvariableop_resource5while_lstm_cell_513_biasadd_readvariableop_resource_0"n
4while_lstm_cell_513_matmul_1_readvariableop_resource6while_lstm_cell_513_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_513_matmul_readvariableop_resource4while_lstm_cell_513_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_513/BiasAdd/ReadVariableOp*while/lstm_cell_513/BiasAdd/ReadVariableOp2V
)while/lstm_cell_513/MatMul/ReadVariableOp)while/lstm_cell_513/MatMul/ReadVariableOp2Z
+while/lstm_cell_513/MatMul_1/ReadVariableOp+while/lstm_cell_513/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3118901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3118901___redundant_placeholder05
1while_while_cond_3118901___redundant_placeholder15
1while_while_cond_3118901___redundant_placeholder25
1while_while_cond_3118901___redundant_placeholder3
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
J__inference_lstm_cell_515_layer_call_and_return_conditional_losses_3120058

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
?
while_body_3116360
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_515_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_515_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_515_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_515_matmul_readvariableop_resource:2(F
4while_lstm_cell_515_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_515_biasadd_readvariableop_resource:(??*while/lstm_cell_515/BiasAdd/ReadVariableOp?)while/lstm_cell_515/MatMul/ReadVariableOp?+while/lstm_cell_515/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_515/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_515_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_515/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_515_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_515/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_515/addAddV2$while/lstm_cell_515/MatMul:product:0&while/lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_515_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_515/BiasAddBiasAddwhile/lstm_cell_515/add:z:02while/lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_515/splitSplit,while/lstm_cell_515/split/split_dim:output:0$while/lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_515/SigmoidSigmoid"while/lstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_515/Sigmoid_1Sigmoid"while/lstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mulMul!while/lstm_cell_515/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_515/ReluRelu"while/lstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mul_1Mulwhile/lstm_cell_515/Sigmoid:y:0&while/lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/add_1AddV2while/lstm_cell_515/mul:z:0while/lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_515/Sigmoid_2Sigmoid"while/lstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_515/Relu_1Reluwhile/lstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_515/mul_2Mul!while/lstm_cell_515/Sigmoid_2:y:0(while/lstm_cell_515/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_515/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_515/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_515/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_515/BiasAdd/ReadVariableOp*^while/lstm_cell_515/MatMul/ReadVariableOp,^while/lstm_cell_515/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_515_biasadd_readvariableop_resource5while_lstm_cell_515_biasadd_readvariableop_resource_0"n
4while_lstm_cell_515_matmul_1_readvariableop_resource6while_lstm_cell_515_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_515_matmul_readvariableop_resource4while_lstm_cell_515_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_515/BiasAdd/ReadVariableOp*while/lstm_cell_515/BiasAdd/ReadVariableOp2V
)while/lstm_cell_515/MatMul/ReadVariableOp)while/lstm_cell_515/MatMul/ReadVariableOp2Z
+while/lstm_cell_515/MatMul_1/ReadVariableOp+while/lstm_cell_515/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3118986

inputs?
,lstm_cell_514_matmul_readvariableop_resource:	d?A
.lstm_cell_514_matmul_1_readvariableop_resource:	2?<
-lstm_cell_514_biasadd_readvariableop_resource:	?
identity??$lstm_cell_514/BiasAdd/ReadVariableOp?#lstm_cell_514/MatMul/ReadVariableOp?%lstm_cell_514/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_514/MatMul/ReadVariableOpReadVariableOp,lstm_cell_514_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_514/MatMulMatMulstrided_slice_2:output:0+lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_514_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_514/MatMul_1MatMulzeros:output:0-lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_514/addAddV2lstm_cell_514/MatMul:product:0 lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_514_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_514/BiasAddBiasAddlstm_cell_514/add:z:0,lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_514/splitSplit&lstm_cell_514/split/split_dim:output:0lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_514/SigmoidSigmoidlstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_514/Sigmoid_1Sigmoidlstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_514/mulMullstm_cell_514/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_514/ReluRelulstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_514/mul_1Mullstm_cell_514/Sigmoid:y:0 lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_514/add_1AddV2lstm_cell_514/mul:z:0lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_514/Sigmoid_2Sigmoidlstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_514/Relu_1Relulstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_514/mul_2Mullstm_cell_514/Sigmoid_2:y:0"lstm_cell_514/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_514_matmul_readvariableop_resource.lstm_cell_514_matmul_1_readvariableop_resource-lstm_cell_514_biasadd_readvariableop_resource*
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
while_body_3118902*
condR
while_cond_3118901*K
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
NoOpNoOp%^lstm_cell_514/BiasAdd/ReadVariableOp$^lstm_cell_514/MatMul/ReadVariableOp&^lstm_cell_514/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_514/BiasAdd/ReadVariableOp$lstm_cell_514/BiasAdd/ReadVariableOp2J
#lstm_cell_514/MatMul/ReadVariableOp#lstm_cell_514/MatMul/ReadVariableOp2N
%lstm_cell_514/MatMul_1/ReadVariableOp%lstm_cell_514/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_225_layer_call_and_return_conditional_losses_3118513

inputs?
,lstm_cell_513_matmul_readvariableop_resource:	?A
.lstm_cell_513_matmul_1_readvariableop_resource:	d?<
-lstm_cell_513_biasadd_readvariableop_resource:	?
identity??$lstm_cell_513/BiasAdd/ReadVariableOp?#lstm_cell_513/MatMul/ReadVariableOp?%lstm_cell_513/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_513/MatMul/ReadVariableOpReadVariableOp,lstm_cell_513_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_513/MatMulMatMulstrided_slice_2:output:0+lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_513_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_513/MatMul_1MatMulzeros:output:0-lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_513/addAddV2lstm_cell_513/MatMul:product:0 lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_513_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_513/BiasAddBiasAddlstm_cell_513/add:z:0,lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_513/splitSplit&lstm_cell_513/split/split_dim:output:0lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_513/SigmoidSigmoidlstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_513/Sigmoid_1Sigmoidlstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_513/mulMullstm_cell_513/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_513/ReluRelulstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_513/mul_1Mullstm_cell_513/Sigmoid:y:0 lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_513/add_1AddV2lstm_cell_513/mul:z:0lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_513/Sigmoid_2Sigmoidlstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_513/Relu_1Relulstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_513/mul_2Mullstm_cell_513/Sigmoid_2:y:0"lstm_cell_513/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_513_matmul_readvariableop_resource.lstm_cell_513_matmul_1_readvariableop_resource-lstm_cell_513_biasadd_readvariableop_resource*
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
while_body_3118429*
condR
while_cond_3118428*K
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
NoOpNoOp%^lstm_cell_513/BiasAdd/ReadVariableOp$^lstm_cell_513/MatMul/ReadVariableOp&^lstm_cell_513/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_513/BiasAdd/ReadVariableOp$lstm_cell_513/BiasAdd/ReadVariableOp2J
#lstm_cell_513/MatMul/ReadVariableOp#lstm_cell_513/MatMul/ReadVariableOp2N
%lstm_cell_513/MatMul_1/ReadVariableOp%lstm_cell_513/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_513_layer_call_fn_3119798

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
J__inference_lstm_cell_513_layer_call_and_return_conditional_losses_3114942o
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
while_cond_3115843
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3115843___redundant_placeholder05
1while_while_cond_3115843___redundant_placeholder15
1while_while_cond_3115843___redundant_placeholder25
1while_while_cond_3115843___redundant_placeholder3
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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3115420

inputs(
lstm_cell_514_3115338:	d?(
lstm_cell_514_3115340:	2?$
lstm_cell_514_3115342:	?
identity??%lstm_cell_514/StatefulPartitionedCall?while;
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
%lstm_cell_514/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_514_3115338lstm_cell_514_3115340lstm_cell_514_3115342*
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
J__inference_lstm_cell_514_layer_call_and_return_conditional_losses_3115292n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_514_3115338lstm_cell_514_3115340lstm_cell_514_3115342*
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
while_body_3115351*
condR
while_cond_3115350*K
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
NoOpNoOp&^lstm_cell_514/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_514/StatefulPartitionedCall%lstm_cell_514/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?C
?

lstm_227_while_body_3117807.
*lstm_227_while_lstm_227_while_loop_counter4
0lstm_227_while_lstm_227_while_maximum_iterations
lstm_227_while_placeholder 
lstm_227_while_placeholder_1 
lstm_227_while_placeholder_2 
lstm_227_while_placeholder_3-
)lstm_227_while_lstm_227_strided_slice_1_0i
elstm_227_while_tensorarrayv2read_tensorlistgetitem_lstm_227_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_227_while_lstm_cell_515_matmul_readvariableop_resource_0:2(Q
?lstm_227_while_lstm_cell_515_matmul_1_readvariableop_resource_0:
(L
>lstm_227_while_lstm_cell_515_biasadd_readvariableop_resource_0:(
lstm_227_while_identity
lstm_227_while_identity_1
lstm_227_while_identity_2
lstm_227_while_identity_3
lstm_227_while_identity_4
lstm_227_while_identity_5+
'lstm_227_while_lstm_227_strided_slice_1g
clstm_227_while_tensorarrayv2read_tensorlistgetitem_lstm_227_tensorarrayunstack_tensorlistfromtensorM
;lstm_227_while_lstm_cell_515_matmul_readvariableop_resource:2(O
=lstm_227_while_lstm_cell_515_matmul_1_readvariableop_resource:
(J
<lstm_227_while_lstm_cell_515_biasadd_readvariableop_resource:(??3lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOp?2lstm_227/while/lstm_cell_515/MatMul/ReadVariableOp?4lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOp?
@lstm_227/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_227/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_227_while_tensorarrayv2read_tensorlistgetitem_lstm_227_tensorarrayunstack_tensorlistfromtensor_0lstm_227_while_placeholderIlstm_227/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_227/while/lstm_cell_515/MatMul/ReadVariableOpReadVariableOp=lstm_227_while_lstm_cell_515_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_227/while/lstm_cell_515/MatMulMatMul9lstm_227/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_227/while/lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOp?lstm_227_while_lstm_cell_515_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_227/while/lstm_cell_515/MatMul_1MatMullstm_227_while_placeholder_2<lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_227/while/lstm_cell_515/addAddV2-lstm_227/while/lstm_cell_515/MatMul:product:0/lstm_227/while/lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOp>lstm_227_while_lstm_cell_515_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_227/while/lstm_cell_515/BiasAddBiasAdd$lstm_227/while/lstm_cell_515/add:z:0;lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_227/while/lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_227/while/lstm_cell_515/splitSplit5lstm_227/while/lstm_cell_515/split/split_dim:output:0-lstm_227/while/lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_227/while/lstm_cell_515/SigmoidSigmoid+lstm_227/while/lstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_227/while/lstm_cell_515/Sigmoid_1Sigmoid+lstm_227/while/lstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_227/while/lstm_cell_515/mulMul*lstm_227/while/lstm_cell_515/Sigmoid_1:y:0lstm_227_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_227/while/lstm_cell_515/ReluRelu+lstm_227/while/lstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_227/while/lstm_cell_515/mul_1Mul(lstm_227/while/lstm_cell_515/Sigmoid:y:0/lstm_227/while/lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_227/while/lstm_cell_515/add_1AddV2$lstm_227/while/lstm_cell_515/mul:z:0&lstm_227/while/lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_227/while/lstm_cell_515/Sigmoid_2Sigmoid+lstm_227/while/lstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_227/while/lstm_cell_515/Relu_1Relu&lstm_227/while/lstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_227/while/lstm_cell_515/mul_2Mul*lstm_227/while/lstm_cell_515/Sigmoid_2:y:01lstm_227/while/lstm_cell_515/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_227/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_227_while_placeholder_1lstm_227_while_placeholder&lstm_227/while/lstm_cell_515/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_227/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_227/while/addAddV2lstm_227_while_placeholderlstm_227/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_227/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_227/while/add_1AddV2*lstm_227_while_lstm_227_while_loop_counterlstm_227/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_227/while/IdentityIdentitylstm_227/while/add_1:z:0^lstm_227/while/NoOp*
T0*
_output_shapes
: ?
lstm_227/while/Identity_1Identity0lstm_227_while_lstm_227_while_maximum_iterations^lstm_227/while/NoOp*
T0*
_output_shapes
: t
lstm_227/while/Identity_2Identitylstm_227/while/add:z:0^lstm_227/while/NoOp*
T0*
_output_shapes
: ?
lstm_227/while/Identity_3IdentityClstm_227/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_227/while/NoOp*
T0*
_output_shapes
: ?
lstm_227/while/Identity_4Identity&lstm_227/while/lstm_cell_515/mul_2:z:0^lstm_227/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_227/while/Identity_5Identity&lstm_227/while/lstm_cell_515/add_1:z:0^lstm_227/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_227/while/NoOpNoOp4^lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOp3^lstm_227/while/lstm_cell_515/MatMul/ReadVariableOp5^lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_227_while_identity lstm_227/while/Identity:output:0"?
lstm_227_while_identity_1"lstm_227/while/Identity_1:output:0"?
lstm_227_while_identity_2"lstm_227/while/Identity_2:output:0"?
lstm_227_while_identity_3"lstm_227/while/Identity_3:output:0"?
lstm_227_while_identity_4"lstm_227/while/Identity_4:output:0"?
lstm_227_while_identity_5"lstm_227/while/Identity_5:output:0"T
'lstm_227_while_lstm_227_strided_slice_1)lstm_227_while_lstm_227_strided_slice_1_0"~
<lstm_227_while_lstm_cell_515_biasadd_readvariableop_resource>lstm_227_while_lstm_cell_515_biasadd_readvariableop_resource_0"?
=lstm_227_while_lstm_cell_515_matmul_1_readvariableop_resource?lstm_227_while_lstm_cell_515_matmul_1_readvariableop_resource_0"|
;lstm_227_while_lstm_cell_515_matmul_readvariableop_resource=lstm_227_while_lstm_cell_515_matmul_readvariableop_resource_0"?
clstm_227_while_tensorarrayv2read_tensorlistgetitem_lstm_227_tensorarrayunstack_tensorlistfromtensorelstm_227_while_tensorarrayv2read_tensorlistgetitem_lstm_227_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOp3lstm_227/while/lstm_cell_515/BiasAdd/ReadVariableOp2h
2lstm_227/while/lstm_cell_515/MatMul/ReadVariableOp2lstm_227/while/lstm_cell_515/MatMul/ReadVariableOp2l
4lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOp4lstm_227/while/lstm_cell_515/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_514_layer_call_and_return_conditional_losses_3119928

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
J__inference_lstm_cell_515_layer_call_and_return_conditional_losses_3120026

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
?
/__inference_lstm_cell_514_layer_call_fn_3119879

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
J__inference_lstm_cell_514_layer_call_and_return_conditional_losses_3115146o
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
/__inference_sequential_75_layer_call_fn_3117043

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
J__inference_sequential_75_layer_call_and_return_conditional_losses_3116842o
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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3118700
inputs_0?
,lstm_cell_514_matmul_readvariableop_resource:	d?A
.lstm_cell_514_matmul_1_readvariableop_resource:	2?<
-lstm_cell_514_biasadd_readvariableop_resource:	?
identity??$lstm_cell_514/BiasAdd/ReadVariableOp?#lstm_cell_514/MatMul/ReadVariableOp?%lstm_cell_514/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_514/MatMul/ReadVariableOpReadVariableOp,lstm_cell_514_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_514/MatMulMatMulstrided_slice_2:output:0+lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_514_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_514/MatMul_1MatMulzeros:output:0-lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_514/addAddV2lstm_cell_514/MatMul:product:0 lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_514_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_514/BiasAddBiasAddlstm_cell_514/add:z:0,lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_514/splitSplit&lstm_cell_514/split/split_dim:output:0lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_514/SigmoidSigmoidlstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_514/Sigmoid_1Sigmoidlstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_514/mulMullstm_cell_514/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_514/ReluRelulstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_514/mul_1Mullstm_cell_514/Sigmoid:y:0 lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_514/add_1AddV2lstm_cell_514/mul:z:0lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_514/Sigmoid_2Sigmoidlstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_514/Relu_1Relulstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_514/mul_2Mullstm_cell_514/Sigmoid_2:y:0"lstm_cell_514/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_514_matmul_readvariableop_resource.lstm_cell_514_matmul_1_readvariableop_resource-lstm_cell_514_biasadd_readvariableop_resource*
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
while_body_3118616*
condR
while_cond_3118615*K
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
NoOpNoOp%^lstm_cell_514/BiasAdd/ReadVariableOp$^lstm_cell_514/MatMul/ReadVariableOp&^lstm_cell_514/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_514/BiasAdd/ReadVariableOp$lstm_cell_514/BiasAdd/ReadVariableOp2J
#lstm_cell_514/MatMul/ReadVariableOp#lstm_cell_514/MatMul/ReadVariableOp2N
%lstm_cell_514/MatMul_1/ReadVariableOp%lstm_cell_514/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
/__inference_lstm_cell_515_layer_call_fn_3119994

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
J__inference_lstm_cell_515_layer_call_and_return_conditional_losses_3115642o
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
J__inference_sequential_75_layer_call_and_return_conditional_losses_3116924
lstm_225_input#
lstm_225_3116897:	?#
lstm_225_3116899:	d?
lstm_225_3116901:	?#
lstm_226_3116904:	d?#
lstm_226_3116906:	2?
lstm_226_3116908:	?"
lstm_227_3116911:2("
lstm_227_3116913:
(
lstm_227_3116915:("
dense_75_3116918:

dense_75_3116920:
identity?? dense_75/StatefulPartitionedCall? lstm_225/StatefulPartitionedCall? lstm_226/StatefulPartitionedCall? lstm_227/StatefulPartitionedCall?
 lstm_225/StatefulPartitionedCallStatefulPartitionedCalllstm_225_inputlstm_225_3116897lstm_225_3116899lstm_225_3116901*
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
E__inference_lstm_225_layer_call_and_return_conditional_losses_3115928?
 lstm_226/StatefulPartitionedCallStatefulPartitionedCall)lstm_225/StatefulPartitionedCall:output:0lstm_226_3116904lstm_226_3116906lstm_226_3116908*
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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3116078?
 lstm_227/StatefulPartitionedCallStatefulPartitionedCall)lstm_226/StatefulPartitionedCall:output:0lstm_227_3116911lstm_227_3116913lstm_227_3116915*
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
E__inference_lstm_227_layer_call_and_return_conditional_losses_3116228?
 dense_75/StatefulPartitionedCallStatefulPartitionedCall)lstm_227/StatefulPartitionedCall:output:0dense_75_3116918dense_75_3116920*
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
E__inference_dense_75_layer_call_and_return_conditional_losses_3116246x
IdentityIdentity)dense_75/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_75/StatefulPartitionedCall!^lstm_225/StatefulPartitionedCall!^lstm_226/StatefulPartitionedCall!^lstm_227/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2D
 lstm_225/StatefulPartitionedCall lstm_225/StatefulPartitionedCall2D
 lstm_226/StatefulPartitionedCall lstm_226/StatefulPartitionedCall2D
 lstm_227/StatefulPartitionedCall lstm_227/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_225_input
?J
?
E__inference_lstm_225_layer_call_and_return_conditional_losses_3118370

inputs?
,lstm_cell_513_matmul_readvariableop_resource:	?A
.lstm_cell_513_matmul_1_readvariableop_resource:	d?<
-lstm_cell_513_biasadd_readvariableop_resource:	?
identity??$lstm_cell_513/BiasAdd/ReadVariableOp?#lstm_cell_513/MatMul/ReadVariableOp?%lstm_cell_513/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_513/MatMul/ReadVariableOpReadVariableOp,lstm_cell_513_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_513/MatMulMatMulstrided_slice_2:output:0+lstm_cell_513/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_513/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_513_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_513/MatMul_1MatMulzeros:output:0-lstm_cell_513/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_513/addAddV2lstm_cell_513/MatMul:product:0 lstm_cell_513/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_513/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_513_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_513/BiasAddBiasAddlstm_cell_513/add:z:0,lstm_cell_513/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_513/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_513/splitSplit&lstm_cell_513/split/split_dim:output:0lstm_cell_513/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_513/SigmoidSigmoidlstm_cell_513/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_513/Sigmoid_1Sigmoidlstm_cell_513/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_513/mulMullstm_cell_513/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_513/ReluRelulstm_cell_513/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_513/mul_1Mullstm_cell_513/Sigmoid:y:0 lstm_cell_513/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_513/add_1AddV2lstm_cell_513/mul:z:0lstm_cell_513/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_513/Sigmoid_2Sigmoidlstm_cell_513/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_513/Relu_1Relulstm_cell_513/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_513/mul_2Mullstm_cell_513/Sigmoid_2:y:0"lstm_cell_513/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_513_matmul_readvariableop_resource.lstm_cell_513_matmul_1_readvariableop_resource-lstm_cell_513_biasadd_readvariableop_resource*
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
while_body_3118286*
condR
while_cond_3118285*K
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
NoOpNoOp%^lstm_cell_513/BiasAdd/ReadVariableOp$^lstm_cell_513/MatMul/ReadVariableOp&^lstm_cell_513/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_513/BiasAdd/ReadVariableOp$lstm_cell_513/BiasAdd/ReadVariableOp2J
#lstm_cell_513/MatMul/ReadVariableOp#lstm_cell_513/MatMul/ReadVariableOp2N
%lstm_cell_513/MatMul_1/ReadVariableOp%lstm_cell_513/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_514_layer_call_and_return_conditional_losses_3115146

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
??
?
#__inference__traced_restore_3120331
file_prefix2
 assignvariableop_dense_75_kernel:
.
 assignvariableop_1_dense_75_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_225_lstm_cell_225_kernel:	?M
:assignvariableop_8_lstm_225_lstm_cell_225_recurrent_kernel:	d?=
.assignvariableop_9_lstm_225_lstm_cell_225_bias:	?D
1assignvariableop_10_lstm_226_lstm_cell_226_kernel:	d?N
;assignvariableop_11_lstm_226_lstm_cell_226_recurrent_kernel:	2?>
/assignvariableop_12_lstm_226_lstm_cell_226_bias:	?C
1assignvariableop_13_lstm_227_lstm_cell_227_kernel:2(M
;assignvariableop_14_lstm_227_lstm_cell_227_recurrent_kernel:
(=
/assignvariableop_15_lstm_227_lstm_cell_227_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_75_kernel_m:
6
(assignvariableop_19_adam_dense_75_bias_m:K
8assignvariableop_20_adam_lstm_225_lstm_cell_225_kernel_m:	?U
Bassignvariableop_21_adam_lstm_225_lstm_cell_225_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_225_lstm_cell_225_bias_m:	?K
8assignvariableop_23_adam_lstm_226_lstm_cell_226_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_226_lstm_cell_226_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_226_lstm_cell_226_bias_m:	?J
8assignvariableop_26_adam_lstm_227_lstm_cell_227_kernel_m:2(T
Bassignvariableop_27_adam_lstm_227_lstm_cell_227_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_227_lstm_cell_227_bias_m:(<
*assignvariableop_29_adam_dense_75_kernel_v:
6
(assignvariableop_30_adam_dense_75_bias_v:K
8assignvariableop_31_adam_lstm_225_lstm_cell_225_kernel_v:	?U
Bassignvariableop_32_adam_lstm_225_lstm_cell_225_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_225_lstm_cell_225_bias_v:	?K
8assignvariableop_34_adam_lstm_226_lstm_cell_226_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_226_lstm_cell_226_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_226_lstm_cell_226_bias_v:	?J
8assignvariableop_37_adam_lstm_227_lstm_cell_227_kernel_v:2(T
Bassignvariableop_38_adam_lstm_227_lstm_cell_227_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_227_lstm_cell_227_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_75_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_75_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_225_lstm_cell_225_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_225_lstm_cell_225_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_225_lstm_cell_225_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_226_lstm_cell_226_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_226_lstm_cell_226_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_226_lstm_cell_226_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_227_lstm_cell_227_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_227_lstm_cell_227_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_227_lstm_cell_227_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_75_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_75_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_225_lstm_cell_225_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_225_lstm_cell_225_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_225_lstm_cell_225_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_226_lstm_cell_226_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_226_lstm_cell_226_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_226_lstm_cell_226_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_227_lstm_cell_227_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_227_lstm_cell_227_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_227_lstm_cell_227_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_75_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_75_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_225_lstm_cell_225_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_225_lstm_cell_225_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_225_lstm_cell_225_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_226_lstm_cell_226_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_226_lstm_cell_226_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_226_lstm_cell_226_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_227_lstm_cell_227_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_227_lstm_cell_227_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_227_lstm_cell_227_bias_vIdentity_39:output:0"/device:CPU:0*
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
?C
?

lstm_226_while_body_3117241.
*lstm_226_while_lstm_226_while_loop_counter4
0lstm_226_while_lstm_226_while_maximum_iterations
lstm_226_while_placeholder 
lstm_226_while_placeholder_1 
lstm_226_while_placeholder_2 
lstm_226_while_placeholder_3-
)lstm_226_while_lstm_226_strided_slice_1_0i
elstm_226_while_tensorarrayv2read_tensorlistgetitem_lstm_226_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_226_while_lstm_cell_514_matmul_readvariableop_resource_0:	d?R
?lstm_226_while_lstm_cell_514_matmul_1_readvariableop_resource_0:	2?M
>lstm_226_while_lstm_cell_514_biasadd_readvariableop_resource_0:	?
lstm_226_while_identity
lstm_226_while_identity_1
lstm_226_while_identity_2
lstm_226_while_identity_3
lstm_226_while_identity_4
lstm_226_while_identity_5+
'lstm_226_while_lstm_226_strided_slice_1g
clstm_226_while_tensorarrayv2read_tensorlistgetitem_lstm_226_tensorarrayunstack_tensorlistfromtensorN
;lstm_226_while_lstm_cell_514_matmul_readvariableop_resource:	d?P
=lstm_226_while_lstm_cell_514_matmul_1_readvariableop_resource:	2?K
<lstm_226_while_lstm_cell_514_biasadd_readvariableop_resource:	???3lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOp?2lstm_226/while/lstm_cell_514/MatMul/ReadVariableOp?4lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOp?
@lstm_226/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_226/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_226_while_tensorarrayv2read_tensorlistgetitem_lstm_226_tensorarrayunstack_tensorlistfromtensor_0lstm_226_while_placeholderIlstm_226/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_226/while/lstm_cell_514/MatMul/ReadVariableOpReadVariableOp=lstm_226_while_lstm_cell_514_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_226/while/lstm_cell_514/MatMulMatMul9lstm_226/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_226/while/lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOp?lstm_226_while_lstm_cell_514_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_226/while/lstm_cell_514/MatMul_1MatMullstm_226_while_placeholder_2<lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_226/while/lstm_cell_514/addAddV2-lstm_226/while/lstm_cell_514/MatMul:product:0/lstm_226/while/lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOp>lstm_226_while_lstm_cell_514_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_226/while/lstm_cell_514/BiasAddBiasAdd$lstm_226/while/lstm_cell_514/add:z:0;lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_226/while/lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_226/while/lstm_cell_514/splitSplit5lstm_226/while/lstm_cell_514/split/split_dim:output:0-lstm_226/while/lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_226/while/lstm_cell_514/SigmoidSigmoid+lstm_226/while/lstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_226/while/lstm_cell_514/Sigmoid_1Sigmoid+lstm_226/while/lstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_226/while/lstm_cell_514/mulMul*lstm_226/while/lstm_cell_514/Sigmoid_1:y:0lstm_226_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_226/while/lstm_cell_514/ReluRelu+lstm_226/while/lstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_226/while/lstm_cell_514/mul_1Mul(lstm_226/while/lstm_cell_514/Sigmoid:y:0/lstm_226/while/lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_226/while/lstm_cell_514/add_1AddV2$lstm_226/while/lstm_cell_514/mul:z:0&lstm_226/while/lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_226/while/lstm_cell_514/Sigmoid_2Sigmoid+lstm_226/while/lstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_226/while/lstm_cell_514/Relu_1Relu&lstm_226/while/lstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_226/while/lstm_cell_514/mul_2Mul*lstm_226/while/lstm_cell_514/Sigmoid_2:y:01lstm_226/while/lstm_cell_514/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_226/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_226_while_placeholder_1lstm_226_while_placeholder&lstm_226/while/lstm_cell_514/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_226/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_226/while/addAddV2lstm_226_while_placeholderlstm_226/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_226/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_226/while/add_1AddV2*lstm_226_while_lstm_226_while_loop_counterlstm_226/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_226/while/IdentityIdentitylstm_226/while/add_1:z:0^lstm_226/while/NoOp*
T0*
_output_shapes
: ?
lstm_226/while/Identity_1Identity0lstm_226_while_lstm_226_while_maximum_iterations^lstm_226/while/NoOp*
T0*
_output_shapes
: t
lstm_226/while/Identity_2Identitylstm_226/while/add:z:0^lstm_226/while/NoOp*
T0*
_output_shapes
: ?
lstm_226/while/Identity_3IdentityClstm_226/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_226/while/NoOp*
T0*
_output_shapes
: ?
lstm_226/while/Identity_4Identity&lstm_226/while/lstm_cell_514/mul_2:z:0^lstm_226/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_226/while/Identity_5Identity&lstm_226/while/lstm_cell_514/add_1:z:0^lstm_226/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_226/while/NoOpNoOp4^lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOp3^lstm_226/while/lstm_cell_514/MatMul/ReadVariableOp5^lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_226_while_identity lstm_226/while/Identity:output:0"?
lstm_226_while_identity_1"lstm_226/while/Identity_1:output:0"?
lstm_226_while_identity_2"lstm_226/while/Identity_2:output:0"?
lstm_226_while_identity_3"lstm_226/while/Identity_3:output:0"?
lstm_226_while_identity_4"lstm_226/while/Identity_4:output:0"?
lstm_226_while_identity_5"lstm_226/while/Identity_5:output:0"T
'lstm_226_while_lstm_226_strided_slice_1)lstm_226_while_lstm_226_strided_slice_1_0"~
<lstm_226_while_lstm_cell_514_biasadd_readvariableop_resource>lstm_226_while_lstm_cell_514_biasadd_readvariableop_resource_0"?
=lstm_226_while_lstm_cell_514_matmul_1_readvariableop_resource?lstm_226_while_lstm_cell_514_matmul_1_readvariableop_resource_0"|
;lstm_226_while_lstm_cell_514_matmul_readvariableop_resource=lstm_226_while_lstm_cell_514_matmul_readvariableop_resource_0"?
clstm_226_while_tensorarrayv2read_tensorlistgetitem_lstm_226_tensorarrayunstack_tensorlistfromtensorelstm_226_while_tensorarrayv2read_tensorlistgetitem_lstm_226_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOp3lstm_226/while/lstm_cell_514/BiasAdd/ReadVariableOp2h
2lstm_226/while/lstm_cell_514/MatMul/ReadVariableOp2lstm_226/while/lstm_cell_514/MatMul/ReadVariableOp2l
4lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOp4lstm_226/while/lstm_cell_514/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3119045
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_514_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_514_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_514_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_514_matmul_readvariableop_resource:	d?G
4while_lstm_cell_514_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_514_biasadd_readvariableop_resource:	???*while/lstm_cell_514/BiasAdd/ReadVariableOp?)while/lstm_cell_514/MatMul/ReadVariableOp?+while/lstm_cell_514/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_514/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_514_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_514/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_514/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_514/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_514_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_514/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_514/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_514/addAddV2$while/lstm_cell_514/MatMul:product:0&while/lstm_cell_514/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_514/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_514_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_514/BiasAddBiasAddwhile/lstm_cell_514/add:z:02while/lstm_cell_514/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_514/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_514/splitSplit,while/lstm_cell_514/split/split_dim:output:0$while/lstm_cell_514/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_514/SigmoidSigmoid"while/lstm_cell_514/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_514/Sigmoid_1Sigmoid"while/lstm_cell_514/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mulMul!while/lstm_cell_514/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_514/ReluRelu"while/lstm_cell_514/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mul_1Mulwhile/lstm_cell_514/Sigmoid:y:0&while/lstm_cell_514/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/add_1AddV2while/lstm_cell_514/mul:z:0while/lstm_cell_514/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_514/Sigmoid_2Sigmoid"while/lstm_cell_514/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_514/Relu_1Reluwhile/lstm_cell_514/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_514/mul_2Mul!while/lstm_cell_514/Sigmoid_2:y:0(while/lstm_cell_514/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_514/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_514/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_514/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_514/BiasAdd/ReadVariableOp*^while/lstm_cell_514/MatMul/ReadVariableOp,^while/lstm_cell_514/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_514_biasadd_readvariableop_resource5while_lstm_cell_514_biasadd_readvariableop_resource_0"n
4while_lstm_cell_514_matmul_1_readvariableop_resource6while_lstm_cell_514_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_514_matmul_readvariableop_resource4while_lstm_cell_514_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_514/BiasAdd/ReadVariableOp*while/lstm_cell_514/BiasAdd/ReadVariableOp2V
)while/lstm_cell_514/MatMul/ReadVariableOp)while/lstm_cell_514/MatMul/ReadVariableOp2Z
+while/lstm_cell_514/MatMul_1/ReadVariableOp+while/lstm_cell_514/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_227_layer_call_fn_3119162

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
E__inference_lstm_227_layer_call_and_return_conditional_losses_3116228o
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
E__inference_lstm_227_layer_call_and_return_conditional_losses_3119316
inputs_0>
,lstm_cell_515_matmul_readvariableop_resource:2(@
.lstm_cell_515_matmul_1_readvariableop_resource:
(;
-lstm_cell_515_biasadd_readvariableop_resource:(
identity??$lstm_cell_515/BiasAdd/ReadVariableOp?#lstm_cell_515/MatMul/ReadVariableOp?%lstm_cell_515/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_515/MatMul/ReadVariableOpReadVariableOp,lstm_cell_515_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_515/MatMulMatMulstrided_slice_2:output:0+lstm_cell_515/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_515/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_515_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_515/MatMul_1MatMulzeros:output:0-lstm_cell_515/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_515/addAddV2lstm_cell_515/MatMul:product:0 lstm_cell_515/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_515/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_515_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_515/BiasAddBiasAddlstm_cell_515/add:z:0,lstm_cell_515/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_515/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_515/splitSplit&lstm_cell_515/split/split_dim:output:0lstm_cell_515/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_515/SigmoidSigmoidlstm_cell_515/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_515/Sigmoid_1Sigmoidlstm_cell_515/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_515/mulMullstm_cell_515/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_515/ReluRelulstm_cell_515/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_515/mul_1Mullstm_cell_515/Sigmoid:y:0 lstm_cell_515/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_515/add_1AddV2lstm_cell_515/mul:z:0lstm_cell_515/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_515/Sigmoid_2Sigmoidlstm_cell_515/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_515/Relu_1Relulstm_cell_515/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_515/mul_2Mullstm_cell_515/Sigmoid_2:y:0"lstm_cell_515/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_515_matmul_readvariableop_resource.lstm_cell_515_matmul_1_readvariableop_resource-lstm_cell_515_biasadd_readvariableop_resource*
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
while_body_3119232*
condR
while_cond_3119231*K
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
NoOpNoOp%^lstm_cell_515/BiasAdd/ReadVariableOp$^lstm_cell_515/MatMul/ReadVariableOp&^lstm_cell_515/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_515/BiasAdd/ReadVariableOp$lstm_cell_515/BiasAdd/ReadVariableOp2J
#lstm_cell_515/MatMul/ReadVariableOp#lstm_cell_515/MatMul/ReadVariableOp2N
%lstm_cell_515/MatMul_1/ReadVariableOp%lstm_cell_515/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
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
lstm_225_input;
 serving_default_lstm_225_input:0?????????<
dense_750
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
2dense_75/kernel
:2dense_75/bias
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
0:.	?2lstm_225/lstm_cell_225/kernel
::8	d?2'lstm_225/lstm_cell_225/recurrent_kernel
*:(?2lstm_225/lstm_cell_225/bias
0:.	d?2lstm_226/lstm_cell_226/kernel
::8	2?2'lstm_226/lstm_cell_226/recurrent_kernel
*:(?2lstm_226/lstm_cell_226/bias
/:-2(2lstm_227/lstm_cell_227/kernel
9:7
(2'lstm_227/lstm_cell_227/recurrent_kernel
):'(2lstm_227/lstm_cell_227/bias
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
2Adam/dense_75/kernel/m
 :2Adam/dense_75/bias/m
5:3	?2$Adam/lstm_225/lstm_cell_225/kernel/m
?:=	d?2.Adam/lstm_225/lstm_cell_225/recurrent_kernel/m
/:-?2"Adam/lstm_225/lstm_cell_225/bias/m
5:3	d?2$Adam/lstm_226/lstm_cell_226/kernel/m
?:=	2?2.Adam/lstm_226/lstm_cell_226/recurrent_kernel/m
/:-?2"Adam/lstm_226/lstm_cell_226/bias/m
4:22(2$Adam/lstm_227/lstm_cell_227/kernel/m
>:<
(2.Adam/lstm_227/lstm_cell_227/recurrent_kernel/m
.:,(2"Adam/lstm_227/lstm_cell_227/bias/m
&:$
2Adam/dense_75/kernel/v
 :2Adam/dense_75/bias/v
5:3	?2$Adam/lstm_225/lstm_cell_225/kernel/v
?:=	d?2.Adam/lstm_225/lstm_cell_225/recurrent_kernel/v
/:-?2"Adam/lstm_225/lstm_cell_225/bias/v
5:3	d?2$Adam/lstm_226/lstm_cell_226/kernel/v
?:=	2?2.Adam/lstm_226/lstm_cell_226/recurrent_kernel/v
/:-?2"Adam/lstm_226/lstm_cell_226/bias/v
4:22(2$Adam/lstm_227/lstm_cell_227/kernel/v
>:<
(2.Adam/lstm_227/lstm_cell_227/recurrent_kernel/v
.:,(2"Adam/lstm_227/lstm_cell_227/bias/v
?2?
/__inference_sequential_75_layer_call_fn_3116278
/__inference_sequential_75_layer_call_fn_3117016
/__inference_sequential_75_layer_call_fn_3117043
/__inference_sequential_75_layer_call_fn_3116894?
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
J__inference_sequential_75_layer_call_and_return_conditional_losses_3117470
J__inference_sequential_75_layer_call_and_return_conditional_losses_3117897
J__inference_sequential_75_layer_call_and_return_conditional_losses_3116924
J__inference_sequential_75_layer_call_and_return_conditional_losses_3116954?
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
"__inference__wrapped_model_3114729lstm_225_input"?
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
*__inference_lstm_225_layer_call_fn_3117908
*__inference_lstm_225_layer_call_fn_3117919
*__inference_lstm_225_layer_call_fn_3117930
*__inference_lstm_225_layer_call_fn_3117941?
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
E__inference_lstm_225_layer_call_and_return_conditional_losses_3118084
E__inference_lstm_225_layer_call_and_return_conditional_losses_3118227
E__inference_lstm_225_layer_call_and_return_conditional_losses_3118370
E__inference_lstm_225_layer_call_and_return_conditional_losses_3118513?
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
*__inference_lstm_226_layer_call_fn_3118524
*__inference_lstm_226_layer_call_fn_3118535
*__inference_lstm_226_layer_call_fn_3118546
*__inference_lstm_226_layer_call_fn_3118557?
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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3118700
E__inference_lstm_226_layer_call_and_return_conditional_losses_3118843
E__inference_lstm_226_layer_call_and_return_conditional_losses_3118986
E__inference_lstm_226_layer_call_and_return_conditional_losses_3119129?
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
*__inference_lstm_227_layer_call_fn_3119140
*__inference_lstm_227_layer_call_fn_3119151
*__inference_lstm_227_layer_call_fn_3119162
*__inference_lstm_227_layer_call_fn_3119173?
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
E__inference_lstm_227_layer_call_and_return_conditional_losses_3119316
E__inference_lstm_227_layer_call_and_return_conditional_losses_3119459
E__inference_lstm_227_layer_call_and_return_conditional_losses_3119602
E__inference_lstm_227_layer_call_and_return_conditional_losses_3119745?
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
*__inference_dense_75_layer_call_fn_3119754?
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
E__inference_dense_75_layer_call_and_return_conditional_losses_3119764?
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
%__inference_signature_wrapper_3116989lstm_225_input"?
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
/__inference_lstm_cell_513_layer_call_fn_3119781
/__inference_lstm_cell_513_layer_call_fn_3119798?
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
J__inference_lstm_cell_513_layer_call_and_return_conditional_losses_3119830
J__inference_lstm_cell_513_layer_call_and_return_conditional_losses_3119862?
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
/__inference_lstm_cell_514_layer_call_fn_3119879
/__inference_lstm_cell_514_layer_call_fn_3119896?
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
J__inference_lstm_cell_514_layer_call_and_return_conditional_losses_3119928
J__inference_lstm_cell_514_layer_call_and_return_conditional_losses_3119960?
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
/__inference_lstm_cell_515_layer_call_fn_3119977
/__inference_lstm_cell_515_layer_call_fn_3119994?
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
J__inference_lstm_cell_515_layer_call_and_return_conditional_losses_3120026
J__inference_lstm_cell_515_layer_call_and_return_conditional_losses_3120058?
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
"__inference__wrapped_model_3114729-./012345!";?8
1?.
,?)
lstm_225_input?????????
? "3?0
.
dense_75"?
dense_75??????????
E__inference_dense_75_layer_call_and_return_conditional_losses_3119764\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_75_layer_call_fn_3119754O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_225_layer_call_and_return_conditional_losses_3118084?-./O?L
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
E__inference_lstm_225_layer_call_and_return_conditional_losses_3118227?-./O?L
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
E__inference_lstm_225_layer_call_and_return_conditional_losses_3118370q-./??<
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
E__inference_lstm_225_layer_call_and_return_conditional_losses_3118513q-./??<
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
*__inference_lstm_225_layer_call_fn_3117908}-./O?L
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
*__inference_lstm_225_layer_call_fn_3117919}-./O?L
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
*__inference_lstm_225_layer_call_fn_3117930d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_225_layer_call_fn_3117941d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_226_layer_call_and_return_conditional_losses_3118700?012O?L
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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3118843?012O?L
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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3118986q012??<
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
E__inference_lstm_226_layer_call_and_return_conditional_losses_3119129q012??<
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
*__inference_lstm_226_layer_call_fn_3118524}012O?L
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
*__inference_lstm_226_layer_call_fn_3118535}012O?L
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
*__inference_lstm_226_layer_call_fn_3118546d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_226_layer_call_fn_3118557d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_227_layer_call_and_return_conditional_losses_3119316}345O?L
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
E__inference_lstm_227_layer_call_and_return_conditional_losses_3119459}345O?L
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
E__inference_lstm_227_layer_call_and_return_conditional_losses_3119602m345??<
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
E__inference_lstm_227_layer_call_and_return_conditional_losses_3119745m345??<
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
*__inference_lstm_227_layer_call_fn_3119140p345O?L
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
*__inference_lstm_227_layer_call_fn_3119151p345O?L
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
*__inference_lstm_227_layer_call_fn_3119162`345??<
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
*__inference_lstm_227_layer_call_fn_3119173`345??<
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
J__inference_lstm_cell_513_layer_call_and_return_conditional_losses_3119830?-./??}
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
J__inference_lstm_cell_513_layer_call_and_return_conditional_losses_3119862?-./??}
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
/__inference_lstm_cell_513_layer_call_fn_3119781?-./??}
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
/__inference_lstm_cell_513_layer_call_fn_3119798?-./??}
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
J__inference_lstm_cell_514_layer_call_and_return_conditional_losses_3119928?012??}
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
J__inference_lstm_cell_514_layer_call_and_return_conditional_losses_3119960?012??}
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
/__inference_lstm_cell_514_layer_call_fn_3119879?012??}
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
/__inference_lstm_cell_514_layer_call_fn_3119896?012??}
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
J__inference_lstm_cell_515_layer_call_and_return_conditional_losses_3120026?345??}
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
J__inference_lstm_cell_515_layer_call_and_return_conditional_losses_3120058?345??}
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
/__inference_lstm_cell_515_layer_call_fn_3119977?345??}
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
/__inference_lstm_cell_515_layer_call_fn_3119994?345??}
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
J__inference_sequential_75_layer_call_and_return_conditional_losses_3116924y-./012345!"C?@
9?6
,?)
lstm_225_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_75_layer_call_and_return_conditional_losses_3116954y-./012345!"C?@
9?6
,?)
lstm_225_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_75_layer_call_and_return_conditional_losses_3117470q-./012345!";?8
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
J__inference_sequential_75_layer_call_and_return_conditional_losses_3117897q-./012345!";?8
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
/__inference_sequential_75_layer_call_fn_3116278l-./012345!"C?@
9?6
,?)
lstm_225_input?????????
p 

 
? "???????????
/__inference_sequential_75_layer_call_fn_3116894l-./012345!"C?@
9?6
,?)
lstm_225_input?????????
p

 
? "???????????
/__inference_sequential_75_layer_call_fn_3117016d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_75_layer_call_fn_3117043d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3116989?-./012345!"M?J
? 
C?@
>
lstm_225_input,?)
lstm_225_input?????????"3?0
.
dense_75"?
dense_75?????????