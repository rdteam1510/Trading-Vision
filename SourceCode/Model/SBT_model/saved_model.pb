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
dense_74/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_74/kernel
s
#dense_74/kernel/Read/ReadVariableOpReadVariableOpdense_74/kernel*
_output_shapes

:
*
dtype0
r
dense_74/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_74/bias
k
!dense_74/bias/Read/ReadVariableOpReadVariableOpdense_74/bias*
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
lstm_222/lstm_cell_222/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_222/lstm_cell_222/kernel
?
1lstm_222/lstm_cell_222/kernel/Read/ReadVariableOpReadVariableOplstm_222/lstm_cell_222/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_222/lstm_cell_222/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_222/lstm_cell_222/recurrent_kernel
?
;lstm_222/lstm_cell_222/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_222/lstm_cell_222/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_222/lstm_cell_222/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_222/lstm_cell_222/bias
?
/lstm_222/lstm_cell_222/bias/Read/ReadVariableOpReadVariableOplstm_222/lstm_cell_222/bias*
_output_shapes	
:?*
dtype0
?
lstm_223/lstm_cell_223/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_223/lstm_cell_223/kernel
?
1lstm_223/lstm_cell_223/kernel/Read/ReadVariableOpReadVariableOplstm_223/lstm_cell_223/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_223/lstm_cell_223/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_223/lstm_cell_223/recurrent_kernel
?
;lstm_223/lstm_cell_223/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_223/lstm_cell_223/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_223/lstm_cell_223/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_223/lstm_cell_223/bias
?
/lstm_223/lstm_cell_223/bias/Read/ReadVariableOpReadVariableOplstm_223/lstm_cell_223/bias*
_output_shapes	
:?*
dtype0
?
lstm_224/lstm_cell_224/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_224/lstm_cell_224/kernel
?
1lstm_224/lstm_cell_224/kernel/Read/ReadVariableOpReadVariableOplstm_224/lstm_cell_224/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_224/lstm_cell_224/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_224/lstm_cell_224/recurrent_kernel
?
;lstm_224/lstm_cell_224/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_224/lstm_cell_224/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_224/lstm_cell_224/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_224/lstm_cell_224/bias
?
/lstm_224/lstm_cell_224/bias/Read/ReadVariableOpReadVariableOplstm_224/lstm_cell_224/bias*
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
Adam/dense_74/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_74/kernel/m
?
*Adam/dense_74/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_74/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_74/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_74/bias/m
y
(Adam/dense_74/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_74/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_222/lstm_cell_222/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_222/lstm_cell_222/kernel/m
?
8Adam/lstm_222/lstm_cell_222/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_222/lstm_cell_222/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_222/lstm_cell_222/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_222/lstm_cell_222/recurrent_kernel/m
?
BAdam/lstm_222/lstm_cell_222/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_222/lstm_cell_222/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_222/lstm_cell_222/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_222/lstm_cell_222/bias/m
?
6Adam/lstm_222/lstm_cell_222/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_222/lstm_cell_222/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_223/lstm_cell_223/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_223/lstm_cell_223/kernel/m
?
8Adam/lstm_223/lstm_cell_223/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_223/lstm_cell_223/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_223/lstm_cell_223/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_223/lstm_cell_223/recurrent_kernel/m
?
BAdam/lstm_223/lstm_cell_223/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_223/lstm_cell_223/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_223/lstm_cell_223/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_223/lstm_cell_223/bias/m
?
6Adam/lstm_223/lstm_cell_223/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_223/lstm_cell_223/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_224/lstm_cell_224/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_224/lstm_cell_224/kernel/m
?
8Adam/lstm_224/lstm_cell_224/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_224/lstm_cell_224/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_224/lstm_cell_224/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_224/lstm_cell_224/recurrent_kernel/m
?
BAdam/lstm_224/lstm_cell_224/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_224/lstm_cell_224/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_224/lstm_cell_224/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_224/lstm_cell_224/bias/m
?
6Adam/lstm_224/lstm_cell_224/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_224/lstm_cell_224/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_74/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_74/kernel/v
?
*Adam/dense_74/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_74/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_74/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_74/bias/v
y
(Adam/dense_74/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_74/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_222/lstm_cell_222/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_222/lstm_cell_222/kernel/v
?
8Adam/lstm_222/lstm_cell_222/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_222/lstm_cell_222/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_222/lstm_cell_222/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_222/lstm_cell_222/recurrent_kernel/v
?
BAdam/lstm_222/lstm_cell_222/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_222/lstm_cell_222/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_222/lstm_cell_222/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_222/lstm_cell_222/bias/v
?
6Adam/lstm_222/lstm_cell_222/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_222/lstm_cell_222/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_223/lstm_cell_223/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_223/lstm_cell_223/kernel/v
?
8Adam/lstm_223/lstm_cell_223/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_223/lstm_cell_223/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_223/lstm_cell_223/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_223/lstm_cell_223/recurrent_kernel/v
?
BAdam/lstm_223/lstm_cell_223/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_223/lstm_cell_223/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_223/lstm_cell_223/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_223/lstm_cell_223/bias/v
?
6Adam/lstm_223/lstm_cell_223/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_223/lstm_cell_223/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_224/lstm_cell_224/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_224/lstm_cell_224/kernel/v
?
8Adam/lstm_224/lstm_cell_224/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_224/lstm_cell_224/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_224/lstm_cell_224/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_224/lstm_cell_224/recurrent_kernel/v
?
BAdam/lstm_224/lstm_cell_224/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_224/lstm_cell_224/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_224/lstm_cell_224/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_224/lstm_cell_224/bias/v
?
6Adam/lstm_224/lstm_cell_224/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_224/lstm_cell_224/bias/v*
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
VARIABLE_VALUEdense_74/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_74/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_222/lstm_cell_222/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_222/lstm_cell_222/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_222/lstm_cell_222/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_223/lstm_cell_223/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_223/lstm_cell_223/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_223/lstm_cell_223/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_224/lstm_cell_224/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_224/lstm_cell_224/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_224/lstm_cell_224/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_74/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_74/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_222/lstm_cell_222/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_222/lstm_cell_222/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_222/lstm_cell_222/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_223/lstm_cell_223/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_223/lstm_cell_223/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_223/lstm_cell_223/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_224/lstm_cell_224/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_224/lstm_cell_224/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_224/lstm_cell_224/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_74/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_74/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_222/lstm_cell_222/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_222/lstm_cell_222/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_222/lstm_cell_222/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_223/lstm_cell_223/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_223/lstm_cell_223/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_223/lstm_cell_223/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_224/lstm_cell_224/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_224/lstm_cell_224/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_224/lstm_cell_224/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_222_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_222_inputlstm_222/lstm_cell_222/kernel'lstm_222/lstm_cell_222/recurrent_kernellstm_222/lstm_cell_222/biaslstm_223/lstm_cell_223/kernel'lstm_223/lstm_cell_223/recurrent_kernellstm_223/lstm_cell_223/biaslstm_224/lstm_cell_224/kernel'lstm_224/lstm_cell_224/recurrent_kernellstm_224/lstm_cell_224/biasdense_74/kerneldense_74/bias*
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
%__inference_signature_wrapper_3098888
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_74/kernel/Read/ReadVariableOp!dense_74/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_222/lstm_cell_222/kernel/Read/ReadVariableOp;lstm_222/lstm_cell_222/recurrent_kernel/Read/ReadVariableOp/lstm_222/lstm_cell_222/bias/Read/ReadVariableOp1lstm_223/lstm_cell_223/kernel/Read/ReadVariableOp;lstm_223/lstm_cell_223/recurrent_kernel/Read/ReadVariableOp/lstm_223/lstm_cell_223/bias/Read/ReadVariableOp1lstm_224/lstm_cell_224/kernel/Read/ReadVariableOp;lstm_224/lstm_cell_224/recurrent_kernel/Read/ReadVariableOp/lstm_224/lstm_cell_224/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_74/kernel/m/Read/ReadVariableOp(Adam/dense_74/bias/m/Read/ReadVariableOp8Adam/lstm_222/lstm_cell_222/kernel/m/Read/ReadVariableOpBAdam/lstm_222/lstm_cell_222/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_222/lstm_cell_222/bias/m/Read/ReadVariableOp8Adam/lstm_223/lstm_cell_223/kernel/m/Read/ReadVariableOpBAdam/lstm_223/lstm_cell_223/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_223/lstm_cell_223/bias/m/Read/ReadVariableOp8Adam/lstm_224/lstm_cell_224/kernel/m/Read/ReadVariableOpBAdam/lstm_224/lstm_cell_224/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_224/lstm_cell_224/bias/m/Read/ReadVariableOp*Adam/dense_74/kernel/v/Read/ReadVariableOp(Adam/dense_74/bias/v/Read/ReadVariableOp8Adam/lstm_222/lstm_cell_222/kernel/v/Read/ReadVariableOpBAdam/lstm_222/lstm_cell_222/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_222/lstm_cell_222/bias/v/Read/ReadVariableOp8Adam/lstm_223/lstm_cell_223/kernel/v/Read/ReadVariableOpBAdam/lstm_223/lstm_cell_223/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_223/lstm_cell_223/bias/v/Read/ReadVariableOp8Adam/lstm_224/lstm_cell_224/kernel/v/Read/ReadVariableOpBAdam/lstm_224/lstm_cell_224/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_224/lstm_cell_224/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3102100
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_74/kerneldense_74/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_222/lstm_cell_222/kernel'lstm_222/lstm_cell_222/recurrent_kernellstm_222/lstm_cell_222/biaslstm_223/lstm_cell_223/kernel'lstm_223/lstm_cell_223/recurrent_kernellstm_223/lstm_cell_223/biaslstm_224/lstm_cell_224/kernel'lstm_224/lstm_cell_224/recurrent_kernellstm_224/lstm_cell_224/biastotalcountAdam/dense_74/kernel/mAdam/dense_74/bias/m$Adam/lstm_222/lstm_cell_222/kernel/m.Adam/lstm_222/lstm_cell_222/recurrent_kernel/m"Adam/lstm_222/lstm_cell_222/bias/m$Adam/lstm_223/lstm_cell_223/kernel/m.Adam/lstm_223/lstm_cell_223/recurrent_kernel/m"Adam/lstm_223/lstm_cell_223/bias/m$Adam/lstm_224/lstm_cell_224/kernel/m.Adam/lstm_224/lstm_cell_224/recurrent_kernel/m"Adam/lstm_224/lstm_cell_224/bias/mAdam/dense_74/kernel/vAdam/dense_74/bias/v$Adam/lstm_222/lstm_cell_222/kernel/v.Adam/lstm_222/lstm_cell_222/recurrent_kernel/v"Adam/lstm_222/lstm_cell_222/bias/v$Adam/lstm_223/lstm_cell_223/kernel/v.Adam/lstm_223/lstm_cell_223/recurrent_kernel/v"Adam/lstm_223/lstm_cell_223/bias/v$Adam/lstm_224/lstm_cell_224/kernel/v.Adam/lstm_224/lstm_cell_224/recurrent_kernel/v"Adam/lstm_224/lstm_cell_224/bias/v*4
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
#__inference__traced_restore_3102230??+
?S
?
)sequential_74_lstm_224_while_body_3096538J
Fsequential_74_lstm_224_while_sequential_74_lstm_224_while_loop_counterP
Lsequential_74_lstm_224_while_sequential_74_lstm_224_while_maximum_iterations,
(sequential_74_lstm_224_while_placeholder.
*sequential_74_lstm_224_while_placeholder_1.
*sequential_74_lstm_224_while_placeholder_2.
*sequential_74_lstm_224_while_placeholder_3I
Esequential_74_lstm_224_while_sequential_74_lstm_224_strided_slice_1_0?
?sequential_74_lstm_224_while_tensorarrayv2read_tensorlistgetitem_sequential_74_lstm_224_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_74_lstm_224_while_lstm_cell_512_matmul_readvariableop_resource_0:2(_
Msequential_74_lstm_224_while_lstm_cell_512_matmul_1_readvariableop_resource_0:
(Z
Lsequential_74_lstm_224_while_lstm_cell_512_biasadd_readvariableop_resource_0:()
%sequential_74_lstm_224_while_identity+
'sequential_74_lstm_224_while_identity_1+
'sequential_74_lstm_224_while_identity_2+
'sequential_74_lstm_224_while_identity_3+
'sequential_74_lstm_224_while_identity_4+
'sequential_74_lstm_224_while_identity_5G
Csequential_74_lstm_224_while_sequential_74_lstm_224_strided_slice_1?
sequential_74_lstm_224_while_tensorarrayv2read_tensorlistgetitem_sequential_74_lstm_224_tensorarrayunstack_tensorlistfromtensor[
Isequential_74_lstm_224_while_lstm_cell_512_matmul_readvariableop_resource:2(]
Ksequential_74_lstm_224_while_lstm_cell_512_matmul_1_readvariableop_resource:
(X
Jsequential_74_lstm_224_while_lstm_cell_512_biasadd_readvariableop_resource:(??Asequential_74/lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOp?@sequential_74/lstm_224/while/lstm_cell_512/MatMul/ReadVariableOp?Bsequential_74/lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOp?
Nsequential_74/lstm_224/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_74/lstm_224/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_74_lstm_224_while_tensorarrayv2read_tensorlistgetitem_sequential_74_lstm_224_tensorarrayunstack_tensorlistfromtensor_0(sequential_74_lstm_224_while_placeholderWsequential_74/lstm_224/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_74/lstm_224/while/lstm_cell_512/MatMul/ReadVariableOpReadVariableOpKsequential_74_lstm_224_while_lstm_cell_512_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_74/lstm_224/while/lstm_cell_512/MatMulMatMulGsequential_74/lstm_224/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_74/lstm_224/while/lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_74/lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOpMsequential_74_lstm_224_while_lstm_cell_512_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_74/lstm_224/while/lstm_cell_512/MatMul_1MatMul*sequential_74_lstm_224_while_placeholder_2Jsequential_74/lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_74/lstm_224/while/lstm_cell_512/addAddV2;sequential_74/lstm_224/while/lstm_cell_512/MatMul:product:0=sequential_74/lstm_224/while/lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_74/lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOpLsequential_74_lstm_224_while_lstm_cell_512_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_74/lstm_224/while/lstm_cell_512/BiasAddBiasAdd2sequential_74/lstm_224/while/lstm_cell_512/add:z:0Isequential_74/lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_74/lstm_224/while/lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_74/lstm_224/while/lstm_cell_512/splitSplitCsequential_74/lstm_224/while/lstm_cell_512/split/split_dim:output:0;sequential_74/lstm_224/while/lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_74/lstm_224/while/lstm_cell_512/SigmoidSigmoid9sequential_74/lstm_224/while/lstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_74/lstm_224/while/lstm_cell_512/Sigmoid_1Sigmoid9sequential_74/lstm_224/while/lstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_74/lstm_224/while/lstm_cell_512/mulMul8sequential_74/lstm_224/while/lstm_cell_512/Sigmoid_1:y:0*sequential_74_lstm_224_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_74/lstm_224/while/lstm_cell_512/ReluRelu9sequential_74/lstm_224/while/lstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_74/lstm_224/while/lstm_cell_512/mul_1Mul6sequential_74/lstm_224/while/lstm_cell_512/Sigmoid:y:0=sequential_74/lstm_224/while/lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_74/lstm_224/while/lstm_cell_512/add_1AddV22sequential_74/lstm_224/while/lstm_cell_512/mul:z:04sequential_74/lstm_224/while/lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_74/lstm_224/while/lstm_cell_512/Sigmoid_2Sigmoid9sequential_74/lstm_224/while/lstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_74/lstm_224/while/lstm_cell_512/Relu_1Relu4sequential_74/lstm_224/while/lstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_74/lstm_224/while/lstm_cell_512/mul_2Mul8sequential_74/lstm_224/while/lstm_cell_512/Sigmoid_2:y:0?sequential_74/lstm_224/while/lstm_cell_512/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_74/lstm_224/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_74_lstm_224_while_placeholder_1(sequential_74_lstm_224_while_placeholder4sequential_74/lstm_224/while/lstm_cell_512/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_74/lstm_224/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_74/lstm_224/while/addAddV2(sequential_74_lstm_224_while_placeholder+sequential_74/lstm_224/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_74/lstm_224/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_74/lstm_224/while/add_1AddV2Fsequential_74_lstm_224_while_sequential_74_lstm_224_while_loop_counter-sequential_74/lstm_224/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_74/lstm_224/while/IdentityIdentity&sequential_74/lstm_224/while/add_1:z:0"^sequential_74/lstm_224/while/NoOp*
T0*
_output_shapes
: ?
'sequential_74/lstm_224/while/Identity_1IdentityLsequential_74_lstm_224_while_sequential_74_lstm_224_while_maximum_iterations"^sequential_74/lstm_224/while/NoOp*
T0*
_output_shapes
: ?
'sequential_74/lstm_224/while/Identity_2Identity$sequential_74/lstm_224/while/add:z:0"^sequential_74/lstm_224/while/NoOp*
T0*
_output_shapes
: ?
'sequential_74/lstm_224/while/Identity_3IdentityQsequential_74/lstm_224/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_74/lstm_224/while/NoOp*
T0*
_output_shapes
: ?
'sequential_74/lstm_224/while/Identity_4Identity4sequential_74/lstm_224/while/lstm_cell_512/mul_2:z:0"^sequential_74/lstm_224/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_74/lstm_224/while/Identity_5Identity4sequential_74/lstm_224/while/lstm_cell_512/add_1:z:0"^sequential_74/lstm_224/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_74/lstm_224/while/NoOpNoOpB^sequential_74/lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOpA^sequential_74/lstm_224/while/lstm_cell_512/MatMul/ReadVariableOpC^sequential_74/lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_74_lstm_224_while_identity.sequential_74/lstm_224/while/Identity:output:0"[
'sequential_74_lstm_224_while_identity_10sequential_74/lstm_224/while/Identity_1:output:0"[
'sequential_74_lstm_224_while_identity_20sequential_74/lstm_224/while/Identity_2:output:0"[
'sequential_74_lstm_224_while_identity_30sequential_74/lstm_224/while/Identity_3:output:0"[
'sequential_74_lstm_224_while_identity_40sequential_74/lstm_224/while/Identity_4:output:0"[
'sequential_74_lstm_224_while_identity_50sequential_74/lstm_224/while/Identity_5:output:0"?
Jsequential_74_lstm_224_while_lstm_cell_512_biasadd_readvariableop_resourceLsequential_74_lstm_224_while_lstm_cell_512_biasadd_readvariableop_resource_0"?
Ksequential_74_lstm_224_while_lstm_cell_512_matmul_1_readvariableop_resourceMsequential_74_lstm_224_while_lstm_cell_512_matmul_1_readvariableop_resource_0"?
Isequential_74_lstm_224_while_lstm_cell_512_matmul_readvariableop_resourceKsequential_74_lstm_224_while_lstm_cell_512_matmul_readvariableop_resource_0"?
Csequential_74_lstm_224_while_sequential_74_lstm_224_strided_slice_1Esequential_74_lstm_224_while_sequential_74_lstm_224_strided_slice_1_0"?
sequential_74_lstm_224_while_tensorarrayv2read_tensorlistgetitem_sequential_74_lstm_224_tensorarrayunstack_tensorlistfromtensor?sequential_74_lstm_224_while_tensorarrayv2read_tensorlistgetitem_sequential_74_lstm_224_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_74/lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOpAsequential_74/lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOp2?
@sequential_74/lstm_224/while/lstm_cell_512/MatMul/ReadVariableOp@sequential_74/lstm_224/while/lstm_cell_512/MatMul/ReadVariableOp2?
Bsequential_74/lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOpBsequential_74/lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3098424
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_511_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_511_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_511_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_511_matmul_readvariableop_resource:	d?G
4while_lstm_cell_511_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_511_biasadd_readvariableop_resource:	???*while/lstm_cell_511/BiasAdd/ReadVariableOp?)while/lstm_cell_511/MatMul/ReadVariableOp?+while/lstm_cell_511/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_511/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_511_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_511/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_511_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_511/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_511/addAddV2$while/lstm_cell_511/MatMul:product:0&while/lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_511_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_511/BiasAddBiasAddwhile/lstm_cell_511/add:z:02while/lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_511/splitSplit,while/lstm_cell_511/split/split_dim:output:0$while/lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_511/SigmoidSigmoid"while/lstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_511/Sigmoid_1Sigmoid"while/lstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mulMul!while/lstm_cell_511/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_511/ReluRelu"while/lstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mul_1Mulwhile/lstm_cell_511/Sigmoid:y:0&while/lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/add_1AddV2while/lstm_cell_511/mul:z:0while/lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_511/Sigmoid_2Sigmoid"while/lstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_511/Relu_1Reluwhile/lstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mul_2Mul!while/lstm_cell_511/Sigmoid_2:y:0(while/lstm_cell_511/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_511/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_511/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_511/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_511/BiasAdd/ReadVariableOp*^while/lstm_cell_511/MatMul/ReadVariableOp,^while/lstm_cell_511/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_511_biasadd_readvariableop_resource5while_lstm_cell_511_biasadd_readvariableop_resource_0"n
4while_lstm_cell_511_matmul_1_readvariableop_resource6while_lstm_cell_511_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_511_matmul_readvariableop_resource4while_lstm_cell_511_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_511/BiasAdd/ReadVariableOp*while/lstm_cell_511/BiasAdd/ReadVariableOp2V
)while/lstm_cell_511/MatMul/ReadVariableOp)while/lstm_cell_511/MatMul/ReadVariableOp2Z
+while/lstm_cell_511/MatMul_1/ReadVariableOp+while/lstm_cell_511/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_223_layer_call_and_return_conditional_losses_3098508

inputs?
,lstm_cell_511_matmul_readvariableop_resource:	d?A
.lstm_cell_511_matmul_1_readvariableop_resource:	2?<
-lstm_cell_511_biasadd_readvariableop_resource:	?
identity??$lstm_cell_511/BiasAdd/ReadVariableOp?#lstm_cell_511/MatMul/ReadVariableOp?%lstm_cell_511/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_511/MatMul/ReadVariableOpReadVariableOp,lstm_cell_511_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_511/MatMulMatMulstrided_slice_2:output:0+lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_511_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_511/MatMul_1MatMulzeros:output:0-lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_511/addAddV2lstm_cell_511/MatMul:product:0 lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_511_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_511/BiasAddBiasAddlstm_cell_511/add:z:0,lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_511/splitSplit&lstm_cell_511/split/split_dim:output:0lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_511/SigmoidSigmoidlstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_511/Sigmoid_1Sigmoidlstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_511/mulMullstm_cell_511/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_511/ReluRelulstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_511/mul_1Mullstm_cell_511/Sigmoid:y:0 lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_511/add_1AddV2lstm_cell_511/mul:z:0lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_511/Sigmoid_2Sigmoidlstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_511/Relu_1Relulstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_511/mul_2Mullstm_cell_511/Sigmoid_2:y:0"lstm_cell_511/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_511_matmul_readvariableop_resource.lstm_cell_511_matmul_1_readvariableop_resource-lstm_cell_511_biasadd_readvariableop_resource*
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
while_body_3098424*
condR
while_cond_3098423*K
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
NoOpNoOp%^lstm_cell_511/BiasAdd/ReadVariableOp$^lstm_cell_511/MatMul/ReadVariableOp&^lstm_cell_511/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_511/BiasAdd/ReadVariableOp$lstm_cell_511/BiasAdd/ReadVariableOp2J
#lstm_cell_511/MatMul/ReadVariableOp#lstm_cell_511/MatMul/ReadVariableOp2N
%lstm_cell_511/MatMul_1/ReadVariableOp%lstm_cell_511/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_224_while_body_3099279.
*lstm_224_while_lstm_224_while_loop_counter4
0lstm_224_while_lstm_224_while_maximum_iterations
lstm_224_while_placeholder 
lstm_224_while_placeholder_1 
lstm_224_while_placeholder_2 
lstm_224_while_placeholder_3-
)lstm_224_while_lstm_224_strided_slice_1_0i
elstm_224_while_tensorarrayv2read_tensorlistgetitem_lstm_224_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_224_while_lstm_cell_512_matmul_readvariableop_resource_0:2(Q
?lstm_224_while_lstm_cell_512_matmul_1_readvariableop_resource_0:
(L
>lstm_224_while_lstm_cell_512_biasadd_readvariableop_resource_0:(
lstm_224_while_identity
lstm_224_while_identity_1
lstm_224_while_identity_2
lstm_224_while_identity_3
lstm_224_while_identity_4
lstm_224_while_identity_5+
'lstm_224_while_lstm_224_strided_slice_1g
clstm_224_while_tensorarrayv2read_tensorlistgetitem_lstm_224_tensorarrayunstack_tensorlistfromtensorM
;lstm_224_while_lstm_cell_512_matmul_readvariableop_resource:2(O
=lstm_224_while_lstm_cell_512_matmul_1_readvariableop_resource:
(J
<lstm_224_while_lstm_cell_512_biasadd_readvariableop_resource:(??3lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOp?2lstm_224/while/lstm_cell_512/MatMul/ReadVariableOp?4lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOp?
@lstm_224/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_224/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_224_while_tensorarrayv2read_tensorlistgetitem_lstm_224_tensorarrayunstack_tensorlistfromtensor_0lstm_224_while_placeholderIlstm_224/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_224/while/lstm_cell_512/MatMul/ReadVariableOpReadVariableOp=lstm_224_while_lstm_cell_512_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_224/while/lstm_cell_512/MatMulMatMul9lstm_224/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_224/while/lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOp?lstm_224_while_lstm_cell_512_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_224/while/lstm_cell_512/MatMul_1MatMullstm_224_while_placeholder_2<lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_224/while/lstm_cell_512/addAddV2-lstm_224/while/lstm_cell_512/MatMul:product:0/lstm_224/while/lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOp>lstm_224_while_lstm_cell_512_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_224/while/lstm_cell_512/BiasAddBiasAdd$lstm_224/while/lstm_cell_512/add:z:0;lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_224/while/lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_224/while/lstm_cell_512/splitSplit5lstm_224/while/lstm_cell_512/split/split_dim:output:0-lstm_224/while/lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_224/while/lstm_cell_512/SigmoidSigmoid+lstm_224/while/lstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_224/while/lstm_cell_512/Sigmoid_1Sigmoid+lstm_224/while/lstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_224/while/lstm_cell_512/mulMul*lstm_224/while/lstm_cell_512/Sigmoid_1:y:0lstm_224_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_224/while/lstm_cell_512/ReluRelu+lstm_224/while/lstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_224/while/lstm_cell_512/mul_1Mul(lstm_224/while/lstm_cell_512/Sigmoid:y:0/lstm_224/while/lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_224/while/lstm_cell_512/add_1AddV2$lstm_224/while/lstm_cell_512/mul:z:0&lstm_224/while/lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_224/while/lstm_cell_512/Sigmoid_2Sigmoid+lstm_224/while/lstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_224/while/lstm_cell_512/Relu_1Relu&lstm_224/while/lstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_224/while/lstm_cell_512/mul_2Mul*lstm_224/while/lstm_cell_512/Sigmoid_2:y:01lstm_224/while/lstm_cell_512/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_224/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_224_while_placeholder_1lstm_224_while_placeholder&lstm_224/while/lstm_cell_512/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_224/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_224/while/addAddV2lstm_224_while_placeholderlstm_224/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_224/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_224/while/add_1AddV2*lstm_224_while_lstm_224_while_loop_counterlstm_224/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_224/while/IdentityIdentitylstm_224/while/add_1:z:0^lstm_224/while/NoOp*
T0*
_output_shapes
: ?
lstm_224/while/Identity_1Identity0lstm_224_while_lstm_224_while_maximum_iterations^lstm_224/while/NoOp*
T0*
_output_shapes
: t
lstm_224/while/Identity_2Identitylstm_224/while/add:z:0^lstm_224/while/NoOp*
T0*
_output_shapes
: ?
lstm_224/while/Identity_3IdentityClstm_224/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_224/while/NoOp*
T0*
_output_shapes
: ?
lstm_224/while/Identity_4Identity&lstm_224/while/lstm_cell_512/mul_2:z:0^lstm_224/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_224/while/Identity_5Identity&lstm_224/while/lstm_cell_512/add_1:z:0^lstm_224/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_224/while/NoOpNoOp4^lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOp3^lstm_224/while/lstm_cell_512/MatMul/ReadVariableOp5^lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_224_while_identity lstm_224/while/Identity:output:0"?
lstm_224_while_identity_1"lstm_224/while/Identity_1:output:0"?
lstm_224_while_identity_2"lstm_224/while/Identity_2:output:0"?
lstm_224_while_identity_3"lstm_224/while/Identity_3:output:0"?
lstm_224_while_identity_4"lstm_224/while/Identity_4:output:0"?
lstm_224_while_identity_5"lstm_224/while/Identity_5:output:0"T
'lstm_224_while_lstm_224_strided_slice_1)lstm_224_while_lstm_224_strided_slice_1_0"~
<lstm_224_while_lstm_cell_512_biasadd_readvariableop_resource>lstm_224_while_lstm_cell_512_biasadd_readvariableop_resource_0"?
=lstm_224_while_lstm_cell_512_matmul_1_readvariableop_resource?lstm_224_while_lstm_cell_512_matmul_1_readvariableop_resource_0"|
;lstm_224_while_lstm_cell_512_matmul_readvariableop_resource=lstm_224_while_lstm_cell_512_matmul_readvariableop_resource_0"?
clstm_224_while_tensorarrayv2read_tensorlistgetitem_lstm_224_tensorarrayunstack_tensorlistfromtensorelstm_224_while_tensorarrayv2read_tensorlistgetitem_lstm_224_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOp3lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOp2h
2lstm_224/while/lstm_cell_512/MatMul/ReadVariableOp2lstm_224/while/lstm_cell_512/MatMul/ReadVariableOp2l
4lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOp4lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_223_while_body_3099140.
*lstm_223_while_lstm_223_while_loop_counter4
0lstm_223_while_lstm_223_while_maximum_iterations
lstm_223_while_placeholder 
lstm_223_while_placeholder_1 
lstm_223_while_placeholder_2 
lstm_223_while_placeholder_3-
)lstm_223_while_lstm_223_strided_slice_1_0i
elstm_223_while_tensorarrayv2read_tensorlistgetitem_lstm_223_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_223_while_lstm_cell_511_matmul_readvariableop_resource_0:	d?R
?lstm_223_while_lstm_cell_511_matmul_1_readvariableop_resource_0:	2?M
>lstm_223_while_lstm_cell_511_biasadd_readvariableop_resource_0:	?
lstm_223_while_identity
lstm_223_while_identity_1
lstm_223_while_identity_2
lstm_223_while_identity_3
lstm_223_while_identity_4
lstm_223_while_identity_5+
'lstm_223_while_lstm_223_strided_slice_1g
clstm_223_while_tensorarrayv2read_tensorlistgetitem_lstm_223_tensorarrayunstack_tensorlistfromtensorN
;lstm_223_while_lstm_cell_511_matmul_readvariableop_resource:	d?P
=lstm_223_while_lstm_cell_511_matmul_1_readvariableop_resource:	2?K
<lstm_223_while_lstm_cell_511_biasadd_readvariableop_resource:	???3lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOp?2lstm_223/while/lstm_cell_511/MatMul/ReadVariableOp?4lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOp?
@lstm_223/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_223/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_223_while_tensorarrayv2read_tensorlistgetitem_lstm_223_tensorarrayunstack_tensorlistfromtensor_0lstm_223_while_placeholderIlstm_223/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_223/while/lstm_cell_511/MatMul/ReadVariableOpReadVariableOp=lstm_223_while_lstm_cell_511_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_223/while/lstm_cell_511/MatMulMatMul9lstm_223/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_223/while/lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOp?lstm_223_while_lstm_cell_511_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_223/while/lstm_cell_511/MatMul_1MatMullstm_223_while_placeholder_2<lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_223/while/lstm_cell_511/addAddV2-lstm_223/while/lstm_cell_511/MatMul:product:0/lstm_223/while/lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOp>lstm_223_while_lstm_cell_511_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_223/while/lstm_cell_511/BiasAddBiasAdd$lstm_223/while/lstm_cell_511/add:z:0;lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_223/while/lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_223/while/lstm_cell_511/splitSplit5lstm_223/while/lstm_cell_511/split/split_dim:output:0-lstm_223/while/lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_223/while/lstm_cell_511/SigmoidSigmoid+lstm_223/while/lstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_223/while/lstm_cell_511/Sigmoid_1Sigmoid+lstm_223/while/lstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_223/while/lstm_cell_511/mulMul*lstm_223/while/lstm_cell_511/Sigmoid_1:y:0lstm_223_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_223/while/lstm_cell_511/ReluRelu+lstm_223/while/lstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_223/while/lstm_cell_511/mul_1Mul(lstm_223/while/lstm_cell_511/Sigmoid:y:0/lstm_223/while/lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_223/while/lstm_cell_511/add_1AddV2$lstm_223/while/lstm_cell_511/mul:z:0&lstm_223/while/lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_223/while/lstm_cell_511/Sigmoid_2Sigmoid+lstm_223/while/lstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_223/while/lstm_cell_511/Relu_1Relu&lstm_223/while/lstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_223/while/lstm_cell_511/mul_2Mul*lstm_223/while/lstm_cell_511/Sigmoid_2:y:01lstm_223/while/lstm_cell_511/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_223/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_223_while_placeholder_1lstm_223_while_placeholder&lstm_223/while/lstm_cell_511/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_223/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_223/while/addAddV2lstm_223_while_placeholderlstm_223/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_223/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_223/while/add_1AddV2*lstm_223_while_lstm_223_while_loop_counterlstm_223/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_223/while/IdentityIdentitylstm_223/while/add_1:z:0^lstm_223/while/NoOp*
T0*
_output_shapes
: ?
lstm_223/while/Identity_1Identity0lstm_223_while_lstm_223_while_maximum_iterations^lstm_223/while/NoOp*
T0*
_output_shapes
: t
lstm_223/while/Identity_2Identitylstm_223/while/add:z:0^lstm_223/while/NoOp*
T0*
_output_shapes
: ?
lstm_223/while/Identity_3IdentityClstm_223/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_223/while/NoOp*
T0*
_output_shapes
: ?
lstm_223/while/Identity_4Identity&lstm_223/while/lstm_cell_511/mul_2:z:0^lstm_223/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_223/while/Identity_5Identity&lstm_223/while/lstm_cell_511/add_1:z:0^lstm_223/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_223/while/NoOpNoOp4^lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOp3^lstm_223/while/lstm_cell_511/MatMul/ReadVariableOp5^lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_223_while_identity lstm_223/while/Identity:output:0"?
lstm_223_while_identity_1"lstm_223/while/Identity_1:output:0"?
lstm_223_while_identity_2"lstm_223/while/Identity_2:output:0"?
lstm_223_while_identity_3"lstm_223/while/Identity_3:output:0"?
lstm_223_while_identity_4"lstm_223/while/Identity_4:output:0"?
lstm_223_while_identity_5"lstm_223/while/Identity_5:output:0"T
'lstm_223_while_lstm_223_strided_slice_1)lstm_223_while_lstm_223_strided_slice_1_0"~
<lstm_223_while_lstm_cell_511_biasadd_readvariableop_resource>lstm_223_while_lstm_cell_511_biasadd_readvariableop_resource_0"?
=lstm_223_while_lstm_cell_511_matmul_1_readvariableop_resource?lstm_223_while_lstm_cell_511_matmul_1_readvariableop_resource_0"|
;lstm_223_while_lstm_cell_511_matmul_readvariableop_resource=lstm_223_while_lstm_cell_511_matmul_readvariableop_resource_0"?
clstm_223_while_tensorarrayv2read_tensorlistgetitem_lstm_223_tensorarrayunstack_tensorlistfromtensorelstm_223_while_tensorarrayv2read_tensorlistgetitem_lstm_223_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOp3lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOp2h
2lstm_223/while/lstm_cell_511/MatMul/ReadVariableOp2lstm_223/while/lstm_cell_511/MatMul/ReadVariableOp2l
4lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOp4lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_74_lstm_223_while_body_3096399J
Fsequential_74_lstm_223_while_sequential_74_lstm_223_while_loop_counterP
Lsequential_74_lstm_223_while_sequential_74_lstm_223_while_maximum_iterations,
(sequential_74_lstm_223_while_placeholder.
*sequential_74_lstm_223_while_placeholder_1.
*sequential_74_lstm_223_while_placeholder_2.
*sequential_74_lstm_223_while_placeholder_3I
Esequential_74_lstm_223_while_sequential_74_lstm_223_strided_slice_1_0?
?sequential_74_lstm_223_while_tensorarrayv2read_tensorlistgetitem_sequential_74_lstm_223_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_74_lstm_223_while_lstm_cell_511_matmul_readvariableop_resource_0:	d?`
Msequential_74_lstm_223_while_lstm_cell_511_matmul_1_readvariableop_resource_0:	2?[
Lsequential_74_lstm_223_while_lstm_cell_511_biasadd_readvariableop_resource_0:	?)
%sequential_74_lstm_223_while_identity+
'sequential_74_lstm_223_while_identity_1+
'sequential_74_lstm_223_while_identity_2+
'sequential_74_lstm_223_while_identity_3+
'sequential_74_lstm_223_while_identity_4+
'sequential_74_lstm_223_while_identity_5G
Csequential_74_lstm_223_while_sequential_74_lstm_223_strided_slice_1?
sequential_74_lstm_223_while_tensorarrayv2read_tensorlistgetitem_sequential_74_lstm_223_tensorarrayunstack_tensorlistfromtensor\
Isequential_74_lstm_223_while_lstm_cell_511_matmul_readvariableop_resource:	d?^
Ksequential_74_lstm_223_while_lstm_cell_511_matmul_1_readvariableop_resource:	2?Y
Jsequential_74_lstm_223_while_lstm_cell_511_biasadd_readvariableop_resource:	???Asequential_74/lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOp?@sequential_74/lstm_223/while/lstm_cell_511/MatMul/ReadVariableOp?Bsequential_74/lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOp?
Nsequential_74/lstm_223/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_74/lstm_223/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_74_lstm_223_while_tensorarrayv2read_tensorlistgetitem_sequential_74_lstm_223_tensorarrayunstack_tensorlistfromtensor_0(sequential_74_lstm_223_while_placeholderWsequential_74/lstm_223/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_74/lstm_223/while/lstm_cell_511/MatMul/ReadVariableOpReadVariableOpKsequential_74_lstm_223_while_lstm_cell_511_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_74/lstm_223/while/lstm_cell_511/MatMulMatMulGsequential_74/lstm_223/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_74/lstm_223/while/lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_74/lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOpMsequential_74_lstm_223_while_lstm_cell_511_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_74/lstm_223/while/lstm_cell_511/MatMul_1MatMul*sequential_74_lstm_223_while_placeholder_2Jsequential_74/lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_74/lstm_223/while/lstm_cell_511/addAddV2;sequential_74/lstm_223/while/lstm_cell_511/MatMul:product:0=sequential_74/lstm_223/while/lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_74/lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOpLsequential_74_lstm_223_while_lstm_cell_511_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_74/lstm_223/while/lstm_cell_511/BiasAddBiasAdd2sequential_74/lstm_223/while/lstm_cell_511/add:z:0Isequential_74/lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_74/lstm_223/while/lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_74/lstm_223/while/lstm_cell_511/splitSplitCsequential_74/lstm_223/while/lstm_cell_511/split/split_dim:output:0;sequential_74/lstm_223/while/lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_74/lstm_223/while/lstm_cell_511/SigmoidSigmoid9sequential_74/lstm_223/while/lstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_74/lstm_223/while/lstm_cell_511/Sigmoid_1Sigmoid9sequential_74/lstm_223/while/lstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_74/lstm_223/while/lstm_cell_511/mulMul8sequential_74/lstm_223/while/lstm_cell_511/Sigmoid_1:y:0*sequential_74_lstm_223_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_74/lstm_223/while/lstm_cell_511/ReluRelu9sequential_74/lstm_223/while/lstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_74/lstm_223/while/lstm_cell_511/mul_1Mul6sequential_74/lstm_223/while/lstm_cell_511/Sigmoid:y:0=sequential_74/lstm_223/while/lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_74/lstm_223/while/lstm_cell_511/add_1AddV22sequential_74/lstm_223/while/lstm_cell_511/mul:z:04sequential_74/lstm_223/while/lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_74/lstm_223/while/lstm_cell_511/Sigmoid_2Sigmoid9sequential_74/lstm_223/while/lstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_74/lstm_223/while/lstm_cell_511/Relu_1Relu4sequential_74/lstm_223/while/lstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_74/lstm_223/while/lstm_cell_511/mul_2Mul8sequential_74/lstm_223/while/lstm_cell_511/Sigmoid_2:y:0?sequential_74/lstm_223/while/lstm_cell_511/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_74/lstm_223/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_74_lstm_223_while_placeholder_1(sequential_74_lstm_223_while_placeholder4sequential_74/lstm_223/while/lstm_cell_511/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_74/lstm_223/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_74/lstm_223/while/addAddV2(sequential_74_lstm_223_while_placeholder+sequential_74/lstm_223/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_74/lstm_223/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_74/lstm_223/while/add_1AddV2Fsequential_74_lstm_223_while_sequential_74_lstm_223_while_loop_counter-sequential_74/lstm_223/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_74/lstm_223/while/IdentityIdentity&sequential_74/lstm_223/while/add_1:z:0"^sequential_74/lstm_223/while/NoOp*
T0*
_output_shapes
: ?
'sequential_74/lstm_223/while/Identity_1IdentityLsequential_74_lstm_223_while_sequential_74_lstm_223_while_maximum_iterations"^sequential_74/lstm_223/while/NoOp*
T0*
_output_shapes
: ?
'sequential_74/lstm_223/while/Identity_2Identity$sequential_74/lstm_223/while/add:z:0"^sequential_74/lstm_223/while/NoOp*
T0*
_output_shapes
: ?
'sequential_74/lstm_223/while/Identity_3IdentityQsequential_74/lstm_223/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_74/lstm_223/while/NoOp*
T0*
_output_shapes
: ?
'sequential_74/lstm_223/while/Identity_4Identity4sequential_74/lstm_223/while/lstm_cell_511/mul_2:z:0"^sequential_74/lstm_223/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_74/lstm_223/while/Identity_5Identity4sequential_74/lstm_223/while/lstm_cell_511/add_1:z:0"^sequential_74/lstm_223/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_74/lstm_223/while/NoOpNoOpB^sequential_74/lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOpA^sequential_74/lstm_223/while/lstm_cell_511/MatMul/ReadVariableOpC^sequential_74/lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_74_lstm_223_while_identity.sequential_74/lstm_223/while/Identity:output:0"[
'sequential_74_lstm_223_while_identity_10sequential_74/lstm_223/while/Identity_1:output:0"[
'sequential_74_lstm_223_while_identity_20sequential_74/lstm_223/while/Identity_2:output:0"[
'sequential_74_lstm_223_while_identity_30sequential_74/lstm_223/while/Identity_3:output:0"[
'sequential_74_lstm_223_while_identity_40sequential_74/lstm_223/while/Identity_4:output:0"[
'sequential_74_lstm_223_while_identity_50sequential_74/lstm_223/while/Identity_5:output:0"?
Jsequential_74_lstm_223_while_lstm_cell_511_biasadd_readvariableop_resourceLsequential_74_lstm_223_while_lstm_cell_511_biasadd_readvariableop_resource_0"?
Ksequential_74_lstm_223_while_lstm_cell_511_matmul_1_readvariableop_resourceMsequential_74_lstm_223_while_lstm_cell_511_matmul_1_readvariableop_resource_0"?
Isequential_74_lstm_223_while_lstm_cell_511_matmul_readvariableop_resourceKsequential_74_lstm_223_while_lstm_cell_511_matmul_readvariableop_resource_0"?
Csequential_74_lstm_223_while_sequential_74_lstm_223_strided_slice_1Esequential_74_lstm_223_while_sequential_74_lstm_223_strided_slice_1_0"?
sequential_74_lstm_223_while_tensorarrayv2read_tensorlistgetitem_sequential_74_lstm_223_tensorarrayunstack_tensorlistfromtensor?sequential_74_lstm_223_while_tensorarrayv2read_tensorlistgetitem_sequential_74_lstm_223_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_74/lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOpAsequential_74/lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOp2?
@sequential_74/lstm_223/while/lstm_cell_511/MatMul/ReadVariableOp@sequential_74/lstm_223/while/lstm_cell_511/MatMul/ReadVariableOp2?
Bsequential_74/lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOpBsequential_74/lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3096899
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3096899___redundant_placeholder05
1while_while_cond_3096899___redundant_placeholder15
1while_while_cond_3096899___redundant_placeholder25
1while_while_cond_3096899___redundant_placeholder3
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
*__inference_lstm_222_layer_call_fn_3099807
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
E__inference_lstm_222_layer_call_and_return_conditional_losses_3096778|
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

lstm_223_while_body_3099567.
*lstm_223_while_lstm_223_while_loop_counter4
0lstm_223_while_lstm_223_while_maximum_iterations
lstm_223_while_placeholder 
lstm_223_while_placeholder_1 
lstm_223_while_placeholder_2 
lstm_223_while_placeholder_3-
)lstm_223_while_lstm_223_strided_slice_1_0i
elstm_223_while_tensorarrayv2read_tensorlistgetitem_lstm_223_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_223_while_lstm_cell_511_matmul_readvariableop_resource_0:	d?R
?lstm_223_while_lstm_cell_511_matmul_1_readvariableop_resource_0:	2?M
>lstm_223_while_lstm_cell_511_biasadd_readvariableop_resource_0:	?
lstm_223_while_identity
lstm_223_while_identity_1
lstm_223_while_identity_2
lstm_223_while_identity_3
lstm_223_while_identity_4
lstm_223_while_identity_5+
'lstm_223_while_lstm_223_strided_slice_1g
clstm_223_while_tensorarrayv2read_tensorlistgetitem_lstm_223_tensorarrayunstack_tensorlistfromtensorN
;lstm_223_while_lstm_cell_511_matmul_readvariableop_resource:	d?P
=lstm_223_while_lstm_cell_511_matmul_1_readvariableop_resource:	2?K
<lstm_223_while_lstm_cell_511_biasadd_readvariableop_resource:	???3lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOp?2lstm_223/while/lstm_cell_511/MatMul/ReadVariableOp?4lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOp?
@lstm_223/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_223/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_223_while_tensorarrayv2read_tensorlistgetitem_lstm_223_tensorarrayunstack_tensorlistfromtensor_0lstm_223_while_placeholderIlstm_223/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_223/while/lstm_cell_511/MatMul/ReadVariableOpReadVariableOp=lstm_223_while_lstm_cell_511_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_223/while/lstm_cell_511/MatMulMatMul9lstm_223/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_223/while/lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOp?lstm_223_while_lstm_cell_511_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_223/while/lstm_cell_511/MatMul_1MatMullstm_223_while_placeholder_2<lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_223/while/lstm_cell_511/addAddV2-lstm_223/while/lstm_cell_511/MatMul:product:0/lstm_223/while/lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOp>lstm_223_while_lstm_cell_511_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_223/while/lstm_cell_511/BiasAddBiasAdd$lstm_223/while/lstm_cell_511/add:z:0;lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_223/while/lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_223/while/lstm_cell_511/splitSplit5lstm_223/while/lstm_cell_511/split/split_dim:output:0-lstm_223/while/lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_223/while/lstm_cell_511/SigmoidSigmoid+lstm_223/while/lstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_223/while/lstm_cell_511/Sigmoid_1Sigmoid+lstm_223/while/lstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_223/while/lstm_cell_511/mulMul*lstm_223/while/lstm_cell_511/Sigmoid_1:y:0lstm_223_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_223/while/lstm_cell_511/ReluRelu+lstm_223/while/lstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_223/while/lstm_cell_511/mul_1Mul(lstm_223/while/lstm_cell_511/Sigmoid:y:0/lstm_223/while/lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_223/while/lstm_cell_511/add_1AddV2$lstm_223/while/lstm_cell_511/mul:z:0&lstm_223/while/lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_223/while/lstm_cell_511/Sigmoid_2Sigmoid+lstm_223/while/lstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_223/while/lstm_cell_511/Relu_1Relu&lstm_223/while/lstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_223/while/lstm_cell_511/mul_2Mul*lstm_223/while/lstm_cell_511/Sigmoid_2:y:01lstm_223/while/lstm_cell_511/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_223/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_223_while_placeholder_1lstm_223_while_placeholder&lstm_223/while/lstm_cell_511/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_223/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_223/while/addAddV2lstm_223_while_placeholderlstm_223/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_223/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_223/while/add_1AddV2*lstm_223_while_lstm_223_while_loop_counterlstm_223/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_223/while/IdentityIdentitylstm_223/while/add_1:z:0^lstm_223/while/NoOp*
T0*
_output_shapes
: ?
lstm_223/while/Identity_1Identity0lstm_223_while_lstm_223_while_maximum_iterations^lstm_223/while/NoOp*
T0*
_output_shapes
: t
lstm_223/while/Identity_2Identitylstm_223/while/add:z:0^lstm_223/while/NoOp*
T0*
_output_shapes
: ?
lstm_223/while/Identity_3IdentityClstm_223/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_223/while/NoOp*
T0*
_output_shapes
: ?
lstm_223/while/Identity_4Identity&lstm_223/while/lstm_cell_511/mul_2:z:0^lstm_223/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_223/while/Identity_5Identity&lstm_223/while/lstm_cell_511/add_1:z:0^lstm_223/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_223/while/NoOpNoOp4^lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOp3^lstm_223/while/lstm_cell_511/MatMul/ReadVariableOp5^lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_223_while_identity lstm_223/while/Identity:output:0"?
lstm_223_while_identity_1"lstm_223/while/Identity_1:output:0"?
lstm_223_while_identity_2"lstm_223/while/Identity_2:output:0"?
lstm_223_while_identity_3"lstm_223/while/Identity_3:output:0"?
lstm_223_while_identity_4"lstm_223/while/Identity_4:output:0"?
lstm_223_while_identity_5"lstm_223/while/Identity_5:output:0"T
'lstm_223_while_lstm_223_strided_slice_1)lstm_223_while_lstm_223_strided_slice_1_0"~
<lstm_223_while_lstm_cell_511_biasadd_readvariableop_resource>lstm_223_while_lstm_cell_511_biasadd_readvariableop_resource_0"?
=lstm_223_while_lstm_cell_511_matmul_1_readvariableop_resource?lstm_223_while_lstm_cell_511_matmul_1_readvariableop_resource_0"|
;lstm_223_while_lstm_cell_511_matmul_readvariableop_resource=lstm_223_while_lstm_cell_511_matmul_readvariableop_resource_0"?
clstm_223_while_tensorarrayv2read_tensorlistgetitem_lstm_223_tensorarrayunstack_tensorlistfromtensorelstm_223_while_tensorarrayv2read_tensorlistgetitem_lstm_223_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOp3lstm_223/while/lstm_cell_511/BiasAdd/ReadVariableOp2h
2lstm_223/while/lstm_cell_511/MatMul/ReadVariableOp2lstm_223/while/lstm_cell_511/MatMul/ReadVariableOp2l
4lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOp4lstm_223/while/lstm_cell_511/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_222_layer_call_fn_3099829

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
E__inference_lstm_222_layer_call_and_return_conditional_losses_3097827s
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
while_body_3097893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_511_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_511_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_511_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_511_matmul_readvariableop_resource:	d?G
4while_lstm_cell_511_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_511_biasadd_readvariableop_resource:	???*while/lstm_cell_511/BiasAdd/ReadVariableOp?)while/lstm_cell_511/MatMul/ReadVariableOp?+while/lstm_cell_511/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_511/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_511_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_511/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_511_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_511/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_511/addAddV2$while/lstm_cell_511/MatMul:product:0&while/lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_511_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_511/BiasAddBiasAddwhile/lstm_cell_511/add:z:02while/lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_511/splitSplit,while/lstm_cell_511/split/split_dim:output:0$while/lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_511/SigmoidSigmoid"while/lstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_511/Sigmoid_1Sigmoid"while/lstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mulMul!while/lstm_cell_511/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_511/ReluRelu"while/lstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mul_1Mulwhile/lstm_cell_511/Sigmoid:y:0&while/lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/add_1AddV2while/lstm_cell_511/mul:z:0while/lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_511/Sigmoid_2Sigmoid"while/lstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_511/Relu_1Reluwhile/lstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mul_2Mul!while/lstm_cell_511/Sigmoid_2:y:0(while/lstm_cell_511/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_511/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_511/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_511/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_511/BiasAdd/ReadVariableOp*^while/lstm_cell_511/MatMul/ReadVariableOp,^while/lstm_cell_511/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_511_biasadd_readvariableop_resource5while_lstm_cell_511_biasadd_readvariableop_resource_0"n
4while_lstm_cell_511_matmul_1_readvariableop_resource6while_lstm_cell_511_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_511_matmul_readvariableop_resource4while_lstm_cell_511_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_511/BiasAdd/ReadVariableOp*while/lstm_cell_511/BiasAdd/ReadVariableOp2V
)while/lstm_cell_511/MatMul/ReadVariableOp)while/lstm_cell_511/MatMul/ReadVariableOp2Z
+while/lstm_cell_511/MatMul_1/ReadVariableOp+while/lstm_cell_511/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_3102230
file_prefix2
 assignvariableop_dense_74_kernel:
.
 assignvariableop_1_dense_74_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_222_lstm_cell_222_kernel:	?M
:assignvariableop_8_lstm_222_lstm_cell_222_recurrent_kernel:	d?=
.assignvariableop_9_lstm_222_lstm_cell_222_bias:	?D
1assignvariableop_10_lstm_223_lstm_cell_223_kernel:	d?N
;assignvariableop_11_lstm_223_lstm_cell_223_recurrent_kernel:	2?>
/assignvariableop_12_lstm_223_lstm_cell_223_bias:	?C
1assignvariableop_13_lstm_224_lstm_cell_224_kernel:2(M
;assignvariableop_14_lstm_224_lstm_cell_224_recurrent_kernel:
(=
/assignvariableop_15_lstm_224_lstm_cell_224_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_74_kernel_m:
6
(assignvariableop_19_adam_dense_74_bias_m:K
8assignvariableop_20_adam_lstm_222_lstm_cell_222_kernel_m:	?U
Bassignvariableop_21_adam_lstm_222_lstm_cell_222_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_222_lstm_cell_222_bias_m:	?K
8assignvariableop_23_adam_lstm_223_lstm_cell_223_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_223_lstm_cell_223_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_223_lstm_cell_223_bias_m:	?J
8assignvariableop_26_adam_lstm_224_lstm_cell_224_kernel_m:2(T
Bassignvariableop_27_adam_lstm_224_lstm_cell_224_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_224_lstm_cell_224_bias_m:(<
*assignvariableop_29_adam_dense_74_kernel_v:
6
(assignvariableop_30_adam_dense_74_bias_v:K
8assignvariableop_31_adam_lstm_222_lstm_cell_222_kernel_v:	?U
Bassignvariableop_32_adam_lstm_222_lstm_cell_222_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_222_lstm_cell_222_bias_v:	?K
8assignvariableop_34_adam_lstm_223_lstm_cell_223_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_223_lstm_cell_223_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_223_lstm_cell_223_bias_v:	?J
8assignvariableop_37_adam_lstm_224_lstm_cell_224_kernel_v:2(T
Bassignvariableop_38_adam_lstm_224_lstm_cell_224_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_224_lstm_cell_224_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_74_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_74_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_222_lstm_cell_222_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_222_lstm_cell_222_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_222_lstm_cell_222_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_223_lstm_cell_223_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_223_lstm_cell_223_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_223_lstm_cell_223_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_224_lstm_cell_224_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_224_lstm_cell_224_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_224_lstm_cell_224_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_74_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_74_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_222_lstm_cell_222_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_222_lstm_cell_222_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_222_lstm_cell_222_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_223_lstm_cell_223_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_223_lstm_cell_223_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_223_lstm_cell_223_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_224_lstm_cell_224_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_224_lstm_cell_224_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_224_lstm_cell_224_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_74_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_74_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_222_lstm_cell_222_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_222_lstm_cell_222_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_222_lstm_cell_222_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_223_lstm_cell_223_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_223_lstm_cell_223_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_223_lstm_cell_223_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_224_lstm_cell_224_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_224_lstm_cell_224_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_224_lstm_cell_224_bias_vIdentity_39:output:0"/device:CPU:0*
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
*__inference_lstm_224_layer_call_fn_3101061

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
E__inference_lstm_224_layer_call_and_return_conditional_losses_3098127o
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
while_body_3098043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_512_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_512_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_512_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_512_matmul_readvariableop_resource:2(F
4while_lstm_cell_512_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_512_biasadd_readvariableop_resource:(??*while/lstm_cell_512/BiasAdd/ReadVariableOp?)while/lstm_cell_512/MatMul/ReadVariableOp?+while/lstm_cell_512/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_512/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_512_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_512/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_512_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_512/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_512/addAddV2$while/lstm_cell_512/MatMul:product:0&while/lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_512_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_512/BiasAddBiasAddwhile/lstm_cell_512/add:z:02while/lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_512/splitSplit,while/lstm_cell_512/split/split_dim:output:0$while/lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_512/SigmoidSigmoid"while/lstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_512/Sigmoid_1Sigmoid"while/lstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mulMul!while/lstm_cell_512/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_512/ReluRelu"while/lstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mul_1Mulwhile/lstm_cell_512/Sigmoid:y:0&while/lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/add_1AddV2while/lstm_cell_512/mul:z:0while/lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_512/Sigmoid_2Sigmoid"while/lstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_512/Relu_1Reluwhile/lstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mul_2Mul!while/lstm_cell_512/Sigmoid_2:y:0(while/lstm_cell_512/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_512/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_512/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_512/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_512/BiasAdd/ReadVariableOp*^while/lstm_cell_512/MatMul/ReadVariableOp,^while/lstm_cell_512/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_512_biasadd_readvariableop_resource5while_lstm_cell_512_biasadd_readvariableop_resource_0"n
4while_lstm_cell_512_matmul_1_readvariableop_resource6while_lstm_cell_512_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_512_matmul_readvariableop_resource4while_lstm_cell_512_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_512/BiasAdd/ReadVariableOp*while/lstm_cell_512/BiasAdd/ReadVariableOp2V
)while/lstm_cell_512/MatMul/ReadVariableOp)while/lstm_cell_512/MatMul/ReadVariableOp2Z
+while/lstm_cell_512/MatMul_1/ReadVariableOp+while/lstm_cell_512/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_223_while_cond_3099139.
*lstm_223_while_lstm_223_while_loop_counter4
0lstm_223_while_lstm_223_while_maximum_iterations
lstm_223_while_placeholder 
lstm_223_while_placeholder_1 
lstm_223_while_placeholder_2 
lstm_223_while_placeholder_30
,lstm_223_while_less_lstm_223_strided_slice_1G
Clstm_223_while_lstm_223_while_cond_3099139___redundant_placeholder0G
Clstm_223_while_lstm_223_while_cond_3099139___redundant_placeholder1G
Clstm_223_while_lstm_223_while_cond_3099139___redundant_placeholder2G
Clstm_223_while_lstm_223_while_cond_3099139___redundant_placeholder3
lstm_223_while_identity
?
lstm_223/while/LessLesslstm_223_while_placeholder,lstm_223_while_less_lstm_223_strided_slice_1*
T0*
_output_shapes
: ]
lstm_223/while/IdentityIdentitylstm_223/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_223_while_identity lstm_223/while/Identity:output:0*(
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
?S
?
)sequential_74_lstm_222_while_body_3096260J
Fsequential_74_lstm_222_while_sequential_74_lstm_222_while_loop_counterP
Lsequential_74_lstm_222_while_sequential_74_lstm_222_while_maximum_iterations,
(sequential_74_lstm_222_while_placeholder.
*sequential_74_lstm_222_while_placeholder_1.
*sequential_74_lstm_222_while_placeholder_2.
*sequential_74_lstm_222_while_placeholder_3I
Esequential_74_lstm_222_while_sequential_74_lstm_222_strided_slice_1_0?
?sequential_74_lstm_222_while_tensorarrayv2read_tensorlistgetitem_sequential_74_lstm_222_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_74_lstm_222_while_lstm_cell_510_matmul_readvariableop_resource_0:	?`
Msequential_74_lstm_222_while_lstm_cell_510_matmul_1_readvariableop_resource_0:	d?[
Lsequential_74_lstm_222_while_lstm_cell_510_biasadd_readvariableop_resource_0:	?)
%sequential_74_lstm_222_while_identity+
'sequential_74_lstm_222_while_identity_1+
'sequential_74_lstm_222_while_identity_2+
'sequential_74_lstm_222_while_identity_3+
'sequential_74_lstm_222_while_identity_4+
'sequential_74_lstm_222_while_identity_5G
Csequential_74_lstm_222_while_sequential_74_lstm_222_strided_slice_1?
sequential_74_lstm_222_while_tensorarrayv2read_tensorlistgetitem_sequential_74_lstm_222_tensorarrayunstack_tensorlistfromtensor\
Isequential_74_lstm_222_while_lstm_cell_510_matmul_readvariableop_resource:	?^
Ksequential_74_lstm_222_while_lstm_cell_510_matmul_1_readvariableop_resource:	d?Y
Jsequential_74_lstm_222_while_lstm_cell_510_biasadd_readvariableop_resource:	???Asequential_74/lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOp?@sequential_74/lstm_222/while/lstm_cell_510/MatMul/ReadVariableOp?Bsequential_74/lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOp?
Nsequential_74/lstm_222/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_74/lstm_222/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_74_lstm_222_while_tensorarrayv2read_tensorlistgetitem_sequential_74_lstm_222_tensorarrayunstack_tensorlistfromtensor_0(sequential_74_lstm_222_while_placeholderWsequential_74/lstm_222/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_74/lstm_222/while/lstm_cell_510/MatMul/ReadVariableOpReadVariableOpKsequential_74_lstm_222_while_lstm_cell_510_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_74/lstm_222/while/lstm_cell_510/MatMulMatMulGsequential_74/lstm_222/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_74/lstm_222/while/lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_74/lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOpMsequential_74_lstm_222_while_lstm_cell_510_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_74/lstm_222/while/lstm_cell_510/MatMul_1MatMul*sequential_74_lstm_222_while_placeholder_2Jsequential_74/lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_74/lstm_222/while/lstm_cell_510/addAddV2;sequential_74/lstm_222/while/lstm_cell_510/MatMul:product:0=sequential_74/lstm_222/while/lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_74/lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOpLsequential_74_lstm_222_while_lstm_cell_510_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_74/lstm_222/while/lstm_cell_510/BiasAddBiasAdd2sequential_74/lstm_222/while/lstm_cell_510/add:z:0Isequential_74/lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_74/lstm_222/while/lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_74/lstm_222/while/lstm_cell_510/splitSplitCsequential_74/lstm_222/while/lstm_cell_510/split/split_dim:output:0;sequential_74/lstm_222/while/lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_74/lstm_222/while/lstm_cell_510/SigmoidSigmoid9sequential_74/lstm_222/while/lstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_74/lstm_222/while/lstm_cell_510/Sigmoid_1Sigmoid9sequential_74/lstm_222/while/lstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_74/lstm_222/while/lstm_cell_510/mulMul8sequential_74/lstm_222/while/lstm_cell_510/Sigmoid_1:y:0*sequential_74_lstm_222_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_74/lstm_222/while/lstm_cell_510/ReluRelu9sequential_74/lstm_222/while/lstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_74/lstm_222/while/lstm_cell_510/mul_1Mul6sequential_74/lstm_222/while/lstm_cell_510/Sigmoid:y:0=sequential_74/lstm_222/while/lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_74/lstm_222/while/lstm_cell_510/add_1AddV22sequential_74/lstm_222/while/lstm_cell_510/mul:z:04sequential_74/lstm_222/while/lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_74/lstm_222/while/lstm_cell_510/Sigmoid_2Sigmoid9sequential_74/lstm_222/while/lstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_74/lstm_222/while/lstm_cell_510/Relu_1Relu4sequential_74/lstm_222/while/lstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_74/lstm_222/while/lstm_cell_510/mul_2Mul8sequential_74/lstm_222/while/lstm_cell_510/Sigmoid_2:y:0?sequential_74/lstm_222/while/lstm_cell_510/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_74/lstm_222/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_74_lstm_222_while_placeholder_1(sequential_74_lstm_222_while_placeholder4sequential_74/lstm_222/while/lstm_cell_510/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_74/lstm_222/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_74/lstm_222/while/addAddV2(sequential_74_lstm_222_while_placeholder+sequential_74/lstm_222/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_74/lstm_222/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_74/lstm_222/while/add_1AddV2Fsequential_74_lstm_222_while_sequential_74_lstm_222_while_loop_counter-sequential_74/lstm_222/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_74/lstm_222/while/IdentityIdentity&sequential_74/lstm_222/while/add_1:z:0"^sequential_74/lstm_222/while/NoOp*
T0*
_output_shapes
: ?
'sequential_74/lstm_222/while/Identity_1IdentityLsequential_74_lstm_222_while_sequential_74_lstm_222_while_maximum_iterations"^sequential_74/lstm_222/while/NoOp*
T0*
_output_shapes
: ?
'sequential_74/lstm_222/while/Identity_2Identity$sequential_74/lstm_222/while/add:z:0"^sequential_74/lstm_222/while/NoOp*
T0*
_output_shapes
: ?
'sequential_74/lstm_222/while/Identity_3IdentityQsequential_74/lstm_222/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_74/lstm_222/while/NoOp*
T0*
_output_shapes
: ?
'sequential_74/lstm_222/while/Identity_4Identity4sequential_74/lstm_222/while/lstm_cell_510/mul_2:z:0"^sequential_74/lstm_222/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_74/lstm_222/while/Identity_5Identity4sequential_74/lstm_222/while/lstm_cell_510/add_1:z:0"^sequential_74/lstm_222/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_74/lstm_222/while/NoOpNoOpB^sequential_74/lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOpA^sequential_74/lstm_222/while/lstm_cell_510/MatMul/ReadVariableOpC^sequential_74/lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_74_lstm_222_while_identity.sequential_74/lstm_222/while/Identity:output:0"[
'sequential_74_lstm_222_while_identity_10sequential_74/lstm_222/while/Identity_1:output:0"[
'sequential_74_lstm_222_while_identity_20sequential_74/lstm_222/while/Identity_2:output:0"[
'sequential_74_lstm_222_while_identity_30sequential_74/lstm_222/while/Identity_3:output:0"[
'sequential_74_lstm_222_while_identity_40sequential_74/lstm_222/while/Identity_4:output:0"[
'sequential_74_lstm_222_while_identity_50sequential_74/lstm_222/while/Identity_5:output:0"?
Jsequential_74_lstm_222_while_lstm_cell_510_biasadd_readvariableop_resourceLsequential_74_lstm_222_while_lstm_cell_510_biasadd_readvariableop_resource_0"?
Ksequential_74_lstm_222_while_lstm_cell_510_matmul_1_readvariableop_resourceMsequential_74_lstm_222_while_lstm_cell_510_matmul_1_readvariableop_resource_0"?
Isequential_74_lstm_222_while_lstm_cell_510_matmul_readvariableop_resourceKsequential_74_lstm_222_while_lstm_cell_510_matmul_readvariableop_resource_0"?
Csequential_74_lstm_222_while_sequential_74_lstm_222_strided_slice_1Esequential_74_lstm_222_while_sequential_74_lstm_222_strided_slice_1_0"?
sequential_74_lstm_222_while_tensorarrayv2read_tensorlistgetitem_sequential_74_lstm_222_tensorarrayunstack_tensorlistfromtensor?sequential_74_lstm_222_while_tensorarrayv2read_tensorlistgetitem_sequential_74_lstm_222_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_74/lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOpAsequential_74/lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOp2?
@sequential_74/lstm_222/while/lstm_cell_510/MatMul/ReadVariableOp@sequential_74/lstm_222/while/lstm_cell_510/MatMul/ReadVariableOp2?
Bsequential_74/lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOpBsequential_74/lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3100327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3100327___redundant_placeholder05
1while_while_cond_3100327___redundant_placeholder15
1while_while_cond_3100327___redundant_placeholder25
1while_while_cond_3100327___redundant_placeholder3
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
while_cond_3100184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3100184___redundant_placeholder05
1while_while_cond_3100184___redundant_placeholder15
1while_while_cond_3100184___redundant_placeholder25
1while_while_cond_3100184___redundant_placeholder3
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
*__inference_lstm_223_layer_call_fn_3100434
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
E__inference_lstm_223_layer_call_and_return_conditional_losses_3097319|
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

?
/__inference_sequential_74_layer_call_fn_3098942

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
J__inference_sequential_74_layer_call_and_return_conditional_losses_3098741o
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
E__inference_lstm_224_layer_call_and_return_conditional_losses_3101501

inputs>
,lstm_cell_512_matmul_readvariableop_resource:2(@
.lstm_cell_512_matmul_1_readvariableop_resource:
(;
-lstm_cell_512_biasadd_readvariableop_resource:(
identity??$lstm_cell_512/BiasAdd/ReadVariableOp?#lstm_cell_512/MatMul/ReadVariableOp?%lstm_cell_512/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_512/MatMul/ReadVariableOpReadVariableOp,lstm_cell_512_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_512/MatMulMatMulstrided_slice_2:output:0+lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_512_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_512/MatMul_1MatMulzeros:output:0-lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_512/addAddV2lstm_cell_512/MatMul:product:0 lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_512_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_512/BiasAddBiasAddlstm_cell_512/add:z:0,lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_512/splitSplit&lstm_cell_512/split/split_dim:output:0lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_512/SigmoidSigmoidlstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_512/Sigmoid_1Sigmoidlstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_512/mulMullstm_cell_512/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_512/ReluRelulstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_512/mul_1Mullstm_cell_512/Sigmoid:y:0 lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_512/add_1AddV2lstm_cell_512/mul:z:0lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_512/Sigmoid_2Sigmoidlstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_512/Relu_1Relulstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_512/mul_2Mullstm_cell_512/Sigmoid_2:y:0"lstm_cell_512/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_512_matmul_readvariableop_resource.lstm_cell_512_matmul_1_readvariableop_resource-lstm_cell_512_biasadd_readvariableop_resource*
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
while_body_3101417*
condR
while_cond_3101416*K
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
NoOpNoOp%^lstm_cell_512/BiasAdd/ReadVariableOp$^lstm_cell_512/MatMul/ReadVariableOp&^lstm_cell_512/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_512/BiasAdd/ReadVariableOp$lstm_cell_512/BiasAdd/ReadVariableOp2J
#lstm_cell_512/MatMul/ReadVariableOp#lstm_cell_512/MatMul/ReadVariableOp2N
%lstm_cell_512/MatMul_1/ReadVariableOp%lstm_cell_512/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_3096900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_510_3096924_0:	?0
while_lstm_cell_510_3096926_0:	d?,
while_lstm_cell_510_3096928_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_510_3096924:	?.
while_lstm_cell_510_3096926:	d?*
while_lstm_cell_510_3096928:	???+while/lstm_cell_510/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_510/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_510_3096924_0while_lstm_cell_510_3096926_0while_lstm_cell_510_3096928_0*
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
J__inference_lstm_cell_510_layer_call_and_return_conditional_losses_3096841?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_510/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_510/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_510/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_510/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_510_3096924while_lstm_cell_510_3096924_0"<
while_lstm_cell_510_3096926while_lstm_cell_510_3096926_0"<
while_lstm_cell_510_3096928while_lstm_cell_510_3096928_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_510/StatefulPartitionedCall+while/lstm_cell_510/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_3098888
lstm_222_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_222_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3096628o
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
_user_specified_namelstm_222_input
?8
?
E__inference_lstm_223_layer_call_and_return_conditional_losses_3097319

inputs(
lstm_cell_511_3097237:	d?(
lstm_cell_511_3097239:	2?$
lstm_cell_511_3097241:	?
identity??%lstm_cell_511/StatefulPartitionedCall?while;
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
%lstm_cell_511/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_511_3097237lstm_cell_511_3097239lstm_cell_511_3097241*
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
J__inference_lstm_cell_511_layer_call_and_return_conditional_losses_3097191n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_511_3097237lstm_cell_511_3097239lstm_cell_511_3097241*
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
while_body_3097250*
condR
while_cond_3097249*K
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
NoOpNoOp&^lstm_cell_511/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_511/StatefulPartitionedCall%lstm_cell_511/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_222_layer_call_and_return_conditional_losses_3096778

inputs(
lstm_cell_510_3096696:	?(
lstm_cell_510_3096698:	d?$
lstm_cell_510_3096700:	?
identity??%lstm_cell_510/StatefulPartitionedCall?while;
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
%lstm_cell_510/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_510_3096696lstm_cell_510_3096698lstm_cell_510_3096700*
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
J__inference_lstm_cell_510_layer_call_and_return_conditional_losses_3096695n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_510_3096696lstm_cell_510_3096698lstm_cell_510_3096700*
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
while_body_3096709*
condR
while_cond_3096708*K
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
NoOpNoOp&^lstm_cell_510/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_510/StatefulPartitionedCall%lstm_cell_510/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
lstm_222_while_cond_3099000.
*lstm_222_while_lstm_222_while_loop_counter4
0lstm_222_while_lstm_222_while_maximum_iterations
lstm_222_while_placeholder 
lstm_222_while_placeholder_1 
lstm_222_while_placeholder_2 
lstm_222_while_placeholder_30
,lstm_222_while_less_lstm_222_strided_slice_1G
Clstm_222_while_lstm_222_while_cond_3099000___redundant_placeholder0G
Clstm_222_while_lstm_222_while_cond_3099000___redundant_placeholder1G
Clstm_222_while_lstm_222_while_cond_3099000___redundant_placeholder2G
Clstm_222_while_lstm_222_while_cond_3099000___redundant_placeholder3
lstm_222_while_identity
?
lstm_222/while/LessLesslstm_222_while_placeholder,lstm_222_while_less_lstm_222_strided_slice_1*
T0*
_output_shapes
: ]
lstm_222/while/IdentityIdentitylstm_222/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_222_while_identity lstm_222/while/Identity:output:0*(
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
while_cond_3097249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3097249___redundant_placeholder05
1while_while_cond_3097249___redundant_placeholder15
1while_while_cond_3097249___redundant_placeholder25
1while_while_cond_3097249___redundant_placeholder3
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
while_cond_3100041
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3100041___redundant_placeholder05
1while_while_cond_3100041___redundant_placeholder15
1while_while_cond_3100041___redundant_placeholder25
1while_while_cond_3100041___redundant_placeholder3
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
while_body_3100515
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_511_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_511_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_511_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_511_matmul_readvariableop_resource:	d?G
4while_lstm_cell_511_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_511_biasadd_readvariableop_resource:	???*while/lstm_cell_511/BiasAdd/ReadVariableOp?)while/lstm_cell_511/MatMul/ReadVariableOp?+while/lstm_cell_511/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_511/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_511_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_511/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_511_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_511/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_511/addAddV2$while/lstm_cell_511/MatMul:product:0&while/lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_511_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_511/BiasAddBiasAddwhile/lstm_cell_511/add:z:02while/lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_511/splitSplit,while/lstm_cell_511/split/split_dim:output:0$while/lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_511/SigmoidSigmoid"while/lstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_511/Sigmoid_1Sigmoid"while/lstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mulMul!while/lstm_cell_511/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_511/ReluRelu"while/lstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mul_1Mulwhile/lstm_cell_511/Sigmoid:y:0&while/lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/add_1AddV2while/lstm_cell_511/mul:z:0while/lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_511/Sigmoid_2Sigmoid"while/lstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_511/Relu_1Reluwhile/lstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mul_2Mul!while/lstm_cell_511/Sigmoid_2:y:0(while/lstm_cell_511/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_511/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_511/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_511/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_511/BiasAdd/ReadVariableOp*^while/lstm_cell_511/MatMul/ReadVariableOp,^while/lstm_cell_511/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_511_biasadd_readvariableop_resource5while_lstm_cell_511_biasadd_readvariableop_resource_0"n
4while_lstm_cell_511_matmul_1_readvariableop_resource6while_lstm_cell_511_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_511_matmul_readvariableop_resource4while_lstm_cell_511_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_511/BiasAdd/ReadVariableOp*while/lstm_cell_511/BiasAdd/ReadVariableOp2V
)while/lstm_cell_511/MatMul/ReadVariableOp)while/lstm_cell_511/MatMul/ReadVariableOp2Z
+while/lstm_cell_511/MatMul_1/ReadVariableOp+while/lstm_cell_511/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_74_lstm_224_while_cond_3096537J
Fsequential_74_lstm_224_while_sequential_74_lstm_224_while_loop_counterP
Lsequential_74_lstm_224_while_sequential_74_lstm_224_while_maximum_iterations,
(sequential_74_lstm_224_while_placeholder.
*sequential_74_lstm_224_while_placeholder_1.
*sequential_74_lstm_224_while_placeholder_2.
*sequential_74_lstm_224_while_placeholder_3L
Hsequential_74_lstm_224_while_less_sequential_74_lstm_224_strided_slice_1c
_sequential_74_lstm_224_while_sequential_74_lstm_224_while_cond_3096537___redundant_placeholder0c
_sequential_74_lstm_224_while_sequential_74_lstm_224_while_cond_3096537___redundant_placeholder1c
_sequential_74_lstm_224_while_sequential_74_lstm_224_while_cond_3096537___redundant_placeholder2c
_sequential_74_lstm_224_while_sequential_74_lstm_224_while_cond_3096537___redundant_placeholder3)
%sequential_74_lstm_224_while_identity
?
!sequential_74/lstm_224/while/LessLess(sequential_74_lstm_224_while_placeholderHsequential_74_lstm_224_while_less_sequential_74_lstm_224_strided_slice_1*
T0*
_output_shapes
: y
%sequential_74/lstm_224/while/IdentityIdentity%sequential_74/lstm_224/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_74_lstm_224_while_identity.sequential_74/lstm_224/while/Identity:output:0*(
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
E__inference_lstm_224_layer_call_and_return_conditional_losses_3098343

inputs>
,lstm_cell_512_matmul_readvariableop_resource:2(@
.lstm_cell_512_matmul_1_readvariableop_resource:
(;
-lstm_cell_512_biasadd_readvariableop_resource:(
identity??$lstm_cell_512/BiasAdd/ReadVariableOp?#lstm_cell_512/MatMul/ReadVariableOp?%lstm_cell_512/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_512/MatMul/ReadVariableOpReadVariableOp,lstm_cell_512_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_512/MatMulMatMulstrided_slice_2:output:0+lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_512_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_512/MatMul_1MatMulzeros:output:0-lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_512/addAddV2lstm_cell_512/MatMul:product:0 lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_512_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_512/BiasAddBiasAddlstm_cell_512/add:z:0,lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_512/splitSplit&lstm_cell_512/split/split_dim:output:0lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_512/SigmoidSigmoidlstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_512/Sigmoid_1Sigmoidlstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_512/mulMullstm_cell_512/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_512/ReluRelulstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_512/mul_1Mullstm_cell_512/Sigmoid:y:0 lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_512/add_1AddV2lstm_cell_512/mul:z:0lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_512/Sigmoid_2Sigmoidlstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_512/Relu_1Relulstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_512/mul_2Mullstm_cell_512/Sigmoid_2:y:0"lstm_cell_512/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_512_matmul_readvariableop_resource.lstm_cell_512_matmul_1_readvariableop_resource-lstm_cell_512_biasadd_readvariableop_resource*
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
while_body_3098259*
condR
while_cond_3098258*K
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
NoOpNoOp%^lstm_cell_512/BiasAdd/ReadVariableOp$^lstm_cell_512/MatMul/ReadVariableOp&^lstm_cell_512/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_512/BiasAdd/ReadVariableOp$lstm_cell_512/BiasAdd/ReadVariableOp2J
#lstm_cell_512/MatMul/ReadVariableOp#lstm_cell_512/MatMul/ReadVariableOp2N
%lstm_cell_512/MatMul_1/ReadVariableOp%lstm_cell_512/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3100800
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3100800___redundant_placeholder05
1while_while_cond_3100800___redundant_placeholder15
1while_while_cond_3100800___redundant_placeholder25
1while_while_cond_3100800___redundant_placeholder3
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
*__inference_lstm_223_layer_call_fn_3100423
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
E__inference_lstm_223_layer_call_and_return_conditional_losses_3097128|
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
while_cond_3096708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3096708___redundant_placeholder05
1while_while_cond_3096708___redundant_placeholder15
1while_while_cond_3096708___redundant_placeholder25
1while_while_cond_3096708___redundant_placeholder3
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
E__inference_lstm_223_layer_call_and_return_conditional_losses_3101028

inputs?
,lstm_cell_511_matmul_readvariableop_resource:	d?A
.lstm_cell_511_matmul_1_readvariableop_resource:	2?<
-lstm_cell_511_biasadd_readvariableop_resource:	?
identity??$lstm_cell_511/BiasAdd/ReadVariableOp?#lstm_cell_511/MatMul/ReadVariableOp?%lstm_cell_511/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_511/MatMul/ReadVariableOpReadVariableOp,lstm_cell_511_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_511/MatMulMatMulstrided_slice_2:output:0+lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_511_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_511/MatMul_1MatMulzeros:output:0-lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_511/addAddV2lstm_cell_511/MatMul:product:0 lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_511_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_511/BiasAddBiasAddlstm_cell_511/add:z:0,lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_511/splitSplit&lstm_cell_511/split/split_dim:output:0lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_511/SigmoidSigmoidlstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_511/Sigmoid_1Sigmoidlstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_511/mulMullstm_cell_511/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_511/ReluRelulstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_511/mul_1Mullstm_cell_511/Sigmoid:y:0 lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_511/add_1AddV2lstm_cell_511/mul:z:0lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_511/Sigmoid_2Sigmoidlstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_511/Relu_1Relulstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_511/mul_2Mullstm_cell_511/Sigmoid_2:y:0"lstm_cell_511/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_511_matmul_readvariableop_resource.lstm_cell_511_matmul_1_readvariableop_resource-lstm_cell_511_biasadd_readvariableop_resource*
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
while_body_3100944*
condR
while_cond_3100943*K
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
NoOpNoOp%^lstm_cell_511/BiasAdd/ReadVariableOp$^lstm_cell_511/MatMul/ReadVariableOp&^lstm_cell_511/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_511/BiasAdd/ReadVariableOp$lstm_cell_511/BiasAdd/ReadVariableOp2J
#lstm_cell_511/MatMul/ReadVariableOp#lstm_cell_511/MatMul/ReadVariableOp2N
%lstm_cell_511/MatMul_1/ReadVariableOp%lstm_cell_511/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
lstm_224_while_cond_3099278.
*lstm_224_while_lstm_224_while_loop_counter4
0lstm_224_while_lstm_224_while_maximum_iterations
lstm_224_while_placeholder 
lstm_224_while_placeholder_1 
lstm_224_while_placeholder_2 
lstm_224_while_placeholder_30
,lstm_224_while_less_lstm_224_strided_slice_1G
Clstm_224_while_lstm_224_while_cond_3099278___redundant_placeholder0G
Clstm_224_while_lstm_224_while_cond_3099278___redundant_placeholder1G
Clstm_224_while_lstm_224_while_cond_3099278___redundant_placeholder2G
Clstm_224_while_lstm_224_while_cond_3099278___redundant_placeholder3
lstm_224_while_identity
?
lstm_224/while/LessLesslstm_224_while_placeholder,lstm_224_while_less_lstm_224_strided_slice_1*
T0*
_output_shapes
: ]
lstm_224/while/IdentityIdentitylstm_224/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_224_while_identity lstm_224/while/Identity:output:0*(
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
J__inference_lstm_cell_510_layer_call_and_return_conditional_losses_3096695

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
?
?
J__inference_lstm_cell_512_layer_call_and_return_conditional_losses_3097541

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
while_cond_3101559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3101559___redundant_placeholder05
1while_while_cond_3101559___redundant_placeholder15
1while_while_cond_3101559___redundant_placeholder25
1while_while_cond_3101559___redundant_placeholder3
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
while_body_3100185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_510_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_510_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_510_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_510_matmul_readvariableop_resource:	?G
4while_lstm_cell_510_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_510_biasadd_readvariableop_resource:	???*while/lstm_cell_510/BiasAdd/ReadVariableOp?)while/lstm_cell_510/MatMul/ReadVariableOp?+while/lstm_cell_510/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_510/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_510_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_510/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_510_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_510/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_510/addAddV2$while/lstm_cell_510/MatMul:product:0&while/lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_510_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_510/BiasAddBiasAddwhile/lstm_cell_510/add:z:02while/lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_510/splitSplit,while/lstm_cell_510/split/split_dim:output:0$while/lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_510/SigmoidSigmoid"while/lstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_510/Sigmoid_1Sigmoid"while/lstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mulMul!while/lstm_cell_510/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_510/ReluRelu"while/lstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mul_1Mulwhile/lstm_cell_510/Sigmoid:y:0&while/lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/add_1AddV2while/lstm_cell_510/mul:z:0while/lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_510/Sigmoid_2Sigmoid"while/lstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_510/Relu_1Reluwhile/lstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mul_2Mul!while/lstm_cell_510/Sigmoid_2:y:0(while/lstm_cell_510/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_510/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_510/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_510/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_510/BiasAdd/ReadVariableOp*^while/lstm_cell_510/MatMul/ReadVariableOp,^while/lstm_cell_510/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_510_biasadd_readvariableop_resource5while_lstm_cell_510_biasadd_readvariableop_resource_0"n
4while_lstm_cell_510_matmul_1_readvariableop_resource6while_lstm_cell_510_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_510_matmul_readvariableop_resource4while_lstm_cell_510_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_510/BiasAdd/ReadVariableOp*while/lstm_cell_510/BiasAdd/ReadVariableOp2V
)while/lstm_cell_510/MatMul/ReadVariableOp)while/lstm_cell_510/MatMul/ReadVariableOp2Z
+while/lstm_cell_510/MatMul_1/ReadVariableOp+while/lstm_cell_510/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3097600
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_512_3097624_0:2(/
while_lstm_cell_512_3097626_0:
(+
while_lstm_cell_512_3097628_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_512_3097624:2(-
while_lstm_cell_512_3097626:
()
while_lstm_cell_512_3097628:(??+while/lstm_cell_512/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_512/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_512_3097624_0while_lstm_cell_512_3097626_0while_lstm_cell_512_3097628_0*
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
J__inference_lstm_cell_512_layer_call_and_return_conditional_losses_3097541?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_512/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_512/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_512/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_512/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_512_3097624while_lstm_cell_512_3097624_0"<
while_lstm_cell_512_3097626while_lstm_cell_512_3097626_0"<
while_lstm_cell_512_3097628while_lstm_cell_512_3097628_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_512/StatefulPartitionedCall+while/lstm_cell_512/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_223_layer_call_fn_3100445

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
E__inference_lstm_223_layer_call_and_return_conditional_losses_3097977s
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
?
E__inference_lstm_224_layer_call_and_return_conditional_losses_3097669

inputs'
lstm_cell_512_3097587:2('
lstm_cell_512_3097589:
(#
lstm_cell_512_3097591:(
identity??%lstm_cell_512/StatefulPartitionedCall?while;
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
%lstm_cell_512/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_512_3097587lstm_cell_512_3097589lstm_cell_512_3097591*
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
J__inference_lstm_cell_512_layer_call_and_return_conditional_losses_3097541n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_512_3097587lstm_cell_512_3097589lstm_cell_512_3097591*
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
while_body_3097600*
condR
while_cond_3097599*K
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
NoOpNoOp&^lstm_cell_512/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_512/StatefulPartitionedCall%lstm_cell_512/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_511_layer_call_and_return_conditional_losses_3101827

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
?
)sequential_74_lstm_223_while_cond_3096398J
Fsequential_74_lstm_223_while_sequential_74_lstm_223_while_loop_counterP
Lsequential_74_lstm_223_while_sequential_74_lstm_223_while_maximum_iterations,
(sequential_74_lstm_223_while_placeholder.
*sequential_74_lstm_223_while_placeholder_1.
*sequential_74_lstm_223_while_placeholder_2.
*sequential_74_lstm_223_while_placeholder_3L
Hsequential_74_lstm_223_while_less_sequential_74_lstm_223_strided_slice_1c
_sequential_74_lstm_223_while_sequential_74_lstm_223_while_cond_3096398___redundant_placeholder0c
_sequential_74_lstm_223_while_sequential_74_lstm_223_while_cond_3096398___redundant_placeholder1c
_sequential_74_lstm_223_while_sequential_74_lstm_223_while_cond_3096398___redundant_placeholder2c
_sequential_74_lstm_223_while_sequential_74_lstm_223_while_cond_3096398___redundant_placeholder3)
%sequential_74_lstm_223_while_identity
?
!sequential_74/lstm_223/while/LessLess(sequential_74_lstm_223_while_placeholderHsequential_74_lstm_223_while_less_sequential_74_lstm_223_strided_slice_1*
T0*
_output_shapes
: y
%sequential_74/lstm_223/while/IdentityIdentity%sequential_74/lstm_223/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_74_lstm_223_while_identity.sequential_74/lstm_223/while/Identity:output:0*(
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
E__inference_lstm_223_layer_call_and_return_conditional_losses_3100599
inputs_0?
,lstm_cell_511_matmul_readvariableop_resource:	d?A
.lstm_cell_511_matmul_1_readvariableop_resource:	2?<
-lstm_cell_511_biasadd_readvariableop_resource:	?
identity??$lstm_cell_511/BiasAdd/ReadVariableOp?#lstm_cell_511/MatMul/ReadVariableOp?%lstm_cell_511/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_511/MatMul/ReadVariableOpReadVariableOp,lstm_cell_511_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_511/MatMulMatMulstrided_slice_2:output:0+lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_511_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_511/MatMul_1MatMulzeros:output:0-lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_511/addAddV2lstm_cell_511/MatMul:product:0 lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_511_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_511/BiasAddBiasAddlstm_cell_511/add:z:0,lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_511/splitSplit&lstm_cell_511/split/split_dim:output:0lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_511/SigmoidSigmoidlstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_511/Sigmoid_1Sigmoidlstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_511/mulMullstm_cell_511/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_511/ReluRelulstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_511/mul_1Mullstm_cell_511/Sigmoid:y:0 lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_511/add_1AddV2lstm_cell_511/mul:z:0lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_511/Sigmoid_2Sigmoidlstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_511/Relu_1Relulstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_511/mul_2Mullstm_cell_511/Sigmoid_2:y:0"lstm_cell_511/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_511_matmul_readvariableop_resource.lstm_cell_511_matmul_1_readvariableop_resource-lstm_cell_511_biasadd_readvariableop_resource*
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
while_body_3100515*
condR
while_cond_3100514*K
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
NoOpNoOp%^lstm_cell_511/BiasAdd/ReadVariableOp$^lstm_cell_511/MatMul/ReadVariableOp&^lstm_cell_511/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_511/BiasAdd/ReadVariableOp$lstm_cell_511/BiasAdd/ReadVariableOp2J
#lstm_cell_511/MatMul/ReadVariableOp#lstm_cell_511/MatMul/ReadVariableOp2N
%lstm_cell_511/MatMul_1/ReadVariableOp%lstm_cell_511/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_224_layer_call_and_return_conditional_losses_3101644

inputs>
,lstm_cell_512_matmul_readvariableop_resource:2(@
.lstm_cell_512_matmul_1_readvariableop_resource:
(;
-lstm_cell_512_biasadd_readvariableop_resource:(
identity??$lstm_cell_512/BiasAdd/ReadVariableOp?#lstm_cell_512/MatMul/ReadVariableOp?%lstm_cell_512/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_512/MatMul/ReadVariableOpReadVariableOp,lstm_cell_512_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_512/MatMulMatMulstrided_slice_2:output:0+lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_512_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_512/MatMul_1MatMulzeros:output:0-lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_512/addAddV2lstm_cell_512/MatMul:product:0 lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_512_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_512/BiasAddBiasAddlstm_cell_512/add:z:0,lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_512/splitSplit&lstm_cell_512/split/split_dim:output:0lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_512/SigmoidSigmoidlstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_512/Sigmoid_1Sigmoidlstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_512/mulMullstm_cell_512/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_512/ReluRelulstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_512/mul_1Mullstm_cell_512/Sigmoid:y:0 lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_512/add_1AddV2lstm_cell_512/mul:z:0lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_512/Sigmoid_2Sigmoidlstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_512/Relu_1Relulstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_512/mul_2Mullstm_cell_512/Sigmoid_2:y:0"lstm_cell_512/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_512_matmul_readvariableop_resource.lstm_cell_512_matmul_1_readvariableop_resource-lstm_cell_512_biasadd_readvariableop_resource*
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
while_body_3101560*
condR
while_cond_3101559*K
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
NoOpNoOp%^lstm_cell_512/BiasAdd/ReadVariableOp$^lstm_cell_512/MatMul/ReadVariableOp&^lstm_cell_512/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_512/BiasAdd/ReadVariableOp$lstm_cell_512/BiasAdd/ReadVariableOp2J
#lstm_cell_512/MatMul/ReadVariableOp#lstm_cell_512/MatMul/ReadVariableOp2N
%lstm_cell_512/MatMul_1/ReadVariableOp%lstm_cell_512/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
*__inference_dense_74_layer_call_fn_3101653

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
E__inference_dense_74_layer_call_and_return_conditional_losses_3098145o
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
?
?
J__inference_sequential_74_layer_call_and_return_conditional_losses_3098823
lstm_222_input#
lstm_222_3098796:	?#
lstm_222_3098798:	d?
lstm_222_3098800:	?#
lstm_223_3098803:	d?#
lstm_223_3098805:	2?
lstm_223_3098807:	?"
lstm_224_3098810:2("
lstm_224_3098812:
(
lstm_224_3098814:("
dense_74_3098817:

dense_74_3098819:
identity?? dense_74/StatefulPartitionedCall? lstm_222/StatefulPartitionedCall? lstm_223/StatefulPartitionedCall? lstm_224/StatefulPartitionedCall?
 lstm_222/StatefulPartitionedCallStatefulPartitionedCalllstm_222_inputlstm_222_3098796lstm_222_3098798lstm_222_3098800*
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
E__inference_lstm_222_layer_call_and_return_conditional_losses_3097827?
 lstm_223/StatefulPartitionedCallStatefulPartitionedCall)lstm_222/StatefulPartitionedCall:output:0lstm_223_3098803lstm_223_3098805lstm_223_3098807*
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
E__inference_lstm_223_layer_call_and_return_conditional_losses_3097977?
 lstm_224/StatefulPartitionedCallStatefulPartitionedCall)lstm_223/StatefulPartitionedCall:output:0lstm_224_3098810lstm_224_3098812lstm_224_3098814*
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
E__inference_lstm_224_layer_call_and_return_conditional_losses_3098127?
 dense_74/StatefulPartitionedCallStatefulPartitionedCall)lstm_224/StatefulPartitionedCall:output:0dense_74_3098817dense_74_3098819*
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
E__inference_dense_74_layer_call_and_return_conditional_losses_3098145x
IdentityIdentity)dense_74/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_74/StatefulPartitionedCall!^lstm_222/StatefulPartitionedCall!^lstm_223/StatefulPartitionedCall!^lstm_224/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2D
 lstm_222/StatefulPartitionedCall lstm_222/StatefulPartitionedCall2D
 lstm_223/StatefulPartitionedCall lstm_223/StatefulPartitionedCall2D
 lstm_224/StatefulPartitionedCall lstm_224/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_222_input
?
?
*__inference_lstm_224_layer_call_fn_3101039
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
E__inference_lstm_224_layer_call_and_return_conditional_losses_3097478o
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
/__inference_lstm_cell_512_layer_call_fn_3101876

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
J__inference_lstm_cell_512_layer_call_and_return_conditional_losses_3097395o
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
?
?
J__inference_lstm_cell_510_layer_call_and_return_conditional_losses_3101761

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
while_cond_3101273
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3101273___redundant_placeholder05
1while_while_cond_3101273___redundant_placeholder15
1while_while_cond_3101273___redundant_placeholder25
1while_while_cond_3101273___redundant_placeholder3
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
lstm_223_while_cond_3099566.
*lstm_223_while_lstm_223_while_loop_counter4
0lstm_223_while_lstm_223_while_maximum_iterations
lstm_223_while_placeholder 
lstm_223_while_placeholder_1 
lstm_223_while_placeholder_2 
lstm_223_while_placeholder_30
,lstm_223_while_less_lstm_223_strided_slice_1G
Clstm_223_while_lstm_223_while_cond_3099566___redundant_placeholder0G
Clstm_223_while_lstm_223_while_cond_3099566___redundant_placeholder1G
Clstm_223_while_lstm_223_while_cond_3099566___redundant_placeholder2G
Clstm_223_while_lstm_223_while_cond_3099566___redundant_placeholder3
lstm_223_while_identity
?
lstm_223/while/LessLesslstm_223_while_placeholder,lstm_223_while_less_lstm_223_strided_slice_1*
T0*
_output_shapes
: ]
lstm_223/while/IdentityIdentitylstm_223/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_223_while_identity lstm_223/while/Identity:output:0*(
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
while_cond_3097742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3097742___redundant_placeholder05
1while_while_cond_3097742___redundant_placeholder15
1while_while_cond_3097742___redundant_placeholder25
1while_while_cond_3097742___redundant_placeholder3
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
while_body_3099899
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_510_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_510_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_510_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_510_matmul_readvariableop_resource:	?G
4while_lstm_cell_510_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_510_biasadd_readvariableop_resource:	???*while/lstm_cell_510/BiasAdd/ReadVariableOp?)while/lstm_cell_510/MatMul/ReadVariableOp?+while/lstm_cell_510/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_510/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_510_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_510/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_510_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_510/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_510/addAddV2$while/lstm_cell_510/MatMul:product:0&while/lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_510_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_510/BiasAddBiasAddwhile/lstm_cell_510/add:z:02while/lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_510/splitSplit,while/lstm_cell_510/split/split_dim:output:0$while/lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_510/SigmoidSigmoid"while/lstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_510/Sigmoid_1Sigmoid"while/lstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mulMul!while/lstm_cell_510/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_510/ReluRelu"while/lstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mul_1Mulwhile/lstm_cell_510/Sigmoid:y:0&while/lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/add_1AddV2while/lstm_cell_510/mul:z:0while/lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_510/Sigmoid_2Sigmoid"while/lstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_510/Relu_1Reluwhile/lstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mul_2Mul!while/lstm_cell_510/Sigmoid_2:y:0(while/lstm_cell_510/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_510/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_510/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_510/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_510/BiasAdd/ReadVariableOp*^while/lstm_cell_510/MatMul/ReadVariableOp,^while/lstm_cell_510/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_510_biasadd_readvariableop_resource5while_lstm_cell_510_biasadd_readvariableop_resource_0"n
4while_lstm_cell_510_matmul_1_readvariableop_resource6while_lstm_cell_510_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_510_matmul_readvariableop_resource4while_lstm_cell_510_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_510/BiasAdd/ReadVariableOp*while/lstm_cell_510/BiasAdd/ReadVariableOp2V
)while/lstm_cell_510/MatMul/ReadVariableOp)while/lstm_cell_510/MatMul/ReadVariableOp2Z
+while/lstm_cell_510/MatMul_1/ReadVariableOp+while/lstm_cell_510/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3101417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_512_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_512_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_512_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_512_matmul_readvariableop_resource:2(F
4while_lstm_cell_512_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_512_biasadd_readvariableop_resource:(??*while/lstm_cell_512/BiasAdd/ReadVariableOp?)while/lstm_cell_512/MatMul/ReadVariableOp?+while/lstm_cell_512/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_512/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_512_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_512/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_512_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_512/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_512/addAddV2$while/lstm_cell_512/MatMul:product:0&while/lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_512_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_512/BiasAddBiasAddwhile/lstm_cell_512/add:z:02while/lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_512/splitSplit,while/lstm_cell_512/split/split_dim:output:0$while/lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_512/SigmoidSigmoid"while/lstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_512/Sigmoid_1Sigmoid"while/lstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mulMul!while/lstm_cell_512/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_512/ReluRelu"while/lstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mul_1Mulwhile/lstm_cell_512/Sigmoid:y:0&while/lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/add_1AddV2while/lstm_cell_512/mul:z:0while/lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_512/Sigmoid_2Sigmoid"while/lstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_512/Relu_1Reluwhile/lstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mul_2Mul!while/lstm_cell_512/Sigmoid_2:y:0(while/lstm_cell_512/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_512/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_512/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_512/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_512/BiasAdd/ReadVariableOp*^while/lstm_cell_512/MatMul/ReadVariableOp,^while/lstm_cell_512/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_512_biasadd_readvariableop_resource5while_lstm_cell_512_biasadd_readvariableop_resource_0"n
4while_lstm_cell_512_matmul_1_readvariableop_resource6while_lstm_cell_512_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_512_matmul_readvariableop_resource4while_lstm_cell_512_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_512/BiasAdd/ReadVariableOp*while/lstm_cell_512/BiasAdd/ReadVariableOp2V
)while/lstm_cell_512/MatMul/ReadVariableOp)while/lstm_cell_512/MatMul/ReadVariableOp2Z
+while/lstm_cell_512/MatMul_1/ReadVariableOp+while/lstm_cell_512/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_222_layer_call_and_return_conditional_losses_3099983
inputs_0?
,lstm_cell_510_matmul_readvariableop_resource:	?A
.lstm_cell_510_matmul_1_readvariableop_resource:	d?<
-lstm_cell_510_biasadd_readvariableop_resource:	?
identity??$lstm_cell_510/BiasAdd/ReadVariableOp?#lstm_cell_510/MatMul/ReadVariableOp?%lstm_cell_510/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_510/MatMul/ReadVariableOpReadVariableOp,lstm_cell_510_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_510/MatMulMatMulstrided_slice_2:output:0+lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_510_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_510/MatMul_1MatMulzeros:output:0-lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_510/addAddV2lstm_cell_510/MatMul:product:0 lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_510_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_510/BiasAddBiasAddlstm_cell_510/add:z:0,lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_510/splitSplit&lstm_cell_510/split/split_dim:output:0lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_510/SigmoidSigmoidlstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_510/Sigmoid_1Sigmoidlstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_510/mulMullstm_cell_510/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_510/ReluRelulstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_510/mul_1Mullstm_cell_510/Sigmoid:y:0 lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_510/add_1AddV2lstm_cell_510/mul:z:0lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_510/Sigmoid_2Sigmoidlstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_510/Relu_1Relulstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_510/mul_2Mullstm_cell_510/Sigmoid_2:y:0"lstm_cell_510/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_510_matmul_readvariableop_resource.lstm_cell_510_matmul_1_readvariableop_resource-lstm_cell_510_biasadd_readvariableop_resource*
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
while_body_3099899*
condR
while_cond_3099898*K
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
NoOpNoOp%^lstm_cell_510/BiasAdd/ReadVariableOp$^lstm_cell_510/MatMul/ReadVariableOp&^lstm_cell_510/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_510/BiasAdd/ReadVariableOp$lstm_cell_510/BiasAdd/ReadVariableOp2J
#lstm_cell_510/MatMul/ReadVariableOp#lstm_cell_510/MatMul/ReadVariableOp2N
%lstm_cell_510/MatMul_1/ReadVariableOp%lstm_cell_510/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_512_layer_call_and_return_conditional_losses_3101957

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
?
while_cond_3097599
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3097599___redundant_placeholder05
1while_while_cond_3097599___redundant_placeholder15
1while_while_cond_3097599___redundant_placeholder25
1while_while_cond_3097599___redundant_placeholder3
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
?
/__inference_lstm_cell_510_layer_call_fn_3101680

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
J__inference_lstm_cell_510_layer_call_and_return_conditional_losses_3096695o
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
while_cond_3098258
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3098258___redundant_placeholder05
1while_while_cond_3098258___redundant_placeholder15
1while_while_cond_3098258___redundant_placeholder25
1while_while_cond_3098258___redundant_placeholder3
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
*__inference_lstm_224_layer_call_fn_3101050
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
E__inference_lstm_224_layer_call_and_return_conditional_losses_3097669o
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
*__inference_lstm_223_layer_call_fn_3100456

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
E__inference_lstm_223_layer_call_and_return_conditional_losses_3098508s
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
while_cond_3098042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3098042___redundant_placeholder05
1while_while_cond_3098042___redundant_placeholder15
1while_while_cond_3098042___redundant_placeholder25
1while_while_cond_3098042___redundant_placeholder3
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
lstm_224_while_cond_3099705.
*lstm_224_while_lstm_224_while_loop_counter4
0lstm_224_while_lstm_224_while_maximum_iterations
lstm_224_while_placeholder 
lstm_224_while_placeholder_1 
lstm_224_while_placeholder_2 
lstm_224_while_placeholder_30
,lstm_224_while_less_lstm_224_strided_slice_1G
Clstm_224_while_lstm_224_while_cond_3099705___redundant_placeholder0G
Clstm_224_while_lstm_224_while_cond_3099705___redundant_placeholder1G
Clstm_224_while_lstm_224_while_cond_3099705___redundant_placeholder2G
Clstm_224_while_lstm_224_while_cond_3099705___redundant_placeholder3
lstm_224_while_identity
?
lstm_224/while/LessLesslstm_224_while_placeholder,lstm_224_while_less_lstm_224_strided_slice_1*
T0*
_output_shapes
: ]
lstm_224/while/IdentityIdentitylstm_224/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_224_while_identity lstm_224/while/Identity:output:0*(
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
while_body_3100042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_510_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_510_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_510_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_510_matmul_readvariableop_resource:	?G
4while_lstm_cell_510_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_510_biasadd_readvariableop_resource:	???*while/lstm_cell_510/BiasAdd/ReadVariableOp?)while/lstm_cell_510/MatMul/ReadVariableOp?+while/lstm_cell_510/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_510/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_510_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_510/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_510_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_510/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_510/addAddV2$while/lstm_cell_510/MatMul:product:0&while/lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_510_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_510/BiasAddBiasAddwhile/lstm_cell_510/add:z:02while/lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_510/splitSplit,while/lstm_cell_510/split/split_dim:output:0$while/lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_510/SigmoidSigmoid"while/lstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_510/Sigmoid_1Sigmoid"while/lstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mulMul!while/lstm_cell_510/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_510/ReluRelu"while/lstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mul_1Mulwhile/lstm_cell_510/Sigmoid:y:0&while/lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/add_1AddV2while/lstm_cell_510/mul:z:0while/lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_510/Sigmoid_2Sigmoid"while/lstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_510/Relu_1Reluwhile/lstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mul_2Mul!while/lstm_cell_510/Sigmoid_2:y:0(while/lstm_cell_510/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_510/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_510/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_510/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_510/BiasAdd/ReadVariableOp*^while/lstm_cell_510/MatMul/ReadVariableOp,^while/lstm_cell_510/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_510_biasadd_readvariableop_resource5while_lstm_cell_510_biasadd_readvariableop_resource_0"n
4while_lstm_cell_510_matmul_1_readvariableop_resource6while_lstm_cell_510_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_510_matmul_readvariableop_resource4while_lstm_cell_510_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_510/BiasAdd/ReadVariableOp*while/lstm_cell_510/BiasAdd/ReadVariableOp2V
)while/lstm_cell_510/MatMul/ReadVariableOp)while/lstm_cell_510/MatMul/ReadVariableOp2Z
+while/lstm_cell_510/MatMul_1/ReadVariableOp+while/lstm_cell_510/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_222_layer_call_and_return_conditional_losses_3100412

inputs?
,lstm_cell_510_matmul_readvariableop_resource:	?A
.lstm_cell_510_matmul_1_readvariableop_resource:	d?<
-lstm_cell_510_biasadd_readvariableop_resource:	?
identity??$lstm_cell_510/BiasAdd/ReadVariableOp?#lstm_cell_510/MatMul/ReadVariableOp?%lstm_cell_510/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_510/MatMul/ReadVariableOpReadVariableOp,lstm_cell_510_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_510/MatMulMatMulstrided_slice_2:output:0+lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_510_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_510/MatMul_1MatMulzeros:output:0-lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_510/addAddV2lstm_cell_510/MatMul:product:0 lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_510_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_510/BiasAddBiasAddlstm_cell_510/add:z:0,lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_510/splitSplit&lstm_cell_510/split/split_dim:output:0lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_510/SigmoidSigmoidlstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_510/Sigmoid_1Sigmoidlstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_510/mulMullstm_cell_510/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_510/ReluRelulstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_510/mul_1Mullstm_cell_510/Sigmoid:y:0 lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_510/add_1AddV2lstm_cell_510/mul:z:0lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_510/Sigmoid_2Sigmoidlstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_510/Relu_1Relulstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_510/mul_2Mullstm_cell_510/Sigmoid_2:y:0"lstm_cell_510/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_510_matmul_readvariableop_resource.lstm_cell_510_matmul_1_readvariableop_resource-lstm_cell_510_biasadd_readvariableop_resource*
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
while_body_3100328*
condR
while_cond_3100327*K
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
NoOpNoOp%^lstm_cell_510/BiasAdd/ReadVariableOp$^lstm_cell_510/MatMul/ReadVariableOp&^lstm_cell_510/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_510/BiasAdd/ReadVariableOp$lstm_cell_510/BiasAdd/ReadVariableOp2J
#lstm_cell_510/MatMul/ReadVariableOp#lstm_cell_510/MatMul/ReadVariableOp2N
%lstm_cell_510/MatMul_1/ReadVariableOp%lstm_cell_510/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_3097409
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_512_3097433_0:2(/
while_lstm_cell_512_3097435_0:
(+
while_lstm_cell_512_3097437_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_512_3097433:2(-
while_lstm_cell_512_3097435:
()
while_lstm_cell_512_3097437:(??+while/lstm_cell_512/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_512/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_512_3097433_0while_lstm_cell_512_3097435_0while_lstm_cell_512_3097437_0*
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
J__inference_lstm_cell_512_layer_call_and_return_conditional_losses_3097395?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_512/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_512/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_512/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_512/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_512_3097433while_lstm_cell_512_3097433_0"<
while_lstm_cell_512_3097435while_lstm_cell_512_3097435_0"<
while_lstm_cell_512_3097437while_lstm_cell_512_3097437_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_512/StatefulPartitionedCall+while/lstm_cell_512/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_222_while_body_3099001.
*lstm_222_while_lstm_222_while_loop_counter4
0lstm_222_while_lstm_222_while_maximum_iterations
lstm_222_while_placeholder 
lstm_222_while_placeholder_1 
lstm_222_while_placeholder_2 
lstm_222_while_placeholder_3-
)lstm_222_while_lstm_222_strided_slice_1_0i
elstm_222_while_tensorarrayv2read_tensorlistgetitem_lstm_222_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_222_while_lstm_cell_510_matmul_readvariableop_resource_0:	?R
?lstm_222_while_lstm_cell_510_matmul_1_readvariableop_resource_0:	d?M
>lstm_222_while_lstm_cell_510_biasadd_readvariableop_resource_0:	?
lstm_222_while_identity
lstm_222_while_identity_1
lstm_222_while_identity_2
lstm_222_while_identity_3
lstm_222_while_identity_4
lstm_222_while_identity_5+
'lstm_222_while_lstm_222_strided_slice_1g
clstm_222_while_tensorarrayv2read_tensorlistgetitem_lstm_222_tensorarrayunstack_tensorlistfromtensorN
;lstm_222_while_lstm_cell_510_matmul_readvariableop_resource:	?P
=lstm_222_while_lstm_cell_510_matmul_1_readvariableop_resource:	d?K
<lstm_222_while_lstm_cell_510_biasadd_readvariableop_resource:	???3lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOp?2lstm_222/while/lstm_cell_510/MatMul/ReadVariableOp?4lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOp?
@lstm_222/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_222/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_222_while_tensorarrayv2read_tensorlistgetitem_lstm_222_tensorarrayunstack_tensorlistfromtensor_0lstm_222_while_placeholderIlstm_222/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_222/while/lstm_cell_510/MatMul/ReadVariableOpReadVariableOp=lstm_222_while_lstm_cell_510_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_222/while/lstm_cell_510/MatMulMatMul9lstm_222/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_222/while/lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOp?lstm_222_while_lstm_cell_510_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_222/while/lstm_cell_510/MatMul_1MatMullstm_222_while_placeholder_2<lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_222/while/lstm_cell_510/addAddV2-lstm_222/while/lstm_cell_510/MatMul:product:0/lstm_222/while/lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOp>lstm_222_while_lstm_cell_510_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_222/while/lstm_cell_510/BiasAddBiasAdd$lstm_222/while/lstm_cell_510/add:z:0;lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_222/while/lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_222/while/lstm_cell_510/splitSplit5lstm_222/while/lstm_cell_510/split/split_dim:output:0-lstm_222/while/lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_222/while/lstm_cell_510/SigmoidSigmoid+lstm_222/while/lstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_222/while/lstm_cell_510/Sigmoid_1Sigmoid+lstm_222/while/lstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_222/while/lstm_cell_510/mulMul*lstm_222/while/lstm_cell_510/Sigmoid_1:y:0lstm_222_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_222/while/lstm_cell_510/ReluRelu+lstm_222/while/lstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_222/while/lstm_cell_510/mul_1Mul(lstm_222/while/lstm_cell_510/Sigmoid:y:0/lstm_222/while/lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_222/while/lstm_cell_510/add_1AddV2$lstm_222/while/lstm_cell_510/mul:z:0&lstm_222/while/lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_222/while/lstm_cell_510/Sigmoid_2Sigmoid+lstm_222/while/lstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_222/while/lstm_cell_510/Relu_1Relu&lstm_222/while/lstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_222/while/lstm_cell_510/mul_2Mul*lstm_222/while/lstm_cell_510/Sigmoid_2:y:01lstm_222/while/lstm_cell_510/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_222/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_222_while_placeholder_1lstm_222_while_placeholder&lstm_222/while/lstm_cell_510/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_222/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_222/while/addAddV2lstm_222_while_placeholderlstm_222/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_222/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_222/while/add_1AddV2*lstm_222_while_lstm_222_while_loop_counterlstm_222/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_222/while/IdentityIdentitylstm_222/while/add_1:z:0^lstm_222/while/NoOp*
T0*
_output_shapes
: ?
lstm_222/while/Identity_1Identity0lstm_222_while_lstm_222_while_maximum_iterations^lstm_222/while/NoOp*
T0*
_output_shapes
: t
lstm_222/while/Identity_2Identitylstm_222/while/add:z:0^lstm_222/while/NoOp*
T0*
_output_shapes
: ?
lstm_222/while/Identity_3IdentityClstm_222/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_222/while/NoOp*
T0*
_output_shapes
: ?
lstm_222/while/Identity_4Identity&lstm_222/while/lstm_cell_510/mul_2:z:0^lstm_222/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_222/while/Identity_5Identity&lstm_222/while/lstm_cell_510/add_1:z:0^lstm_222/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_222/while/NoOpNoOp4^lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOp3^lstm_222/while/lstm_cell_510/MatMul/ReadVariableOp5^lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_222_while_identity lstm_222/while/Identity:output:0"?
lstm_222_while_identity_1"lstm_222/while/Identity_1:output:0"?
lstm_222_while_identity_2"lstm_222/while/Identity_2:output:0"?
lstm_222_while_identity_3"lstm_222/while/Identity_3:output:0"?
lstm_222_while_identity_4"lstm_222/while/Identity_4:output:0"?
lstm_222_while_identity_5"lstm_222/while/Identity_5:output:0"T
'lstm_222_while_lstm_222_strided_slice_1)lstm_222_while_lstm_222_strided_slice_1_0"~
<lstm_222_while_lstm_cell_510_biasadd_readvariableop_resource>lstm_222_while_lstm_cell_510_biasadd_readvariableop_resource_0"?
=lstm_222_while_lstm_cell_510_matmul_1_readvariableop_resource?lstm_222_while_lstm_cell_510_matmul_1_readvariableop_resource_0"|
;lstm_222_while_lstm_cell_510_matmul_readvariableop_resource=lstm_222_while_lstm_cell_510_matmul_readvariableop_resource_0"?
clstm_222_while_tensorarrayv2read_tensorlistgetitem_lstm_222_tensorarrayunstack_tensorlistfromtensorelstm_222_while_tensorarrayv2read_tensorlistgetitem_lstm_222_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOp3lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOp2h
2lstm_222/while/lstm_cell_510/MatMul/ReadVariableOp2lstm_222/while/lstm_cell_510/MatMul/ReadVariableOp2l
4lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOp4lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_222_layer_call_and_return_conditional_losses_3097827

inputs?
,lstm_cell_510_matmul_readvariableop_resource:	?A
.lstm_cell_510_matmul_1_readvariableop_resource:	d?<
-lstm_cell_510_biasadd_readvariableop_resource:	?
identity??$lstm_cell_510/BiasAdd/ReadVariableOp?#lstm_cell_510/MatMul/ReadVariableOp?%lstm_cell_510/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_510/MatMul/ReadVariableOpReadVariableOp,lstm_cell_510_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_510/MatMulMatMulstrided_slice_2:output:0+lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_510_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_510/MatMul_1MatMulzeros:output:0-lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_510/addAddV2lstm_cell_510/MatMul:product:0 lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_510_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_510/BiasAddBiasAddlstm_cell_510/add:z:0,lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_510/splitSplit&lstm_cell_510/split/split_dim:output:0lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_510/SigmoidSigmoidlstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_510/Sigmoid_1Sigmoidlstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_510/mulMullstm_cell_510/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_510/ReluRelulstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_510/mul_1Mullstm_cell_510/Sigmoid:y:0 lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_510/add_1AddV2lstm_cell_510/mul:z:0lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_510/Sigmoid_2Sigmoidlstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_510/Relu_1Relulstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_510/mul_2Mullstm_cell_510/Sigmoid_2:y:0"lstm_cell_510/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_510_matmul_readvariableop_resource.lstm_cell_510_matmul_1_readvariableop_resource-lstm_cell_510_biasadd_readvariableop_resource*
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
while_body_3097743*
condR
while_cond_3097742*K
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
NoOpNoOp%^lstm_cell_510/BiasAdd/ReadVariableOp$^lstm_cell_510/MatMul/ReadVariableOp&^lstm_cell_510/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_510/BiasAdd/ReadVariableOp$lstm_cell_510/BiasAdd/ReadVariableOp2J
#lstm_cell_510/MatMul/ReadVariableOp#lstm_cell_510/MatMul/ReadVariableOp2N
%lstm_cell_510/MatMul_1/ReadVariableOp%lstm_cell_510/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3098589
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_510_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_510_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_510_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_510_matmul_readvariableop_resource:	?G
4while_lstm_cell_510_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_510_biasadd_readvariableop_resource:	???*while/lstm_cell_510/BiasAdd/ReadVariableOp?)while/lstm_cell_510/MatMul/ReadVariableOp?+while/lstm_cell_510/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_510/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_510_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_510/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_510_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_510/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_510/addAddV2$while/lstm_cell_510/MatMul:product:0&while/lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_510_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_510/BiasAddBiasAddwhile/lstm_cell_510/add:z:02while/lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_510/splitSplit,while/lstm_cell_510/split/split_dim:output:0$while/lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_510/SigmoidSigmoid"while/lstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_510/Sigmoid_1Sigmoid"while/lstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mulMul!while/lstm_cell_510/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_510/ReluRelu"while/lstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mul_1Mulwhile/lstm_cell_510/Sigmoid:y:0&while/lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/add_1AddV2while/lstm_cell_510/mul:z:0while/lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_510/Sigmoid_2Sigmoid"while/lstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_510/Relu_1Reluwhile/lstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mul_2Mul!while/lstm_cell_510/Sigmoid_2:y:0(while/lstm_cell_510/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_510/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_510/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_510/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_510/BiasAdd/ReadVariableOp*^while/lstm_cell_510/MatMul/ReadVariableOp,^while/lstm_cell_510/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_510_biasadd_readvariableop_resource5while_lstm_cell_510_biasadd_readvariableop_resource_0"n
4while_lstm_cell_510_matmul_1_readvariableop_resource6while_lstm_cell_510_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_510_matmul_readvariableop_resource4while_lstm_cell_510_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_510/BiasAdd/ReadVariableOp*while/lstm_cell_510/BiasAdd/ReadVariableOp2V
)while/lstm_cell_510/MatMul/ReadVariableOp)while/lstm_cell_510/MatMul/ReadVariableOp2Z
+while/lstm_cell_510/MatMul_1/ReadVariableOp+while/lstm_cell_510/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
J__inference_sequential_74_layer_call_and_return_conditional_losses_3099796

inputsH
5lstm_222_lstm_cell_510_matmul_readvariableop_resource:	?J
7lstm_222_lstm_cell_510_matmul_1_readvariableop_resource:	d?E
6lstm_222_lstm_cell_510_biasadd_readvariableop_resource:	?H
5lstm_223_lstm_cell_511_matmul_readvariableop_resource:	d?J
7lstm_223_lstm_cell_511_matmul_1_readvariableop_resource:	2?E
6lstm_223_lstm_cell_511_biasadd_readvariableop_resource:	?G
5lstm_224_lstm_cell_512_matmul_readvariableop_resource:2(I
7lstm_224_lstm_cell_512_matmul_1_readvariableop_resource:
(D
6lstm_224_lstm_cell_512_biasadd_readvariableop_resource:(9
'dense_74_matmul_readvariableop_resource:
6
(dense_74_biasadd_readvariableop_resource:
identity??dense_74/BiasAdd/ReadVariableOp?dense_74/MatMul/ReadVariableOp?-lstm_222/lstm_cell_510/BiasAdd/ReadVariableOp?,lstm_222/lstm_cell_510/MatMul/ReadVariableOp?.lstm_222/lstm_cell_510/MatMul_1/ReadVariableOp?lstm_222/while?-lstm_223/lstm_cell_511/BiasAdd/ReadVariableOp?,lstm_223/lstm_cell_511/MatMul/ReadVariableOp?.lstm_223/lstm_cell_511/MatMul_1/ReadVariableOp?lstm_223/while?-lstm_224/lstm_cell_512/BiasAdd/ReadVariableOp?,lstm_224/lstm_cell_512/MatMul/ReadVariableOp?.lstm_224/lstm_cell_512/MatMul_1/ReadVariableOp?lstm_224/whileD
lstm_222/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_222/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_222/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_222/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_222/strided_sliceStridedSlicelstm_222/Shape:output:0%lstm_222/strided_slice/stack:output:0'lstm_222/strided_slice/stack_1:output:0'lstm_222/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_222/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_222/zeros/packedPacklstm_222/strided_slice:output:0 lstm_222/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_222/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_222/zerosFilllstm_222/zeros/packed:output:0lstm_222/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_222/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_222/zeros_1/packedPacklstm_222/strided_slice:output:0"lstm_222/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_222/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_222/zeros_1Fill lstm_222/zeros_1/packed:output:0lstm_222/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_222/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_222/transpose	Transposeinputs lstm_222/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_222/Shape_1Shapelstm_222/transpose:y:0*
T0*
_output_shapes
:h
lstm_222/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_222/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_222/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_222/strided_slice_1StridedSlicelstm_222/Shape_1:output:0'lstm_222/strided_slice_1/stack:output:0)lstm_222/strided_slice_1/stack_1:output:0)lstm_222/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_222/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_222/TensorArrayV2TensorListReserve-lstm_222/TensorArrayV2/element_shape:output:0!lstm_222/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_222/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_222/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_222/transpose:y:0Glstm_222/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_222/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_222/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_222/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_222/strided_slice_2StridedSlicelstm_222/transpose:y:0'lstm_222/strided_slice_2/stack:output:0)lstm_222/strided_slice_2/stack_1:output:0)lstm_222/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_222/lstm_cell_510/MatMul/ReadVariableOpReadVariableOp5lstm_222_lstm_cell_510_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_222/lstm_cell_510/MatMulMatMul!lstm_222/strided_slice_2:output:04lstm_222/lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_222/lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOp7lstm_222_lstm_cell_510_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_222/lstm_cell_510/MatMul_1MatMullstm_222/zeros:output:06lstm_222/lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_222/lstm_cell_510/addAddV2'lstm_222/lstm_cell_510/MatMul:product:0)lstm_222/lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_222/lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOp6lstm_222_lstm_cell_510_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_222/lstm_cell_510/BiasAddBiasAddlstm_222/lstm_cell_510/add:z:05lstm_222/lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_222/lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_222/lstm_cell_510/splitSplit/lstm_222/lstm_cell_510/split/split_dim:output:0'lstm_222/lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_222/lstm_cell_510/SigmoidSigmoid%lstm_222/lstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_222/lstm_cell_510/Sigmoid_1Sigmoid%lstm_222/lstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_222/lstm_cell_510/mulMul$lstm_222/lstm_cell_510/Sigmoid_1:y:0lstm_222/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_222/lstm_cell_510/ReluRelu%lstm_222/lstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_222/lstm_cell_510/mul_1Mul"lstm_222/lstm_cell_510/Sigmoid:y:0)lstm_222/lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_222/lstm_cell_510/add_1AddV2lstm_222/lstm_cell_510/mul:z:0 lstm_222/lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_222/lstm_cell_510/Sigmoid_2Sigmoid%lstm_222/lstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_222/lstm_cell_510/Relu_1Relu lstm_222/lstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_222/lstm_cell_510/mul_2Mul$lstm_222/lstm_cell_510/Sigmoid_2:y:0+lstm_222/lstm_cell_510/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_222/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_222/TensorArrayV2_1TensorListReserve/lstm_222/TensorArrayV2_1/element_shape:output:0!lstm_222/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_222/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_222/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_222/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_222/whileWhile$lstm_222/while/loop_counter:output:0*lstm_222/while/maximum_iterations:output:0lstm_222/time:output:0!lstm_222/TensorArrayV2_1:handle:0lstm_222/zeros:output:0lstm_222/zeros_1:output:0!lstm_222/strided_slice_1:output:0@lstm_222/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_222_lstm_cell_510_matmul_readvariableop_resource7lstm_222_lstm_cell_510_matmul_1_readvariableop_resource6lstm_222_lstm_cell_510_biasadd_readvariableop_resource*
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
lstm_222_while_body_3099428*'
condR
lstm_222_while_cond_3099427*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_222/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_222/TensorArrayV2Stack/TensorListStackTensorListStacklstm_222/while:output:3Blstm_222/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_222/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_222/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_222/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_222/strided_slice_3StridedSlice4lstm_222/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_222/strided_slice_3/stack:output:0)lstm_222/strided_slice_3/stack_1:output:0)lstm_222/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_222/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_222/transpose_1	Transpose4lstm_222/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_222/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_222/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_223/ShapeShapelstm_222/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_223/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_223/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_223/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_223/strided_sliceStridedSlicelstm_223/Shape:output:0%lstm_223/strided_slice/stack:output:0'lstm_223/strided_slice/stack_1:output:0'lstm_223/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_223/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_223/zeros/packedPacklstm_223/strided_slice:output:0 lstm_223/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_223/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_223/zerosFilllstm_223/zeros/packed:output:0lstm_223/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_223/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_223/zeros_1/packedPacklstm_223/strided_slice:output:0"lstm_223/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_223/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_223/zeros_1Fill lstm_223/zeros_1/packed:output:0lstm_223/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_223/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_223/transpose	Transposelstm_222/transpose_1:y:0 lstm_223/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_223/Shape_1Shapelstm_223/transpose:y:0*
T0*
_output_shapes
:h
lstm_223/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_223/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_223/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_223/strided_slice_1StridedSlicelstm_223/Shape_1:output:0'lstm_223/strided_slice_1/stack:output:0)lstm_223/strided_slice_1/stack_1:output:0)lstm_223/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_223/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_223/TensorArrayV2TensorListReserve-lstm_223/TensorArrayV2/element_shape:output:0!lstm_223/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_223/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_223/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_223/transpose:y:0Glstm_223/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_223/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_223/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_223/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_223/strided_slice_2StridedSlicelstm_223/transpose:y:0'lstm_223/strided_slice_2/stack:output:0)lstm_223/strided_slice_2/stack_1:output:0)lstm_223/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_223/lstm_cell_511/MatMul/ReadVariableOpReadVariableOp5lstm_223_lstm_cell_511_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_223/lstm_cell_511/MatMulMatMul!lstm_223/strided_slice_2:output:04lstm_223/lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_223/lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOp7lstm_223_lstm_cell_511_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_223/lstm_cell_511/MatMul_1MatMullstm_223/zeros:output:06lstm_223/lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_223/lstm_cell_511/addAddV2'lstm_223/lstm_cell_511/MatMul:product:0)lstm_223/lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_223/lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOp6lstm_223_lstm_cell_511_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_223/lstm_cell_511/BiasAddBiasAddlstm_223/lstm_cell_511/add:z:05lstm_223/lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_223/lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_223/lstm_cell_511/splitSplit/lstm_223/lstm_cell_511/split/split_dim:output:0'lstm_223/lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_223/lstm_cell_511/SigmoidSigmoid%lstm_223/lstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_223/lstm_cell_511/Sigmoid_1Sigmoid%lstm_223/lstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_223/lstm_cell_511/mulMul$lstm_223/lstm_cell_511/Sigmoid_1:y:0lstm_223/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_223/lstm_cell_511/ReluRelu%lstm_223/lstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_223/lstm_cell_511/mul_1Mul"lstm_223/lstm_cell_511/Sigmoid:y:0)lstm_223/lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_223/lstm_cell_511/add_1AddV2lstm_223/lstm_cell_511/mul:z:0 lstm_223/lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_223/lstm_cell_511/Sigmoid_2Sigmoid%lstm_223/lstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_223/lstm_cell_511/Relu_1Relu lstm_223/lstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_223/lstm_cell_511/mul_2Mul$lstm_223/lstm_cell_511/Sigmoid_2:y:0+lstm_223/lstm_cell_511/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_223/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_223/TensorArrayV2_1TensorListReserve/lstm_223/TensorArrayV2_1/element_shape:output:0!lstm_223/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_223/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_223/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_223/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_223/whileWhile$lstm_223/while/loop_counter:output:0*lstm_223/while/maximum_iterations:output:0lstm_223/time:output:0!lstm_223/TensorArrayV2_1:handle:0lstm_223/zeros:output:0lstm_223/zeros_1:output:0!lstm_223/strided_slice_1:output:0@lstm_223/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_223_lstm_cell_511_matmul_readvariableop_resource7lstm_223_lstm_cell_511_matmul_1_readvariableop_resource6lstm_223_lstm_cell_511_biasadd_readvariableop_resource*
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
lstm_223_while_body_3099567*'
condR
lstm_223_while_cond_3099566*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_223/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_223/TensorArrayV2Stack/TensorListStackTensorListStacklstm_223/while:output:3Blstm_223/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_223/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_223/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_223/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_223/strided_slice_3StridedSlice4lstm_223/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_223/strided_slice_3/stack:output:0)lstm_223/strided_slice_3/stack_1:output:0)lstm_223/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_223/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_223/transpose_1	Transpose4lstm_223/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_223/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_223/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_224/ShapeShapelstm_223/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_224/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_224/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_224/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_224/strided_sliceStridedSlicelstm_224/Shape:output:0%lstm_224/strided_slice/stack:output:0'lstm_224/strided_slice/stack_1:output:0'lstm_224/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_224/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_224/zeros/packedPacklstm_224/strided_slice:output:0 lstm_224/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_224/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_224/zerosFilllstm_224/zeros/packed:output:0lstm_224/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_224/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_224/zeros_1/packedPacklstm_224/strided_slice:output:0"lstm_224/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_224/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_224/zeros_1Fill lstm_224/zeros_1/packed:output:0lstm_224/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_224/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_224/transpose	Transposelstm_223/transpose_1:y:0 lstm_224/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_224/Shape_1Shapelstm_224/transpose:y:0*
T0*
_output_shapes
:h
lstm_224/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_224/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_224/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_224/strided_slice_1StridedSlicelstm_224/Shape_1:output:0'lstm_224/strided_slice_1/stack:output:0)lstm_224/strided_slice_1/stack_1:output:0)lstm_224/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_224/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_224/TensorArrayV2TensorListReserve-lstm_224/TensorArrayV2/element_shape:output:0!lstm_224/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_224/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_224/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_224/transpose:y:0Glstm_224/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_224/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_224/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_224/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_224/strided_slice_2StridedSlicelstm_224/transpose:y:0'lstm_224/strided_slice_2/stack:output:0)lstm_224/strided_slice_2/stack_1:output:0)lstm_224/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_224/lstm_cell_512/MatMul/ReadVariableOpReadVariableOp5lstm_224_lstm_cell_512_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_224/lstm_cell_512/MatMulMatMul!lstm_224/strided_slice_2:output:04lstm_224/lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_224/lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOp7lstm_224_lstm_cell_512_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_224/lstm_cell_512/MatMul_1MatMullstm_224/zeros:output:06lstm_224/lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_224/lstm_cell_512/addAddV2'lstm_224/lstm_cell_512/MatMul:product:0)lstm_224/lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_224/lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOp6lstm_224_lstm_cell_512_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_224/lstm_cell_512/BiasAddBiasAddlstm_224/lstm_cell_512/add:z:05lstm_224/lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_224/lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_224/lstm_cell_512/splitSplit/lstm_224/lstm_cell_512/split/split_dim:output:0'lstm_224/lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_224/lstm_cell_512/SigmoidSigmoid%lstm_224/lstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_224/lstm_cell_512/Sigmoid_1Sigmoid%lstm_224/lstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_224/lstm_cell_512/mulMul$lstm_224/lstm_cell_512/Sigmoid_1:y:0lstm_224/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_224/lstm_cell_512/ReluRelu%lstm_224/lstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_224/lstm_cell_512/mul_1Mul"lstm_224/lstm_cell_512/Sigmoid:y:0)lstm_224/lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_224/lstm_cell_512/add_1AddV2lstm_224/lstm_cell_512/mul:z:0 lstm_224/lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_224/lstm_cell_512/Sigmoid_2Sigmoid%lstm_224/lstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_224/lstm_cell_512/Relu_1Relu lstm_224/lstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_224/lstm_cell_512/mul_2Mul$lstm_224/lstm_cell_512/Sigmoid_2:y:0+lstm_224/lstm_cell_512/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_224/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_224/TensorArrayV2_1TensorListReserve/lstm_224/TensorArrayV2_1/element_shape:output:0!lstm_224/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_224/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_224/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_224/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_224/whileWhile$lstm_224/while/loop_counter:output:0*lstm_224/while/maximum_iterations:output:0lstm_224/time:output:0!lstm_224/TensorArrayV2_1:handle:0lstm_224/zeros:output:0lstm_224/zeros_1:output:0!lstm_224/strided_slice_1:output:0@lstm_224/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_224_lstm_cell_512_matmul_readvariableop_resource7lstm_224_lstm_cell_512_matmul_1_readvariableop_resource6lstm_224_lstm_cell_512_biasadd_readvariableop_resource*
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
lstm_224_while_body_3099706*'
condR
lstm_224_while_cond_3099705*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_224/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_224/TensorArrayV2Stack/TensorListStackTensorListStacklstm_224/while:output:3Blstm_224/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_224/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_224/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_224/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_224/strided_slice_3StridedSlice4lstm_224/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_224/strided_slice_3/stack:output:0)lstm_224/strided_slice_3/stack_1:output:0)lstm_224/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_224/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_224/transpose_1	Transpose4lstm_224/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_224/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_224/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_74/MatMul/ReadVariableOpReadVariableOp'dense_74_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_74/MatMulMatMul!lstm_224/strided_slice_3:output:0&dense_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_74/BiasAdd/ReadVariableOpReadVariableOp(dense_74_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_74/BiasAddBiasAdddense_74/MatMul:product:0'dense_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_74/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_74/BiasAdd/ReadVariableOp^dense_74/MatMul/ReadVariableOp.^lstm_222/lstm_cell_510/BiasAdd/ReadVariableOp-^lstm_222/lstm_cell_510/MatMul/ReadVariableOp/^lstm_222/lstm_cell_510/MatMul_1/ReadVariableOp^lstm_222/while.^lstm_223/lstm_cell_511/BiasAdd/ReadVariableOp-^lstm_223/lstm_cell_511/MatMul/ReadVariableOp/^lstm_223/lstm_cell_511/MatMul_1/ReadVariableOp^lstm_223/while.^lstm_224/lstm_cell_512/BiasAdd/ReadVariableOp-^lstm_224/lstm_cell_512/MatMul/ReadVariableOp/^lstm_224/lstm_cell_512/MatMul_1/ReadVariableOp^lstm_224/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_74/BiasAdd/ReadVariableOpdense_74/BiasAdd/ReadVariableOp2@
dense_74/MatMul/ReadVariableOpdense_74/MatMul/ReadVariableOp2^
-lstm_222/lstm_cell_510/BiasAdd/ReadVariableOp-lstm_222/lstm_cell_510/BiasAdd/ReadVariableOp2\
,lstm_222/lstm_cell_510/MatMul/ReadVariableOp,lstm_222/lstm_cell_510/MatMul/ReadVariableOp2`
.lstm_222/lstm_cell_510/MatMul_1/ReadVariableOp.lstm_222/lstm_cell_510/MatMul_1/ReadVariableOp2 
lstm_222/whilelstm_222/while2^
-lstm_223/lstm_cell_511/BiasAdd/ReadVariableOp-lstm_223/lstm_cell_511/BiasAdd/ReadVariableOp2\
,lstm_223/lstm_cell_511/MatMul/ReadVariableOp,lstm_223/lstm_cell_511/MatMul/ReadVariableOp2`
.lstm_223/lstm_cell_511/MatMul_1/ReadVariableOp.lstm_223/lstm_cell_511/MatMul_1/ReadVariableOp2 
lstm_223/whilelstm_223/while2^
-lstm_224/lstm_cell_512/BiasAdd/ReadVariableOp-lstm_224/lstm_cell_512/BiasAdd/ReadVariableOp2\
,lstm_224/lstm_cell_512/MatMul/ReadVariableOp,lstm_224/lstm_cell_512/MatMul/ReadVariableOp2`
.lstm_224/lstm_cell_512/MatMul_1/ReadVariableOp.lstm_224/lstm_cell_512/MatMul_1/ReadVariableOp2 
lstm_224/whilelstm_224/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_3101560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_512_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_512_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_512_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_512_matmul_readvariableop_resource:2(F
4while_lstm_cell_512_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_512_biasadd_readvariableop_resource:(??*while/lstm_cell_512/BiasAdd/ReadVariableOp?)while/lstm_cell_512/MatMul/ReadVariableOp?+while/lstm_cell_512/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_512/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_512_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_512/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_512_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_512/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_512/addAddV2$while/lstm_cell_512/MatMul:product:0&while/lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_512_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_512/BiasAddBiasAddwhile/lstm_cell_512/add:z:02while/lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_512/splitSplit,while/lstm_cell_512/split/split_dim:output:0$while/lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_512/SigmoidSigmoid"while/lstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_512/Sigmoid_1Sigmoid"while/lstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mulMul!while/lstm_cell_512/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_512/ReluRelu"while/lstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mul_1Mulwhile/lstm_cell_512/Sigmoid:y:0&while/lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/add_1AddV2while/lstm_cell_512/mul:z:0while/lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_512/Sigmoid_2Sigmoid"while/lstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_512/Relu_1Reluwhile/lstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mul_2Mul!while/lstm_cell_512/Sigmoid_2:y:0(while/lstm_cell_512/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_512/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_512/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_512/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_512/BiasAdd/ReadVariableOp*^while/lstm_cell_512/MatMul/ReadVariableOp,^while/lstm_cell_512/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_512_biasadd_readvariableop_resource5while_lstm_cell_512_biasadd_readvariableop_resource_0"n
4while_lstm_cell_512_matmul_1_readvariableop_resource6while_lstm_cell_512_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_512_matmul_readvariableop_resource4while_lstm_cell_512_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_512/BiasAdd/ReadVariableOp*while/lstm_cell_512/BiasAdd/ReadVariableOp2V
)while/lstm_cell_512/MatMul/ReadVariableOp)while/lstm_cell_512/MatMul/ReadVariableOp2Z
+while/lstm_cell_512/MatMul_1/ReadVariableOp+while/lstm_cell_512/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_224_layer_call_and_return_conditional_losses_3101215
inputs_0>
,lstm_cell_512_matmul_readvariableop_resource:2(@
.lstm_cell_512_matmul_1_readvariableop_resource:
(;
-lstm_cell_512_biasadd_readvariableop_resource:(
identity??$lstm_cell_512/BiasAdd/ReadVariableOp?#lstm_cell_512/MatMul/ReadVariableOp?%lstm_cell_512/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_512/MatMul/ReadVariableOpReadVariableOp,lstm_cell_512_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_512/MatMulMatMulstrided_slice_2:output:0+lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_512_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_512/MatMul_1MatMulzeros:output:0-lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_512/addAddV2lstm_cell_512/MatMul:product:0 lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_512_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_512/BiasAddBiasAddlstm_cell_512/add:z:0,lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_512/splitSplit&lstm_cell_512/split/split_dim:output:0lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_512/SigmoidSigmoidlstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_512/Sigmoid_1Sigmoidlstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_512/mulMullstm_cell_512/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_512/ReluRelulstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_512/mul_1Mullstm_cell_512/Sigmoid:y:0 lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_512/add_1AddV2lstm_cell_512/mul:z:0lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_512/Sigmoid_2Sigmoidlstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_512/Relu_1Relulstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_512/mul_2Mullstm_cell_512/Sigmoid_2:y:0"lstm_cell_512/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_512_matmul_readvariableop_resource.lstm_cell_512_matmul_1_readvariableop_resource-lstm_cell_512_biasadd_readvariableop_resource*
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
while_body_3101131*
condR
while_cond_3101130*K
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
NoOpNoOp%^lstm_cell_512/BiasAdd/ReadVariableOp$^lstm_cell_512/MatMul/ReadVariableOp&^lstm_cell_512/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_512/BiasAdd/ReadVariableOp$lstm_cell_512/BiasAdd/ReadVariableOp2J
#lstm_cell_512/MatMul/ReadVariableOp#lstm_cell_512/MatMul/ReadVariableOp2N
%lstm_cell_512/MatMul_1/ReadVariableOp%lstm_cell_512/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
/__inference_sequential_74_layer_call_fn_3098793
lstm_222_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_222_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_74_layer_call_and_return_conditional_losses_3098741o
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
_user_specified_namelstm_222_input
?8
?
while_body_3101131
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_512_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_512_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_512_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_512_matmul_readvariableop_resource:2(F
4while_lstm_cell_512_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_512_biasadd_readvariableop_resource:(??*while/lstm_cell_512/BiasAdd/ReadVariableOp?)while/lstm_cell_512/MatMul/ReadVariableOp?+while/lstm_cell_512/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_512/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_512_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_512/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_512_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_512/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_512/addAddV2$while/lstm_cell_512/MatMul:product:0&while/lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_512_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_512/BiasAddBiasAddwhile/lstm_cell_512/add:z:02while/lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_512/splitSplit,while/lstm_cell_512/split/split_dim:output:0$while/lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_512/SigmoidSigmoid"while/lstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_512/Sigmoid_1Sigmoid"while/lstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mulMul!while/lstm_cell_512/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_512/ReluRelu"while/lstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mul_1Mulwhile/lstm_cell_512/Sigmoid:y:0&while/lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/add_1AddV2while/lstm_cell_512/mul:z:0while/lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_512/Sigmoid_2Sigmoid"while/lstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_512/Relu_1Reluwhile/lstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mul_2Mul!while/lstm_cell_512/Sigmoid_2:y:0(while/lstm_cell_512/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_512/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_512/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_512/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_512/BiasAdd/ReadVariableOp*^while/lstm_cell_512/MatMul/ReadVariableOp,^while/lstm_cell_512/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_512_biasadd_readvariableop_resource5while_lstm_cell_512_biasadd_readvariableop_resource_0"n
4while_lstm_cell_512_matmul_1_readvariableop_resource6while_lstm_cell_512_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_512_matmul_readvariableop_resource4while_lstm_cell_512_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_512/BiasAdd/ReadVariableOp*while/lstm_cell_512/BiasAdd/ReadVariableOp2V
)while/lstm_cell_512/MatMul/ReadVariableOp)while/lstm_cell_512/MatMul/ReadVariableOp2Z
+while/lstm_cell_512/MatMul_1/ReadVariableOp+while/lstm_cell_512/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_512_layer_call_fn_3101893

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
J__inference_lstm_cell_512_layer_call_and_return_conditional_losses_3097541o
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
?
?
J__inference_lstm_cell_510_layer_call_and_return_conditional_losses_3101729

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
)sequential_74_lstm_222_while_cond_3096259J
Fsequential_74_lstm_222_while_sequential_74_lstm_222_while_loop_counterP
Lsequential_74_lstm_222_while_sequential_74_lstm_222_while_maximum_iterations,
(sequential_74_lstm_222_while_placeholder.
*sequential_74_lstm_222_while_placeholder_1.
*sequential_74_lstm_222_while_placeholder_2.
*sequential_74_lstm_222_while_placeholder_3L
Hsequential_74_lstm_222_while_less_sequential_74_lstm_222_strided_slice_1c
_sequential_74_lstm_222_while_sequential_74_lstm_222_while_cond_3096259___redundant_placeholder0c
_sequential_74_lstm_222_while_sequential_74_lstm_222_while_cond_3096259___redundant_placeholder1c
_sequential_74_lstm_222_while_sequential_74_lstm_222_while_cond_3096259___redundant_placeholder2c
_sequential_74_lstm_222_while_sequential_74_lstm_222_while_cond_3096259___redundant_placeholder3)
%sequential_74_lstm_222_while_identity
?
!sequential_74/lstm_222/while/LessLess(sequential_74_lstm_222_while_placeholderHsequential_74_lstm_222_while_less_sequential_74_lstm_222_strided_slice_1*
T0*
_output_shapes
: y
%sequential_74/lstm_222/while/IdentityIdentity%sequential_74/lstm_222/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_74_lstm_222_while_identity.sequential_74/lstm_222/while/Identity:output:0*(
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
while_cond_3097892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3097892___redundant_placeholder05
1while_while_cond_3097892___redundant_placeholder15
1while_while_cond_3097892___redundant_placeholder25
1while_while_cond_3097892___redundant_placeholder3
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

lstm_224_while_body_3099706.
*lstm_224_while_lstm_224_while_loop_counter4
0lstm_224_while_lstm_224_while_maximum_iterations
lstm_224_while_placeholder 
lstm_224_while_placeholder_1 
lstm_224_while_placeholder_2 
lstm_224_while_placeholder_3-
)lstm_224_while_lstm_224_strided_slice_1_0i
elstm_224_while_tensorarrayv2read_tensorlistgetitem_lstm_224_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_224_while_lstm_cell_512_matmul_readvariableop_resource_0:2(Q
?lstm_224_while_lstm_cell_512_matmul_1_readvariableop_resource_0:
(L
>lstm_224_while_lstm_cell_512_biasadd_readvariableop_resource_0:(
lstm_224_while_identity
lstm_224_while_identity_1
lstm_224_while_identity_2
lstm_224_while_identity_3
lstm_224_while_identity_4
lstm_224_while_identity_5+
'lstm_224_while_lstm_224_strided_slice_1g
clstm_224_while_tensorarrayv2read_tensorlistgetitem_lstm_224_tensorarrayunstack_tensorlistfromtensorM
;lstm_224_while_lstm_cell_512_matmul_readvariableop_resource:2(O
=lstm_224_while_lstm_cell_512_matmul_1_readvariableop_resource:
(J
<lstm_224_while_lstm_cell_512_biasadd_readvariableop_resource:(??3lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOp?2lstm_224/while/lstm_cell_512/MatMul/ReadVariableOp?4lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOp?
@lstm_224/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_224/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_224_while_tensorarrayv2read_tensorlistgetitem_lstm_224_tensorarrayunstack_tensorlistfromtensor_0lstm_224_while_placeholderIlstm_224/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_224/while/lstm_cell_512/MatMul/ReadVariableOpReadVariableOp=lstm_224_while_lstm_cell_512_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_224/while/lstm_cell_512/MatMulMatMul9lstm_224/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_224/while/lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOp?lstm_224_while_lstm_cell_512_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_224/while/lstm_cell_512/MatMul_1MatMullstm_224_while_placeholder_2<lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_224/while/lstm_cell_512/addAddV2-lstm_224/while/lstm_cell_512/MatMul:product:0/lstm_224/while/lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOp>lstm_224_while_lstm_cell_512_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_224/while/lstm_cell_512/BiasAddBiasAdd$lstm_224/while/lstm_cell_512/add:z:0;lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_224/while/lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_224/while/lstm_cell_512/splitSplit5lstm_224/while/lstm_cell_512/split/split_dim:output:0-lstm_224/while/lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_224/while/lstm_cell_512/SigmoidSigmoid+lstm_224/while/lstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_224/while/lstm_cell_512/Sigmoid_1Sigmoid+lstm_224/while/lstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_224/while/lstm_cell_512/mulMul*lstm_224/while/lstm_cell_512/Sigmoid_1:y:0lstm_224_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_224/while/lstm_cell_512/ReluRelu+lstm_224/while/lstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_224/while/lstm_cell_512/mul_1Mul(lstm_224/while/lstm_cell_512/Sigmoid:y:0/lstm_224/while/lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_224/while/lstm_cell_512/add_1AddV2$lstm_224/while/lstm_cell_512/mul:z:0&lstm_224/while/lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_224/while/lstm_cell_512/Sigmoid_2Sigmoid+lstm_224/while/lstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_224/while/lstm_cell_512/Relu_1Relu&lstm_224/while/lstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_224/while/lstm_cell_512/mul_2Mul*lstm_224/while/lstm_cell_512/Sigmoid_2:y:01lstm_224/while/lstm_cell_512/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_224/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_224_while_placeholder_1lstm_224_while_placeholder&lstm_224/while/lstm_cell_512/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_224/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_224/while/addAddV2lstm_224_while_placeholderlstm_224/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_224/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_224/while/add_1AddV2*lstm_224_while_lstm_224_while_loop_counterlstm_224/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_224/while/IdentityIdentitylstm_224/while/add_1:z:0^lstm_224/while/NoOp*
T0*
_output_shapes
: ?
lstm_224/while/Identity_1Identity0lstm_224_while_lstm_224_while_maximum_iterations^lstm_224/while/NoOp*
T0*
_output_shapes
: t
lstm_224/while/Identity_2Identitylstm_224/while/add:z:0^lstm_224/while/NoOp*
T0*
_output_shapes
: ?
lstm_224/while/Identity_3IdentityClstm_224/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_224/while/NoOp*
T0*
_output_shapes
: ?
lstm_224/while/Identity_4Identity&lstm_224/while/lstm_cell_512/mul_2:z:0^lstm_224/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_224/while/Identity_5Identity&lstm_224/while/lstm_cell_512/add_1:z:0^lstm_224/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_224/while/NoOpNoOp4^lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOp3^lstm_224/while/lstm_cell_512/MatMul/ReadVariableOp5^lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_224_while_identity lstm_224/while/Identity:output:0"?
lstm_224_while_identity_1"lstm_224/while/Identity_1:output:0"?
lstm_224_while_identity_2"lstm_224/while/Identity_2:output:0"?
lstm_224_while_identity_3"lstm_224/while/Identity_3:output:0"?
lstm_224_while_identity_4"lstm_224/while/Identity_4:output:0"?
lstm_224_while_identity_5"lstm_224/while/Identity_5:output:0"T
'lstm_224_while_lstm_224_strided_slice_1)lstm_224_while_lstm_224_strided_slice_1_0"~
<lstm_224_while_lstm_cell_512_biasadd_readvariableop_resource>lstm_224_while_lstm_cell_512_biasadd_readvariableop_resource_0"?
=lstm_224_while_lstm_cell_512_matmul_1_readvariableop_resource?lstm_224_while_lstm_cell_512_matmul_1_readvariableop_resource_0"|
;lstm_224_while_lstm_cell_512_matmul_readvariableop_resource=lstm_224_while_lstm_cell_512_matmul_readvariableop_resource_0"?
clstm_224_while_tensorarrayv2read_tensorlistgetitem_lstm_224_tensorarrayunstack_tensorlistfromtensorelstm_224_while_tensorarrayv2read_tensorlistgetitem_lstm_224_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOp3lstm_224/while/lstm_cell_512/BiasAdd/ReadVariableOp2h
2lstm_224/while/lstm_cell_512/MatMul/ReadVariableOp2lstm_224/while/lstm_cell_512/MatMul/ReadVariableOp2l
4lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOp4lstm_224/while/lstm_cell_512/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?#
?
while_body_3097059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_511_3097083_0:	d?0
while_lstm_cell_511_3097085_0:	2?,
while_lstm_cell_511_3097087_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_511_3097083:	d?.
while_lstm_cell_511_3097085:	2?*
while_lstm_cell_511_3097087:	???+while/lstm_cell_511/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_511/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_511_3097083_0while_lstm_cell_511_3097085_0while_lstm_cell_511_3097087_0*
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
J__inference_lstm_cell_511_layer_call_and_return_conditional_losses_3097045?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_511/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_511/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_511/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_511/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_511_3097083while_lstm_cell_511_3097083_0"<
while_lstm_cell_511_3097085while_lstm_cell_511_3097085_0"<
while_lstm_cell_511_3097087while_lstm_cell_511_3097087_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_511/StatefulPartitionedCall+while/lstm_cell_511/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3101416
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3101416___redundant_placeholder05
1while_while_cond_3101416___redundant_placeholder15
1while_while_cond_3101416___redundant_placeholder25
1while_while_cond_3101416___redundant_placeholder3
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
*__inference_lstm_224_layer_call_fn_3101072

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
E__inference_lstm_224_layer_call_and_return_conditional_losses_3098343o
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
E__inference_lstm_224_layer_call_and_return_conditional_losses_3101358
inputs_0>
,lstm_cell_512_matmul_readvariableop_resource:2(@
.lstm_cell_512_matmul_1_readvariableop_resource:
(;
-lstm_cell_512_biasadd_readvariableop_resource:(
identity??$lstm_cell_512/BiasAdd/ReadVariableOp?#lstm_cell_512/MatMul/ReadVariableOp?%lstm_cell_512/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_512/MatMul/ReadVariableOpReadVariableOp,lstm_cell_512_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_512/MatMulMatMulstrided_slice_2:output:0+lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_512_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_512/MatMul_1MatMulzeros:output:0-lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_512/addAddV2lstm_cell_512/MatMul:product:0 lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_512_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_512/BiasAddBiasAddlstm_cell_512/add:z:0,lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_512/splitSplit&lstm_cell_512/split/split_dim:output:0lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_512/SigmoidSigmoidlstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_512/Sigmoid_1Sigmoidlstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_512/mulMullstm_cell_512/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_512/ReluRelulstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_512/mul_1Mullstm_cell_512/Sigmoid:y:0 lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_512/add_1AddV2lstm_cell_512/mul:z:0lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_512/Sigmoid_2Sigmoidlstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_512/Relu_1Relulstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_512/mul_2Mullstm_cell_512/Sigmoid_2:y:0"lstm_cell_512/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_512_matmul_readvariableop_resource.lstm_cell_512_matmul_1_readvariableop_resource-lstm_cell_512_biasadd_readvariableop_resource*
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
while_body_3101274*
condR
while_cond_3101273*K
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
NoOpNoOp%^lstm_cell_512/BiasAdd/ReadVariableOp$^lstm_cell_512/MatMul/ReadVariableOp&^lstm_cell_512/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_512/BiasAdd/ReadVariableOp$lstm_cell_512/BiasAdd/ReadVariableOp2J
#lstm_cell_512/MatMul/ReadVariableOp#lstm_cell_512/MatMul/ReadVariableOp2N
%lstm_cell_512/MatMul_1/ReadVariableOp%lstm_cell_512/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_222_layer_call_and_return_conditional_losses_3100269

inputs?
,lstm_cell_510_matmul_readvariableop_resource:	?A
.lstm_cell_510_matmul_1_readvariableop_resource:	d?<
-lstm_cell_510_biasadd_readvariableop_resource:	?
identity??$lstm_cell_510/BiasAdd/ReadVariableOp?#lstm_cell_510/MatMul/ReadVariableOp?%lstm_cell_510/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_510/MatMul/ReadVariableOpReadVariableOp,lstm_cell_510_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_510/MatMulMatMulstrided_slice_2:output:0+lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_510_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_510/MatMul_1MatMulzeros:output:0-lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_510/addAddV2lstm_cell_510/MatMul:product:0 lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_510_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_510/BiasAddBiasAddlstm_cell_510/add:z:0,lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_510/splitSplit&lstm_cell_510/split/split_dim:output:0lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_510/SigmoidSigmoidlstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_510/Sigmoid_1Sigmoidlstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_510/mulMullstm_cell_510/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_510/ReluRelulstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_510/mul_1Mullstm_cell_510/Sigmoid:y:0 lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_510/add_1AddV2lstm_cell_510/mul:z:0lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_510/Sigmoid_2Sigmoidlstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_510/Relu_1Relulstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_510/mul_2Mullstm_cell_510/Sigmoid_2:y:0"lstm_cell_510/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_510_matmul_readvariableop_resource.lstm_cell_510_matmul_1_readvariableop_resource-lstm_cell_510_biasadd_readvariableop_resource*
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
while_body_3100185*
condR
while_cond_3100184*K
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
NoOpNoOp%^lstm_cell_510/BiasAdd/ReadVariableOp$^lstm_cell_510/MatMul/ReadVariableOp&^lstm_cell_510/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_510/BiasAdd/ReadVariableOp$lstm_cell_510/BiasAdd/ReadVariableOp2J
#lstm_cell_510/MatMul/ReadVariableOp#lstm_cell_510/MatMul/ReadVariableOp2N
%lstm_cell_510/MatMul_1/ReadVariableOp%lstm_cell_510/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_223_layer_call_and_return_conditional_losses_3100885

inputs?
,lstm_cell_511_matmul_readvariableop_resource:	d?A
.lstm_cell_511_matmul_1_readvariableop_resource:	2?<
-lstm_cell_511_biasadd_readvariableop_resource:	?
identity??$lstm_cell_511/BiasAdd/ReadVariableOp?#lstm_cell_511/MatMul/ReadVariableOp?%lstm_cell_511/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_511/MatMul/ReadVariableOpReadVariableOp,lstm_cell_511_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_511/MatMulMatMulstrided_slice_2:output:0+lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_511_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_511/MatMul_1MatMulzeros:output:0-lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_511/addAddV2lstm_cell_511/MatMul:product:0 lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_511_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_511/BiasAddBiasAddlstm_cell_511/add:z:0,lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_511/splitSplit&lstm_cell_511/split/split_dim:output:0lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_511/SigmoidSigmoidlstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_511/Sigmoid_1Sigmoidlstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_511/mulMullstm_cell_511/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_511/ReluRelulstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_511/mul_1Mullstm_cell_511/Sigmoid:y:0 lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_511/add_1AddV2lstm_cell_511/mul:z:0lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_511/Sigmoid_2Sigmoidlstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_511/Relu_1Relulstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_511/mul_2Mullstm_cell_511/Sigmoid_2:y:0"lstm_cell_511/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_511_matmul_readvariableop_resource.lstm_cell_511_matmul_1_readvariableop_resource-lstm_cell_511_biasadd_readvariableop_resource*
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
while_body_3100801*
condR
while_cond_3100800*K
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
NoOpNoOp%^lstm_cell_511/BiasAdd/ReadVariableOp$^lstm_cell_511/MatMul/ReadVariableOp&^lstm_cell_511/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_511/BiasAdd/ReadVariableOp$lstm_cell_511/BiasAdd/ReadVariableOp2J
#lstm_cell_511/MatMul/ReadVariableOp#lstm_cell_511/MatMul/ReadVariableOp2N
%lstm_cell_511/MatMul_1/ReadVariableOp%lstm_cell_511/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_512_layer_call_and_return_conditional_losses_3097395

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
?K
?
E__inference_lstm_222_layer_call_and_return_conditional_losses_3100126
inputs_0?
,lstm_cell_510_matmul_readvariableop_resource:	?A
.lstm_cell_510_matmul_1_readvariableop_resource:	d?<
-lstm_cell_510_biasadd_readvariableop_resource:	?
identity??$lstm_cell_510/BiasAdd/ReadVariableOp?#lstm_cell_510/MatMul/ReadVariableOp?%lstm_cell_510/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_510/MatMul/ReadVariableOpReadVariableOp,lstm_cell_510_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_510/MatMulMatMulstrided_slice_2:output:0+lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_510_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_510/MatMul_1MatMulzeros:output:0-lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_510/addAddV2lstm_cell_510/MatMul:product:0 lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_510_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_510/BiasAddBiasAddlstm_cell_510/add:z:0,lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_510/splitSplit&lstm_cell_510/split/split_dim:output:0lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_510/SigmoidSigmoidlstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_510/Sigmoid_1Sigmoidlstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_510/mulMullstm_cell_510/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_510/ReluRelulstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_510/mul_1Mullstm_cell_510/Sigmoid:y:0 lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_510/add_1AddV2lstm_cell_510/mul:z:0lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_510/Sigmoid_2Sigmoidlstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_510/Relu_1Relulstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_510/mul_2Mullstm_cell_510/Sigmoid_2:y:0"lstm_cell_510/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_510_matmul_readvariableop_resource.lstm_cell_510_matmul_1_readvariableop_resource-lstm_cell_510_biasadd_readvariableop_resource*
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
while_body_3100042*
condR
while_cond_3100041*K
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
NoOpNoOp%^lstm_cell_510/BiasAdd/ReadVariableOp$^lstm_cell_510/MatMul/ReadVariableOp&^lstm_cell_510/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_510/BiasAdd/ReadVariableOp$lstm_cell_510/BiasAdd/ReadVariableOp2J
#lstm_cell_510/MatMul/ReadVariableOp#lstm_cell_510/MatMul/ReadVariableOp2N
%lstm_cell_510/MatMul_1/ReadVariableOp%lstm_cell_510/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_223_layer_call_and_return_conditional_losses_3097977

inputs?
,lstm_cell_511_matmul_readvariableop_resource:	d?A
.lstm_cell_511_matmul_1_readvariableop_resource:	2?<
-lstm_cell_511_biasadd_readvariableop_resource:	?
identity??$lstm_cell_511/BiasAdd/ReadVariableOp?#lstm_cell_511/MatMul/ReadVariableOp?%lstm_cell_511/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_511/MatMul/ReadVariableOpReadVariableOp,lstm_cell_511_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_511/MatMulMatMulstrided_slice_2:output:0+lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_511_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_511/MatMul_1MatMulzeros:output:0-lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_511/addAddV2lstm_cell_511/MatMul:product:0 lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_511_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_511/BiasAddBiasAddlstm_cell_511/add:z:0,lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_511/splitSplit&lstm_cell_511/split/split_dim:output:0lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_511/SigmoidSigmoidlstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_511/Sigmoid_1Sigmoidlstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_511/mulMullstm_cell_511/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_511/ReluRelulstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_511/mul_1Mullstm_cell_511/Sigmoid:y:0 lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_511/add_1AddV2lstm_cell_511/mul:z:0lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_511/Sigmoid_2Sigmoidlstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_511/Relu_1Relulstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_511/mul_2Mullstm_cell_511/Sigmoid_2:y:0"lstm_cell_511/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_511_matmul_readvariableop_resource.lstm_cell_511_matmul_1_readvariableop_resource-lstm_cell_511_biasadd_readvariableop_resource*
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
while_body_3097893*
condR
while_cond_3097892*K
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
NoOpNoOp%^lstm_cell_511/BiasAdd/ReadVariableOp$^lstm_cell_511/MatMul/ReadVariableOp&^lstm_cell_511/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_511/BiasAdd/ReadVariableOp$lstm_cell_511/BiasAdd/ReadVariableOp2J
#lstm_cell_511/MatMul/ReadVariableOp#lstm_cell_511/MatMul/ReadVariableOp2N
%lstm_cell_511/MatMul_1/ReadVariableOp%lstm_cell_511/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_222_layer_call_fn_3099840

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
E__inference_lstm_222_layer_call_and_return_conditional_losses_3098673s
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
while_body_3097250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_511_3097274_0:	d?0
while_lstm_cell_511_3097276_0:	2?,
while_lstm_cell_511_3097278_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_511_3097274:	d?.
while_lstm_cell_511_3097276:	2?*
while_lstm_cell_511_3097278:	???+while/lstm_cell_511/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_511/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_511_3097274_0while_lstm_cell_511_3097276_0while_lstm_cell_511_3097278_0*
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
J__inference_lstm_cell_511_layer_call_and_return_conditional_losses_3097191?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_511/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_511/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_511/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_511/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_511_3097274while_lstm_cell_511_3097274_0"<
while_lstm_cell_511_3097276while_lstm_cell_511_3097276_0"<
while_lstm_cell_511_3097278while_lstm_cell_511_3097278_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_511/StatefulPartitionedCall+while/lstm_cell_511/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_510_layer_call_and_return_conditional_losses_3096841

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
?
?
J__inference_lstm_cell_511_layer_call_and_return_conditional_losses_3101859

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

?
/__inference_sequential_74_layer_call_fn_3098915

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
J__inference_sequential_74_layer_call_and_return_conditional_losses_3098152o
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
?
while_cond_3100514
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3100514___redundant_placeholder05
1while_while_cond_3100514___redundant_placeholder15
1while_while_cond_3100514___redundant_placeholder25
1while_while_cond_3100514___redundant_placeholder3
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
?
E__inference_lstm_223_layer_call_and_return_conditional_losses_3097128

inputs(
lstm_cell_511_3097046:	d?(
lstm_cell_511_3097048:	2?$
lstm_cell_511_3097050:	?
identity??%lstm_cell_511/StatefulPartitionedCall?while;
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
%lstm_cell_511/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_511_3097046lstm_cell_511_3097048lstm_cell_511_3097050*
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
J__inference_lstm_cell_511_layer_call_and_return_conditional_losses_3097045n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_511_3097046lstm_cell_511_3097048lstm_cell_511_3097050*
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
while_body_3097059*
condR
while_cond_3097058*K
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
NoOpNoOp&^lstm_cell_511/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_511/StatefulPartitionedCall%lstm_cell_511/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
J__inference_sequential_74_layer_call_and_return_conditional_losses_3098152

inputs#
lstm_222_3097828:	?#
lstm_222_3097830:	d?
lstm_222_3097832:	?#
lstm_223_3097978:	d?#
lstm_223_3097980:	2?
lstm_223_3097982:	?"
lstm_224_3098128:2("
lstm_224_3098130:
(
lstm_224_3098132:("
dense_74_3098146:

dense_74_3098148:
identity?? dense_74/StatefulPartitionedCall? lstm_222/StatefulPartitionedCall? lstm_223/StatefulPartitionedCall? lstm_224/StatefulPartitionedCall?
 lstm_222/StatefulPartitionedCallStatefulPartitionedCallinputslstm_222_3097828lstm_222_3097830lstm_222_3097832*
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
E__inference_lstm_222_layer_call_and_return_conditional_losses_3097827?
 lstm_223/StatefulPartitionedCallStatefulPartitionedCall)lstm_222/StatefulPartitionedCall:output:0lstm_223_3097978lstm_223_3097980lstm_223_3097982*
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
E__inference_lstm_223_layer_call_and_return_conditional_losses_3097977?
 lstm_224/StatefulPartitionedCallStatefulPartitionedCall)lstm_223/StatefulPartitionedCall:output:0lstm_224_3098128lstm_224_3098130lstm_224_3098132*
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
E__inference_lstm_224_layer_call_and_return_conditional_losses_3098127?
 dense_74/StatefulPartitionedCallStatefulPartitionedCall)lstm_224/StatefulPartitionedCall:output:0dense_74_3098146dense_74_3098148*
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
E__inference_dense_74_layer_call_and_return_conditional_losses_3098145x
IdentityIdentity)dense_74/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_74/StatefulPartitionedCall!^lstm_222/StatefulPartitionedCall!^lstm_223/StatefulPartitionedCall!^lstm_224/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2D
 lstm_222/StatefulPartitionedCall lstm_222/StatefulPartitionedCall2D
 lstm_223/StatefulPartitionedCall lstm_223/StatefulPartitionedCall2D
 lstm_224/StatefulPartitionedCall lstm_224/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_512_layer_call_and_return_conditional_losses_3101925

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
?J
?
E__inference_lstm_224_layer_call_and_return_conditional_losses_3098127

inputs>
,lstm_cell_512_matmul_readvariableop_resource:2(@
.lstm_cell_512_matmul_1_readvariableop_resource:
(;
-lstm_cell_512_biasadd_readvariableop_resource:(
identity??$lstm_cell_512/BiasAdd/ReadVariableOp?#lstm_cell_512/MatMul/ReadVariableOp?%lstm_cell_512/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_512/MatMul/ReadVariableOpReadVariableOp,lstm_cell_512_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_512/MatMulMatMulstrided_slice_2:output:0+lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_512_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_512/MatMul_1MatMulzeros:output:0-lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_512/addAddV2lstm_cell_512/MatMul:product:0 lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_512_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_512/BiasAddBiasAddlstm_cell_512/add:z:0,lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_512/splitSplit&lstm_cell_512/split/split_dim:output:0lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_512/SigmoidSigmoidlstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_512/Sigmoid_1Sigmoidlstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_512/mulMullstm_cell_512/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_512/ReluRelulstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_512/mul_1Mullstm_cell_512/Sigmoid:y:0 lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_512/add_1AddV2lstm_cell_512/mul:z:0lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_512/Sigmoid_2Sigmoidlstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_512/Relu_1Relulstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_512/mul_2Mullstm_cell_512/Sigmoid_2:y:0"lstm_cell_512/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_512_matmul_readvariableop_resource.lstm_cell_512_matmul_1_readvariableop_resource-lstm_cell_512_biasadd_readvariableop_resource*
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
while_body_3098043*
condR
while_cond_3098042*K
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
NoOpNoOp%^lstm_cell_512/BiasAdd/ReadVariableOp$^lstm_cell_512/MatMul/ReadVariableOp&^lstm_cell_512/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_512/BiasAdd/ReadVariableOp$lstm_cell_512/BiasAdd/ReadVariableOp2J
#lstm_cell_512/MatMul/ReadVariableOp#lstm_cell_512/MatMul/ReadVariableOp2N
%lstm_cell_512/MatMul_1/ReadVariableOp%lstm_cell_512/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_3098588
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3098588___redundant_placeholder05
1while_while_cond_3098588___redundant_placeholder15
1while_while_cond_3098588___redundant_placeholder25
1while_while_cond_3098588___redundant_placeholder3
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
J__inference_lstm_cell_511_layer_call_and_return_conditional_losses_3097191

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
E__inference_dense_74_layer_call_and_return_conditional_losses_3101663

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
?K
?
E__inference_lstm_223_layer_call_and_return_conditional_losses_3100742
inputs_0?
,lstm_cell_511_matmul_readvariableop_resource:	d?A
.lstm_cell_511_matmul_1_readvariableop_resource:	2?<
-lstm_cell_511_biasadd_readvariableop_resource:	?
identity??$lstm_cell_511/BiasAdd/ReadVariableOp?#lstm_cell_511/MatMul/ReadVariableOp?%lstm_cell_511/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_511/MatMul/ReadVariableOpReadVariableOp,lstm_cell_511_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_511/MatMulMatMulstrided_slice_2:output:0+lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_511_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_511/MatMul_1MatMulzeros:output:0-lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_511/addAddV2lstm_cell_511/MatMul:product:0 lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_511_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_511/BiasAddBiasAddlstm_cell_511/add:z:0,lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_511/splitSplit&lstm_cell_511/split/split_dim:output:0lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_511/SigmoidSigmoidlstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_511/Sigmoid_1Sigmoidlstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_511/mulMullstm_cell_511/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_511/ReluRelulstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_511/mul_1Mullstm_cell_511/Sigmoid:y:0 lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_511/add_1AddV2lstm_cell_511/mul:z:0lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_511/Sigmoid_2Sigmoidlstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_511/Relu_1Relulstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_511/mul_2Mullstm_cell_511/Sigmoid_2:y:0"lstm_cell_511/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_511_matmul_readvariableop_resource.lstm_cell_511_matmul_1_readvariableop_resource-lstm_cell_511_biasadd_readvariableop_resource*
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
while_body_3100658*
condR
while_cond_3100657*K
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
NoOpNoOp%^lstm_cell_511/BiasAdd/ReadVariableOp$^lstm_cell_511/MatMul/ReadVariableOp&^lstm_cell_511/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_511/BiasAdd/ReadVariableOp$lstm_cell_511/BiasAdd/ReadVariableOp2J
#lstm_cell_511/MatMul/ReadVariableOp#lstm_cell_511/MatMul/ReadVariableOp2N
%lstm_cell_511/MatMul_1/ReadVariableOp%lstm_cell_511/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?W
?
 __inference__traced_save_3102100
file_prefix.
*savev2_dense_74_kernel_read_readvariableop,
(savev2_dense_74_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_222_lstm_cell_222_kernel_read_readvariableopF
Bsavev2_lstm_222_lstm_cell_222_recurrent_kernel_read_readvariableop:
6savev2_lstm_222_lstm_cell_222_bias_read_readvariableop<
8savev2_lstm_223_lstm_cell_223_kernel_read_readvariableopF
Bsavev2_lstm_223_lstm_cell_223_recurrent_kernel_read_readvariableop:
6savev2_lstm_223_lstm_cell_223_bias_read_readvariableop<
8savev2_lstm_224_lstm_cell_224_kernel_read_readvariableopF
Bsavev2_lstm_224_lstm_cell_224_recurrent_kernel_read_readvariableop:
6savev2_lstm_224_lstm_cell_224_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_74_kernel_m_read_readvariableop3
/savev2_adam_dense_74_bias_m_read_readvariableopC
?savev2_adam_lstm_222_lstm_cell_222_kernel_m_read_readvariableopM
Isavev2_adam_lstm_222_lstm_cell_222_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_222_lstm_cell_222_bias_m_read_readvariableopC
?savev2_adam_lstm_223_lstm_cell_223_kernel_m_read_readvariableopM
Isavev2_adam_lstm_223_lstm_cell_223_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_223_lstm_cell_223_bias_m_read_readvariableopC
?savev2_adam_lstm_224_lstm_cell_224_kernel_m_read_readvariableopM
Isavev2_adam_lstm_224_lstm_cell_224_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_224_lstm_cell_224_bias_m_read_readvariableop5
1savev2_adam_dense_74_kernel_v_read_readvariableop3
/savev2_adam_dense_74_bias_v_read_readvariableopC
?savev2_adam_lstm_222_lstm_cell_222_kernel_v_read_readvariableopM
Isavev2_adam_lstm_222_lstm_cell_222_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_222_lstm_cell_222_bias_v_read_readvariableopC
?savev2_adam_lstm_223_lstm_cell_223_kernel_v_read_readvariableopM
Isavev2_adam_lstm_223_lstm_cell_223_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_223_lstm_cell_223_bias_v_read_readvariableopC
?savev2_adam_lstm_224_lstm_cell_224_kernel_v_read_readvariableopM
Isavev2_adam_lstm_224_lstm_cell_224_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_224_lstm_cell_224_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_74_kernel_read_readvariableop(savev2_dense_74_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_222_lstm_cell_222_kernel_read_readvariableopBsavev2_lstm_222_lstm_cell_222_recurrent_kernel_read_readvariableop6savev2_lstm_222_lstm_cell_222_bias_read_readvariableop8savev2_lstm_223_lstm_cell_223_kernel_read_readvariableopBsavev2_lstm_223_lstm_cell_223_recurrent_kernel_read_readvariableop6savev2_lstm_223_lstm_cell_223_bias_read_readvariableop8savev2_lstm_224_lstm_cell_224_kernel_read_readvariableopBsavev2_lstm_224_lstm_cell_224_recurrent_kernel_read_readvariableop6savev2_lstm_224_lstm_cell_224_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_74_kernel_m_read_readvariableop/savev2_adam_dense_74_bias_m_read_readvariableop?savev2_adam_lstm_222_lstm_cell_222_kernel_m_read_readvariableopIsavev2_adam_lstm_222_lstm_cell_222_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_222_lstm_cell_222_bias_m_read_readvariableop?savev2_adam_lstm_223_lstm_cell_223_kernel_m_read_readvariableopIsavev2_adam_lstm_223_lstm_cell_223_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_223_lstm_cell_223_bias_m_read_readvariableop?savev2_adam_lstm_224_lstm_cell_224_kernel_m_read_readvariableopIsavev2_adam_lstm_224_lstm_cell_224_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_224_lstm_cell_224_bias_m_read_readvariableop1savev2_adam_dense_74_kernel_v_read_readvariableop/savev2_adam_dense_74_bias_v_read_readvariableop?savev2_adam_lstm_222_lstm_cell_222_kernel_v_read_readvariableopIsavev2_adam_lstm_222_lstm_cell_222_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_222_lstm_cell_222_bias_v_read_readvariableop?savev2_adam_lstm_223_lstm_cell_223_kernel_v_read_readvariableopIsavev2_adam_lstm_223_lstm_cell_223_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_223_lstm_cell_223_bias_v_read_readvariableop?savev2_adam_lstm_224_lstm_cell_224_kernel_v_read_readvariableopIsavev2_adam_lstm_224_lstm_cell_224_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_224_lstm_cell_224_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
/__inference_lstm_cell_511_layer_call_fn_3101778

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
J__inference_lstm_cell_511_layer_call_and_return_conditional_losses_3097045o
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
while_body_3100801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_511_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_511_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_511_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_511_matmul_readvariableop_resource:	d?G
4while_lstm_cell_511_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_511_biasadd_readvariableop_resource:	???*while/lstm_cell_511/BiasAdd/ReadVariableOp?)while/lstm_cell_511/MatMul/ReadVariableOp?+while/lstm_cell_511/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_511/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_511_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_511/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_511_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_511/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_511/addAddV2$while/lstm_cell_511/MatMul:product:0&while/lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_511_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_511/BiasAddBiasAddwhile/lstm_cell_511/add:z:02while/lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_511/splitSplit,while/lstm_cell_511/split/split_dim:output:0$while/lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_511/SigmoidSigmoid"while/lstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_511/Sigmoid_1Sigmoid"while/lstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mulMul!while/lstm_cell_511/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_511/ReluRelu"while/lstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mul_1Mulwhile/lstm_cell_511/Sigmoid:y:0&while/lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/add_1AddV2while/lstm_cell_511/mul:z:0while/lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_511/Sigmoid_2Sigmoid"while/lstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_511/Relu_1Reluwhile/lstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mul_2Mul!while/lstm_cell_511/Sigmoid_2:y:0(while/lstm_cell_511/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_511/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_511/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_511/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_511/BiasAdd/ReadVariableOp*^while/lstm_cell_511/MatMul/ReadVariableOp,^while/lstm_cell_511/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_511_biasadd_readvariableop_resource5while_lstm_cell_511_biasadd_readvariableop_resource_0"n
4while_lstm_cell_511_matmul_1_readvariableop_resource6while_lstm_cell_511_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_511_matmul_readvariableop_resource4while_lstm_cell_511_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_511/BiasAdd/ReadVariableOp*while/lstm_cell_511/BiasAdd/ReadVariableOp2V
)while/lstm_cell_511/MatMul/ReadVariableOp)while/lstm_cell_511/MatMul/ReadVariableOp2Z
+while/lstm_cell_511/MatMul_1/ReadVariableOp+while/lstm_cell_511/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3100657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3100657___redundant_placeholder05
1while_while_cond_3100657___redundant_placeholder15
1while_while_cond_3100657___redundant_placeholder25
1while_while_cond_3100657___redundant_placeholder3
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

lstm_222_while_body_3099428.
*lstm_222_while_lstm_222_while_loop_counter4
0lstm_222_while_lstm_222_while_maximum_iterations
lstm_222_while_placeholder 
lstm_222_while_placeholder_1 
lstm_222_while_placeholder_2 
lstm_222_while_placeholder_3-
)lstm_222_while_lstm_222_strided_slice_1_0i
elstm_222_while_tensorarrayv2read_tensorlistgetitem_lstm_222_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_222_while_lstm_cell_510_matmul_readvariableop_resource_0:	?R
?lstm_222_while_lstm_cell_510_matmul_1_readvariableop_resource_0:	d?M
>lstm_222_while_lstm_cell_510_biasadd_readvariableop_resource_0:	?
lstm_222_while_identity
lstm_222_while_identity_1
lstm_222_while_identity_2
lstm_222_while_identity_3
lstm_222_while_identity_4
lstm_222_while_identity_5+
'lstm_222_while_lstm_222_strided_slice_1g
clstm_222_while_tensorarrayv2read_tensorlistgetitem_lstm_222_tensorarrayunstack_tensorlistfromtensorN
;lstm_222_while_lstm_cell_510_matmul_readvariableop_resource:	?P
=lstm_222_while_lstm_cell_510_matmul_1_readvariableop_resource:	d?K
<lstm_222_while_lstm_cell_510_biasadd_readvariableop_resource:	???3lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOp?2lstm_222/while/lstm_cell_510/MatMul/ReadVariableOp?4lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOp?
@lstm_222/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_222/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_222_while_tensorarrayv2read_tensorlistgetitem_lstm_222_tensorarrayunstack_tensorlistfromtensor_0lstm_222_while_placeholderIlstm_222/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_222/while/lstm_cell_510/MatMul/ReadVariableOpReadVariableOp=lstm_222_while_lstm_cell_510_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_222/while/lstm_cell_510/MatMulMatMul9lstm_222/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_222/while/lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOp?lstm_222_while_lstm_cell_510_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_222/while/lstm_cell_510/MatMul_1MatMullstm_222_while_placeholder_2<lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_222/while/lstm_cell_510/addAddV2-lstm_222/while/lstm_cell_510/MatMul:product:0/lstm_222/while/lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOp>lstm_222_while_lstm_cell_510_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_222/while/lstm_cell_510/BiasAddBiasAdd$lstm_222/while/lstm_cell_510/add:z:0;lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_222/while/lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_222/while/lstm_cell_510/splitSplit5lstm_222/while/lstm_cell_510/split/split_dim:output:0-lstm_222/while/lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_222/while/lstm_cell_510/SigmoidSigmoid+lstm_222/while/lstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_222/while/lstm_cell_510/Sigmoid_1Sigmoid+lstm_222/while/lstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_222/while/lstm_cell_510/mulMul*lstm_222/while/lstm_cell_510/Sigmoid_1:y:0lstm_222_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_222/while/lstm_cell_510/ReluRelu+lstm_222/while/lstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_222/while/lstm_cell_510/mul_1Mul(lstm_222/while/lstm_cell_510/Sigmoid:y:0/lstm_222/while/lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_222/while/lstm_cell_510/add_1AddV2$lstm_222/while/lstm_cell_510/mul:z:0&lstm_222/while/lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_222/while/lstm_cell_510/Sigmoid_2Sigmoid+lstm_222/while/lstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_222/while/lstm_cell_510/Relu_1Relu&lstm_222/while/lstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_222/while/lstm_cell_510/mul_2Mul*lstm_222/while/lstm_cell_510/Sigmoid_2:y:01lstm_222/while/lstm_cell_510/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_222/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_222_while_placeholder_1lstm_222_while_placeholder&lstm_222/while/lstm_cell_510/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_222/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_222/while/addAddV2lstm_222_while_placeholderlstm_222/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_222/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_222/while/add_1AddV2*lstm_222_while_lstm_222_while_loop_counterlstm_222/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_222/while/IdentityIdentitylstm_222/while/add_1:z:0^lstm_222/while/NoOp*
T0*
_output_shapes
: ?
lstm_222/while/Identity_1Identity0lstm_222_while_lstm_222_while_maximum_iterations^lstm_222/while/NoOp*
T0*
_output_shapes
: t
lstm_222/while/Identity_2Identitylstm_222/while/add:z:0^lstm_222/while/NoOp*
T0*
_output_shapes
: ?
lstm_222/while/Identity_3IdentityClstm_222/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_222/while/NoOp*
T0*
_output_shapes
: ?
lstm_222/while/Identity_4Identity&lstm_222/while/lstm_cell_510/mul_2:z:0^lstm_222/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_222/while/Identity_5Identity&lstm_222/while/lstm_cell_510/add_1:z:0^lstm_222/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_222/while/NoOpNoOp4^lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOp3^lstm_222/while/lstm_cell_510/MatMul/ReadVariableOp5^lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_222_while_identity lstm_222/while/Identity:output:0"?
lstm_222_while_identity_1"lstm_222/while/Identity_1:output:0"?
lstm_222_while_identity_2"lstm_222/while/Identity_2:output:0"?
lstm_222_while_identity_3"lstm_222/while/Identity_3:output:0"?
lstm_222_while_identity_4"lstm_222/while/Identity_4:output:0"?
lstm_222_while_identity_5"lstm_222/while/Identity_5:output:0"T
'lstm_222_while_lstm_222_strided_slice_1)lstm_222_while_lstm_222_strided_slice_1_0"~
<lstm_222_while_lstm_cell_510_biasadd_readvariableop_resource>lstm_222_while_lstm_cell_510_biasadd_readvariableop_resource_0"?
=lstm_222_while_lstm_cell_510_matmul_1_readvariableop_resource?lstm_222_while_lstm_cell_510_matmul_1_readvariableop_resource_0"|
;lstm_222_while_lstm_cell_510_matmul_readvariableop_resource=lstm_222_while_lstm_cell_510_matmul_readvariableop_resource_0"?
clstm_222_while_tensorarrayv2read_tensorlistgetitem_lstm_222_tensorarrayunstack_tensorlistfromtensorelstm_222_while_tensorarrayv2read_tensorlistgetitem_lstm_222_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOp3lstm_222/while/lstm_cell_510/BiasAdd/ReadVariableOp2h
2lstm_222/while/lstm_cell_510/MatMul/ReadVariableOp2lstm_222/while/lstm_cell_510/MatMul/ReadVariableOp2l
4lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOp4lstm_222/while/lstm_cell_510/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3097743
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_510_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_510_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_510_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_510_matmul_readvariableop_resource:	?G
4while_lstm_cell_510_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_510_biasadd_readvariableop_resource:	???*while/lstm_cell_510/BiasAdd/ReadVariableOp?)while/lstm_cell_510/MatMul/ReadVariableOp?+while/lstm_cell_510/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_510/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_510_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_510/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_510_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_510/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_510/addAddV2$while/lstm_cell_510/MatMul:product:0&while/lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_510_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_510/BiasAddBiasAddwhile/lstm_cell_510/add:z:02while/lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_510/splitSplit,while/lstm_cell_510/split/split_dim:output:0$while/lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_510/SigmoidSigmoid"while/lstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_510/Sigmoid_1Sigmoid"while/lstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mulMul!while/lstm_cell_510/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_510/ReluRelu"while/lstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mul_1Mulwhile/lstm_cell_510/Sigmoid:y:0&while/lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/add_1AddV2while/lstm_cell_510/mul:z:0while/lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_510/Sigmoid_2Sigmoid"while/lstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_510/Relu_1Reluwhile/lstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mul_2Mul!while/lstm_cell_510/Sigmoid_2:y:0(while/lstm_cell_510/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_510/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_510/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_510/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_510/BiasAdd/ReadVariableOp*^while/lstm_cell_510/MatMul/ReadVariableOp,^while/lstm_cell_510/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_510_biasadd_readvariableop_resource5while_lstm_cell_510_biasadd_readvariableop_resource_0"n
4while_lstm_cell_510_matmul_1_readvariableop_resource6while_lstm_cell_510_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_510_matmul_readvariableop_resource4while_lstm_cell_510_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_510/BiasAdd/ReadVariableOp*while/lstm_cell_510/BiasAdd/ReadVariableOp2V
)while/lstm_cell_510/MatMul/ReadVariableOp)while/lstm_cell_510/MatMul/ReadVariableOp2Z
+while/lstm_cell_510/MatMul_1/ReadVariableOp+while/lstm_cell_510/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_74_layer_call_and_return_conditional_losses_3098741

inputs#
lstm_222_3098714:	?#
lstm_222_3098716:	d?
lstm_222_3098718:	?#
lstm_223_3098721:	d?#
lstm_223_3098723:	2?
lstm_223_3098725:	?"
lstm_224_3098728:2("
lstm_224_3098730:
(
lstm_224_3098732:("
dense_74_3098735:

dense_74_3098737:
identity?? dense_74/StatefulPartitionedCall? lstm_222/StatefulPartitionedCall? lstm_223/StatefulPartitionedCall? lstm_224/StatefulPartitionedCall?
 lstm_222/StatefulPartitionedCallStatefulPartitionedCallinputslstm_222_3098714lstm_222_3098716lstm_222_3098718*
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
E__inference_lstm_222_layer_call_and_return_conditional_losses_3098673?
 lstm_223/StatefulPartitionedCallStatefulPartitionedCall)lstm_222/StatefulPartitionedCall:output:0lstm_223_3098721lstm_223_3098723lstm_223_3098725*
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
E__inference_lstm_223_layer_call_and_return_conditional_losses_3098508?
 lstm_224/StatefulPartitionedCallStatefulPartitionedCall)lstm_223/StatefulPartitionedCall:output:0lstm_224_3098728lstm_224_3098730lstm_224_3098732*
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
E__inference_lstm_224_layer_call_and_return_conditional_losses_3098343?
 dense_74/StatefulPartitionedCallStatefulPartitionedCall)lstm_224/StatefulPartitionedCall:output:0dense_74_3098735dense_74_3098737*
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
E__inference_dense_74_layer_call_and_return_conditional_losses_3098145x
IdentityIdentity)dense_74/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_74/StatefulPartitionedCall!^lstm_222/StatefulPartitionedCall!^lstm_223/StatefulPartitionedCall!^lstm_224/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2D
 lstm_222/StatefulPartitionedCall lstm_222/StatefulPartitionedCall2D
 lstm_223/StatefulPartitionedCall lstm_223/StatefulPartitionedCall2D
 lstm_224/StatefulPartitionedCall lstm_224/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_222_layer_call_fn_3099818
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
E__inference_lstm_222_layer_call_and_return_conditional_losses_3096969|
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

?
lstm_222_while_cond_3099427.
*lstm_222_while_lstm_222_while_loop_counter4
0lstm_222_while_lstm_222_while_maximum_iterations
lstm_222_while_placeholder 
lstm_222_while_placeholder_1 
lstm_222_while_placeholder_2 
lstm_222_while_placeholder_30
,lstm_222_while_less_lstm_222_strided_slice_1G
Clstm_222_while_lstm_222_while_cond_3099427___redundant_placeholder0G
Clstm_222_while_lstm_222_while_cond_3099427___redundant_placeholder1G
Clstm_222_while_lstm_222_while_cond_3099427___redundant_placeholder2G
Clstm_222_while_lstm_222_while_cond_3099427___redundant_placeholder3
lstm_222_while_identity
?
lstm_222/while/LessLesslstm_222_while_placeholder,lstm_222_while_less_lstm_222_strided_slice_1*
T0*
_output_shapes
: ]
lstm_222/while/IdentityIdentitylstm_222/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_222_while_identity lstm_222/while/Identity:output:0*(
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
while_cond_3098423
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3098423___redundant_placeholder05
1while_while_cond_3098423___redundant_placeholder15
1while_while_cond_3098423___redundant_placeholder25
1while_while_cond_3098423___redundant_placeholder3
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
while_body_3098259
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_512_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_512_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_512_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_512_matmul_readvariableop_resource:2(F
4while_lstm_cell_512_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_512_biasadd_readvariableop_resource:(??*while/lstm_cell_512/BiasAdd/ReadVariableOp?)while/lstm_cell_512/MatMul/ReadVariableOp?+while/lstm_cell_512/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_512/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_512_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_512/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_512_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_512/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_512/addAddV2$while/lstm_cell_512/MatMul:product:0&while/lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_512_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_512/BiasAddBiasAddwhile/lstm_cell_512/add:z:02while/lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_512/splitSplit,while/lstm_cell_512/split/split_dim:output:0$while/lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_512/SigmoidSigmoid"while/lstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_512/Sigmoid_1Sigmoid"while/lstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mulMul!while/lstm_cell_512/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_512/ReluRelu"while/lstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mul_1Mulwhile/lstm_cell_512/Sigmoid:y:0&while/lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/add_1AddV2while/lstm_cell_512/mul:z:0while/lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_512/Sigmoid_2Sigmoid"while/lstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_512/Relu_1Reluwhile/lstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mul_2Mul!while/lstm_cell_512/Sigmoid_2:y:0(while/lstm_cell_512/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_512/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_512/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_512/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_512/BiasAdd/ReadVariableOp*^while/lstm_cell_512/MatMul/ReadVariableOp,^while/lstm_cell_512/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_512_biasadd_readvariableop_resource5while_lstm_cell_512_biasadd_readvariableop_resource_0"n
4while_lstm_cell_512_matmul_1_readvariableop_resource6while_lstm_cell_512_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_512_matmul_readvariableop_resource4while_lstm_cell_512_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_512/BiasAdd/ReadVariableOp*while/lstm_cell_512/BiasAdd/ReadVariableOp2V
)while/lstm_cell_512/MatMul/ReadVariableOp)while/lstm_cell_512/MatMul/ReadVariableOp2Z
+while/lstm_cell_512/MatMul_1/ReadVariableOp+while/lstm_cell_512/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3099898
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3099898___redundant_placeholder05
1while_while_cond_3099898___redundant_placeholder15
1while_while_cond_3099898___redundant_placeholder25
1while_while_cond_3099898___redundant_placeholder3
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
while_body_3100658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_511_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_511_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_511_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_511_matmul_readvariableop_resource:	d?G
4while_lstm_cell_511_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_511_biasadd_readvariableop_resource:	???*while/lstm_cell_511/BiasAdd/ReadVariableOp?)while/lstm_cell_511/MatMul/ReadVariableOp?+while/lstm_cell_511/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_511/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_511_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_511/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_511_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_511/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_511/addAddV2$while/lstm_cell_511/MatMul:product:0&while/lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_511_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_511/BiasAddBiasAddwhile/lstm_cell_511/add:z:02while/lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_511/splitSplit,while/lstm_cell_511/split/split_dim:output:0$while/lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_511/SigmoidSigmoid"while/lstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_511/Sigmoid_1Sigmoid"while/lstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mulMul!while/lstm_cell_511/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_511/ReluRelu"while/lstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mul_1Mulwhile/lstm_cell_511/Sigmoid:y:0&while/lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/add_1AddV2while/lstm_cell_511/mul:z:0while/lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_511/Sigmoid_2Sigmoid"while/lstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_511/Relu_1Reluwhile/lstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mul_2Mul!while/lstm_cell_511/Sigmoid_2:y:0(while/lstm_cell_511/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_511/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_511/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_511/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_511/BiasAdd/ReadVariableOp*^while/lstm_cell_511/MatMul/ReadVariableOp,^while/lstm_cell_511/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_511_biasadd_readvariableop_resource5while_lstm_cell_511_biasadd_readvariableop_resource_0"n
4while_lstm_cell_511_matmul_1_readvariableop_resource6while_lstm_cell_511_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_511_matmul_readvariableop_resource4while_lstm_cell_511_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_511/BiasAdd/ReadVariableOp*while/lstm_cell_511/BiasAdd/ReadVariableOp2V
)while/lstm_cell_511/MatMul/ReadVariableOp)while/lstm_cell_511/MatMul/ReadVariableOp2Z
+while/lstm_cell_511/MatMul_1/ReadVariableOp+while/lstm_cell_511/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_510_layer_call_fn_3101697

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
J__inference_lstm_cell_510_layer_call_and_return_conditional_losses_3096841o
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
while_body_3101274
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_512_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_512_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_512_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_512_matmul_readvariableop_resource:2(F
4while_lstm_cell_512_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_512_biasadd_readvariableop_resource:(??*while/lstm_cell_512/BiasAdd/ReadVariableOp?)while/lstm_cell_512/MatMul/ReadVariableOp?+while/lstm_cell_512/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_512/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_512_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_512/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_512_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_512/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_512/addAddV2$while/lstm_cell_512/MatMul:product:0&while/lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_512_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_512/BiasAddBiasAddwhile/lstm_cell_512/add:z:02while/lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_512/splitSplit,while/lstm_cell_512/split/split_dim:output:0$while/lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_512/SigmoidSigmoid"while/lstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_512/Sigmoid_1Sigmoid"while/lstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mulMul!while/lstm_cell_512/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_512/ReluRelu"while/lstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mul_1Mulwhile/lstm_cell_512/Sigmoid:y:0&while/lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/add_1AddV2while/lstm_cell_512/mul:z:0while/lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_512/Sigmoid_2Sigmoid"while/lstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_512/Relu_1Reluwhile/lstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_512/mul_2Mul!while/lstm_cell_512/Sigmoid_2:y:0(while/lstm_cell_512/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_512/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_512/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_512/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_512/BiasAdd/ReadVariableOp*^while/lstm_cell_512/MatMul/ReadVariableOp,^while/lstm_cell_512/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_512_biasadd_readvariableop_resource5while_lstm_cell_512_biasadd_readvariableop_resource_0"n
4while_lstm_cell_512_matmul_1_readvariableop_resource6while_lstm_cell_512_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_512_matmul_readvariableop_resource4while_lstm_cell_512_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_512/BiasAdd/ReadVariableOp*while/lstm_cell_512/BiasAdd/ReadVariableOp2V
)while/lstm_cell_512/MatMul/ReadVariableOp)while/lstm_cell_512/MatMul/ReadVariableOp2Z
+while/lstm_cell_512/MatMul_1/ReadVariableOp+while/lstm_cell_512/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3100328
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_510_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_510_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_510_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_510_matmul_readvariableop_resource:	?G
4while_lstm_cell_510_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_510_biasadd_readvariableop_resource:	???*while/lstm_cell_510/BiasAdd/ReadVariableOp?)while/lstm_cell_510/MatMul/ReadVariableOp?+while/lstm_cell_510/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_510/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_510_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_510/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_510_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_510/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_510/addAddV2$while/lstm_cell_510/MatMul:product:0&while/lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_510_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_510/BiasAddBiasAddwhile/lstm_cell_510/add:z:02while/lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_510/splitSplit,while/lstm_cell_510/split/split_dim:output:0$while/lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_510/SigmoidSigmoid"while/lstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_510/Sigmoid_1Sigmoid"while/lstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mulMul!while/lstm_cell_510/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_510/ReluRelu"while/lstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mul_1Mulwhile/lstm_cell_510/Sigmoid:y:0&while/lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/add_1AddV2while/lstm_cell_510/mul:z:0while/lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_510/Sigmoid_2Sigmoid"while/lstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_510/Relu_1Reluwhile/lstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_510/mul_2Mul!while/lstm_cell_510/Sigmoid_2:y:0(while/lstm_cell_510/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_510/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_510/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_510/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_510/BiasAdd/ReadVariableOp*^while/lstm_cell_510/MatMul/ReadVariableOp,^while/lstm_cell_510/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_510_biasadd_readvariableop_resource5while_lstm_cell_510_biasadd_readvariableop_resource_0"n
4while_lstm_cell_510_matmul_1_readvariableop_resource6while_lstm_cell_510_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_510_matmul_readvariableop_resource4while_lstm_cell_510_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_510/BiasAdd/ReadVariableOp*while/lstm_cell_510/BiasAdd/ReadVariableOp2V
)while/lstm_cell_510/MatMul/ReadVariableOp)while/lstm_cell_510/MatMul/ReadVariableOp2Z
+while/lstm_cell_510/MatMul_1/ReadVariableOp+while/lstm_cell_510/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3100944
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_511_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_511_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_511_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_511_matmul_readvariableop_resource:	d?G
4while_lstm_cell_511_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_511_biasadd_readvariableop_resource:	???*while/lstm_cell_511/BiasAdd/ReadVariableOp?)while/lstm_cell_511/MatMul/ReadVariableOp?+while/lstm_cell_511/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_511/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_511_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_511/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_511_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_511/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_511/addAddV2$while/lstm_cell_511/MatMul:product:0&while/lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_511_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_511/BiasAddBiasAddwhile/lstm_cell_511/add:z:02while/lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_511/splitSplit,while/lstm_cell_511/split/split_dim:output:0$while/lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_511/SigmoidSigmoid"while/lstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_511/Sigmoid_1Sigmoid"while/lstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mulMul!while/lstm_cell_511/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_511/ReluRelu"while/lstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mul_1Mulwhile/lstm_cell_511/Sigmoid:y:0&while/lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/add_1AddV2while/lstm_cell_511/mul:z:0while/lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_511/Sigmoid_2Sigmoid"while/lstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_511/Relu_1Reluwhile/lstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_511/mul_2Mul!while/lstm_cell_511/Sigmoid_2:y:0(while/lstm_cell_511/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_511/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_511/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_511/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_511/BiasAdd/ReadVariableOp*^while/lstm_cell_511/MatMul/ReadVariableOp,^while/lstm_cell_511/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_511_biasadd_readvariableop_resource5while_lstm_cell_511_biasadd_readvariableop_resource_0"n
4while_lstm_cell_511_matmul_1_readvariableop_resource6while_lstm_cell_511_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_511_matmul_readvariableop_resource4while_lstm_cell_511_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_511/BiasAdd/ReadVariableOp*while/lstm_cell_511/BiasAdd/ReadVariableOp2V
)while/lstm_cell_511/MatMul/ReadVariableOp)while/lstm_cell_511/MatMul/ReadVariableOp2Z
+while/lstm_cell_511/MatMul_1/ReadVariableOp+while/lstm_cell_511/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_224_layer_call_and_return_conditional_losses_3097478

inputs'
lstm_cell_512_3097396:2('
lstm_cell_512_3097398:
(#
lstm_cell_512_3097400:(
identity??%lstm_cell_512/StatefulPartitionedCall?while;
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
%lstm_cell_512/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_512_3097396lstm_cell_512_3097398lstm_cell_512_3097400*
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
J__inference_lstm_cell_512_layer_call_and_return_conditional_losses_3097395n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_512_3097396lstm_cell_512_3097398lstm_cell_512_3097400*
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
while_body_3097409*
condR
while_cond_3097408*K
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
NoOpNoOp&^lstm_cell_512/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_512/StatefulPartitionedCall%lstm_cell_512/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_3100943
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3100943___redundant_placeholder05
1while_while_cond_3100943___redundant_placeholder15
1while_while_cond_3100943___redundant_placeholder25
1while_while_cond_3100943___redundant_placeholder3
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
E__inference_lstm_222_layer_call_and_return_conditional_losses_3098673

inputs?
,lstm_cell_510_matmul_readvariableop_resource:	?A
.lstm_cell_510_matmul_1_readvariableop_resource:	d?<
-lstm_cell_510_biasadd_readvariableop_resource:	?
identity??$lstm_cell_510/BiasAdd/ReadVariableOp?#lstm_cell_510/MatMul/ReadVariableOp?%lstm_cell_510/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_510/MatMul/ReadVariableOpReadVariableOp,lstm_cell_510_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_510/MatMulMatMulstrided_slice_2:output:0+lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_510_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_510/MatMul_1MatMulzeros:output:0-lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_510/addAddV2lstm_cell_510/MatMul:product:0 lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_510_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_510/BiasAddBiasAddlstm_cell_510/add:z:0,lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_510/splitSplit&lstm_cell_510/split/split_dim:output:0lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_510/SigmoidSigmoidlstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_510/Sigmoid_1Sigmoidlstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_510/mulMullstm_cell_510/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_510/ReluRelulstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_510/mul_1Mullstm_cell_510/Sigmoid:y:0 lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_510/add_1AddV2lstm_cell_510/mul:z:0lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_510/Sigmoid_2Sigmoidlstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_510/Relu_1Relulstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_510/mul_2Mullstm_cell_510/Sigmoid_2:y:0"lstm_cell_510/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_510_matmul_readvariableop_resource.lstm_cell_510_matmul_1_readvariableop_resource-lstm_cell_510_biasadd_readvariableop_resource*
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
while_body_3098589*
condR
while_cond_3098588*K
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
NoOpNoOp%^lstm_cell_510/BiasAdd/ReadVariableOp$^lstm_cell_510/MatMul/ReadVariableOp&^lstm_cell_510/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_510/BiasAdd/ReadVariableOp$lstm_cell_510/BiasAdd/ReadVariableOp2J
#lstm_cell_510/MatMul/ReadVariableOp#lstm_cell_510/MatMul/ReadVariableOp2N
%lstm_cell_510/MatMul_1/ReadVariableOp%lstm_cell_510/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_511_layer_call_fn_3101795

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
J__inference_lstm_cell_511_layer_call_and_return_conditional_losses_3097191o
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
?
E__inference_dense_74_layer_call_and_return_conditional_losses_3098145

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
?#
?
while_body_3096709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_510_3096733_0:	?0
while_lstm_cell_510_3096735_0:	d?,
while_lstm_cell_510_3096737_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_510_3096733:	?.
while_lstm_cell_510_3096735:	d?*
while_lstm_cell_510_3096737:	???+while/lstm_cell_510/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_510/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_510_3096733_0while_lstm_cell_510_3096735_0while_lstm_cell_510_3096737_0*
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
J__inference_lstm_cell_510_layer_call_and_return_conditional_losses_3096695?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_510/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_510/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_510/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_510/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_510_3096733while_lstm_cell_510_3096733_0"<
while_lstm_cell_510_3096735while_lstm_cell_510_3096735_0"<
while_lstm_cell_510_3096737while_lstm_cell_510_3096737_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_510/StatefulPartitionedCall+while/lstm_cell_510/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_3101130
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3101130___redundant_placeholder05
1while_while_cond_3101130___redundant_placeholder15
1while_while_cond_3101130___redundant_placeholder25
1while_while_cond_3101130___redundant_placeholder3
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
"__inference__wrapped_model_3096628
lstm_222_inputV
Csequential_74_lstm_222_lstm_cell_510_matmul_readvariableop_resource:	?X
Esequential_74_lstm_222_lstm_cell_510_matmul_1_readvariableop_resource:	d?S
Dsequential_74_lstm_222_lstm_cell_510_biasadd_readvariableop_resource:	?V
Csequential_74_lstm_223_lstm_cell_511_matmul_readvariableop_resource:	d?X
Esequential_74_lstm_223_lstm_cell_511_matmul_1_readvariableop_resource:	2?S
Dsequential_74_lstm_223_lstm_cell_511_biasadd_readvariableop_resource:	?U
Csequential_74_lstm_224_lstm_cell_512_matmul_readvariableop_resource:2(W
Esequential_74_lstm_224_lstm_cell_512_matmul_1_readvariableop_resource:
(R
Dsequential_74_lstm_224_lstm_cell_512_biasadd_readvariableop_resource:(G
5sequential_74_dense_74_matmul_readvariableop_resource:
D
6sequential_74_dense_74_biasadd_readvariableop_resource:
identity??-sequential_74/dense_74/BiasAdd/ReadVariableOp?,sequential_74/dense_74/MatMul/ReadVariableOp?;sequential_74/lstm_222/lstm_cell_510/BiasAdd/ReadVariableOp?:sequential_74/lstm_222/lstm_cell_510/MatMul/ReadVariableOp?<sequential_74/lstm_222/lstm_cell_510/MatMul_1/ReadVariableOp?sequential_74/lstm_222/while?;sequential_74/lstm_223/lstm_cell_511/BiasAdd/ReadVariableOp?:sequential_74/lstm_223/lstm_cell_511/MatMul/ReadVariableOp?<sequential_74/lstm_223/lstm_cell_511/MatMul_1/ReadVariableOp?sequential_74/lstm_223/while?;sequential_74/lstm_224/lstm_cell_512/BiasAdd/ReadVariableOp?:sequential_74/lstm_224/lstm_cell_512/MatMul/ReadVariableOp?<sequential_74/lstm_224/lstm_cell_512/MatMul_1/ReadVariableOp?sequential_74/lstm_224/whileZ
sequential_74/lstm_222/ShapeShapelstm_222_input*
T0*
_output_shapes
:t
*sequential_74/lstm_222/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_74/lstm_222/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_74/lstm_222/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_74/lstm_222/strided_sliceStridedSlice%sequential_74/lstm_222/Shape:output:03sequential_74/lstm_222/strided_slice/stack:output:05sequential_74/lstm_222/strided_slice/stack_1:output:05sequential_74/lstm_222/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_74/lstm_222/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_74/lstm_222/zeros/packedPack-sequential_74/lstm_222/strided_slice:output:0.sequential_74/lstm_222/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_74/lstm_222/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_74/lstm_222/zerosFill,sequential_74/lstm_222/zeros/packed:output:0+sequential_74/lstm_222/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_74/lstm_222/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_74/lstm_222/zeros_1/packedPack-sequential_74/lstm_222/strided_slice:output:00sequential_74/lstm_222/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_74/lstm_222/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_74/lstm_222/zeros_1Fill.sequential_74/lstm_222/zeros_1/packed:output:0-sequential_74/lstm_222/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_74/lstm_222/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_74/lstm_222/transpose	Transposelstm_222_input.sequential_74/lstm_222/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_74/lstm_222/Shape_1Shape$sequential_74/lstm_222/transpose:y:0*
T0*
_output_shapes
:v
,sequential_74/lstm_222/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_74/lstm_222/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_74/lstm_222/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_74/lstm_222/strided_slice_1StridedSlice'sequential_74/lstm_222/Shape_1:output:05sequential_74/lstm_222/strided_slice_1/stack:output:07sequential_74/lstm_222/strided_slice_1/stack_1:output:07sequential_74/lstm_222/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_74/lstm_222/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_74/lstm_222/TensorArrayV2TensorListReserve;sequential_74/lstm_222/TensorArrayV2/element_shape:output:0/sequential_74/lstm_222/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_74/lstm_222/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_74/lstm_222/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_74/lstm_222/transpose:y:0Usequential_74/lstm_222/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_74/lstm_222/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_74/lstm_222/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_74/lstm_222/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_74/lstm_222/strided_slice_2StridedSlice$sequential_74/lstm_222/transpose:y:05sequential_74/lstm_222/strided_slice_2/stack:output:07sequential_74/lstm_222/strided_slice_2/stack_1:output:07sequential_74/lstm_222/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_74/lstm_222/lstm_cell_510/MatMul/ReadVariableOpReadVariableOpCsequential_74_lstm_222_lstm_cell_510_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_74/lstm_222/lstm_cell_510/MatMulMatMul/sequential_74/lstm_222/strided_slice_2:output:0Bsequential_74/lstm_222/lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_74/lstm_222/lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOpEsequential_74_lstm_222_lstm_cell_510_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_74/lstm_222/lstm_cell_510/MatMul_1MatMul%sequential_74/lstm_222/zeros:output:0Dsequential_74/lstm_222/lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_74/lstm_222/lstm_cell_510/addAddV25sequential_74/lstm_222/lstm_cell_510/MatMul:product:07sequential_74/lstm_222/lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_74/lstm_222/lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOpDsequential_74_lstm_222_lstm_cell_510_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_74/lstm_222/lstm_cell_510/BiasAddBiasAdd,sequential_74/lstm_222/lstm_cell_510/add:z:0Csequential_74/lstm_222/lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_74/lstm_222/lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_74/lstm_222/lstm_cell_510/splitSplit=sequential_74/lstm_222/lstm_cell_510/split/split_dim:output:05sequential_74/lstm_222/lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_74/lstm_222/lstm_cell_510/SigmoidSigmoid3sequential_74/lstm_222/lstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_74/lstm_222/lstm_cell_510/Sigmoid_1Sigmoid3sequential_74/lstm_222/lstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_74/lstm_222/lstm_cell_510/mulMul2sequential_74/lstm_222/lstm_cell_510/Sigmoid_1:y:0'sequential_74/lstm_222/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_74/lstm_222/lstm_cell_510/ReluRelu3sequential_74/lstm_222/lstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_74/lstm_222/lstm_cell_510/mul_1Mul0sequential_74/lstm_222/lstm_cell_510/Sigmoid:y:07sequential_74/lstm_222/lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_74/lstm_222/lstm_cell_510/add_1AddV2,sequential_74/lstm_222/lstm_cell_510/mul:z:0.sequential_74/lstm_222/lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_74/lstm_222/lstm_cell_510/Sigmoid_2Sigmoid3sequential_74/lstm_222/lstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_74/lstm_222/lstm_cell_510/Relu_1Relu.sequential_74/lstm_222/lstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_74/lstm_222/lstm_cell_510/mul_2Mul2sequential_74/lstm_222/lstm_cell_510/Sigmoid_2:y:09sequential_74/lstm_222/lstm_cell_510/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_74/lstm_222/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_74/lstm_222/TensorArrayV2_1TensorListReserve=sequential_74/lstm_222/TensorArrayV2_1/element_shape:output:0/sequential_74/lstm_222/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_74/lstm_222/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_74/lstm_222/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_74/lstm_222/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_74/lstm_222/whileWhile2sequential_74/lstm_222/while/loop_counter:output:08sequential_74/lstm_222/while/maximum_iterations:output:0$sequential_74/lstm_222/time:output:0/sequential_74/lstm_222/TensorArrayV2_1:handle:0%sequential_74/lstm_222/zeros:output:0'sequential_74/lstm_222/zeros_1:output:0/sequential_74/lstm_222/strided_slice_1:output:0Nsequential_74/lstm_222/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_74_lstm_222_lstm_cell_510_matmul_readvariableop_resourceEsequential_74_lstm_222_lstm_cell_510_matmul_1_readvariableop_resourceDsequential_74_lstm_222_lstm_cell_510_biasadd_readvariableop_resource*
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
)sequential_74_lstm_222_while_body_3096260*5
cond-R+
)sequential_74_lstm_222_while_cond_3096259*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_74/lstm_222/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_74/lstm_222/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_74/lstm_222/while:output:3Psequential_74/lstm_222/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_74/lstm_222/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_74/lstm_222/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_74/lstm_222/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_74/lstm_222/strided_slice_3StridedSliceBsequential_74/lstm_222/TensorArrayV2Stack/TensorListStack:tensor:05sequential_74/lstm_222/strided_slice_3/stack:output:07sequential_74/lstm_222/strided_slice_3/stack_1:output:07sequential_74/lstm_222/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_74/lstm_222/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_74/lstm_222/transpose_1	TransposeBsequential_74/lstm_222/TensorArrayV2Stack/TensorListStack:tensor:00sequential_74/lstm_222/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_74/lstm_222/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_74/lstm_223/ShapeShape&sequential_74/lstm_222/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_74/lstm_223/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_74/lstm_223/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_74/lstm_223/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_74/lstm_223/strided_sliceStridedSlice%sequential_74/lstm_223/Shape:output:03sequential_74/lstm_223/strided_slice/stack:output:05sequential_74/lstm_223/strided_slice/stack_1:output:05sequential_74/lstm_223/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_74/lstm_223/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_74/lstm_223/zeros/packedPack-sequential_74/lstm_223/strided_slice:output:0.sequential_74/lstm_223/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_74/lstm_223/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_74/lstm_223/zerosFill,sequential_74/lstm_223/zeros/packed:output:0+sequential_74/lstm_223/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_74/lstm_223/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_74/lstm_223/zeros_1/packedPack-sequential_74/lstm_223/strided_slice:output:00sequential_74/lstm_223/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_74/lstm_223/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_74/lstm_223/zeros_1Fill.sequential_74/lstm_223/zeros_1/packed:output:0-sequential_74/lstm_223/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_74/lstm_223/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_74/lstm_223/transpose	Transpose&sequential_74/lstm_222/transpose_1:y:0.sequential_74/lstm_223/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_74/lstm_223/Shape_1Shape$sequential_74/lstm_223/transpose:y:0*
T0*
_output_shapes
:v
,sequential_74/lstm_223/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_74/lstm_223/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_74/lstm_223/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_74/lstm_223/strided_slice_1StridedSlice'sequential_74/lstm_223/Shape_1:output:05sequential_74/lstm_223/strided_slice_1/stack:output:07sequential_74/lstm_223/strided_slice_1/stack_1:output:07sequential_74/lstm_223/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_74/lstm_223/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_74/lstm_223/TensorArrayV2TensorListReserve;sequential_74/lstm_223/TensorArrayV2/element_shape:output:0/sequential_74/lstm_223/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_74/lstm_223/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_74/lstm_223/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_74/lstm_223/transpose:y:0Usequential_74/lstm_223/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_74/lstm_223/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_74/lstm_223/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_74/lstm_223/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_74/lstm_223/strided_slice_2StridedSlice$sequential_74/lstm_223/transpose:y:05sequential_74/lstm_223/strided_slice_2/stack:output:07sequential_74/lstm_223/strided_slice_2/stack_1:output:07sequential_74/lstm_223/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_74/lstm_223/lstm_cell_511/MatMul/ReadVariableOpReadVariableOpCsequential_74_lstm_223_lstm_cell_511_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_74/lstm_223/lstm_cell_511/MatMulMatMul/sequential_74/lstm_223/strided_slice_2:output:0Bsequential_74/lstm_223/lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_74/lstm_223/lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOpEsequential_74_lstm_223_lstm_cell_511_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_74/lstm_223/lstm_cell_511/MatMul_1MatMul%sequential_74/lstm_223/zeros:output:0Dsequential_74/lstm_223/lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_74/lstm_223/lstm_cell_511/addAddV25sequential_74/lstm_223/lstm_cell_511/MatMul:product:07sequential_74/lstm_223/lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_74/lstm_223/lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOpDsequential_74_lstm_223_lstm_cell_511_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_74/lstm_223/lstm_cell_511/BiasAddBiasAdd,sequential_74/lstm_223/lstm_cell_511/add:z:0Csequential_74/lstm_223/lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_74/lstm_223/lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_74/lstm_223/lstm_cell_511/splitSplit=sequential_74/lstm_223/lstm_cell_511/split/split_dim:output:05sequential_74/lstm_223/lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_74/lstm_223/lstm_cell_511/SigmoidSigmoid3sequential_74/lstm_223/lstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_74/lstm_223/lstm_cell_511/Sigmoid_1Sigmoid3sequential_74/lstm_223/lstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_74/lstm_223/lstm_cell_511/mulMul2sequential_74/lstm_223/lstm_cell_511/Sigmoid_1:y:0'sequential_74/lstm_223/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_74/lstm_223/lstm_cell_511/ReluRelu3sequential_74/lstm_223/lstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_74/lstm_223/lstm_cell_511/mul_1Mul0sequential_74/lstm_223/lstm_cell_511/Sigmoid:y:07sequential_74/lstm_223/lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_74/lstm_223/lstm_cell_511/add_1AddV2,sequential_74/lstm_223/lstm_cell_511/mul:z:0.sequential_74/lstm_223/lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_74/lstm_223/lstm_cell_511/Sigmoid_2Sigmoid3sequential_74/lstm_223/lstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_74/lstm_223/lstm_cell_511/Relu_1Relu.sequential_74/lstm_223/lstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_74/lstm_223/lstm_cell_511/mul_2Mul2sequential_74/lstm_223/lstm_cell_511/Sigmoid_2:y:09sequential_74/lstm_223/lstm_cell_511/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_74/lstm_223/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_74/lstm_223/TensorArrayV2_1TensorListReserve=sequential_74/lstm_223/TensorArrayV2_1/element_shape:output:0/sequential_74/lstm_223/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_74/lstm_223/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_74/lstm_223/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_74/lstm_223/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_74/lstm_223/whileWhile2sequential_74/lstm_223/while/loop_counter:output:08sequential_74/lstm_223/while/maximum_iterations:output:0$sequential_74/lstm_223/time:output:0/sequential_74/lstm_223/TensorArrayV2_1:handle:0%sequential_74/lstm_223/zeros:output:0'sequential_74/lstm_223/zeros_1:output:0/sequential_74/lstm_223/strided_slice_1:output:0Nsequential_74/lstm_223/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_74_lstm_223_lstm_cell_511_matmul_readvariableop_resourceEsequential_74_lstm_223_lstm_cell_511_matmul_1_readvariableop_resourceDsequential_74_lstm_223_lstm_cell_511_biasadd_readvariableop_resource*
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
)sequential_74_lstm_223_while_body_3096399*5
cond-R+
)sequential_74_lstm_223_while_cond_3096398*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_74/lstm_223/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_74/lstm_223/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_74/lstm_223/while:output:3Psequential_74/lstm_223/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_74/lstm_223/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_74/lstm_223/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_74/lstm_223/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_74/lstm_223/strided_slice_3StridedSliceBsequential_74/lstm_223/TensorArrayV2Stack/TensorListStack:tensor:05sequential_74/lstm_223/strided_slice_3/stack:output:07sequential_74/lstm_223/strided_slice_3/stack_1:output:07sequential_74/lstm_223/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_74/lstm_223/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_74/lstm_223/transpose_1	TransposeBsequential_74/lstm_223/TensorArrayV2Stack/TensorListStack:tensor:00sequential_74/lstm_223/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_74/lstm_223/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_74/lstm_224/ShapeShape&sequential_74/lstm_223/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_74/lstm_224/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_74/lstm_224/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_74/lstm_224/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_74/lstm_224/strided_sliceStridedSlice%sequential_74/lstm_224/Shape:output:03sequential_74/lstm_224/strided_slice/stack:output:05sequential_74/lstm_224/strided_slice/stack_1:output:05sequential_74/lstm_224/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_74/lstm_224/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_74/lstm_224/zeros/packedPack-sequential_74/lstm_224/strided_slice:output:0.sequential_74/lstm_224/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_74/lstm_224/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_74/lstm_224/zerosFill,sequential_74/lstm_224/zeros/packed:output:0+sequential_74/lstm_224/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_74/lstm_224/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_74/lstm_224/zeros_1/packedPack-sequential_74/lstm_224/strided_slice:output:00sequential_74/lstm_224/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_74/lstm_224/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_74/lstm_224/zeros_1Fill.sequential_74/lstm_224/zeros_1/packed:output:0-sequential_74/lstm_224/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_74/lstm_224/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_74/lstm_224/transpose	Transpose&sequential_74/lstm_223/transpose_1:y:0.sequential_74/lstm_224/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_74/lstm_224/Shape_1Shape$sequential_74/lstm_224/transpose:y:0*
T0*
_output_shapes
:v
,sequential_74/lstm_224/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_74/lstm_224/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_74/lstm_224/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_74/lstm_224/strided_slice_1StridedSlice'sequential_74/lstm_224/Shape_1:output:05sequential_74/lstm_224/strided_slice_1/stack:output:07sequential_74/lstm_224/strided_slice_1/stack_1:output:07sequential_74/lstm_224/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_74/lstm_224/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_74/lstm_224/TensorArrayV2TensorListReserve;sequential_74/lstm_224/TensorArrayV2/element_shape:output:0/sequential_74/lstm_224/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_74/lstm_224/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_74/lstm_224/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_74/lstm_224/transpose:y:0Usequential_74/lstm_224/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_74/lstm_224/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_74/lstm_224/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_74/lstm_224/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_74/lstm_224/strided_slice_2StridedSlice$sequential_74/lstm_224/transpose:y:05sequential_74/lstm_224/strided_slice_2/stack:output:07sequential_74/lstm_224/strided_slice_2/stack_1:output:07sequential_74/lstm_224/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_74/lstm_224/lstm_cell_512/MatMul/ReadVariableOpReadVariableOpCsequential_74_lstm_224_lstm_cell_512_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_74/lstm_224/lstm_cell_512/MatMulMatMul/sequential_74/lstm_224/strided_slice_2:output:0Bsequential_74/lstm_224/lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_74/lstm_224/lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOpEsequential_74_lstm_224_lstm_cell_512_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_74/lstm_224/lstm_cell_512/MatMul_1MatMul%sequential_74/lstm_224/zeros:output:0Dsequential_74/lstm_224/lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_74/lstm_224/lstm_cell_512/addAddV25sequential_74/lstm_224/lstm_cell_512/MatMul:product:07sequential_74/lstm_224/lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_74/lstm_224/lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOpDsequential_74_lstm_224_lstm_cell_512_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_74/lstm_224/lstm_cell_512/BiasAddBiasAdd,sequential_74/lstm_224/lstm_cell_512/add:z:0Csequential_74/lstm_224/lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_74/lstm_224/lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_74/lstm_224/lstm_cell_512/splitSplit=sequential_74/lstm_224/lstm_cell_512/split/split_dim:output:05sequential_74/lstm_224/lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_74/lstm_224/lstm_cell_512/SigmoidSigmoid3sequential_74/lstm_224/lstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_74/lstm_224/lstm_cell_512/Sigmoid_1Sigmoid3sequential_74/lstm_224/lstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_74/lstm_224/lstm_cell_512/mulMul2sequential_74/lstm_224/lstm_cell_512/Sigmoid_1:y:0'sequential_74/lstm_224/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_74/lstm_224/lstm_cell_512/ReluRelu3sequential_74/lstm_224/lstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_74/lstm_224/lstm_cell_512/mul_1Mul0sequential_74/lstm_224/lstm_cell_512/Sigmoid:y:07sequential_74/lstm_224/lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_74/lstm_224/lstm_cell_512/add_1AddV2,sequential_74/lstm_224/lstm_cell_512/mul:z:0.sequential_74/lstm_224/lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_74/lstm_224/lstm_cell_512/Sigmoid_2Sigmoid3sequential_74/lstm_224/lstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_74/lstm_224/lstm_cell_512/Relu_1Relu.sequential_74/lstm_224/lstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_74/lstm_224/lstm_cell_512/mul_2Mul2sequential_74/lstm_224/lstm_cell_512/Sigmoid_2:y:09sequential_74/lstm_224/lstm_cell_512/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_74/lstm_224/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_74/lstm_224/TensorArrayV2_1TensorListReserve=sequential_74/lstm_224/TensorArrayV2_1/element_shape:output:0/sequential_74/lstm_224/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_74/lstm_224/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_74/lstm_224/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_74/lstm_224/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_74/lstm_224/whileWhile2sequential_74/lstm_224/while/loop_counter:output:08sequential_74/lstm_224/while/maximum_iterations:output:0$sequential_74/lstm_224/time:output:0/sequential_74/lstm_224/TensorArrayV2_1:handle:0%sequential_74/lstm_224/zeros:output:0'sequential_74/lstm_224/zeros_1:output:0/sequential_74/lstm_224/strided_slice_1:output:0Nsequential_74/lstm_224/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_74_lstm_224_lstm_cell_512_matmul_readvariableop_resourceEsequential_74_lstm_224_lstm_cell_512_matmul_1_readvariableop_resourceDsequential_74_lstm_224_lstm_cell_512_biasadd_readvariableop_resource*
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
)sequential_74_lstm_224_while_body_3096538*5
cond-R+
)sequential_74_lstm_224_while_cond_3096537*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_74/lstm_224/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_74/lstm_224/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_74/lstm_224/while:output:3Psequential_74/lstm_224/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_74/lstm_224/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_74/lstm_224/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_74/lstm_224/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_74/lstm_224/strided_slice_3StridedSliceBsequential_74/lstm_224/TensorArrayV2Stack/TensorListStack:tensor:05sequential_74/lstm_224/strided_slice_3/stack:output:07sequential_74/lstm_224/strided_slice_3/stack_1:output:07sequential_74/lstm_224/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_74/lstm_224/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_74/lstm_224/transpose_1	TransposeBsequential_74/lstm_224/TensorArrayV2Stack/TensorListStack:tensor:00sequential_74/lstm_224/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_74/lstm_224/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_74/dense_74/MatMul/ReadVariableOpReadVariableOp5sequential_74_dense_74_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_74/dense_74/MatMulMatMul/sequential_74/lstm_224/strided_slice_3:output:04sequential_74/dense_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_74/dense_74/BiasAdd/ReadVariableOpReadVariableOp6sequential_74_dense_74_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_74/dense_74/BiasAddBiasAdd'sequential_74/dense_74/MatMul:product:05sequential_74/dense_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_74/dense_74/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_74/dense_74/BiasAdd/ReadVariableOp-^sequential_74/dense_74/MatMul/ReadVariableOp<^sequential_74/lstm_222/lstm_cell_510/BiasAdd/ReadVariableOp;^sequential_74/lstm_222/lstm_cell_510/MatMul/ReadVariableOp=^sequential_74/lstm_222/lstm_cell_510/MatMul_1/ReadVariableOp^sequential_74/lstm_222/while<^sequential_74/lstm_223/lstm_cell_511/BiasAdd/ReadVariableOp;^sequential_74/lstm_223/lstm_cell_511/MatMul/ReadVariableOp=^sequential_74/lstm_223/lstm_cell_511/MatMul_1/ReadVariableOp^sequential_74/lstm_223/while<^sequential_74/lstm_224/lstm_cell_512/BiasAdd/ReadVariableOp;^sequential_74/lstm_224/lstm_cell_512/MatMul/ReadVariableOp=^sequential_74/lstm_224/lstm_cell_512/MatMul_1/ReadVariableOp^sequential_74/lstm_224/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_74/dense_74/BiasAdd/ReadVariableOp-sequential_74/dense_74/BiasAdd/ReadVariableOp2\
,sequential_74/dense_74/MatMul/ReadVariableOp,sequential_74/dense_74/MatMul/ReadVariableOp2z
;sequential_74/lstm_222/lstm_cell_510/BiasAdd/ReadVariableOp;sequential_74/lstm_222/lstm_cell_510/BiasAdd/ReadVariableOp2x
:sequential_74/lstm_222/lstm_cell_510/MatMul/ReadVariableOp:sequential_74/lstm_222/lstm_cell_510/MatMul/ReadVariableOp2|
<sequential_74/lstm_222/lstm_cell_510/MatMul_1/ReadVariableOp<sequential_74/lstm_222/lstm_cell_510/MatMul_1/ReadVariableOp2<
sequential_74/lstm_222/whilesequential_74/lstm_222/while2z
;sequential_74/lstm_223/lstm_cell_511/BiasAdd/ReadVariableOp;sequential_74/lstm_223/lstm_cell_511/BiasAdd/ReadVariableOp2x
:sequential_74/lstm_223/lstm_cell_511/MatMul/ReadVariableOp:sequential_74/lstm_223/lstm_cell_511/MatMul/ReadVariableOp2|
<sequential_74/lstm_223/lstm_cell_511/MatMul_1/ReadVariableOp<sequential_74/lstm_223/lstm_cell_511/MatMul_1/ReadVariableOp2<
sequential_74/lstm_223/whilesequential_74/lstm_223/while2z
;sequential_74/lstm_224/lstm_cell_512/BiasAdd/ReadVariableOp;sequential_74/lstm_224/lstm_cell_512/BiasAdd/ReadVariableOp2x
:sequential_74/lstm_224/lstm_cell_512/MatMul/ReadVariableOp:sequential_74/lstm_224/lstm_cell_512/MatMul/ReadVariableOp2|
<sequential_74/lstm_224/lstm_cell_512/MatMul_1/ReadVariableOp<sequential_74/lstm_224/lstm_cell_512/MatMul_1/ReadVariableOp2<
sequential_74/lstm_224/whilesequential_74/lstm_224/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_222_input
?
?
J__inference_sequential_74_layer_call_and_return_conditional_losses_3098853
lstm_222_input#
lstm_222_3098826:	?#
lstm_222_3098828:	d?
lstm_222_3098830:	?#
lstm_223_3098833:	d?#
lstm_223_3098835:	2?
lstm_223_3098837:	?"
lstm_224_3098840:2("
lstm_224_3098842:
(
lstm_224_3098844:("
dense_74_3098847:

dense_74_3098849:
identity?? dense_74/StatefulPartitionedCall? lstm_222/StatefulPartitionedCall? lstm_223/StatefulPartitionedCall? lstm_224/StatefulPartitionedCall?
 lstm_222/StatefulPartitionedCallStatefulPartitionedCalllstm_222_inputlstm_222_3098826lstm_222_3098828lstm_222_3098830*
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
E__inference_lstm_222_layer_call_and_return_conditional_losses_3098673?
 lstm_223/StatefulPartitionedCallStatefulPartitionedCall)lstm_222/StatefulPartitionedCall:output:0lstm_223_3098833lstm_223_3098835lstm_223_3098837*
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
E__inference_lstm_223_layer_call_and_return_conditional_losses_3098508?
 lstm_224/StatefulPartitionedCallStatefulPartitionedCall)lstm_223/StatefulPartitionedCall:output:0lstm_224_3098840lstm_224_3098842lstm_224_3098844*
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
E__inference_lstm_224_layer_call_and_return_conditional_losses_3098343?
 dense_74/StatefulPartitionedCallStatefulPartitionedCall)lstm_224/StatefulPartitionedCall:output:0dense_74_3098847dense_74_3098849*
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
E__inference_dense_74_layer_call_and_return_conditional_losses_3098145x
IdentityIdentity)dense_74/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_74/StatefulPartitionedCall!^lstm_222/StatefulPartitionedCall!^lstm_223/StatefulPartitionedCall!^lstm_224/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2D
 lstm_222/StatefulPartitionedCall lstm_222/StatefulPartitionedCall2D
 lstm_223/StatefulPartitionedCall lstm_223/StatefulPartitionedCall2D
 lstm_224/StatefulPartitionedCall lstm_224/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_222_input
?
?
while_cond_3097408
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3097408___redundant_placeholder05
1while_while_cond_3097408___redundant_placeholder15
1while_while_cond_3097408___redundant_placeholder25
1while_while_cond_3097408___redundant_placeholder3
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
E__inference_lstm_222_layer_call_and_return_conditional_losses_3096969

inputs(
lstm_cell_510_3096887:	?(
lstm_cell_510_3096889:	d?$
lstm_cell_510_3096891:	?
identity??%lstm_cell_510/StatefulPartitionedCall?while;
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
%lstm_cell_510/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_510_3096887lstm_cell_510_3096889lstm_cell_510_3096891*
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
J__inference_lstm_cell_510_layer_call_and_return_conditional_losses_3096841n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_510_3096887lstm_cell_510_3096889lstm_cell_510_3096891*
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
while_body_3096900*
condR
while_cond_3096899*K
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
NoOpNoOp&^lstm_cell_510/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_510/StatefulPartitionedCall%lstm_cell_510/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_511_layer_call_and_return_conditional_losses_3097045

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
?
?
while_cond_3097058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3097058___redundant_placeholder05
1while_while_cond_3097058___redundant_placeholder15
1while_while_cond_3097058___redundant_placeholder25
1while_while_cond_3097058___redundant_placeholder3
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
??
?
J__inference_sequential_74_layer_call_and_return_conditional_losses_3099369

inputsH
5lstm_222_lstm_cell_510_matmul_readvariableop_resource:	?J
7lstm_222_lstm_cell_510_matmul_1_readvariableop_resource:	d?E
6lstm_222_lstm_cell_510_biasadd_readvariableop_resource:	?H
5lstm_223_lstm_cell_511_matmul_readvariableop_resource:	d?J
7lstm_223_lstm_cell_511_matmul_1_readvariableop_resource:	2?E
6lstm_223_lstm_cell_511_biasadd_readvariableop_resource:	?G
5lstm_224_lstm_cell_512_matmul_readvariableop_resource:2(I
7lstm_224_lstm_cell_512_matmul_1_readvariableop_resource:
(D
6lstm_224_lstm_cell_512_biasadd_readvariableop_resource:(9
'dense_74_matmul_readvariableop_resource:
6
(dense_74_biasadd_readvariableop_resource:
identity??dense_74/BiasAdd/ReadVariableOp?dense_74/MatMul/ReadVariableOp?-lstm_222/lstm_cell_510/BiasAdd/ReadVariableOp?,lstm_222/lstm_cell_510/MatMul/ReadVariableOp?.lstm_222/lstm_cell_510/MatMul_1/ReadVariableOp?lstm_222/while?-lstm_223/lstm_cell_511/BiasAdd/ReadVariableOp?,lstm_223/lstm_cell_511/MatMul/ReadVariableOp?.lstm_223/lstm_cell_511/MatMul_1/ReadVariableOp?lstm_223/while?-lstm_224/lstm_cell_512/BiasAdd/ReadVariableOp?,lstm_224/lstm_cell_512/MatMul/ReadVariableOp?.lstm_224/lstm_cell_512/MatMul_1/ReadVariableOp?lstm_224/whileD
lstm_222/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_222/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_222/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_222/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_222/strided_sliceStridedSlicelstm_222/Shape:output:0%lstm_222/strided_slice/stack:output:0'lstm_222/strided_slice/stack_1:output:0'lstm_222/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_222/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_222/zeros/packedPacklstm_222/strided_slice:output:0 lstm_222/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_222/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_222/zerosFilllstm_222/zeros/packed:output:0lstm_222/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_222/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_222/zeros_1/packedPacklstm_222/strided_slice:output:0"lstm_222/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_222/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_222/zeros_1Fill lstm_222/zeros_1/packed:output:0lstm_222/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_222/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_222/transpose	Transposeinputs lstm_222/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_222/Shape_1Shapelstm_222/transpose:y:0*
T0*
_output_shapes
:h
lstm_222/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_222/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_222/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_222/strided_slice_1StridedSlicelstm_222/Shape_1:output:0'lstm_222/strided_slice_1/stack:output:0)lstm_222/strided_slice_1/stack_1:output:0)lstm_222/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_222/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_222/TensorArrayV2TensorListReserve-lstm_222/TensorArrayV2/element_shape:output:0!lstm_222/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_222/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_222/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_222/transpose:y:0Glstm_222/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_222/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_222/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_222/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_222/strided_slice_2StridedSlicelstm_222/transpose:y:0'lstm_222/strided_slice_2/stack:output:0)lstm_222/strided_slice_2/stack_1:output:0)lstm_222/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_222/lstm_cell_510/MatMul/ReadVariableOpReadVariableOp5lstm_222_lstm_cell_510_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_222/lstm_cell_510/MatMulMatMul!lstm_222/strided_slice_2:output:04lstm_222/lstm_cell_510/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_222/lstm_cell_510/MatMul_1/ReadVariableOpReadVariableOp7lstm_222_lstm_cell_510_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_222/lstm_cell_510/MatMul_1MatMullstm_222/zeros:output:06lstm_222/lstm_cell_510/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_222/lstm_cell_510/addAddV2'lstm_222/lstm_cell_510/MatMul:product:0)lstm_222/lstm_cell_510/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_222/lstm_cell_510/BiasAdd/ReadVariableOpReadVariableOp6lstm_222_lstm_cell_510_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_222/lstm_cell_510/BiasAddBiasAddlstm_222/lstm_cell_510/add:z:05lstm_222/lstm_cell_510/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_222/lstm_cell_510/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_222/lstm_cell_510/splitSplit/lstm_222/lstm_cell_510/split/split_dim:output:0'lstm_222/lstm_cell_510/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_222/lstm_cell_510/SigmoidSigmoid%lstm_222/lstm_cell_510/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_222/lstm_cell_510/Sigmoid_1Sigmoid%lstm_222/lstm_cell_510/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_222/lstm_cell_510/mulMul$lstm_222/lstm_cell_510/Sigmoid_1:y:0lstm_222/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_222/lstm_cell_510/ReluRelu%lstm_222/lstm_cell_510/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_222/lstm_cell_510/mul_1Mul"lstm_222/lstm_cell_510/Sigmoid:y:0)lstm_222/lstm_cell_510/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_222/lstm_cell_510/add_1AddV2lstm_222/lstm_cell_510/mul:z:0 lstm_222/lstm_cell_510/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_222/lstm_cell_510/Sigmoid_2Sigmoid%lstm_222/lstm_cell_510/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_222/lstm_cell_510/Relu_1Relu lstm_222/lstm_cell_510/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_222/lstm_cell_510/mul_2Mul$lstm_222/lstm_cell_510/Sigmoid_2:y:0+lstm_222/lstm_cell_510/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_222/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_222/TensorArrayV2_1TensorListReserve/lstm_222/TensorArrayV2_1/element_shape:output:0!lstm_222/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_222/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_222/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_222/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_222/whileWhile$lstm_222/while/loop_counter:output:0*lstm_222/while/maximum_iterations:output:0lstm_222/time:output:0!lstm_222/TensorArrayV2_1:handle:0lstm_222/zeros:output:0lstm_222/zeros_1:output:0!lstm_222/strided_slice_1:output:0@lstm_222/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_222_lstm_cell_510_matmul_readvariableop_resource7lstm_222_lstm_cell_510_matmul_1_readvariableop_resource6lstm_222_lstm_cell_510_biasadd_readvariableop_resource*
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
lstm_222_while_body_3099001*'
condR
lstm_222_while_cond_3099000*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_222/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_222/TensorArrayV2Stack/TensorListStackTensorListStacklstm_222/while:output:3Blstm_222/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_222/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_222/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_222/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_222/strided_slice_3StridedSlice4lstm_222/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_222/strided_slice_3/stack:output:0)lstm_222/strided_slice_3/stack_1:output:0)lstm_222/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_222/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_222/transpose_1	Transpose4lstm_222/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_222/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_222/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_223/ShapeShapelstm_222/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_223/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_223/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_223/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_223/strided_sliceStridedSlicelstm_223/Shape:output:0%lstm_223/strided_slice/stack:output:0'lstm_223/strided_slice/stack_1:output:0'lstm_223/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_223/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_223/zeros/packedPacklstm_223/strided_slice:output:0 lstm_223/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_223/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_223/zerosFilllstm_223/zeros/packed:output:0lstm_223/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_223/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_223/zeros_1/packedPacklstm_223/strided_slice:output:0"lstm_223/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_223/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_223/zeros_1Fill lstm_223/zeros_1/packed:output:0lstm_223/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_223/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_223/transpose	Transposelstm_222/transpose_1:y:0 lstm_223/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_223/Shape_1Shapelstm_223/transpose:y:0*
T0*
_output_shapes
:h
lstm_223/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_223/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_223/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_223/strided_slice_1StridedSlicelstm_223/Shape_1:output:0'lstm_223/strided_slice_1/stack:output:0)lstm_223/strided_slice_1/stack_1:output:0)lstm_223/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_223/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_223/TensorArrayV2TensorListReserve-lstm_223/TensorArrayV2/element_shape:output:0!lstm_223/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_223/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_223/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_223/transpose:y:0Glstm_223/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_223/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_223/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_223/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_223/strided_slice_2StridedSlicelstm_223/transpose:y:0'lstm_223/strided_slice_2/stack:output:0)lstm_223/strided_slice_2/stack_1:output:0)lstm_223/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_223/lstm_cell_511/MatMul/ReadVariableOpReadVariableOp5lstm_223_lstm_cell_511_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_223/lstm_cell_511/MatMulMatMul!lstm_223/strided_slice_2:output:04lstm_223/lstm_cell_511/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_223/lstm_cell_511/MatMul_1/ReadVariableOpReadVariableOp7lstm_223_lstm_cell_511_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_223/lstm_cell_511/MatMul_1MatMullstm_223/zeros:output:06lstm_223/lstm_cell_511/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_223/lstm_cell_511/addAddV2'lstm_223/lstm_cell_511/MatMul:product:0)lstm_223/lstm_cell_511/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_223/lstm_cell_511/BiasAdd/ReadVariableOpReadVariableOp6lstm_223_lstm_cell_511_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_223/lstm_cell_511/BiasAddBiasAddlstm_223/lstm_cell_511/add:z:05lstm_223/lstm_cell_511/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_223/lstm_cell_511/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_223/lstm_cell_511/splitSplit/lstm_223/lstm_cell_511/split/split_dim:output:0'lstm_223/lstm_cell_511/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_223/lstm_cell_511/SigmoidSigmoid%lstm_223/lstm_cell_511/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_223/lstm_cell_511/Sigmoid_1Sigmoid%lstm_223/lstm_cell_511/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_223/lstm_cell_511/mulMul$lstm_223/lstm_cell_511/Sigmoid_1:y:0lstm_223/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_223/lstm_cell_511/ReluRelu%lstm_223/lstm_cell_511/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_223/lstm_cell_511/mul_1Mul"lstm_223/lstm_cell_511/Sigmoid:y:0)lstm_223/lstm_cell_511/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_223/lstm_cell_511/add_1AddV2lstm_223/lstm_cell_511/mul:z:0 lstm_223/lstm_cell_511/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_223/lstm_cell_511/Sigmoid_2Sigmoid%lstm_223/lstm_cell_511/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_223/lstm_cell_511/Relu_1Relu lstm_223/lstm_cell_511/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_223/lstm_cell_511/mul_2Mul$lstm_223/lstm_cell_511/Sigmoid_2:y:0+lstm_223/lstm_cell_511/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_223/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_223/TensorArrayV2_1TensorListReserve/lstm_223/TensorArrayV2_1/element_shape:output:0!lstm_223/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_223/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_223/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_223/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_223/whileWhile$lstm_223/while/loop_counter:output:0*lstm_223/while/maximum_iterations:output:0lstm_223/time:output:0!lstm_223/TensorArrayV2_1:handle:0lstm_223/zeros:output:0lstm_223/zeros_1:output:0!lstm_223/strided_slice_1:output:0@lstm_223/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_223_lstm_cell_511_matmul_readvariableop_resource7lstm_223_lstm_cell_511_matmul_1_readvariableop_resource6lstm_223_lstm_cell_511_biasadd_readvariableop_resource*
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
lstm_223_while_body_3099140*'
condR
lstm_223_while_cond_3099139*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_223/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_223/TensorArrayV2Stack/TensorListStackTensorListStacklstm_223/while:output:3Blstm_223/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_223/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_223/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_223/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_223/strided_slice_3StridedSlice4lstm_223/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_223/strided_slice_3/stack:output:0)lstm_223/strided_slice_3/stack_1:output:0)lstm_223/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_223/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_223/transpose_1	Transpose4lstm_223/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_223/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_223/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_224/ShapeShapelstm_223/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_224/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_224/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_224/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_224/strided_sliceStridedSlicelstm_224/Shape:output:0%lstm_224/strided_slice/stack:output:0'lstm_224/strided_slice/stack_1:output:0'lstm_224/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_224/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_224/zeros/packedPacklstm_224/strided_slice:output:0 lstm_224/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_224/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_224/zerosFilllstm_224/zeros/packed:output:0lstm_224/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_224/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_224/zeros_1/packedPacklstm_224/strided_slice:output:0"lstm_224/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_224/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_224/zeros_1Fill lstm_224/zeros_1/packed:output:0lstm_224/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_224/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_224/transpose	Transposelstm_223/transpose_1:y:0 lstm_224/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_224/Shape_1Shapelstm_224/transpose:y:0*
T0*
_output_shapes
:h
lstm_224/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_224/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_224/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_224/strided_slice_1StridedSlicelstm_224/Shape_1:output:0'lstm_224/strided_slice_1/stack:output:0)lstm_224/strided_slice_1/stack_1:output:0)lstm_224/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_224/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_224/TensorArrayV2TensorListReserve-lstm_224/TensorArrayV2/element_shape:output:0!lstm_224/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_224/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_224/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_224/transpose:y:0Glstm_224/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_224/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_224/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_224/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_224/strided_slice_2StridedSlicelstm_224/transpose:y:0'lstm_224/strided_slice_2/stack:output:0)lstm_224/strided_slice_2/stack_1:output:0)lstm_224/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_224/lstm_cell_512/MatMul/ReadVariableOpReadVariableOp5lstm_224_lstm_cell_512_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_224/lstm_cell_512/MatMulMatMul!lstm_224/strided_slice_2:output:04lstm_224/lstm_cell_512/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_224/lstm_cell_512/MatMul_1/ReadVariableOpReadVariableOp7lstm_224_lstm_cell_512_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_224/lstm_cell_512/MatMul_1MatMullstm_224/zeros:output:06lstm_224/lstm_cell_512/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_224/lstm_cell_512/addAddV2'lstm_224/lstm_cell_512/MatMul:product:0)lstm_224/lstm_cell_512/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_224/lstm_cell_512/BiasAdd/ReadVariableOpReadVariableOp6lstm_224_lstm_cell_512_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_224/lstm_cell_512/BiasAddBiasAddlstm_224/lstm_cell_512/add:z:05lstm_224/lstm_cell_512/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_224/lstm_cell_512/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_224/lstm_cell_512/splitSplit/lstm_224/lstm_cell_512/split/split_dim:output:0'lstm_224/lstm_cell_512/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_224/lstm_cell_512/SigmoidSigmoid%lstm_224/lstm_cell_512/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_224/lstm_cell_512/Sigmoid_1Sigmoid%lstm_224/lstm_cell_512/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_224/lstm_cell_512/mulMul$lstm_224/lstm_cell_512/Sigmoid_1:y:0lstm_224/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_224/lstm_cell_512/ReluRelu%lstm_224/lstm_cell_512/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_224/lstm_cell_512/mul_1Mul"lstm_224/lstm_cell_512/Sigmoid:y:0)lstm_224/lstm_cell_512/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_224/lstm_cell_512/add_1AddV2lstm_224/lstm_cell_512/mul:z:0 lstm_224/lstm_cell_512/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_224/lstm_cell_512/Sigmoid_2Sigmoid%lstm_224/lstm_cell_512/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_224/lstm_cell_512/Relu_1Relu lstm_224/lstm_cell_512/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_224/lstm_cell_512/mul_2Mul$lstm_224/lstm_cell_512/Sigmoid_2:y:0+lstm_224/lstm_cell_512/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_224/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_224/TensorArrayV2_1TensorListReserve/lstm_224/TensorArrayV2_1/element_shape:output:0!lstm_224/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_224/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_224/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_224/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_224/whileWhile$lstm_224/while/loop_counter:output:0*lstm_224/while/maximum_iterations:output:0lstm_224/time:output:0!lstm_224/TensorArrayV2_1:handle:0lstm_224/zeros:output:0lstm_224/zeros_1:output:0!lstm_224/strided_slice_1:output:0@lstm_224/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_224_lstm_cell_512_matmul_readvariableop_resource7lstm_224_lstm_cell_512_matmul_1_readvariableop_resource6lstm_224_lstm_cell_512_biasadd_readvariableop_resource*
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
lstm_224_while_body_3099279*'
condR
lstm_224_while_cond_3099278*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_224/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_224/TensorArrayV2Stack/TensorListStackTensorListStacklstm_224/while:output:3Blstm_224/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_224/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_224/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_224/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_224/strided_slice_3StridedSlice4lstm_224/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_224/strided_slice_3/stack:output:0)lstm_224/strided_slice_3/stack_1:output:0)lstm_224/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_224/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_224/transpose_1	Transpose4lstm_224/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_224/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_224/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_74/MatMul/ReadVariableOpReadVariableOp'dense_74_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_74/MatMulMatMul!lstm_224/strided_slice_3:output:0&dense_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_74/BiasAdd/ReadVariableOpReadVariableOp(dense_74_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_74/BiasAddBiasAdddense_74/MatMul:product:0'dense_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_74/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_74/BiasAdd/ReadVariableOp^dense_74/MatMul/ReadVariableOp.^lstm_222/lstm_cell_510/BiasAdd/ReadVariableOp-^lstm_222/lstm_cell_510/MatMul/ReadVariableOp/^lstm_222/lstm_cell_510/MatMul_1/ReadVariableOp^lstm_222/while.^lstm_223/lstm_cell_511/BiasAdd/ReadVariableOp-^lstm_223/lstm_cell_511/MatMul/ReadVariableOp/^lstm_223/lstm_cell_511/MatMul_1/ReadVariableOp^lstm_223/while.^lstm_224/lstm_cell_512/BiasAdd/ReadVariableOp-^lstm_224/lstm_cell_512/MatMul/ReadVariableOp/^lstm_224/lstm_cell_512/MatMul_1/ReadVariableOp^lstm_224/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_74/BiasAdd/ReadVariableOpdense_74/BiasAdd/ReadVariableOp2@
dense_74/MatMul/ReadVariableOpdense_74/MatMul/ReadVariableOp2^
-lstm_222/lstm_cell_510/BiasAdd/ReadVariableOp-lstm_222/lstm_cell_510/BiasAdd/ReadVariableOp2\
,lstm_222/lstm_cell_510/MatMul/ReadVariableOp,lstm_222/lstm_cell_510/MatMul/ReadVariableOp2`
.lstm_222/lstm_cell_510/MatMul_1/ReadVariableOp.lstm_222/lstm_cell_510/MatMul_1/ReadVariableOp2 
lstm_222/whilelstm_222/while2^
-lstm_223/lstm_cell_511/BiasAdd/ReadVariableOp-lstm_223/lstm_cell_511/BiasAdd/ReadVariableOp2\
,lstm_223/lstm_cell_511/MatMul/ReadVariableOp,lstm_223/lstm_cell_511/MatMul/ReadVariableOp2`
.lstm_223/lstm_cell_511/MatMul_1/ReadVariableOp.lstm_223/lstm_cell_511/MatMul_1/ReadVariableOp2 
lstm_223/whilelstm_223/while2^
-lstm_224/lstm_cell_512/BiasAdd/ReadVariableOp-lstm_224/lstm_cell_512/BiasAdd/ReadVariableOp2\
,lstm_224/lstm_cell_512/MatMul/ReadVariableOp,lstm_224/lstm_cell_512/MatMul/ReadVariableOp2`
.lstm_224/lstm_cell_512/MatMul_1/ReadVariableOp.lstm_224/lstm_cell_512/MatMul_1/ReadVariableOp2 
lstm_224/whilelstm_224/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
/__inference_sequential_74_layer_call_fn_3098177
lstm_222_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_222_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_74_layer_call_and_return_conditional_losses_3098152o
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
_user_specified_namelstm_222_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_222_input;
 serving_default_lstm_222_input:0?????????<
dense_740
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
2dense_74/kernel
:2dense_74/bias
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
0:.	?2lstm_222/lstm_cell_222/kernel
::8	d?2'lstm_222/lstm_cell_222/recurrent_kernel
*:(?2lstm_222/lstm_cell_222/bias
0:.	d?2lstm_223/lstm_cell_223/kernel
::8	2?2'lstm_223/lstm_cell_223/recurrent_kernel
*:(?2lstm_223/lstm_cell_223/bias
/:-2(2lstm_224/lstm_cell_224/kernel
9:7
(2'lstm_224/lstm_cell_224/recurrent_kernel
):'(2lstm_224/lstm_cell_224/bias
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
2Adam/dense_74/kernel/m
 :2Adam/dense_74/bias/m
5:3	?2$Adam/lstm_222/lstm_cell_222/kernel/m
?:=	d?2.Adam/lstm_222/lstm_cell_222/recurrent_kernel/m
/:-?2"Adam/lstm_222/lstm_cell_222/bias/m
5:3	d?2$Adam/lstm_223/lstm_cell_223/kernel/m
?:=	2?2.Adam/lstm_223/lstm_cell_223/recurrent_kernel/m
/:-?2"Adam/lstm_223/lstm_cell_223/bias/m
4:22(2$Adam/lstm_224/lstm_cell_224/kernel/m
>:<
(2.Adam/lstm_224/lstm_cell_224/recurrent_kernel/m
.:,(2"Adam/lstm_224/lstm_cell_224/bias/m
&:$
2Adam/dense_74/kernel/v
 :2Adam/dense_74/bias/v
5:3	?2$Adam/lstm_222/lstm_cell_222/kernel/v
?:=	d?2.Adam/lstm_222/lstm_cell_222/recurrent_kernel/v
/:-?2"Adam/lstm_222/lstm_cell_222/bias/v
5:3	d?2$Adam/lstm_223/lstm_cell_223/kernel/v
?:=	2?2.Adam/lstm_223/lstm_cell_223/recurrent_kernel/v
/:-?2"Adam/lstm_223/lstm_cell_223/bias/v
4:22(2$Adam/lstm_224/lstm_cell_224/kernel/v
>:<
(2.Adam/lstm_224/lstm_cell_224/recurrent_kernel/v
.:,(2"Adam/lstm_224/lstm_cell_224/bias/v
?2?
/__inference_sequential_74_layer_call_fn_3098177
/__inference_sequential_74_layer_call_fn_3098915
/__inference_sequential_74_layer_call_fn_3098942
/__inference_sequential_74_layer_call_fn_3098793?
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
J__inference_sequential_74_layer_call_and_return_conditional_losses_3099369
J__inference_sequential_74_layer_call_and_return_conditional_losses_3099796
J__inference_sequential_74_layer_call_and_return_conditional_losses_3098823
J__inference_sequential_74_layer_call_and_return_conditional_losses_3098853?
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
"__inference__wrapped_model_3096628lstm_222_input"?
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
*__inference_lstm_222_layer_call_fn_3099807
*__inference_lstm_222_layer_call_fn_3099818
*__inference_lstm_222_layer_call_fn_3099829
*__inference_lstm_222_layer_call_fn_3099840?
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
E__inference_lstm_222_layer_call_and_return_conditional_losses_3099983
E__inference_lstm_222_layer_call_and_return_conditional_losses_3100126
E__inference_lstm_222_layer_call_and_return_conditional_losses_3100269
E__inference_lstm_222_layer_call_and_return_conditional_losses_3100412?
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
*__inference_lstm_223_layer_call_fn_3100423
*__inference_lstm_223_layer_call_fn_3100434
*__inference_lstm_223_layer_call_fn_3100445
*__inference_lstm_223_layer_call_fn_3100456?
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
E__inference_lstm_223_layer_call_and_return_conditional_losses_3100599
E__inference_lstm_223_layer_call_and_return_conditional_losses_3100742
E__inference_lstm_223_layer_call_and_return_conditional_losses_3100885
E__inference_lstm_223_layer_call_and_return_conditional_losses_3101028?
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
*__inference_lstm_224_layer_call_fn_3101039
*__inference_lstm_224_layer_call_fn_3101050
*__inference_lstm_224_layer_call_fn_3101061
*__inference_lstm_224_layer_call_fn_3101072?
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
E__inference_lstm_224_layer_call_and_return_conditional_losses_3101215
E__inference_lstm_224_layer_call_and_return_conditional_losses_3101358
E__inference_lstm_224_layer_call_and_return_conditional_losses_3101501
E__inference_lstm_224_layer_call_and_return_conditional_losses_3101644?
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
*__inference_dense_74_layer_call_fn_3101653?
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
E__inference_dense_74_layer_call_and_return_conditional_losses_3101663?
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
%__inference_signature_wrapper_3098888lstm_222_input"?
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
/__inference_lstm_cell_510_layer_call_fn_3101680
/__inference_lstm_cell_510_layer_call_fn_3101697?
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
J__inference_lstm_cell_510_layer_call_and_return_conditional_losses_3101729
J__inference_lstm_cell_510_layer_call_and_return_conditional_losses_3101761?
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
/__inference_lstm_cell_511_layer_call_fn_3101778
/__inference_lstm_cell_511_layer_call_fn_3101795?
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
J__inference_lstm_cell_511_layer_call_and_return_conditional_losses_3101827
J__inference_lstm_cell_511_layer_call_and_return_conditional_losses_3101859?
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
/__inference_lstm_cell_512_layer_call_fn_3101876
/__inference_lstm_cell_512_layer_call_fn_3101893?
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
J__inference_lstm_cell_512_layer_call_and_return_conditional_losses_3101925
J__inference_lstm_cell_512_layer_call_and_return_conditional_losses_3101957?
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
"__inference__wrapped_model_3096628-./012345!";?8
1?.
,?)
lstm_222_input?????????
? "3?0
.
dense_74"?
dense_74??????????
E__inference_dense_74_layer_call_and_return_conditional_losses_3101663\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_74_layer_call_fn_3101653O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_222_layer_call_and_return_conditional_losses_3099983?-./O?L
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
E__inference_lstm_222_layer_call_and_return_conditional_losses_3100126?-./O?L
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
E__inference_lstm_222_layer_call_and_return_conditional_losses_3100269q-./??<
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
E__inference_lstm_222_layer_call_and_return_conditional_losses_3100412q-./??<
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
*__inference_lstm_222_layer_call_fn_3099807}-./O?L
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
*__inference_lstm_222_layer_call_fn_3099818}-./O?L
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
*__inference_lstm_222_layer_call_fn_3099829d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_222_layer_call_fn_3099840d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_223_layer_call_and_return_conditional_losses_3100599?012O?L
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
E__inference_lstm_223_layer_call_and_return_conditional_losses_3100742?012O?L
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
E__inference_lstm_223_layer_call_and_return_conditional_losses_3100885q012??<
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
E__inference_lstm_223_layer_call_and_return_conditional_losses_3101028q012??<
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
*__inference_lstm_223_layer_call_fn_3100423}012O?L
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
*__inference_lstm_223_layer_call_fn_3100434}012O?L
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
*__inference_lstm_223_layer_call_fn_3100445d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_223_layer_call_fn_3100456d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_224_layer_call_and_return_conditional_losses_3101215}345O?L
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
E__inference_lstm_224_layer_call_and_return_conditional_losses_3101358}345O?L
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
E__inference_lstm_224_layer_call_and_return_conditional_losses_3101501m345??<
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
E__inference_lstm_224_layer_call_and_return_conditional_losses_3101644m345??<
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
*__inference_lstm_224_layer_call_fn_3101039p345O?L
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
*__inference_lstm_224_layer_call_fn_3101050p345O?L
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
*__inference_lstm_224_layer_call_fn_3101061`345??<
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
*__inference_lstm_224_layer_call_fn_3101072`345??<
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
J__inference_lstm_cell_510_layer_call_and_return_conditional_losses_3101729?-./??}
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
J__inference_lstm_cell_510_layer_call_and_return_conditional_losses_3101761?-./??}
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
/__inference_lstm_cell_510_layer_call_fn_3101680?-./??}
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
/__inference_lstm_cell_510_layer_call_fn_3101697?-./??}
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
J__inference_lstm_cell_511_layer_call_and_return_conditional_losses_3101827?012??}
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
J__inference_lstm_cell_511_layer_call_and_return_conditional_losses_3101859?012??}
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
/__inference_lstm_cell_511_layer_call_fn_3101778?012??}
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
/__inference_lstm_cell_511_layer_call_fn_3101795?012??}
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
J__inference_lstm_cell_512_layer_call_and_return_conditional_losses_3101925?345??}
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
J__inference_lstm_cell_512_layer_call_and_return_conditional_losses_3101957?345??}
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
/__inference_lstm_cell_512_layer_call_fn_3101876?345??}
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
/__inference_lstm_cell_512_layer_call_fn_3101893?345??}
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
J__inference_sequential_74_layer_call_and_return_conditional_losses_3098823y-./012345!"C?@
9?6
,?)
lstm_222_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_74_layer_call_and_return_conditional_losses_3098853y-./012345!"C?@
9?6
,?)
lstm_222_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_74_layer_call_and_return_conditional_losses_3099369q-./012345!";?8
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
J__inference_sequential_74_layer_call_and_return_conditional_losses_3099796q-./012345!";?8
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
/__inference_sequential_74_layer_call_fn_3098177l-./012345!"C?@
9?6
,?)
lstm_222_input?????????
p 

 
? "???????????
/__inference_sequential_74_layer_call_fn_3098793l-./012345!"C?@
9?6
,?)
lstm_222_input?????????
p

 
? "???????????
/__inference_sequential_74_layer_call_fn_3098915d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_74_layer_call_fn_3098942d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3098888?-./012345!"M?J
? 
C?@
>
lstm_222_input,?)
lstm_222_input?????????"3?0
.
dense_74"?
dense_74?????????