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
dense_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_56/kernel
s
#dense_56/kernel/Read/ReadVariableOpReadVariableOpdense_56/kernel*
_output_shapes

:
*
dtype0
r
dense_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_56/bias
k
!dense_56/bias/Read/ReadVariableOpReadVariableOpdense_56/bias*
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
lstm_168/lstm_cell_168/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_168/lstm_cell_168/kernel
?
1lstm_168/lstm_cell_168/kernel/Read/ReadVariableOpReadVariableOplstm_168/lstm_cell_168/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_168/lstm_cell_168/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_168/lstm_cell_168/recurrent_kernel
?
;lstm_168/lstm_cell_168/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_168/lstm_cell_168/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_168/lstm_cell_168/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_168/lstm_cell_168/bias
?
/lstm_168/lstm_cell_168/bias/Read/ReadVariableOpReadVariableOplstm_168/lstm_cell_168/bias*
_output_shapes	
:?*
dtype0
?
lstm_169/lstm_cell_169/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_169/lstm_cell_169/kernel
?
1lstm_169/lstm_cell_169/kernel/Read/ReadVariableOpReadVariableOplstm_169/lstm_cell_169/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_169/lstm_cell_169/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_169/lstm_cell_169/recurrent_kernel
?
;lstm_169/lstm_cell_169/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_169/lstm_cell_169/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_169/lstm_cell_169/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_169/lstm_cell_169/bias
?
/lstm_169/lstm_cell_169/bias/Read/ReadVariableOpReadVariableOplstm_169/lstm_cell_169/bias*
_output_shapes	
:?*
dtype0
?
lstm_170/lstm_cell_170/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_170/lstm_cell_170/kernel
?
1lstm_170/lstm_cell_170/kernel/Read/ReadVariableOpReadVariableOplstm_170/lstm_cell_170/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_170/lstm_cell_170/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_170/lstm_cell_170/recurrent_kernel
?
;lstm_170/lstm_cell_170/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_170/lstm_cell_170/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_170/lstm_cell_170/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_170/lstm_cell_170/bias
?
/lstm_170/lstm_cell_170/bias/Read/ReadVariableOpReadVariableOplstm_170/lstm_cell_170/bias*
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
Adam/dense_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_56/kernel/m
?
*Adam/dense_56/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_56/bias/m
y
(Adam/dense_56/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_168/lstm_cell_168/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_168/lstm_cell_168/kernel/m
?
8Adam/lstm_168/lstm_cell_168/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_168/lstm_cell_168/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_168/lstm_cell_168/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_168/lstm_cell_168/recurrent_kernel/m
?
BAdam/lstm_168/lstm_cell_168/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_168/lstm_cell_168/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_168/lstm_cell_168/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_168/lstm_cell_168/bias/m
?
6Adam/lstm_168/lstm_cell_168/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_168/lstm_cell_168/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_169/lstm_cell_169/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_169/lstm_cell_169/kernel/m
?
8Adam/lstm_169/lstm_cell_169/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_169/lstm_cell_169/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_169/lstm_cell_169/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_169/lstm_cell_169/recurrent_kernel/m
?
BAdam/lstm_169/lstm_cell_169/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_169/lstm_cell_169/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_169/lstm_cell_169/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_169/lstm_cell_169/bias/m
?
6Adam/lstm_169/lstm_cell_169/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_169/lstm_cell_169/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_170/lstm_cell_170/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_170/lstm_cell_170/kernel/m
?
8Adam/lstm_170/lstm_cell_170/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_170/lstm_cell_170/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_170/lstm_cell_170/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_170/lstm_cell_170/recurrent_kernel/m
?
BAdam/lstm_170/lstm_cell_170/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_170/lstm_cell_170/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_170/lstm_cell_170/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_170/lstm_cell_170/bias/m
?
6Adam/lstm_170/lstm_cell_170/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_170/lstm_cell_170/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_56/kernel/v
?
*Adam/dense_56/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_56/bias/v
y
(Adam/dense_56/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_168/lstm_cell_168/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_168/lstm_cell_168/kernel/v
?
8Adam/lstm_168/lstm_cell_168/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_168/lstm_cell_168/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_168/lstm_cell_168/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_168/lstm_cell_168/recurrent_kernel/v
?
BAdam/lstm_168/lstm_cell_168/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_168/lstm_cell_168/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_168/lstm_cell_168/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_168/lstm_cell_168/bias/v
?
6Adam/lstm_168/lstm_cell_168/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_168/lstm_cell_168/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_169/lstm_cell_169/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_169/lstm_cell_169/kernel/v
?
8Adam/lstm_169/lstm_cell_169/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_169/lstm_cell_169/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_169/lstm_cell_169/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_169/lstm_cell_169/recurrent_kernel/v
?
BAdam/lstm_169/lstm_cell_169/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_169/lstm_cell_169/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_169/lstm_cell_169/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_169/lstm_cell_169/bias/v
?
6Adam/lstm_169/lstm_cell_169/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_169/lstm_cell_169/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_170/lstm_cell_170/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_170/lstm_cell_170/kernel/v
?
8Adam/lstm_170/lstm_cell_170/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_170/lstm_cell_170/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_170/lstm_cell_170/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_170/lstm_cell_170/recurrent_kernel/v
?
BAdam/lstm_170/lstm_cell_170/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_170/lstm_cell_170/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_170/lstm_cell_170/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_170/lstm_cell_170/bias/v
?
6Adam/lstm_170/lstm_cell_170/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_170/lstm_cell_170/bias/v*
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
VARIABLE_VALUEdense_56/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_56/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_168/lstm_cell_168/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_168/lstm_cell_168/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_168/lstm_cell_168/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_169/lstm_cell_169/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_169/lstm_cell_169/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_169/lstm_cell_169/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_170/lstm_cell_170/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_170/lstm_cell_170/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_170/lstm_cell_170/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_56/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_56/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_168/lstm_cell_168/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_168/lstm_cell_168/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_168/lstm_cell_168/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_169/lstm_cell_169/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_169/lstm_cell_169/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_169/lstm_cell_169/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_170/lstm_cell_170/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_170/lstm_cell_170/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_170/lstm_cell_170/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_56/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_56/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_168/lstm_cell_168/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_168/lstm_cell_168/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_168/lstm_cell_168/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_169/lstm_cell_169/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_169/lstm_cell_169/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_169/lstm_cell_169/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_170/lstm_cell_170/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_170/lstm_cell_170/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_170/lstm_cell_170/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_168_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_168_inputlstm_168/lstm_cell_168/kernel'lstm_168/lstm_cell_168/recurrent_kernellstm_168/lstm_cell_168/biaslstm_169/lstm_cell_169/kernel'lstm_169/lstm_cell_169/recurrent_kernellstm_169/lstm_cell_169/biaslstm_170/lstm_cell_170/kernel'lstm_170/lstm_cell_170/recurrent_kernellstm_170/lstm_cell_170/biasdense_56/kerneldense_56/bias*
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
%__inference_signature_wrapper_2173765
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_56/kernel/Read/ReadVariableOp!dense_56/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_168/lstm_cell_168/kernel/Read/ReadVariableOp;lstm_168/lstm_cell_168/recurrent_kernel/Read/ReadVariableOp/lstm_168/lstm_cell_168/bias/Read/ReadVariableOp1lstm_169/lstm_cell_169/kernel/Read/ReadVariableOp;lstm_169/lstm_cell_169/recurrent_kernel/Read/ReadVariableOp/lstm_169/lstm_cell_169/bias/Read/ReadVariableOp1lstm_170/lstm_cell_170/kernel/Read/ReadVariableOp;lstm_170/lstm_cell_170/recurrent_kernel/Read/ReadVariableOp/lstm_170/lstm_cell_170/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_56/kernel/m/Read/ReadVariableOp(Adam/dense_56/bias/m/Read/ReadVariableOp8Adam/lstm_168/lstm_cell_168/kernel/m/Read/ReadVariableOpBAdam/lstm_168/lstm_cell_168/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_168/lstm_cell_168/bias/m/Read/ReadVariableOp8Adam/lstm_169/lstm_cell_169/kernel/m/Read/ReadVariableOpBAdam/lstm_169/lstm_cell_169/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_169/lstm_cell_169/bias/m/Read/ReadVariableOp8Adam/lstm_170/lstm_cell_170/kernel/m/Read/ReadVariableOpBAdam/lstm_170/lstm_cell_170/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_170/lstm_cell_170/bias/m/Read/ReadVariableOp*Adam/dense_56/kernel/v/Read/ReadVariableOp(Adam/dense_56/bias/v/Read/ReadVariableOp8Adam/lstm_168/lstm_cell_168/kernel/v/Read/ReadVariableOpBAdam/lstm_168/lstm_cell_168/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_168/lstm_cell_168/bias/v/Read/ReadVariableOp8Adam/lstm_169/lstm_cell_169/kernel/v/Read/ReadVariableOpBAdam/lstm_169/lstm_cell_169/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_169/lstm_cell_169/bias/v/Read/ReadVariableOp8Adam/lstm_170/lstm_cell_170/kernel/v/Read/ReadVariableOpBAdam/lstm_170/lstm_cell_170/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_170/lstm_cell_170/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2176977
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_56/kerneldense_56/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_168/lstm_cell_168/kernel'lstm_168/lstm_cell_168/recurrent_kernellstm_168/lstm_cell_168/biaslstm_169/lstm_cell_169/kernel'lstm_169/lstm_cell_169/recurrent_kernellstm_169/lstm_cell_169/biaslstm_170/lstm_cell_170/kernel'lstm_170/lstm_cell_170/recurrent_kernellstm_170/lstm_cell_170/biastotalcountAdam/dense_56/kernel/mAdam/dense_56/bias/m$Adam/lstm_168/lstm_cell_168/kernel/m.Adam/lstm_168/lstm_cell_168/recurrent_kernel/m"Adam/lstm_168/lstm_cell_168/bias/m$Adam/lstm_169/lstm_cell_169/kernel/m.Adam/lstm_169/lstm_cell_169/recurrent_kernel/m"Adam/lstm_169/lstm_cell_169/bias/m$Adam/lstm_170/lstm_cell_170/kernel/m.Adam/lstm_170/lstm_cell_170/recurrent_kernel/m"Adam/lstm_170/lstm_cell_170/bias/mAdam/dense_56/kernel/vAdam/dense_56/bias/v$Adam/lstm_168/lstm_cell_168/kernel/v.Adam/lstm_168/lstm_cell_168/recurrent_kernel/v"Adam/lstm_168/lstm_cell_168/bias/v$Adam/lstm_169/lstm_cell_169/kernel/v.Adam/lstm_169/lstm_cell_169/recurrent_kernel/v"Adam/lstm_169/lstm_cell_169/bias/v$Adam/lstm_170/lstm_cell_170/kernel/v.Adam/lstm_170/lstm_cell_170/recurrent_kernel/v"Adam/lstm_170/lstm_cell_170/bias/v*4
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
#__inference__traced_restore_2177107??+
?
?
J__inference_sequential_56_layer_call_and_return_conditional_losses_2173730
lstm_168_input#
lstm_168_2173703:	?#
lstm_168_2173705:	d?
lstm_168_2173707:	?#
lstm_169_2173710:	d?#
lstm_169_2173712:	2?
lstm_169_2173714:	?"
lstm_170_2173717:2("
lstm_170_2173719:
(
lstm_170_2173721:("
dense_56_2173724:

dense_56_2173726:
identity?? dense_56/StatefulPartitionedCall? lstm_168/StatefulPartitionedCall? lstm_169/StatefulPartitionedCall? lstm_170/StatefulPartitionedCall?
 lstm_168/StatefulPartitionedCallStatefulPartitionedCalllstm_168_inputlstm_168_2173703lstm_168_2173705lstm_168_2173707*
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
E__inference_lstm_168_layer_call_and_return_conditional_losses_2173550?
 lstm_169/StatefulPartitionedCallStatefulPartitionedCall)lstm_168/StatefulPartitionedCall:output:0lstm_169_2173710lstm_169_2173712lstm_169_2173714*
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
E__inference_lstm_169_layer_call_and_return_conditional_losses_2173385?
 lstm_170/StatefulPartitionedCallStatefulPartitionedCall)lstm_169/StatefulPartitionedCall:output:0lstm_170_2173717lstm_170_2173719lstm_170_2173721*
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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2173220?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)lstm_170/StatefulPartitionedCall:output:0dense_56_2173724dense_56_2173726*
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
E__inference_dense_56_layer_call_and_return_conditional_losses_2173022x
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_56/StatefulPartitionedCall!^lstm_168/StatefulPartitionedCall!^lstm_169/StatefulPartitionedCall!^lstm_170/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 lstm_168/StatefulPartitionedCall lstm_168/StatefulPartitionedCall2D
 lstm_169/StatefulPartitionedCall lstm_169/StatefulPartitionedCall2D
 lstm_170/StatefulPartitionedCall lstm_170/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_168_input
?#
?
while_body_2172477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_359_2172501_0:2(/
while_lstm_cell_359_2172503_0:
(+
while_lstm_cell_359_2172505_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_359_2172501:2(-
while_lstm_cell_359_2172503:
()
while_lstm_cell_359_2172505:(??+while/lstm_cell_359/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_359/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_359_2172501_0while_lstm_cell_359_2172503_0while_lstm_cell_359_2172505_0*
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
J__inference_lstm_cell_359_layer_call_and_return_conditional_losses_2172418?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_359/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_359/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_359/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_359/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_359_2172501while_lstm_cell_359_2172501_0"<
while_lstm_cell_359_2172503while_lstm_cell_359_2172503_0"<
while_lstm_cell_359_2172505while_lstm_cell_359_2172505_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_359/StatefulPartitionedCall+while/lstm_cell_359/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_56_layer_call_fn_2173819

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
J__inference_sequential_56_layer_call_and_return_conditional_losses_2173618o
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
while_cond_2174918
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2174918___redundant_placeholder05
1while_while_cond_2174918___redundant_placeholder15
1while_while_cond_2174918___redundant_placeholder25
1while_while_cond_2174918___redundant_placeholder3
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
while_cond_2176436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2176436___redundant_placeholder05
1while_while_cond_2176436___redundant_placeholder15
1while_while_cond_2176436___redundant_placeholder25
1while_while_cond_2176436___redundant_placeholder3
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
while_cond_2175820
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2175820___redundant_placeholder05
1while_while_cond_2175820___redundant_placeholder15
1while_while_cond_2175820___redundant_placeholder25
1while_while_cond_2175820___redundant_placeholder3
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
while_body_2175821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_358_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_358_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_358_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_358_matmul_readvariableop_resource:	d?G
4while_lstm_cell_358_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_358_biasadd_readvariableop_resource:	???*while/lstm_cell_358/BiasAdd/ReadVariableOp?)while/lstm_cell_358/MatMul/ReadVariableOp?+while/lstm_cell_358/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_358/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_358_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_358/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_358_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_358/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_358/addAddV2$while/lstm_cell_358/MatMul:product:0&while/lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_358_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_358/BiasAddBiasAddwhile/lstm_cell_358/add:z:02while/lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_358/splitSplit,while/lstm_cell_358/split/split_dim:output:0$while/lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_358/SigmoidSigmoid"while/lstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_358/Sigmoid_1Sigmoid"while/lstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mulMul!while/lstm_cell_358/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_358/ReluRelu"while/lstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mul_1Mulwhile/lstm_cell_358/Sigmoid:y:0&while/lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/add_1AddV2while/lstm_cell_358/mul:z:0while/lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_358/Sigmoid_2Sigmoid"while/lstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_358/Relu_1Reluwhile/lstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mul_2Mul!while/lstm_cell_358/Sigmoid_2:y:0(while/lstm_cell_358/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_358/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_358/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_358/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_358/BiasAdd/ReadVariableOp*^while/lstm_cell_358/MatMul/ReadVariableOp,^while/lstm_cell_358/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_358_biasadd_readvariableop_resource5while_lstm_cell_358_biasadd_readvariableop_resource_0"n
4while_lstm_cell_358_matmul_1_readvariableop_resource6while_lstm_cell_358_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_358_matmul_readvariableop_resource4while_lstm_cell_358_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_358/BiasAdd/ReadVariableOp*while/lstm_cell_358/BiasAdd/ReadVariableOp2V
)while/lstm_cell_358/MatMul/ReadVariableOp)while/lstm_cell_358/MatMul/ReadVariableOp2Z
+while/lstm_cell_358/MatMul_1/ReadVariableOp+while/lstm_cell_358/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_2173765
lstm_168_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_168_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2171505o
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
_user_specified_namelstm_168_input
?8
?
while_body_2172770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_358_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_358_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_358_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_358_matmul_readvariableop_resource:	d?G
4while_lstm_cell_358_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_358_biasadd_readvariableop_resource:	???*while/lstm_cell_358/BiasAdd/ReadVariableOp?)while/lstm_cell_358/MatMul/ReadVariableOp?+while/lstm_cell_358/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_358/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_358_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_358/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_358_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_358/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_358/addAddV2$while/lstm_cell_358/MatMul:product:0&while/lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_358_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_358/BiasAddBiasAddwhile/lstm_cell_358/add:z:02while/lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_358/splitSplit,while/lstm_cell_358/split/split_dim:output:0$while/lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_358/SigmoidSigmoid"while/lstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_358/Sigmoid_1Sigmoid"while/lstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mulMul!while/lstm_cell_358/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_358/ReluRelu"while/lstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mul_1Mulwhile/lstm_cell_358/Sigmoid:y:0&while/lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/add_1AddV2while/lstm_cell_358/mul:z:0while/lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_358/Sigmoid_2Sigmoid"while/lstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_358/Relu_1Reluwhile/lstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mul_2Mul!while/lstm_cell_358/Sigmoid_2:y:0(while/lstm_cell_358/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_358/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_358/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_358/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_358/BiasAdd/ReadVariableOp*^while/lstm_cell_358/MatMul/ReadVariableOp,^while/lstm_cell_358/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_358_biasadd_readvariableop_resource5while_lstm_cell_358_biasadd_readvariableop_resource_0"n
4while_lstm_cell_358_matmul_1_readvariableop_resource6while_lstm_cell_358_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_358_matmul_readvariableop_resource4while_lstm_cell_358_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_358/BiasAdd/ReadVariableOp*while/lstm_cell_358/BiasAdd/ReadVariableOp2V
)while/lstm_cell_358/MatMul/ReadVariableOp)while/lstm_cell_358/MatMul/ReadVariableOp2Z
+while/lstm_cell_358/MatMul_1/ReadVariableOp+while/lstm_cell_358/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
J__inference_sequential_56_layer_call_and_return_conditional_losses_2174246

inputsH
5lstm_168_lstm_cell_357_matmul_readvariableop_resource:	?J
7lstm_168_lstm_cell_357_matmul_1_readvariableop_resource:	d?E
6lstm_168_lstm_cell_357_biasadd_readvariableop_resource:	?H
5lstm_169_lstm_cell_358_matmul_readvariableop_resource:	d?J
7lstm_169_lstm_cell_358_matmul_1_readvariableop_resource:	2?E
6lstm_169_lstm_cell_358_biasadd_readvariableop_resource:	?G
5lstm_170_lstm_cell_359_matmul_readvariableop_resource:2(I
7lstm_170_lstm_cell_359_matmul_1_readvariableop_resource:
(D
6lstm_170_lstm_cell_359_biasadd_readvariableop_resource:(9
'dense_56_matmul_readvariableop_resource:
6
(dense_56_biasadd_readvariableop_resource:
identity??dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?-lstm_168/lstm_cell_357/BiasAdd/ReadVariableOp?,lstm_168/lstm_cell_357/MatMul/ReadVariableOp?.lstm_168/lstm_cell_357/MatMul_1/ReadVariableOp?lstm_168/while?-lstm_169/lstm_cell_358/BiasAdd/ReadVariableOp?,lstm_169/lstm_cell_358/MatMul/ReadVariableOp?.lstm_169/lstm_cell_358/MatMul_1/ReadVariableOp?lstm_169/while?-lstm_170/lstm_cell_359/BiasAdd/ReadVariableOp?,lstm_170/lstm_cell_359/MatMul/ReadVariableOp?.lstm_170/lstm_cell_359/MatMul_1/ReadVariableOp?lstm_170/whileD
lstm_168/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_168/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_168/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_168/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_168/strided_sliceStridedSlicelstm_168/Shape:output:0%lstm_168/strided_slice/stack:output:0'lstm_168/strided_slice/stack_1:output:0'lstm_168/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_168/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_168/zeros/packedPacklstm_168/strided_slice:output:0 lstm_168/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_168/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_168/zerosFilllstm_168/zeros/packed:output:0lstm_168/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_168/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_168/zeros_1/packedPacklstm_168/strided_slice:output:0"lstm_168/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_168/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_168/zeros_1Fill lstm_168/zeros_1/packed:output:0lstm_168/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_168/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_168/transpose	Transposeinputs lstm_168/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_168/Shape_1Shapelstm_168/transpose:y:0*
T0*
_output_shapes
:h
lstm_168/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_168/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_168/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_168/strided_slice_1StridedSlicelstm_168/Shape_1:output:0'lstm_168/strided_slice_1/stack:output:0)lstm_168/strided_slice_1/stack_1:output:0)lstm_168/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_168/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_168/TensorArrayV2TensorListReserve-lstm_168/TensorArrayV2/element_shape:output:0!lstm_168/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_168/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_168/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_168/transpose:y:0Glstm_168/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_168/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_168/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_168/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_168/strided_slice_2StridedSlicelstm_168/transpose:y:0'lstm_168/strided_slice_2/stack:output:0)lstm_168/strided_slice_2/stack_1:output:0)lstm_168/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_168/lstm_cell_357/MatMul/ReadVariableOpReadVariableOp5lstm_168_lstm_cell_357_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_168/lstm_cell_357/MatMulMatMul!lstm_168/strided_slice_2:output:04lstm_168/lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_168/lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOp7lstm_168_lstm_cell_357_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_168/lstm_cell_357/MatMul_1MatMullstm_168/zeros:output:06lstm_168/lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_168/lstm_cell_357/addAddV2'lstm_168/lstm_cell_357/MatMul:product:0)lstm_168/lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_168/lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOp6lstm_168_lstm_cell_357_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_168/lstm_cell_357/BiasAddBiasAddlstm_168/lstm_cell_357/add:z:05lstm_168/lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_168/lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_168/lstm_cell_357/splitSplit/lstm_168/lstm_cell_357/split/split_dim:output:0'lstm_168/lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_168/lstm_cell_357/SigmoidSigmoid%lstm_168/lstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_168/lstm_cell_357/Sigmoid_1Sigmoid%lstm_168/lstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_168/lstm_cell_357/mulMul$lstm_168/lstm_cell_357/Sigmoid_1:y:0lstm_168/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_168/lstm_cell_357/ReluRelu%lstm_168/lstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_168/lstm_cell_357/mul_1Mul"lstm_168/lstm_cell_357/Sigmoid:y:0)lstm_168/lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_168/lstm_cell_357/add_1AddV2lstm_168/lstm_cell_357/mul:z:0 lstm_168/lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_168/lstm_cell_357/Sigmoid_2Sigmoid%lstm_168/lstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_168/lstm_cell_357/Relu_1Relu lstm_168/lstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_168/lstm_cell_357/mul_2Mul$lstm_168/lstm_cell_357/Sigmoid_2:y:0+lstm_168/lstm_cell_357/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_168/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_168/TensorArrayV2_1TensorListReserve/lstm_168/TensorArrayV2_1/element_shape:output:0!lstm_168/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_168/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_168/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_168/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_168/whileWhile$lstm_168/while/loop_counter:output:0*lstm_168/while/maximum_iterations:output:0lstm_168/time:output:0!lstm_168/TensorArrayV2_1:handle:0lstm_168/zeros:output:0lstm_168/zeros_1:output:0!lstm_168/strided_slice_1:output:0@lstm_168/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_168_lstm_cell_357_matmul_readvariableop_resource7lstm_168_lstm_cell_357_matmul_1_readvariableop_resource6lstm_168_lstm_cell_357_biasadd_readvariableop_resource*
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
lstm_168_while_body_2173878*'
condR
lstm_168_while_cond_2173877*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_168/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_168/TensorArrayV2Stack/TensorListStackTensorListStacklstm_168/while:output:3Blstm_168/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_168/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_168/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_168/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_168/strided_slice_3StridedSlice4lstm_168/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_168/strided_slice_3/stack:output:0)lstm_168/strided_slice_3/stack_1:output:0)lstm_168/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_168/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_168/transpose_1	Transpose4lstm_168/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_168/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_168/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_169/ShapeShapelstm_168/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_169/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_169/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_169/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_169/strided_sliceStridedSlicelstm_169/Shape:output:0%lstm_169/strided_slice/stack:output:0'lstm_169/strided_slice/stack_1:output:0'lstm_169/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_169/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_169/zeros/packedPacklstm_169/strided_slice:output:0 lstm_169/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_169/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_169/zerosFilllstm_169/zeros/packed:output:0lstm_169/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_169/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_169/zeros_1/packedPacklstm_169/strided_slice:output:0"lstm_169/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_169/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_169/zeros_1Fill lstm_169/zeros_1/packed:output:0lstm_169/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_169/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_169/transpose	Transposelstm_168/transpose_1:y:0 lstm_169/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_169/Shape_1Shapelstm_169/transpose:y:0*
T0*
_output_shapes
:h
lstm_169/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_169/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_169/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_169/strided_slice_1StridedSlicelstm_169/Shape_1:output:0'lstm_169/strided_slice_1/stack:output:0)lstm_169/strided_slice_1/stack_1:output:0)lstm_169/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_169/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_169/TensorArrayV2TensorListReserve-lstm_169/TensorArrayV2/element_shape:output:0!lstm_169/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_169/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_169/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_169/transpose:y:0Glstm_169/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_169/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_169/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_169/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_169/strided_slice_2StridedSlicelstm_169/transpose:y:0'lstm_169/strided_slice_2/stack:output:0)lstm_169/strided_slice_2/stack_1:output:0)lstm_169/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_169/lstm_cell_358/MatMul/ReadVariableOpReadVariableOp5lstm_169_lstm_cell_358_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_169/lstm_cell_358/MatMulMatMul!lstm_169/strided_slice_2:output:04lstm_169/lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_169/lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOp7lstm_169_lstm_cell_358_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_169/lstm_cell_358/MatMul_1MatMullstm_169/zeros:output:06lstm_169/lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_169/lstm_cell_358/addAddV2'lstm_169/lstm_cell_358/MatMul:product:0)lstm_169/lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_169/lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOp6lstm_169_lstm_cell_358_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_169/lstm_cell_358/BiasAddBiasAddlstm_169/lstm_cell_358/add:z:05lstm_169/lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_169/lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_169/lstm_cell_358/splitSplit/lstm_169/lstm_cell_358/split/split_dim:output:0'lstm_169/lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_169/lstm_cell_358/SigmoidSigmoid%lstm_169/lstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_169/lstm_cell_358/Sigmoid_1Sigmoid%lstm_169/lstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_169/lstm_cell_358/mulMul$lstm_169/lstm_cell_358/Sigmoid_1:y:0lstm_169/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_169/lstm_cell_358/ReluRelu%lstm_169/lstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_169/lstm_cell_358/mul_1Mul"lstm_169/lstm_cell_358/Sigmoid:y:0)lstm_169/lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_169/lstm_cell_358/add_1AddV2lstm_169/lstm_cell_358/mul:z:0 lstm_169/lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_169/lstm_cell_358/Sigmoid_2Sigmoid%lstm_169/lstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_169/lstm_cell_358/Relu_1Relu lstm_169/lstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_169/lstm_cell_358/mul_2Mul$lstm_169/lstm_cell_358/Sigmoid_2:y:0+lstm_169/lstm_cell_358/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_169/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_169/TensorArrayV2_1TensorListReserve/lstm_169/TensorArrayV2_1/element_shape:output:0!lstm_169/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_169/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_169/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_169/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_169/whileWhile$lstm_169/while/loop_counter:output:0*lstm_169/while/maximum_iterations:output:0lstm_169/time:output:0!lstm_169/TensorArrayV2_1:handle:0lstm_169/zeros:output:0lstm_169/zeros_1:output:0!lstm_169/strided_slice_1:output:0@lstm_169/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_169_lstm_cell_358_matmul_readvariableop_resource7lstm_169_lstm_cell_358_matmul_1_readvariableop_resource6lstm_169_lstm_cell_358_biasadd_readvariableop_resource*
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
lstm_169_while_body_2174017*'
condR
lstm_169_while_cond_2174016*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_169/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_169/TensorArrayV2Stack/TensorListStackTensorListStacklstm_169/while:output:3Blstm_169/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_169/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_169/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_169/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_169/strided_slice_3StridedSlice4lstm_169/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_169/strided_slice_3/stack:output:0)lstm_169/strided_slice_3/stack_1:output:0)lstm_169/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_169/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_169/transpose_1	Transpose4lstm_169/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_169/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_169/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_170/ShapeShapelstm_169/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_170/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_170/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_170/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_170/strided_sliceStridedSlicelstm_170/Shape:output:0%lstm_170/strided_slice/stack:output:0'lstm_170/strided_slice/stack_1:output:0'lstm_170/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_170/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_170/zeros/packedPacklstm_170/strided_slice:output:0 lstm_170/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_170/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_170/zerosFilllstm_170/zeros/packed:output:0lstm_170/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_170/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_170/zeros_1/packedPacklstm_170/strided_slice:output:0"lstm_170/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_170/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_170/zeros_1Fill lstm_170/zeros_1/packed:output:0lstm_170/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_170/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_170/transpose	Transposelstm_169/transpose_1:y:0 lstm_170/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_170/Shape_1Shapelstm_170/transpose:y:0*
T0*
_output_shapes
:h
lstm_170/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_170/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_170/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_170/strided_slice_1StridedSlicelstm_170/Shape_1:output:0'lstm_170/strided_slice_1/stack:output:0)lstm_170/strided_slice_1/stack_1:output:0)lstm_170/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_170/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_170/TensorArrayV2TensorListReserve-lstm_170/TensorArrayV2/element_shape:output:0!lstm_170/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_170/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_170/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_170/transpose:y:0Glstm_170/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_170/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_170/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_170/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_170/strided_slice_2StridedSlicelstm_170/transpose:y:0'lstm_170/strided_slice_2/stack:output:0)lstm_170/strided_slice_2/stack_1:output:0)lstm_170/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_170/lstm_cell_359/MatMul/ReadVariableOpReadVariableOp5lstm_170_lstm_cell_359_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_170/lstm_cell_359/MatMulMatMul!lstm_170/strided_slice_2:output:04lstm_170/lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_170/lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOp7lstm_170_lstm_cell_359_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_170/lstm_cell_359/MatMul_1MatMullstm_170/zeros:output:06lstm_170/lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_170/lstm_cell_359/addAddV2'lstm_170/lstm_cell_359/MatMul:product:0)lstm_170/lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_170/lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOp6lstm_170_lstm_cell_359_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_170/lstm_cell_359/BiasAddBiasAddlstm_170/lstm_cell_359/add:z:05lstm_170/lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_170/lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_170/lstm_cell_359/splitSplit/lstm_170/lstm_cell_359/split/split_dim:output:0'lstm_170/lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_170/lstm_cell_359/SigmoidSigmoid%lstm_170/lstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_170/lstm_cell_359/Sigmoid_1Sigmoid%lstm_170/lstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_170/lstm_cell_359/mulMul$lstm_170/lstm_cell_359/Sigmoid_1:y:0lstm_170/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_170/lstm_cell_359/ReluRelu%lstm_170/lstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_170/lstm_cell_359/mul_1Mul"lstm_170/lstm_cell_359/Sigmoid:y:0)lstm_170/lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_170/lstm_cell_359/add_1AddV2lstm_170/lstm_cell_359/mul:z:0 lstm_170/lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_170/lstm_cell_359/Sigmoid_2Sigmoid%lstm_170/lstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_170/lstm_cell_359/Relu_1Relu lstm_170/lstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_170/lstm_cell_359/mul_2Mul$lstm_170/lstm_cell_359/Sigmoid_2:y:0+lstm_170/lstm_cell_359/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_170/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_170/TensorArrayV2_1TensorListReserve/lstm_170/TensorArrayV2_1/element_shape:output:0!lstm_170/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_170/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_170/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_170/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_170/whileWhile$lstm_170/while/loop_counter:output:0*lstm_170/while/maximum_iterations:output:0lstm_170/time:output:0!lstm_170/TensorArrayV2_1:handle:0lstm_170/zeros:output:0lstm_170/zeros_1:output:0!lstm_170/strided_slice_1:output:0@lstm_170/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_170_lstm_cell_359_matmul_readvariableop_resource7lstm_170_lstm_cell_359_matmul_1_readvariableop_resource6lstm_170_lstm_cell_359_biasadd_readvariableop_resource*
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
lstm_170_while_body_2174156*'
condR
lstm_170_while_cond_2174155*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_170/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_170/TensorArrayV2Stack/TensorListStackTensorListStacklstm_170/while:output:3Blstm_170/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_170/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_170/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_170/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_170/strided_slice_3StridedSlice4lstm_170/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_170/strided_slice_3/stack:output:0)lstm_170/strided_slice_3/stack_1:output:0)lstm_170/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_170/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_170/transpose_1	Transpose4lstm_170/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_170/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_170/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_56/MatMulMatMul!lstm_170/strided_slice_3:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_56/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp.^lstm_168/lstm_cell_357/BiasAdd/ReadVariableOp-^lstm_168/lstm_cell_357/MatMul/ReadVariableOp/^lstm_168/lstm_cell_357/MatMul_1/ReadVariableOp^lstm_168/while.^lstm_169/lstm_cell_358/BiasAdd/ReadVariableOp-^lstm_169/lstm_cell_358/MatMul/ReadVariableOp/^lstm_169/lstm_cell_358/MatMul_1/ReadVariableOp^lstm_169/while.^lstm_170/lstm_cell_359/BiasAdd/ReadVariableOp-^lstm_170/lstm_cell_359/MatMul/ReadVariableOp/^lstm_170/lstm_cell_359/MatMul_1/ReadVariableOp^lstm_170/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2^
-lstm_168/lstm_cell_357/BiasAdd/ReadVariableOp-lstm_168/lstm_cell_357/BiasAdd/ReadVariableOp2\
,lstm_168/lstm_cell_357/MatMul/ReadVariableOp,lstm_168/lstm_cell_357/MatMul/ReadVariableOp2`
.lstm_168/lstm_cell_357/MatMul_1/ReadVariableOp.lstm_168/lstm_cell_357/MatMul_1/ReadVariableOp2 
lstm_168/whilelstm_168/while2^
-lstm_169/lstm_cell_358/BiasAdd/ReadVariableOp-lstm_169/lstm_cell_358/BiasAdd/ReadVariableOp2\
,lstm_169/lstm_cell_358/MatMul/ReadVariableOp,lstm_169/lstm_cell_358/MatMul/ReadVariableOp2`
.lstm_169/lstm_cell_358/MatMul_1/ReadVariableOp.lstm_169/lstm_cell_358/MatMul_1/ReadVariableOp2 
lstm_169/whilelstm_169/while2^
-lstm_170/lstm_cell_359/BiasAdd/ReadVariableOp-lstm_170/lstm_cell_359/BiasAdd/ReadVariableOp2\
,lstm_170/lstm_cell_359/MatMul/ReadVariableOp,lstm_170/lstm_cell_359/MatMul/ReadVariableOp2`
.lstm_170/lstm_cell_359/MatMul_1/ReadVariableOp.lstm_170/lstm_cell_359/MatMul_1/ReadVariableOp2 
lstm_170/whilelstm_170/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2172769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2172769___redundant_placeholder05
1while_while_cond_2172769___redundant_placeholder15
1while_while_cond_2172769___redundant_placeholder25
1while_while_cond_2172769___redundant_placeholder3
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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2173220

inputs>
,lstm_cell_359_matmul_readvariableop_resource:2(@
.lstm_cell_359_matmul_1_readvariableop_resource:
(;
-lstm_cell_359_biasadd_readvariableop_resource:(
identity??$lstm_cell_359/BiasAdd/ReadVariableOp?#lstm_cell_359/MatMul/ReadVariableOp?%lstm_cell_359/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_359/MatMul/ReadVariableOpReadVariableOp,lstm_cell_359_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_359/MatMulMatMulstrided_slice_2:output:0+lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_359_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_359/MatMul_1MatMulzeros:output:0-lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_359/addAddV2lstm_cell_359/MatMul:product:0 lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_359_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_359/BiasAddBiasAddlstm_cell_359/add:z:0,lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_359/splitSplit&lstm_cell_359/split/split_dim:output:0lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_359/SigmoidSigmoidlstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_359/Sigmoid_1Sigmoidlstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_359/mulMullstm_cell_359/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_359/ReluRelulstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_359/mul_1Mullstm_cell_359/Sigmoid:y:0 lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_359/add_1AddV2lstm_cell_359/mul:z:0lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_359/Sigmoid_2Sigmoidlstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_359/Relu_1Relulstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_359/mul_2Mullstm_cell_359/Sigmoid_2:y:0"lstm_cell_359/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_359_matmul_readvariableop_resource.lstm_cell_359_matmul_1_readvariableop_resource-lstm_cell_359_biasadd_readvariableop_resource*
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
while_body_2173136*
condR
while_cond_2173135*K
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
NoOpNoOp%^lstm_cell_359/BiasAdd/ReadVariableOp$^lstm_cell_359/MatMul/ReadVariableOp&^lstm_cell_359/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_359/BiasAdd/ReadVariableOp$lstm_cell_359/BiasAdd/ReadVariableOp2J
#lstm_cell_359/MatMul/ReadVariableOp#lstm_cell_359/MatMul/ReadVariableOp2N
%lstm_cell_359/MatMul_1/ReadVariableOp%lstm_cell_359/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_169_layer_call_and_return_conditional_losses_2172854

inputs?
,lstm_cell_358_matmul_readvariableop_resource:	d?A
.lstm_cell_358_matmul_1_readvariableop_resource:	2?<
-lstm_cell_358_biasadd_readvariableop_resource:	?
identity??$lstm_cell_358/BiasAdd/ReadVariableOp?#lstm_cell_358/MatMul/ReadVariableOp?%lstm_cell_358/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_358/MatMul/ReadVariableOpReadVariableOp,lstm_cell_358_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_358/MatMulMatMulstrided_slice_2:output:0+lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_358_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_358/MatMul_1MatMulzeros:output:0-lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_358/addAddV2lstm_cell_358/MatMul:product:0 lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_358_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_358/BiasAddBiasAddlstm_cell_358/add:z:0,lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_358/splitSplit&lstm_cell_358/split/split_dim:output:0lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_358/SigmoidSigmoidlstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_358/Sigmoid_1Sigmoidlstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_358/mulMullstm_cell_358/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_358/ReluRelulstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_358/mul_1Mullstm_cell_358/Sigmoid:y:0 lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_358/add_1AddV2lstm_cell_358/mul:z:0lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_358/Sigmoid_2Sigmoidlstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_358/Relu_1Relulstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_358/mul_2Mullstm_cell_358/Sigmoid_2:y:0"lstm_cell_358/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_358_matmul_readvariableop_resource.lstm_cell_358_matmul_1_readvariableop_resource-lstm_cell_358_biasadd_readvariableop_resource*
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
while_body_2172770*
condR
while_cond_2172769*K
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
NoOpNoOp%^lstm_cell_358/BiasAdd/ReadVariableOp$^lstm_cell_358/MatMul/ReadVariableOp&^lstm_cell_358/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_358/BiasAdd/ReadVariableOp$lstm_cell_358/BiasAdd/ReadVariableOp2J
#lstm_cell_358/MatMul/ReadVariableOp#lstm_cell_358/MatMul/ReadVariableOp2N
%lstm_cell_358/MatMul_1/ReadVariableOp%lstm_cell_358/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?

lstm_170_while_body_2174583.
*lstm_170_while_lstm_170_while_loop_counter4
0lstm_170_while_lstm_170_while_maximum_iterations
lstm_170_while_placeholder 
lstm_170_while_placeholder_1 
lstm_170_while_placeholder_2 
lstm_170_while_placeholder_3-
)lstm_170_while_lstm_170_strided_slice_1_0i
elstm_170_while_tensorarrayv2read_tensorlistgetitem_lstm_170_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_170_while_lstm_cell_359_matmul_readvariableop_resource_0:2(Q
?lstm_170_while_lstm_cell_359_matmul_1_readvariableop_resource_0:
(L
>lstm_170_while_lstm_cell_359_biasadd_readvariableop_resource_0:(
lstm_170_while_identity
lstm_170_while_identity_1
lstm_170_while_identity_2
lstm_170_while_identity_3
lstm_170_while_identity_4
lstm_170_while_identity_5+
'lstm_170_while_lstm_170_strided_slice_1g
clstm_170_while_tensorarrayv2read_tensorlistgetitem_lstm_170_tensorarrayunstack_tensorlistfromtensorM
;lstm_170_while_lstm_cell_359_matmul_readvariableop_resource:2(O
=lstm_170_while_lstm_cell_359_matmul_1_readvariableop_resource:
(J
<lstm_170_while_lstm_cell_359_biasadd_readvariableop_resource:(??3lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOp?2lstm_170/while/lstm_cell_359/MatMul/ReadVariableOp?4lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOp?
@lstm_170/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_170/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_170_while_tensorarrayv2read_tensorlistgetitem_lstm_170_tensorarrayunstack_tensorlistfromtensor_0lstm_170_while_placeholderIlstm_170/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_170/while/lstm_cell_359/MatMul/ReadVariableOpReadVariableOp=lstm_170_while_lstm_cell_359_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_170/while/lstm_cell_359/MatMulMatMul9lstm_170/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_170/while/lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOp?lstm_170_while_lstm_cell_359_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_170/while/lstm_cell_359/MatMul_1MatMullstm_170_while_placeholder_2<lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_170/while/lstm_cell_359/addAddV2-lstm_170/while/lstm_cell_359/MatMul:product:0/lstm_170/while/lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOp>lstm_170_while_lstm_cell_359_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_170/while/lstm_cell_359/BiasAddBiasAdd$lstm_170/while/lstm_cell_359/add:z:0;lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_170/while/lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_170/while/lstm_cell_359/splitSplit5lstm_170/while/lstm_cell_359/split/split_dim:output:0-lstm_170/while/lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_170/while/lstm_cell_359/SigmoidSigmoid+lstm_170/while/lstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_170/while/lstm_cell_359/Sigmoid_1Sigmoid+lstm_170/while/lstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_170/while/lstm_cell_359/mulMul*lstm_170/while/lstm_cell_359/Sigmoid_1:y:0lstm_170_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_170/while/lstm_cell_359/ReluRelu+lstm_170/while/lstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_170/while/lstm_cell_359/mul_1Mul(lstm_170/while/lstm_cell_359/Sigmoid:y:0/lstm_170/while/lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_170/while/lstm_cell_359/add_1AddV2$lstm_170/while/lstm_cell_359/mul:z:0&lstm_170/while/lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_170/while/lstm_cell_359/Sigmoid_2Sigmoid+lstm_170/while/lstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_170/while/lstm_cell_359/Relu_1Relu&lstm_170/while/lstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_170/while/lstm_cell_359/mul_2Mul*lstm_170/while/lstm_cell_359/Sigmoid_2:y:01lstm_170/while/lstm_cell_359/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_170/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_170_while_placeholder_1lstm_170_while_placeholder&lstm_170/while/lstm_cell_359/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_170/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_170/while/addAddV2lstm_170_while_placeholderlstm_170/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_170/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_170/while/add_1AddV2*lstm_170_while_lstm_170_while_loop_counterlstm_170/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_170/while/IdentityIdentitylstm_170/while/add_1:z:0^lstm_170/while/NoOp*
T0*
_output_shapes
: ?
lstm_170/while/Identity_1Identity0lstm_170_while_lstm_170_while_maximum_iterations^lstm_170/while/NoOp*
T0*
_output_shapes
: t
lstm_170/while/Identity_2Identitylstm_170/while/add:z:0^lstm_170/while/NoOp*
T0*
_output_shapes
: ?
lstm_170/while/Identity_3IdentityClstm_170/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_170/while/NoOp*
T0*
_output_shapes
: ?
lstm_170/while/Identity_4Identity&lstm_170/while/lstm_cell_359/mul_2:z:0^lstm_170/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_170/while/Identity_5Identity&lstm_170/while/lstm_cell_359/add_1:z:0^lstm_170/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_170/while/NoOpNoOp4^lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOp3^lstm_170/while/lstm_cell_359/MatMul/ReadVariableOp5^lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_170_while_identity lstm_170/while/Identity:output:0"?
lstm_170_while_identity_1"lstm_170/while/Identity_1:output:0"?
lstm_170_while_identity_2"lstm_170/while/Identity_2:output:0"?
lstm_170_while_identity_3"lstm_170/while/Identity_3:output:0"?
lstm_170_while_identity_4"lstm_170/while/Identity_4:output:0"?
lstm_170_while_identity_5"lstm_170/while/Identity_5:output:0"T
'lstm_170_while_lstm_170_strided_slice_1)lstm_170_while_lstm_170_strided_slice_1_0"~
<lstm_170_while_lstm_cell_359_biasadd_readvariableop_resource>lstm_170_while_lstm_cell_359_biasadd_readvariableop_resource_0"?
=lstm_170_while_lstm_cell_359_matmul_1_readvariableop_resource?lstm_170_while_lstm_cell_359_matmul_1_readvariableop_resource_0"|
;lstm_170_while_lstm_cell_359_matmul_readvariableop_resource=lstm_170_while_lstm_cell_359_matmul_readvariableop_resource_0"?
clstm_170_while_tensorarrayv2read_tensorlistgetitem_lstm_170_tensorarrayunstack_tensorlistfromtensorelstm_170_while_tensorarrayv2read_tensorlistgetitem_lstm_170_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOp3lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOp2h
2lstm_170/while/lstm_cell_359/MatMul/ReadVariableOp2lstm_170/while/lstm_cell_359/MatMul/ReadVariableOp2l
4lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOp4lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2176294
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_359_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_359_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_359_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_359_matmul_readvariableop_resource:2(F
4while_lstm_cell_359_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_359_biasadd_readvariableop_resource:(??*while/lstm_cell_359/BiasAdd/ReadVariableOp?)while/lstm_cell_359/MatMul/ReadVariableOp?+while/lstm_cell_359/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_359/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_359_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_359/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_359_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_359/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_359/addAddV2$while/lstm_cell_359/MatMul:product:0&while/lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_359_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_359/BiasAddBiasAddwhile/lstm_cell_359/add:z:02while/lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_359/splitSplit,while/lstm_cell_359/split/split_dim:output:0$while/lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_359/SigmoidSigmoid"while/lstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_359/Sigmoid_1Sigmoid"while/lstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mulMul!while/lstm_cell_359/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_359/ReluRelu"while/lstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mul_1Mulwhile/lstm_cell_359/Sigmoid:y:0&while/lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/add_1AddV2while/lstm_cell_359/mul:z:0while/lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_359/Sigmoid_2Sigmoid"while/lstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_359/Relu_1Reluwhile/lstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mul_2Mul!while/lstm_cell_359/Sigmoid_2:y:0(while/lstm_cell_359/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_359/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_359/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_359/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_359/BiasAdd/ReadVariableOp*^while/lstm_cell_359/MatMul/ReadVariableOp,^while/lstm_cell_359/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_359_biasadd_readvariableop_resource5while_lstm_cell_359_biasadd_readvariableop_resource_0"n
4while_lstm_cell_359_matmul_1_readvariableop_resource6while_lstm_cell_359_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_359_matmul_readvariableop_resource4while_lstm_cell_359_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_359/BiasAdd/ReadVariableOp*while/lstm_cell_359/BiasAdd/ReadVariableOp2V
)while/lstm_cell_359/MatMul/ReadVariableOp)while/lstm_cell_359/MatMul/ReadVariableOp2Z
+while/lstm_cell_359/MatMul_1/ReadVariableOp+while/lstm_cell_359/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_359_layer_call_and_return_conditional_losses_2172418

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
*__inference_lstm_168_layer_call_fn_2174717

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
E__inference_lstm_168_layer_call_and_return_conditional_losses_2173550s
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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2173004

inputs>
,lstm_cell_359_matmul_readvariableop_resource:2(@
.lstm_cell_359_matmul_1_readvariableop_resource:
(;
-lstm_cell_359_biasadd_readvariableop_resource:(
identity??$lstm_cell_359/BiasAdd/ReadVariableOp?#lstm_cell_359/MatMul/ReadVariableOp?%lstm_cell_359/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_359/MatMul/ReadVariableOpReadVariableOp,lstm_cell_359_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_359/MatMulMatMulstrided_slice_2:output:0+lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_359_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_359/MatMul_1MatMulzeros:output:0-lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_359/addAddV2lstm_cell_359/MatMul:product:0 lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_359_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_359/BiasAddBiasAddlstm_cell_359/add:z:0,lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_359/splitSplit&lstm_cell_359/split/split_dim:output:0lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_359/SigmoidSigmoidlstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_359/Sigmoid_1Sigmoidlstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_359/mulMullstm_cell_359/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_359/ReluRelulstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_359/mul_1Mullstm_cell_359/Sigmoid:y:0 lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_359/add_1AddV2lstm_cell_359/mul:z:0lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_359/Sigmoid_2Sigmoidlstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_359/Relu_1Relulstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_359/mul_2Mullstm_cell_359/Sigmoid_2:y:0"lstm_cell_359/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_359_matmul_readvariableop_resource.lstm_cell_359_matmul_1_readvariableop_resource-lstm_cell_359_biasadd_readvariableop_resource*
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
while_body_2172920*
condR
while_cond_2172919*K
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
NoOpNoOp%^lstm_cell_359/BiasAdd/ReadVariableOp$^lstm_cell_359/MatMul/ReadVariableOp&^lstm_cell_359/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_359/BiasAdd/ReadVariableOp$lstm_cell_359/BiasAdd/ReadVariableOp2J
#lstm_cell_359/MatMul/ReadVariableOp#lstm_cell_359/MatMul/ReadVariableOp2N
%lstm_cell_359/MatMul_1/ReadVariableOp%lstm_cell_359/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?C
?

lstm_169_while_body_2174017.
*lstm_169_while_lstm_169_while_loop_counter4
0lstm_169_while_lstm_169_while_maximum_iterations
lstm_169_while_placeholder 
lstm_169_while_placeholder_1 
lstm_169_while_placeholder_2 
lstm_169_while_placeholder_3-
)lstm_169_while_lstm_169_strided_slice_1_0i
elstm_169_while_tensorarrayv2read_tensorlistgetitem_lstm_169_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_169_while_lstm_cell_358_matmul_readvariableop_resource_0:	d?R
?lstm_169_while_lstm_cell_358_matmul_1_readvariableop_resource_0:	2?M
>lstm_169_while_lstm_cell_358_biasadd_readvariableop_resource_0:	?
lstm_169_while_identity
lstm_169_while_identity_1
lstm_169_while_identity_2
lstm_169_while_identity_3
lstm_169_while_identity_4
lstm_169_while_identity_5+
'lstm_169_while_lstm_169_strided_slice_1g
clstm_169_while_tensorarrayv2read_tensorlistgetitem_lstm_169_tensorarrayunstack_tensorlistfromtensorN
;lstm_169_while_lstm_cell_358_matmul_readvariableop_resource:	d?P
=lstm_169_while_lstm_cell_358_matmul_1_readvariableop_resource:	2?K
<lstm_169_while_lstm_cell_358_biasadd_readvariableop_resource:	???3lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOp?2lstm_169/while/lstm_cell_358/MatMul/ReadVariableOp?4lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOp?
@lstm_169/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_169/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_169_while_tensorarrayv2read_tensorlistgetitem_lstm_169_tensorarrayunstack_tensorlistfromtensor_0lstm_169_while_placeholderIlstm_169/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_169/while/lstm_cell_358/MatMul/ReadVariableOpReadVariableOp=lstm_169_while_lstm_cell_358_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_169/while/lstm_cell_358/MatMulMatMul9lstm_169/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_169/while/lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOp?lstm_169_while_lstm_cell_358_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_169/while/lstm_cell_358/MatMul_1MatMullstm_169_while_placeholder_2<lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_169/while/lstm_cell_358/addAddV2-lstm_169/while/lstm_cell_358/MatMul:product:0/lstm_169/while/lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOp>lstm_169_while_lstm_cell_358_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_169/while/lstm_cell_358/BiasAddBiasAdd$lstm_169/while/lstm_cell_358/add:z:0;lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_169/while/lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_169/while/lstm_cell_358/splitSplit5lstm_169/while/lstm_cell_358/split/split_dim:output:0-lstm_169/while/lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_169/while/lstm_cell_358/SigmoidSigmoid+lstm_169/while/lstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_169/while/lstm_cell_358/Sigmoid_1Sigmoid+lstm_169/while/lstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_169/while/lstm_cell_358/mulMul*lstm_169/while/lstm_cell_358/Sigmoid_1:y:0lstm_169_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_169/while/lstm_cell_358/ReluRelu+lstm_169/while/lstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_169/while/lstm_cell_358/mul_1Mul(lstm_169/while/lstm_cell_358/Sigmoid:y:0/lstm_169/while/lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_169/while/lstm_cell_358/add_1AddV2$lstm_169/while/lstm_cell_358/mul:z:0&lstm_169/while/lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_169/while/lstm_cell_358/Sigmoid_2Sigmoid+lstm_169/while/lstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_169/while/lstm_cell_358/Relu_1Relu&lstm_169/while/lstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_169/while/lstm_cell_358/mul_2Mul*lstm_169/while/lstm_cell_358/Sigmoid_2:y:01lstm_169/while/lstm_cell_358/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_169/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_169_while_placeholder_1lstm_169_while_placeholder&lstm_169/while/lstm_cell_358/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_169/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_169/while/addAddV2lstm_169_while_placeholderlstm_169/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_169/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_169/while/add_1AddV2*lstm_169_while_lstm_169_while_loop_counterlstm_169/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_169/while/IdentityIdentitylstm_169/while/add_1:z:0^lstm_169/while/NoOp*
T0*
_output_shapes
: ?
lstm_169/while/Identity_1Identity0lstm_169_while_lstm_169_while_maximum_iterations^lstm_169/while/NoOp*
T0*
_output_shapes
: t
lstm_169/while/Identity_2Identitylstm_169/while/add:z:0^lstm_169/while/NoOp*
T0*
_output_shapes
: ?
lstm_169/while/Identity_3IdentityClstm_169/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_169/while/NoOp*
T0*
_output_shapes
: ?
lstm_169/while/Identity_4Identity&lstm_169/while/lstm_cell_358/mul_2:z:0^lstm_169/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_169/while/Identity_5Identity&lstm_169/while/lstm_cell_358/add_1:z:0^lstm_169/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_169/while/NoOpNoOp4^lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOp3^lstm_169/while/lstm_cell_358/MatMul/ReadVariableOp5^lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_169_while_identity lstm_169/while/Identity:output:0"?
lstm_169_while_identity_1"lstm_169/while/Identity_1:output:0"?
lstm_169_while_identity_2"lstm_169/while/Identity_2:output:0"?
lstm_169_while_identity_3"lstm_169/while/Identity_3:output:0"?
lstm_169_while_identity_4"lstm_169/while/Identity_4:output:0"?
lstm_169_while_identity_5"lstm_169/while/Identity_5:output:0"T
'lstm_169_while_lstm_169_strided_slice_1)lstm_169_while_lstm_169_strided_slice_1_0"~
<lstm_169_while_lstm_cell_358_biasadd_readvariableop_resource>lstm_169_while_lstm_cell_358_biasadd_readvariableop_resource_0"?
=lstm_169_while_lstm_cell_358_matmul_1_readvariableop_resource?lstm_169_while_lstm_cell_358_matmul_1_readvariableop_resource_0"|
;lstm_169_while_lstm_cell_358_matmul_readvariableop_resource=lstm_169_while_lstm_cell_358_matmul_readvariableop_resource_0"?
clstm_169_while_tensorarrayv2read_tensorlistgetitem_lstm_169_tensorarrayunstack_tensorlistfromtensorelstm_169_while_tensorarrayv2read_tensorlistgetitem_lstm_169_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOp3lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOp2h
2lstm_169/while/lstm_cell_358/MatMul/ReadVariableOp2lstm_169/while/lstm_cell_358/MatMul/ReadVariableOp2l
4lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOp4lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2175205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_357_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_357_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_357_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_357_matmul_readvariableop_resource:	?G
4while_lstm_cell_357_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_357_biasadd_readvariableop_resource:	???*while/lstm_cell_357/BiasAdd/ReadVariableOp?)while/lstm_cell_357/MatMul/ReadVariableOp?+while/lstm_cell_357/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_357/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_357_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_357/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_357_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_357/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_357/addAddV2$while/lstm_cell_357/MatMul:product:0&while/lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_357_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_357/BiasAddBiasAddwhile/lstm_cell_357/add:z:02while/lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_357/splitSplit,while/lstm_cell_357/split/split_dim:output:0$while/lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_357/SigmoidSigmoid"while/lstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_357/Sigmoid_1Sigmoid"while/lstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mulMul!while/lstm_cell_357/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_357/ReluRelu"while/lstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mul_1Mulwhile/lstm_cell_357/Sigmoid:y:0&while/lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/add_1AddV2while/lstm_cell_357/mul:z:0while/lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_357/Sigmoid_2Sigmoid"while/lstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_357/Relu_1Reluwhile/lstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mul_2Mul!while/lstm_cell_357/Sigmoid_2:y:0(while/lstm_cell_357/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_357/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_357/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_357/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_357/BiasAdd/ReadVariableOp*^while/lstm_cell_357/MatMul/ReadVariableOp,^while/lstm_cell_357/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_357_biasadd_readvariableop_resource5while_lstm_cell_357_biasadd_readvariableop_resource_0"n
4while_lstm_cell_357_matmul_1_readvariableop_resource6while_lstm_cell_357_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_357_matmul_readvariableop_resource4while_lstm_cell_357_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_357/BiasAdd/ReadVariableOp*while/lstm_cell_357/BiasAdd/ReadVariableOp2V
)while/lstm_cell_357/MatMul/ReadVariableOp)while/lstm_cell_357/MatMul/ReadVariableOp2Z
+while/lstm_cell_357/MatMul_1/ReadVariableOp+while/lstm_cell_357/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_56_layer_call_and_return_conditional_losses_2174673

inputsH
5lstm_168_lstm_cell_357_matmul_readvariableop_resource:	?J
7lstm_168_lstm_cell_357_matmul_1_readvariableop_resource:	d?E
6lstm_168_lstm_cell_357_biasadd_readvariableop_resource:	?H
5lstm_169_lstm_cell_358_matmul_readvariableop_resource:	d?J
7lstm_169_lstm_cell_358_matmul_1_readvariableop_resource:	2?E
6lstm_169_lstm_cell_358_biasadd_readvariableop_resource:	?G
5lstm_170_lstm_cell_359_matmul_readvariableop_resource:2(I
7lstm_170_lstm_cell_359_matmul_1_readvariableop_resource:
(D
6lstm_170_lstm_cell_359_biasadd_readvariableop_resource:(9
'dense_56_matmul_readvariableop_resource:
6
(dense_56_biasadd_readvariableop_resource:
identity??dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?-lstm_168/lstm_cell_357/BiasAdd/ReadVariableOp?,lstm_168/lstm_cell_357/MatMul/ReadVariableOp?.lstm_168/lstm_cell_357/MatMul_1/ReadVariableOp?lstm_168/while?-lstm_169/lstm_cell_358/BiasAdd/ReadVariableOp?,lstm_169/lstm_cell_358/MatMul/ReadVariableOp?.lstm_169/lstm_cell_358/MatMul_1/ReadVariableOp?lstm_169/while?-lstm_170/lstm_cell_359/BiasAdd/ReadVariableOp?,lstm_170/lstm_cell_359/MatMul/ReadVariableOp?.lstm_170/lstm_cell_359/MatMul_1/ReadVariableOp?lstm_170/whileD
lstm_168/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_168/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_168/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_168/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_168/strided_sliceStridedSlicelstm_168/Shape:output:0%lstm_168/strided_slice/stack:output:0'lstm_168/strided_slice/stack_1:output:0'lstm_168/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_168/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_168/zeros/packedPacklstm_168/strided_slice:output:0 lstm_168/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_168/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_168/zerosFilllstm_168/zeros/packed:output:0lstm_168/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_168/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_168/zeros_1/packedPacklstm_168/strided_slice:output:0"lstm_168/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_168/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_168/zeros_1Fill lstm_168/zeros_1/packed:output:0lstm_168/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_168/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_168/transpose	Transposeinputs lstm_168/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_168/Shape_1Shapelstm_168/transpose:y:0*
T0*
_output_shapes
:h
lstm_168/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_168/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_168/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_168/strided_slice_1StridedSlicelstm_168/Shape_1:output:0'lstm_168/strided_slice_1/stack:output:0)lstm_168/strided_slice_1/stack_1:output:0)lstm_168/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_168/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_168/TensorArrayV2TensorListReserve-lstm_168/TensorArrayV2/element_shape:output:0!lstm_168/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_168/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_168/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_168/transpose:y:0Glstm_168/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_168/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_168/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_168/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_168/strided_slice_2StridedSlicelstm_168/transpose:y:0'lstm_168/strided_slice_2/stack:output:0)lstm_168/strided_slice_2/stack_1:output:0)lstm_168/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_168/lstm_cell_357/MatMul/ReadVariableOpReadVariableOp5lstm_168_lstm_cell_357_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_168/lstm_cell_357/MatMulMatMul!lstm_168/strided_slice_2:output:04lstm_168/lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_168/lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOp7lstm_168_lstm_cell_357_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_168/lstm_cell_357/MatMul_1MatMullstm_168/zeros:output:06lstm_168/lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_168/lstm_cell_357/addAddV2'lstm_168/lstm_cell_357/MatMul:product:0)lstm_168/lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_168/lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOp6lstm_168_lstm_cell_357_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_168/lstm_cell_357/BiasAddBiasAddlstm_168/lstm_cell_357/add:z:05lstm_168/lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_168/lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_168/lstm_cell_357/splitSplit/lstm_168/lstm_cell_357/split/split_dim:output:0'lstm_168/lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_168/lstm_cell_357/SigmoidSigmoid%lstm_168/lstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_168/lstm_cell_357/Sigmoid_1Sigmoid%lstm_168/lstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_168/lstm_cell_357/mulMul$lstm_168/lstm_cell_357/Sigmoid_1:y:0lstm_168/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_168/lstm_cell_357/ReluRelu%lstm_168/lstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_168/lstm_cell_357/mul_1Mul"lstm_168/lstm_cell_357/Sigmoid:y:0)lstm_168/lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_168/lstm_cell_357/add_1AddV2lstm_168/lstm_cell_357/mul:z:0 lstm_168/lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_168/lstm_cell_357/Sigmoid_2Sigmoid%lstm_168/lstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_168/lstm_cell_357/Relu_1Relu lstm_168/lstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_168/lstm_cell_357/mul_2Mul$lstm_168/lstm_cell_357/Sigmoid_2:y:0+lstm_168/lstm_cell_357/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_168/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_168/TensorArrayV2_1TensorListReserve/lstm_168/TensorArrayV2_1/element_shape:output:0!lstm_168/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_168/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_168/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_168/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_168/whileWhile$lstm_168/while/loop_counter:output:0*lstm_168/while/maximum_iterations:output:0lstm_168/time:output:0!lstm_168/TensorArrayV2_1:handle:0lstm_168/zeros:output:0lstm_168/zeros_1:output:0!lstm_168/strided_slice_1:output:0@lstm_168/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_168_lstm_cell_357_matmul_readvariableop_resource7lstm_168_lstm_cell_357_matmul_1_readvariableop_resource6lstm_168_lstm_cell_357_biasadd_readvariableop_resource*
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
lstm_168_while_body_2174305*'
condR
lstm_168_while_cond_2174304*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_168/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_168/TensorArrayV2Stack/TensorListStackTensorListStacklstm_168/while:output:3Blstm_168/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_168/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_168/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_168/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_168/strided_slice_3StridedSlice4lstm_168/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_168/strided_slice_3/stack:output:0)lstm_168/strided_slice_3/stack_1:output:0)lstm_168/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_168/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_168/transpose_1	Transpose4lstm_168/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_168/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_168/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_169/ShapeShapelstm_168/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_169/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_169/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_169/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_169/strided_sliceStridedSlicelstm_169/Shape:output:0%lstm_169/strided_slice/stack:output:0'lstm_169/strided_slice/stack_1:output:0'lstm_169/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_169/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_169/zeros/packedPacklstm_169/strided_slice:output:0 lstm_169/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_169/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_169/zerosFilllstm_169/zeros/packed:output:0lstm_169/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_169/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_169/zeros_1/packedPacklstm_169/strided_slice:output:0"lstm_169/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_169/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_169/zeros_1Fill lstm_169/zeros_1/packed:output:0lstm_169/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_169/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_169/transpose	Transposelstm_168/transpose_1:y:0 lstm_169/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_169/Shape_1Shapelstm_169/transpose:y:0*
T0*
_output_shapes
:h
lstm_169/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_169/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_169/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_169/strided_slice_1StridedSlicelstm_169/Shape_1:output:0'lstm_169/strided_slice_1/stack:output:0)lstm_169/strided_slice_1/stack_1:output:0)lstm_169/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_169/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_169/TensorArrayV2TensorListReserve-lstm_169/TensorArrayV2/element_shape:output:0!lstm_169/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_169/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_169/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_169/transpose:y:0Glstm_169/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_169/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_169/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_169/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_169/strided_slice_2StridedSlicelstm_169/transpose:y:0'lstm_169/strided_slice_2/stack:output:0)lstm_169/strided_slice_2/stack_1:output:0)lstm_169/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_169/lstm_cell_358/MatMul/ReadVariableOpReadVariableOp5lstm_169_lstm_cell_358_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_169/lstm_cell_358/MatMulMatMul!lstm_169/strided_slice_2:output:04lstm_169/lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_169/lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOp7lstm_169_lstm_cell_358_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_169/lstm_cell_358/MatMul_1MatMullstm_169/zeros:output:06lstm_169/lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_169/lstm_cell_358/addAddV2'lstm_169/lstm_cell_358/MatMul:product:0)lstm_169/lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_169/lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOp6lstm_169_lstm_cell_358_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_169/lstm_cell_358/BiasAddBiasAddlstm_169/lstm_cell_358/add:z:05lstm_169/lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_169/lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_169/lstm_cell_358/splitSplit/lstm_169/lstm_cell_358/split/split_dim:output:0'lstm_169/lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_169/lstm_cell_358/SigmoidSigmoid%lstm_169/lstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_169/lstm_cell_358/Sigmoid_1Sigmoid%lstm_169/lstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_169/lstm_cell_358/mulMul$lstm_169/lstm_cell_358/Sigmoid_1:y:0lstm_169/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_169/lstm_cell_358/ReluRelu%lstm_169/lstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_169/lstm_cell_358/mul_1Mul"lstm_169/lstm_cell_358/Sigmoid:y:0)lstm_169/lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_169/lstm_cell_358/add_1AddV2lstm_169/lstm_cell_358/mul:z:0 lstm_169/lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_169/lstm_cell_358/Sigmoid_2Sigmoid%lstm_169/lstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_169/lstm_cell_358/Relu_1Relu lstm_169/lstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_169/lstm_cell_358/mul_2Mul$lstm_169/lstm_cell_358/Sigmoid_2:y:0+lstm_169/lstm_cell_358/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_169/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_169/TensorArrayV2_1TensorListReserve/lstm_169/TensorArrayV2_1/element_shape:output:0!lstm_169/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_169/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_169/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_169/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_169/whileWhile$lstm_169/while/loop_counter:output:0*lstm_169/while/maximum_iterations:output:0lstm_169/time:output:0!lstm_169/TensorArrayV2_1:handle:0lstm_169/zeros:output:0lstm_169/zeros_1:output:0!lstm_169/strided_slice_1:output:0@lstm_169/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_169_lstm_cell_358_matmul_readvariableop_resource7lstm_169_lstm_cell_358_matmul_1_readvariableop_resource6lstm_169_lstm_cell_358_biasadd_readvariableop_resource*
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
lstm_169_while_body_2174444*'
condR
lstm_169_while_cond_2174443*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_169/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_169/TensorArrayV2Stack/TensorListStackTensorListStacklstm_169/while:output:3Blstm_169/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_169/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_169/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_169/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_169/strided_slice_3StridedSlice4lstm_169/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_169/strided_slice_3/stack:output:0)lstm_169/strided_slice_3/stack_1:output:0)lstm_169/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_169/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_169/transpose_1	Transpose4lstm_169/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_169/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_169/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_170/ShapeShapelstm_169/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_170/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_170/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_170/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_170/strided_sliceStridedSlicelstm_170/Shape:output:0%lstm_170/strided_slice/stack:output:0'lstm_170/strided_slice/stack_1:output:0'lstm_170/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_170/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_170/zeros/packedPacklstm_170/strided_slice:output:0 lstm_170/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_170/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_170/zerosFilllstm_170/zeros/packed:output:0lstm_170/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_170/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_170/zeros_1/packedPacklstm_170/strided_slice:output:0"lstm_170/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_170/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_170/zeros_1Fill lstm_170/zeros_1/packed:output:0lstm_170/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_170/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_170/transpose	Transposelstm_169/transpose_1:y:0 lstm_170/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_170/Shape_1Shapelstm_170/transpose:y:0*
T0*
_output_shapes
:h
lstm_170/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_170/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_170/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_170/strided_slice_1StridedSlicelstm_170/Shape_1:output:0'lstm_170/strided_slice_1/stack:output:0)lstm_170/strided_slice_1/stack_1:output:0)lstm_170/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_170/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_170/TensorArrayV2TensorListReserve-lstm_170/TensorArrayV2/element_shape:output:0!lstm_170/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_170/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_170/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_170/transpose:y:0Glstm_170/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_170/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_170/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_170/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_170/strided_slice_2StridedSlicelstm_170/transpose:y:0'lstm_170/strided_slice_2/stack:output:0)lstm_170/strided_slice_2/stack_1:output:0)lstm_170/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_170/lstm_cell_359/MatMul/ReadVariableOpReadVariableOp5lstm_170_lstm_cell_359_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_170/lstm_cell_359/MatMulMatMul!lstm_170/strided_slice_2:output:04lstm_170/lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_170/lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOp7lstm_170_lstm_cell_359_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_170/lstm_cell_359/MatMul_1MatMullstm_170/zeros:output:06lstm_170/lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_170/lstm_cell_359/addAddV2'lstm_170/lstm_cell_359/MatMul:product:0)lstm_170/lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_170/lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOp6lstm_170_lstm_cell_359_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_170/lstm_cell_359/BiasAddBiasAddlstm_170/lstm_cell_359/add:z:05lstm_170/lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_170/lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_170/lstm_cell_359/splitSplit/lstm_170/lstm_cell_359/split/split_dim:output:0'lstm_170/lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_170/lstm_cell_359/SigmoidSigmoid%lstm_170/lstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_170/lstm_cell_359/Sigmoid_1Sigmoid%lstm_170/lstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_170/lstm_cell_359/mulMul$lstm_170/lstm_cell_359/Sigmoid_1:y:0lstm_170/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_170/lstm_cell_359/ReluRelu%lstm_170/lstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_170/lstm_cell_359/mul_1Mul"lstm_170/lstm_cell_359/Sigmoid:y:0)lstm_170/lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_170/lstm_cell_359/add_1AddV2lstm_170/lstm_cell_359/mul:z:0 lstm_170/lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_170/lstm_cell_359/Sigmoid_2Sigmoid%lstm_170/lstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_170/lstm_cell_359/Relu_1Relu lstm_170/lstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_170/lstm_cell_359/mul_2Mul$lstm_170/lstm_cell_359/Sigmoid_2:y:0+lstm_170/lstm_cell_359/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_170/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_170/TensorArrayV2_1TensorListReserve/lstm_170/TensorArrayV2_1/element_shape:output:0!lstm_170/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_170/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_170/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_170/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_170/whileWhile$lstm_170/while/loop_counter:output:0*lstm_170/while/maximum_iterations:output:0lstm_170/time:output:0!lstm_170/TensorArrayV2_1:handle:0lstm_170/zeros:output:0lstm_170/zeros_1:output:0!lstm_170/strided_slice_1:output:0@lstm_170/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_170_lstm_cell_359_matmul_readvariableop_resource7lstm_170_lstm_cell_359_matmul_1_readvariableop_resource6lstm_170_lstm_cell_359_biasadd_readvariableop_resource*
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
lstm_170_while_body_2174583*'
condR
lstm_170_while_cond_2174582*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_170/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_170/TensorArrayV2Stack/TensorListStackTensorListStacklstm_170/while:output:3Blstm_170/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_170/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_170/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_170/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_170/strided_slice_3StridedSlice4lstm_170/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_170/strided_slice_3/stack:output:0)lstm_170/strided_slice_3/stack_1:output:0)lstm_170/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_170/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_170/transpose_1	Transpose4lstm_170/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_170/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_170/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_56/MatMulMatMul!lstm_170/strided_slice_3:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_56/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp.^lstm_168/lstm_cell_357/BiasAdd/ReadVariableOp-^lstm_168/lstm_cell_357/MatMul/ReadVariableOp/^lstm_168/lstm_cell_357/MatMul_1/ReadVariableOp^lstm_168/while.^lstm_169/lstm_cell_358/BiasAdd/ReadVariableOp-^lstm_169/lstm_cell_358/MatMul/ReadVariableOp/^lstm_169/lstm_cell_358/MatMul_1/ReadVariableOp^lstm_169/while.^lstm_170/lstm_cell_359/BiasAdd/ReadVariableOp-^lstm_170/lstm_cell_359/MatMul/ReadVariableOp/^lstm_170/lstm_cell_359/MatMul_1/ReadVariableOp^lstm_170/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2^
-lstm_168/lstm_cell_357/BiasAdd/ReadVariableOp-lstm_168/lstm_cell_357/BiasAdd/ReadVariableOp2\
,lstm_168/lstm_cell_357/MatMul/ReadVariableOp,lstm_168/lstm_cell_357/MatMul/ReadVariableOp2`
.lstm_168/lstm_cell_357/MatMul_1/ReadVariableOp.lstm_168/lstm_cell_357/MatMul_1/ReadVariableOp2 
lstm_168/whilelstm_168/while2^
-lstm_169/lstm_cell_358/BiasAdd/ReadVariableOp-lstm_169/lstm_cell_358/BiasAdd/ReadVariableOp2\
,lstm_169/lstm_cell_358/MatMul/ReadVariableOp,lstm_169/lstm_cell_358/MatMul/ReadVariableOp2`
.lstm_169/lstm_cell_358/MatMul_1/ReadVariableOp.lstm_169/lstm_cell_358/MatMul_1/ReadVariableOp2 
lstm_169/whilelstm_169/while2^
-lstm_170/lstm_cell_359/BiasAdd/ReadVariableOp-lstm_170/lstm_cell_359/BiasAdd/ReadVariableOp2\
,lstm_170/lstm_cell_359/MatMul/ReadVariableOp,lstm_170/lstm_cell_359/MatMul/ReadVariableOp2`
.lstm_170/lstm_cell_359/MatMul_1/ReadVariableOp.lstm_170/lstm_cell_359/MatMul_1/ReadVariableOp2 
lstm_170/whilelstm_170/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_357_layer_call_and_return_conditional_losses_2171718

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
while_cond_2171935
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2171935___redundant_placeholder05
1while_while_cond_2171935___redundant_placeholder15
1while_while_cond_2171935___redundant_placeholder25
1while_while_cond_2171935___redundant_placeholder3
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
while_body_2175062
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_357_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_357_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_357_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_357_matmul_readvariableop_resource:	?G
4while_lstm_cell_357_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_357_biasadd_readvariableop_resource:	???*while/lstm_cell_357/BiasAdd/ReadVariableOp?)while/lstm_cell_357/MatMul/ReadVariableOp?+while/lstm_cell_357/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_357/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_357_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_357/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_357_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_357/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_357/addAddV2$while/lstm_cell_357/MatMul:product:0&while/lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_357_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_357/BiasAddBiasAddwhile/lstm_cell_357/add:z:02while/lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_357/splitSplit,while/lstm_cell_357/split/split_dim:output:0$while/lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_357/SigmoidSigmoid"while/lstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_357/Sigmoid_1Sigmoid"while/lstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mulMul!while/lstm_cell_357/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_357/ReluRelu"while/lstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mul_1Mulwhile/lstm_cell_357/Sigmoid:y:0&while/lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/add_1AddV2while/lstm_cell_357/mul:z:0while/lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_357/Sigmoid_2Sigmoid"while/lstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_357/Relu_1Reluwhile/lstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mul_2Mul!while/lstm_cell_357/Sigmoid_2:y:0(while/lstm_cell_357/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_357/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_357/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_357/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_357/BiasAdd/ReadVariableOp*^while/lstm_cell_357/MatMul/ReadVariableOp,^while/lstm_cell_357/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_357_biasadd_readvariableop_resource5while_lstm_cell_357_biasadd_readvariableop_resource_0"n
4while_lstm_cell_357_matmul_1_readvariableop_resource6while_lstm_cell_357_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_357_matmul_readvariableop_resource4while_lstm_cell_357_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_357/BiasAdd/ReadVariableOp*while/lstm_cell_357/BiasAdd/ReadVariableOp2V
)while/lstm_cell_357/MatMul/ReadVariableOp)while/lstm_cell_357/MatMul/ReadVariableOp2Z
+while/lstm_cell_357/MatMul_1/ReadVariableOp+while/lstm_cell_357/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2176521

inputs>
,lstm_cell_359_matmul_readvariableop_resource:2(@
.lstm_cell_359_matmul_1_readvariableop_resource:
(;
-lstm_cell_359_biasadd_readvariableop_resource:(
identity??$lstm_cell_359/BiasAdd/ReadVariableOp?#lstm_cell_359/MatMul/ReadVariableOp?%lstm_cell_359/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_359/MatMul/ReadVariableOpReadVariableOp,lstm_cell_359_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_359/MatMulMatMulstrided_slice_2:output:0+lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_359_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_359/MatMul_1MatMulzeros:output:0-lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_359/addAddV2lstm_cell_359/MatMul:product:0 lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_359_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_359/BiasAddBiasAddlstm_cell_359/add:z:0,lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_359/splitSplit&lstm_cell_359/split/split_dim:output:0lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_359/SigmoidSigmoidlstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_359/Sigmoid_1Sigmoidlstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_359/mulMullstm_cell_359/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_359/ReluRelulstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_359/mul_1Mullstm_cell_359/Sigmoid:y:0 lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_359/add_1AddV2lstm_cell_359/mul:z:0lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_359/Sigmoid_2Sigmoidlstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_359/Relu_1Relulstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_359/mul_2Mullstm_cell_359/Sigmoid_2:y:0"lstm_cell_359/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_359_matmul_readvariableop_resource.lstm_cell_359_matmul_1_readvariableop_resource-lstm_cell_359_biasadd_readvariableop_resource*
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
while_body_2176437*
condR
while_cond_2176436*K
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
NoOpNoOp%^lstm_cell_359/BiasAdd/ReadVariableOp$^lstm_cell_359/MatMul/ReadVariableOp&^lstm_cell_359/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_359/BiasAdd/ReadVariableOp$lstm_cell_359/BiasAdd/ReadVariableOp2J
#lstm_cell_359/MatMul/ReadVariableOp#lstm_cell_359/MatMul/ReadVariableOp2N
%lstm_cell_359/MatMul_1/ReadVariableOp%lstm_cell_359/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2174776
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_357_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_357_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_357_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_357_matmul_readvariableop_resource:	?G
4while_lstm_cell_357_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_357_biasadd_readvariableop_resource:	???*while/lstm_cell_357/BiasAdd/ReadVariableOp?)while/lstm_cell_357/MatMul/ReadVariableOp?+while/lstm_cell_357/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_357/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_357_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_357/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_357_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_357/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_357/addAddV2$while/lstm_cell_357/MatMul:product:0&while/lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_357_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_357/BiasAddBiasAddwhile/lstm_cell_357/add:z:02while/lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_357/splitSplit,while/lstm_cell_357/split/split_dim:output:0$while/lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_357/SigmoidSigmoid"while/lstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_357/Sigmoid_1Sigmoid"while/lstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mulMul!while/lstm_cell_357/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_357/ReluRelu"while/lstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mul_1Mulwhile/lstm_cell_357/Sigmoid:y:0&while/lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/add_1AddV2while/lstm_cell_357/mul:z:0while/lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_357/Sigmoid_2Sigmoid"while/lstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_357/Relu_1Reluwhile/lstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mul_2Mul!while/lstm_cell_357/Sigmoid_2:y:0(while/lstm_cell_357/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_357/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_357/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_357/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_357/BiasAdd/ReadVariableOp*^while/lstm_cell_357/MatMul/ReadVariableOp,^while/lstm_cell_357/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_357_biasadd_readvariableop_resource5while_lstm_cell_357_biasadd_readvariableop_resource_0"n
4while_lstm_cell_357_matmul_1_readvariableop_resource6while_lstm_cell_357_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_357_matmul_readvariableop_resource4while_lstm_cell_357_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_357/BiasAdd/ReadVariableOp*while/lstm_cell_357/BiasAdd/ReadVariableOp2V
)while/lstm_cell_357/MatMul/ReadVariableOp)while/lstm_cell_357/MatMul/ReadVariableOp2Z
+while/lstm_cell_357/MatMul_1/ReadVariableOp+while/lstm_cell_357/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_170_while_body_2174156.
*lstm_170_while_lstm_170_while_loop_counter4
0lstm_170_while_lstm_170_while_maximum_iterations
lstm_170_while_placeholder 
lstm_170_while_placeholder_1 
lstm_170_while_placeholder_2 
lstm_170_while_placeholder_3-
)lstm_170_while_lstm_170_strided_slice_1_0i
elstm_170_while_tensorarrayv2read_tensorlistgetitem_lstm_170_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_170_while_lstm_cell_359_matmul_readvariableop_resource_0:2(Q
?lstm_170_while_lstm_cell_359_matmul_1_readvariableop_resource_0:
(L
>lstm_170_while_lstm_cell_359_biasadd_readvariableop_resource_0:(
lstm_170_while_identity
lstm_170_while_identity_1
lstm_170_while_identity_2
lstm_170_while_identity_3
lstm_170_while_identity_4
lstm_170_while_identity_5+
'lstm_170_while_lstm_170_strided_slice_1g
clstm_170_while_tensorarrayv2read_tensorlistgetitem_lstm_170_tensorarrayunstack_tensorlistfromtensorM
;lstm_170_while_lstm_cell_359_matmul_readvariableop_resource:2(O
=lstm_170_while_lstm_cell_359_matmul_1_readvariableop_resource:
(J
<lstm_170_while_lstm_cell_359_biasadd_readvariableop_resource:(??3lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOp?2lstm_170/while/lstm_cell_359/MatMul/ReadVariableOp?4lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOp?
@lstm_170/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_170/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_170_while_tensorarrayv2read_tensorlistgetitem_lstm_170_tensorarrayunstack_tensorlistfromtensor_0lstm_170_while_placeholderIlstm_170/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_170/while/lstm_cell_359/MatMul/ReadVariableOpReadVariableOp=lstm_170_while_lstm_cell_359_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_170/while/lstm_cell_359/MatMulMatMul9lstm_170/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_170/while/lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOp?lstm_170_while_lstm_cell_359_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_170/while/lstm_cell_359/MatMul_1MatMullstm_170_while_placeholder_2<lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_170/while/lstm_cell_359/addAddV2-lstm_170/while/lstm_cell_359/MatMul:product:0/lstm_170/while/lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOp>lstm_170_while_lstm_cell_359_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_170/while/lstm_cell_359/BiasAddBiasAdd$lstm_170/while/lstm_cell_359/add:z:0;lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_170/while/lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_170/while/lstm_cell_359/splitSplit5lstm_170/while/lstm_cell_359/split/split_dim:output:0-lstm_170/while/lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_170/while/lstm_cell_359/SigmoidSigmoid+lstm_170/while/lstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_170/while/lstm_cell_359/Sigmoid_1Sigmoid+lstm_170/while/lstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_170/while/lstm_cell_359/mulMul*lstm_170/while/lstm_cell_359/Sigmoid_1:y:0lstm_170_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_170/while/lstm_cell_359/ReluRelu+lstm_170/while/lstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_170/while/lstm_cell_359/mul_1Mul(lstm_170/while/lstm_cell_359/Sigmoid:y:0/lstm_170/while/lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_170/while/lstm_cell_359/add_1AddV2$lstm_170/while/lstm_cell_359/mul:z:0&lstm_170/while/lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_170/while/lstm_cell_359/Sigmoid_2Sigmoid+lstm_170/while/lstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_170/while/lstm_cell_359/Relu_1Relu&lstm_170/while/lstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_170/while/lstm_cell_359/mul_2Mul*lstm_170/while/lstm_cell_359/Sigmoid_2:y:01lstm_170/while/lstm_cell_359/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_170/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_170_while_placeholder_1lstm_170_while_placeholder&lstm_170/while/lstm_cell_359/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_170/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_170/while/addAddV2lstm_170_while_placeholderlstm_170/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_170/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_170/while/add_1AddV2*lstm_170_while_lstm_170_while_loop_counterlstm_170/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_170/while/IdentityIdentitylstm_170/while/add_1:z:0^lstm_170/while/NoOp*
T0*
_output_shapes
: ?
lstm_170/while/Identity_1Identity0lstm_170_while_lstm_170_while_maximum_iterations^lstm_170/while/NoOp*
T0*
_output_shapes
: t
lstm_170/while/Identity_2Identitylstm_170/while/add:z:0^lstm_170/while/NoOp*
T0*
_output_shapes
: ?
lstm_170/while/Identity_3IdentityClstm_170/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_170/while/NoOp*
T0*
_output_shapes
: ?
lstm_170/while/Identity_4Identity&lstm_170/while/lstm_cell_359/mul_2:z:0^lstm_170/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_170/while/Identity_5Identity&lstm_170/while/lstm_cell_359/add_1:z:0^lstm_170/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_170/while/NoOpNoOp4^lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOp3^lstm_170/while/lstm_cell_359/MatMul/ReadVariableOp5^lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_170_while_identity lstm_170/while/Identity:output:0"?
lstm_170_while_identity_1"lstm_170/while/Identity_1:output:0"?
lstm_170_while_identity_2"lstm_170/while/Identity_2:output:0"?
lstm_170_while_identity_3"lstm_170/while/Identity_3:output:0"?
lstm_170_while_identity_4"lstm_170/while/Identity_4:output:0"?
lstm_170_while_identity_5"lstm_170/while/Identity_5:output:0"T
'lstm_170_while_lstm_170_strided_slice_1)lstm_170_while_lstm_170_strided_slice_1_0"~
<lstm_170_while_lstm_cell_359_biasadd_readvariableop_resource>lstm_170_while_lstm_cell_359_biasadd_readvariableop_resource_0"?
=lstm_170_while_lstm_cell_359_matmul_1_readvariableop_resource?lstm_170_while_lstm_cell_359_matmul_1_readvariableop_resource_0"|
;lstm_170_while_lstm_cell_359_matmul_readvariableop_resource=lstm_170_while_lstm_cell_359_matmul_readvariableop_resource_0"?
clstm_170_while_tensorarrayv2read_tensorlistgetitem_lstm_170_tensorarrayunstack_tensorlistfromtensorelstm_170_while_tensorarrayv2read_tensorlistgetitem_lstm_170_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOp3lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOp2h
2lstm_170/while/lstm_cell_359/MatMul/ReadVariableOp2lstm_170/while/lstm_cell_359/MatMul/ReadVariableOp2l
4lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOp4lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_169_layer_call_fn_2175333

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
E__inference_lstm_169_layer_call_and_return_conditional_losses_2173385s
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
?S
?
)sequential_56_lstm_169_while_body_2171276J
Fsequential_56_lstm_169_while_sequential_56_lstm_169_while_loop_counterP
Lsequential_56_lstm_169_while_sequential_56_lstm_169_while_maximum_iterations,
(sequential_56_lstm_169_while_placeholder.
*sequential_56_lstm_169_while_placeholder_1.
*sequential_56_lstm_169_while_placeholder_2.
*sequential_56_lstm_169_while_placeholder_3I
Esequential_56_lstm_169_while_sequential_56_lstm_169_strided_slice_1_0?
?sequential_56_lstm_169_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_169_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_56_lstm_169_while_lstm_cell_358_matmul_readvariableop_resource_0:	d?`
Msequential_56_lstm_169_while_lstm_cell_358_matmul_1_readvariableop_resource_0:	2?[
Lsequential_56_lstm_169_while_lstm_cell_358_biasadd_readvariableop_resource_0:	?)
%sequential_56_lstm_169_while_identity+
'sequential_56_lstm_169_while_identity_1+
'sequential_56_lstm_169_while_identity_2+
'sequential_56_lstm_169_while_identity_3+
'sequential_56_lstm_169_while_identity_4+
'sequential_56_lstm_169_while_identity_5G
Csequential_56_lstm_169_while_sequential_56_lstm_169_strided_slice_1?
sequential_56_lstm_169_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_169_tensorarrayunstack_tensorlistfromtensor\
Isequential_56_lstm_169_while_lstm_cell_358_matmul_readvariableop_resource:	d?^
Ksequential_56_lstm_169_while_lstm_cell_358_matmul_1_readvariableop_resource:	2?Y
Jsequential_56_lstm_169_while_lstm_cell_358_biasadd_readvariableop_resource:	???Asequential_56/lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOp?@sequential_56/lstm_169/while/lstm_cell_358/MatMul/ReadVariableOp?Bsequential_56/lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOp?
Nsequential_56/lstm_169/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_56/lstm_169/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_56_lstm_169_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_169_tensorarrayunstack_tensorlistfromtensor_0(sequential_56_lstm_169_while_placeholderWsequential_56/lstm_169/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_56/lstm_169/while/lstm_cell_358/MatMul/ReadVariableOpReadVariableOpKsequential_56_lstm_169_while_lstm_cell_358_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_56/lstm_169/while/lstm_cell_358/MatMulMatMulGsequential_56/lstm_169/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_56/lstm_169/while/lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_56/lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOpMsequential_56_lstm_169_while_lstm_cell_358_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_56/lstm_169/while/lstm_cell_358/MatMul_1MatMul*sequential_56_lstm_169_while_placeholder_2Jsequential_56/lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_56/lstm_169/while/lstm_cell_358/addAddV2;sequential_56/lstm_169/while/lstm_cell_358/MatMul:product:0=sequential_56/lstm_169/while/lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_56/lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOpLsequential_56_lstm_169_while_lstm_cell_358_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_56/lstm_169/while/lstm_cell_358/BiasAddBiasAdd2sequential_56/lstm_169/while/lstm_cell_358/add:z:0Isequential_56/lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_56/lstm_169/while/lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_56/lstm_169/while/lstm_cell_358/splitSplitCsequential_56/lstm_169/while/lstm_cell_358/split/split_dim:output:0;sequential_56/lstm_169/while/lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_56/lstm_169/while/lstm_cell_358/SigmoidSigmoid9sequential_56/lstm_169/while/lstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_56/lstm_169/while/lstm_cell_358/Sigmoid_1Sigmoid9sequential_56/lstm_169/while/lstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_56/lstm_169/while/lstm_cell_358/mulMul8sequential_56/lstm_169/while/lstm_cell_358/Sigmoid_1:y:0*sequential_56_lstm_169_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_56/lstm_169/while/lstm_cell_358/ReluRelu9sequential_56/lstm_169/while/lstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_56/lstm_169/while/lstm_cell_358/mul_1Mul6sequential_56/lstm_169/while/lstm_cell_358/Sigmoid:y:0=sequential_56/lstm_169/while/lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_56/lstm_169/while/lstm_cell_358/add_1AddV22sequential_56/lstm_169/while/lstm_cell_358/mul:z:04sequential_56/lstm_169/while/lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_56/lstm_169/while/lstm_cell_358/Sigmoid_2Sigmoid9sequential_56/lstm_169/while/lstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_56/lstm_169/while/lstm_cell_358/Relu_1Relu4sequential_56/lstm_169/while/lstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_56/lstm_169/while/lstm_cell_358/mul_2Mul8sequential_56/lstm_169/while/lstm_cell_358/Sigmoid_2:y:0?sequential_56/lstm_169/while/lstm_cell_358/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_56/lstm_169/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_56_lstm_169_while_placeholder_1(sequential_56_lstm_169_while_placeholder4sequential_56/lstm_169/while/lstm_cell_358/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_56/lstm_169/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_56/lstm_169/while/addAddV2(sequential_56_lstm_169_while_placeholder+sequential_56/lstm_169/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_56/lstm_169/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_56/lstm_169/while/add_1AddV2Fsequential_56_lstm_169_while_sequential_56_lstm_169_while_loop_counter-sequential_56/lstm_169/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_56/lstm_169/while/IdentityIdentity&sequential_56/lstm_169/while/add_1:z:0"^sequential_56/lstm_169/while/NoOp*
T0*
_output_shapes
: ?
'sequential_56/lstm_169/while/Identity_1IdentityLsequential_56_lstm_169_while_sequential_56_lstm_169_while_maximum_iterations"^sequential_56/lstm_169/while/NoOp*
T0*
_output_shapes
: ?
'sequential_56/lstm_169/while/Identity_2Identity$sequential_56/lstm_169/while/add:z:0"^sequential_56/lstm_169/while/NoOp*
T0*
_output_shapes
: ?
'sequential_56/lstm_169/while/Identity_3IdentityQsequential_56/lstm_169/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_56/lstm_169/while/NoOp*
T0*
_output_shapes
: ?
'sequential_56/lstm_169/while/Identity_4Identity4sequential_56/lstm_169/while/lstm_cell_358/mul_2:z:0"^sequential_56/lstm_169/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_56/lstm_169/while/Identity_5Identity4sequential_56/lstm_169/while/lstm_cell_358/add_1:z:0"^sequential_56/lstm_169/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_56/lstm_169/while/NoOpNoOpB^sequential_56/lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOpA^sequential_56/lstm_169/while/lstm_cell_358/MatMul/ReadVariableOpC^sequential_56/lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_56_lstm_169_while_identity.sequential_56/lstm_169/while/Identity:output:0"[
'sequential_56_lstm_169_while_identity_10sequential_56/lstm_169/while/Identity_1:output:0"[
'sequential_56_lstm_169_while_identity_20sequential_56/lstm_169/while/Identity_2:output:0"[
'sequential_56_lstm_169_while_identity_30sequential_56/lstm_169/while/Identity_3:output:0"[
'sequential_56_lstm_169_while_identity_40sequential_56/lstm_169/while/Identity_4:output:0"[
'sequential_56_lstm_169_while_identity_50sequential_56/lstm_169/while/Identity_5:output:0"?
Jsequential_56_lstm_169_while_lstm_cell_358_biasadd_readvariableop_resourceLsequential_56_lstm_169_while_lstm_cell_358_biasadd_readvariableop_resource_0"?
Ksequential_56_lstm_169_while_lstm_cell_358_matmul_1_readvariableop_resourceMsequential_56_lstm_169_while_lstm_cell_358_matmul_1_readvariableop_resource_0"?
Isequential_56_lstm_169_while_lstm_cell_358_matmul_readvariableop_resourceKsequential_56_lstm_169_while_lstm_cell_358_matmul_readvariableop_resource_0"?
Csequential_56_lstm_169_while_sequential_56_lstm_169_strided_slice_1Esequential_56_lstm_169_while_sequential_56_lstm_169_strided_slice_1_0"?
sequential_56_lstm_169_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_169_tensorarrayunstack_tensorlistfromtensor?sequential_56_lstm_169_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_169_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_56/lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOpAsequential_56/lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOp2?
@sequential_56/lstm_169/while/lstm_cell_358/MatMul/ReadVariableOp@sequential_56/lstm_169/while/lstm_cell_358/MatMul/ReadVariableOp2?
Bsequential_56/lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOpBsequential_56/lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_170_while_cond_2174155.
*lstm_170_while_lstm_170_while_loop_counter4
0lstm_170_while_lstm_170_while_maximum_iterations
lstm_170_while_placeholder 
lstm_170_while_placeholder_1 
lstm_170_while_placeholder_2 
lstm_170_while_placeholder_30
,lstm_170_while_less_lstm_170_strided_slice_1G
Clstm_170_while_lstm_170_while_cond_2174155___redundant_placeholder0G
Clstm_170_while_lstm_170_while_cond_2174155___redundant_placeholder1G
Clstm_170_while_lstm_170_while_cond_2174155___redundant_placeholder2G
Clstm_170_while_lstm_170_while_cond_2174155___redundant_placeholder3
lstm_170_while_identity
?
lstm_170/while/LessLesslstm_170_while_placeholder,lstm_170_while_less_lstm_170_strided_slice_1*
T0*
_output_shapes
: ]
lstm_170/while/IdentityIdentitylstm_170/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_170_while_identity lstm_170/while/Identity:output:0*(
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
while_cond_2176007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2176007___redundant_placeholder05
1while_while_cond_2176007___redundant_placeholder15
1while_while_cond_2176007___redundant_placeholder25
1while_while_cond_2176007___redundant_placeholder3
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
E__inference_lstm_168_layer_call_and_return_conditional_losses_2171846

inputs(
lstm_cell_357_2171764:	?(
lstm_cell_357_2171766:	d?$
lstm_cell_357_2171768:	?
identity??%lstm_cell_357/StatefulPartitionedCall?while;
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
%lstm_cell_357/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_357_2171764lstm_cell_357_2171766lstm_cell_357_2171768*
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
J__inference_lstm_cell_357_layer_call_and_return_conditional_losses_2171718n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_357_2171764lstm_cell_357_2171766lstm_cell_357_2171768*
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
while_body_2171777*
condR
while_cond_2171776*K
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
NoOpNoOp&^lstm_cell_357/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_357/StatefulPartitionedCall%lstm_cell_357/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_357_layer_call_fn_2176574

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
J__inference_lstm_cell_357_layer_call_and_return_conditional_losses_2171718o
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
?
E__inference_dense_56_layer_call_and_return_conditional_losses_2176540

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
J__inference_lstm_cell_357_layer_call_and_return_conditional_losses_2171572

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
while_body_2172286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_359_2172310_0:2(/
while_lstm_cell_359_2172312_0:
(+
while_lstm_cell_359_2172314_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_359_2172310:2(-
while_lstm_cell_359_2172312:
()
while_lstm_cell_359_2172314:(??+while/lstm_cell_359/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_359/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_359_2172310_0while_lstm_cell_359_2172312_0while_lstm_cell_359_2172314_0*
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
J__inference_lstm_cell_359_layer_call_and_return_conditional_losses_2172272?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_359/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_359/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_359/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_359/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_359_2172310while_lstm_cell_359_2172310_0"<
while_lstm_cell_359_2172312while_lstm_cell_359_2172312_0"<
while_lstm_cell_359_2172314while_lstm_cell_359_2172314_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_359/StatefulPartitionedCall+while/lstm_cell_359/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_169_layer_call_fn_2175322

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
E__inference_lstm_169_layer_call_and_return_conditional_losses_2172854s
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
while_cond_2173300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2173300___redundant_placeholder05
1while_while_cond_2173300___redundant_placeholder15
1while_while_cond_2173300___redundant_placeholder25
1while_while_cond_2173300___redundant_placeholder3
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
E__inference_lstm_169_layer_call_and_return_conditional_losses_2175905

inputs?
,lstm_cell_358_matmul_readvariableop_resource:	d?A
.lstm_cell_358_matmul_1_readvariableop_resource:	2?<
-lstm_cell_358_biasadd_readvariableop_resource:	?
identity??$lstm_cell_358/BiasAdd/ReadVariableOp?#lstm_cell_358/MatMul/ReadVariableOp?%lstm_cell_358/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_358/MatMul/ReadVariableOpReadVariableOp,lstm_cell_358_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_358/MatMulMatMulstrided_slice_2:output:0+lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_358_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_358/MatMul_1MatMulzeros:output:0-lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_358/addAddV2lstm_cell_358/MatMul:product:0 lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_358_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_358/BiasAddBiasAddlstm_cell_358/add:z:0,lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_358/splitSplit&lstm_cell_358/split/split_dim:output:0lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_358/SigmoidSigmoidlstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_358/Sigmoid_1Sigmoidlstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_358/mulMullstm_cell_358/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_358/ReluRelulstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_358/mul_1Mullstm_cell_358/Sigmoid:y:0 lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_358/add_1AddV2lstm_cell_358/mul:z:0lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_358/Sigmoid_2Sigmoidlstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_358/Relu_1Relulstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_358/mul_2Mullstm_cell_358/Sigmoid_2:y:0"lstm_cell_358/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_358_matmul_readvariableop_resource.lstm_cell_358_matmul_1_readvariableop_resource-lstm_cell_358_biasadd_readvariableop_resource*
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
while_body_2175821*
condR
while_cond_2175820*K
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
NoOpNoOp%^lstm_cell_358/BiasAdd/ReadVariableOp$^lstm_cell_358/MatMul/ReadVariableOp&^lstm_cell_358/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_358/BiasAdd/ReadVariableOp$lstm_cell_358/BiasAdd/ReadVariableOp2J
#lstm_cell_358/MatMul/ReadVariableOp#lstm_cell_358/MatMul/ReadVariableOp2N
%lstm_cell_358/MatMul_1/ReadVariableOp%lstm_cell_358/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_dense_56_layer_call_fn_2176530

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
E__inference_dense_56_layer_call_and_return_conditional_losses_2173022o
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
*__inference_lstm_168_layer_call_fn_2174695
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
E__inference_lstm_168_layer_call_and_return_conditional_losses_2171846|
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
J__inference_lstm_cell_358_layer_call_and_return_conditional_losses_2171922

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
?
*__inference_lstm_170_layer_call_fn_2175927
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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2172546o
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
while_body_2176008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_359_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_359_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_359_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_359_matmul_readvariableop_resource:2(F
4while_lstm_cell_359_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_359_biasadd_readvariableop_resource:(??*while/lstm_cell_359/BiasAdd/ReadVariableOp?)while/lstm_cell_359/MatMul/ReadVariableOp?+while/lstm_cell_359/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_359/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_359_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_359/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_359_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_359/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_359/addAddV2$while/lstm_cell_359/MatMul:product:0&while/lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_359_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_359/BiasAddBiasAddwhile/lstm_cell_359/add:z:02while/lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_359/splitSplit,while/lstm_cell_359/split/split_dim:output:0$while/lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_359/SigmoidSigmoid"while/lstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_359/Sigmoid_1Sigmoid"while/lstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mulMul!while/lstm_cell_359/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_359/ReluRelu"while/lstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mul_1Mulwhile/lstm_cell_359/Sigmoid:y:0&while/lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/add_1AddV2while/lstm_cell_359/mul:z:0while/lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_359/Sigmoid_2Sigmoid"while/lstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_359/Relu_1Reluwhile/lstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mul_2Mul!while/lstm_cell_359/Sigmoid_2:y:0(while/lstm_cell_359/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_359/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_359/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_359/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_359/BiasAdd/ReadVariableOp*^while/lstm_cell_359/MatMul/ReadVariableOp,^while/lstm_cell_359/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_359_biasadd_readvariableop_resource5while_lstm_cell_359_biasadd_readvariableop_resource_0"n
4while_lstm_cell_359_matmul_1_readvariableop_resource6while_lstm_cell_359_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_359_matmul_readvariableop_resource4while_lstm_cell_359_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_359/BiasAdd/ReadVariableOp*while/lstm_cell_359/BiasAdd/ReadVariableOp2V
)while/lstm_cell_359/MatMul/ReadVariableOp)while/lstm_cell_359/MatMul/ReadVariableOp2Z
+while/lstm_cell_359/MatMul_1/ReadVariableOp+while/lstm_cell_359/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_357_layer_call_fn_2176557

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
J__inference_lstm_cell_357_layer_call_and_return_conditional_losses_2171572o
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
?
?
J__inference_sequential_56_layer_call_and_return_conditional_losses_2173029

inputs#
lstm_168_2172705:	?#
lstm_168_2172707:	d?
lstm_168_2172709:	?#
lstm_169_2172855:	d?#
lstm_169_2172857:	2?
lstm_169_2172859:	?"
lstm_170_2173005:2("
lstm_170_2173007:
(
lstm_170_2173009:("
dense_56_2173023:

dense_56_2173025:
identity?? dense_56/StatefulPartitionedCall? lstm_168/StatefulPartitionedCall? lstm_169/StatefulPartitionedCall? lstm_170/StatefulPartitionedCall?
 lstm_168/StatefulPartitionedCallStatefulPartitionedCallinputslstm_168_2172705lstm_168_2172707lstm_168_2172709*
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
E__inference_lstm_168_layer_call_and_return_conditional_losses_2172704?
 lstm_169/StatefulPartitionedCallStatefulPartitionedCall)lstm_168/StatefulPartitionedCall:output:0lstm_169_2172855lstm_169_2172857lstm_169_2172859*
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
E__inference_lstm_169_layer_call_and_return_conditional_losses_2172854?
 lstm_170/StatefulPartitionedCallStatefulPartitionedCall)lstm_169/StatefulPartitionedCall:output:0lstm_170_2173005lstm_170_2173007lstm_170_2173009*
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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2173004?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)lstm_170/StatefulPartitionedCall:output:0dense_56_2173023dense_56_2173025*
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
E__inference_dense_56_layer_call_and_return_conditional_losses_2173022x
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_56/StatefulPartitionedCall!^lstm_168/StatefulPartitionedCall!^lstm_169/StatefulPartitionedCall!^lstm_170/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 lstm_168/StatefulPartitionedCall lstm_168/StatefulPartitionedCall2D
 lstm_169/StatefulPartitionedCall lstm_169/StatefulPartitionedCall2D
 lstm_170/StatefulPartitionedCall lstm_170/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
E__inference_lstm_169_layer_call_and_return_conditional_losses_2172005

inputs(
lstm_cell_358_2171923:	d?(
lstm_cell_358_2171925:	2?$
lstm_cell_358_2171927:	?
identity??%lstm_cell_358/StatefulPartitionedCall?while;
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
%lstm_cell_358/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_358_2171923lstm_cell_358_2171925lstm_cell_358_2171927*
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
J__inference_lstm_cell_358_layer_call_and_return_conditional_losses_2171922n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_358_2171923lstm_cell_358_2171925lstm_cell_358_2171927*
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
while_body_2171936*
condR
while_cond_2171935*K
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
NoOpNoOp&^lstm_cell_358/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_358/StatefulPartitionedCall%lstm_cell_358/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
)sequential_56_lstm_168_while_cond_2171136J
Fsequential_56_lstm_168_while_sequential_56_lstm_168_while_loop_counterP
Lsequential_56_lstm_168_while_sequential_56_lstm_168_while_maximum_iterations,
(sequential_56_lstm_168_while_placeholder.
*sequential_56_lstm_168_while_placeholder_1.
*sequential_56_lstm_168_while_placeholder_2.
*sequential_56_lstm_168_while_placeholder_3L
Hsequential_56_lstm_168_while_less_sequential_56_lstm_168_strided_slice_1c
_sequential_56_lstm_168_while_sequential_56_lstm_168_while_cond_2171136___redundant_placeholder0c
_sequential_56_lstm_168_while_sequential_56_lstm_168_while_cond_2171136___redundant_placeholder1c
_sequential_56_lstm_168_while_sequential_56_lstm_168_while_cond_2171136___redundant_placeholder2c
_sequential_56_lstm_168_while_sequential_56_lstm_168_while_cond_2171136___redundant_placeholder3)
%sequential_56_lstm_168_while_identity
?
!sequential_56/lstm_168/while/LessLess(sequential_56_lstm_168_while_placeholderHsequential_56_lstm_168_while_less_sequential_56_lstm_168_strided_slice_1*
T0*
_output_shapes
: y
%sequential_56/lstm_168/while/IdentityIdentity%sequential_56/lstm_168/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_56_lstm_168_while_identity.sequential_56/lstm_168/while/Identity:output:0*(
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
?K
?
E__inference_lstm_168_layer_call_and_return_conditional_losses_2175003
inputs_0?
,lstm_cell_357_matmul_readvariableop_resource:	?A
.lstm_cell_357_matmul_1_readvariableop_resource:	d?<
-lstm_cell_357_biasadd_readvariableop_resource:	?
identity??$lstm_cell_357/BiasAdd/ReadVariableOp?#lstm_cell_357/MatMul/ReadVariableOp?%lstm_cell_357/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_357/MatMul/ReadVariableOpReadVariableOp,lstm_cell_357_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_357/MatMulMatMulstrided_slice_2:output:0+lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_357_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_357/MatMul_1MatMulzeros:output:0-lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_357/addAddV2lstm_cell_357/MatMul:product:0 lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_357_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_357/BiasAddBiasAddlstm_cell_357/add:z:0,lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_357/splitSplit&lstm_cell_357/split/split_dim:output:0lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_357/SigmoidSigmoidlstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_357/Sigmoid_1Sigmoidlstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_357/mulMullstm_cell_357/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_357/ReluRelulstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_357/mul_1Mullstm_cell_357/Sigmoid:y:0 lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_357/add_1AddV2lstm_cell_357/mul:z:0lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_357/Sigmoid_2Sigmoidlstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_357/Relu_1Relulstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_357/mul_2Mullstm_cell_357/Sigmoid_2:y:0"lstm_cell_357/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_357_matmul_readvariableop_resource.lstm_cell_357_matmul_1_readvariableop_resource-lstm_cell_357_biasadd_readvariableop_resource*
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
while_body_2174919*
condR
while_cond_2174918*K
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
NoOpNoOp%^lstm_cell_357/BiasAdd/ReadVariableOp$^lstm_cell_357/MatMul/ReadVariableOp&^lstm_cell_357/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_357/BiasAdd/ReadVariableOp$lstm_cell_357/BiasAdd/ReadVariableOp2J
#lstm_cell_357/MatMul/ReadVariableOp#lstm_cell_357/MatMul/ReadVariableOp2N
%lstm_cell_357/MatMul_1/ReadVariableOp%lstm_cell_357/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_2172620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_357_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_357_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_357_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_357_matmul_readvariableop_resource:	?G
4while_lstm_cell_357_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_357_biasadd_readvariableop_resource:	???*while/lstm_cell_357/BiasAdd/ReadVariableOp?)while/lstm_cell_357/MatMul/ReadVariableOp?+while/lstm_cell_357/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_357/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_357_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_357/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_357_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_357/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_357/addAddV2$while/lstm_cell_357/MatMul:product:0&while/lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_357_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_357/BiasAddBiasAddwhile/lstm_cell_357/add:z:02while/lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_357/splitSplit,while/lstm_cell_357/split/split_dim:output:0$while/lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_357/SigmoidSigmoid"while/lstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_357/Sigmoid_1Sigmoid"while/lstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mulMul!while/lstm_cell_357/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_357/ReluRelu"while/lstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mul_1Mulwhile/lstm_cell_357/Sigmoid:y:0&while/lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/add_1AddV2while/lstm_cell_357/mul:z:0while/lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_357/Sigmoid_2Sigmoid"while/lstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_357/Relu_1Reluwhile/lstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mul_2Mul!while/lstm_cell_357/Sigmoid_2:y:0(while/lstm_cell_357/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_357/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_357/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_357/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_357/BiasAdd/ReadVariableOp*^while/lstm_cell_357/MatMul/ReadVariableOp,^while/lstm_cell_357/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_357_biasadd_readvariableop_resource5while_lstm_cell_357_biasadd_readvariableop_resource_0"n
4while_lstm_cell_357_matmul_1_readvariableop_resource6while_lstm_cell_357_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_357_matmul_readvariableop_resource4while_lstm_cell_357_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_357/BiasAdd/ReadVariableOp*while/lstm_cell_357/BiasAdd/ReadVariableOp2V
)while/lstm_cell_357/MatMul/ReadVariableOp)while/lstm_cell_357/MatMul/ReadVariableOp2Z
+while/lstm_cell_357/MatMul_1/ReadVariableOp+while/lstm_cell_357/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_359_layer_call_and_return_conditional_losses_2172272

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
?
?
J__inference_lstm_cell_357_layer_call_and_return_conditional_losses_2176638

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
E__inference_lstm_169_layer_call_and_return_conditional_losses_2175619
inputs_0?
,lstm_cell_358_matmul_readvariableop_resource:	d?A
.lstm_cell_358_matmul_1_readvariableop_resource:	2?<
-lstm_cell_358_biasadd_readvariableop_resource:	?
identity??$lstm_cell_358/BiasAdd/ReadVariableOp?#lstm_cell_358/MatMul/ReadVariableOp?%lstm_cell_358/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_358/MatMul/ReadVariableOpReadVariableOp,lstm_cell_358_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_358/MatMulMatMulstrided_slice_2:output:0+lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_358_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_358/MatMul_1MatMulzeros:output:0-lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_358/addAddV2lstm_cell_358/MatMul:product:0 lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_358_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_358/BiasAddBiasAddlstm_cell_358/add:z:0,lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_358/splitSplit&lstm_cell_358/split/split_dim:output:0lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_358/SigmoidSigmoidlstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_358/Sigmoid_1Sigmoidlstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_358/mulMullstm_cell_358/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_358/ReluRelulstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_358/mul_1Mullstm_cell_358/Sigmoid:y:0 lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_358/add_1AddV2lstm_cell_358/mul:z:0lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_358/Sigmoid_2Sigmoidlstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_358/Relu_1Relulstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_358/mul_2Mullstm_cell_358/Sigmoid_2:y:0"lstm_cell_358/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_358_matmul_readvariableop_resource.lstm_cell_358_matmul_1_readvariableop_resource-lstm_cell_358_biasadd_readvariableop_resource*
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
while_body_2175535*
condR
while_cond_2175534*K
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
NoOpNoOp%^lstm_cell_358/BiasAdd/ReadVariableOp$^lstm_cell_358/MatMul/ReadVariableOp&^lstm_cell_358/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_358/BiasAdd/ReadVariableOp$lstm_cell_358/BiasAdd/ReadVariableOp2J
#lstm_cell_358/MatMul/ReadVariableOp#lstm_cell_358/MatMul/ReadVariableOp2N
%lstm_cell_358/MatMul_1/ReadVariableOp%lstm_cell_358/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_358_layer_call_and_return_conditional_losses_2172068

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
J__inference_lstm_cell_358_layer_call_and_return_conditional_losses_2176736

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
while_cond_2171776
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2171776___redundant_placeholder05
1while_while_cond_2171776___redundant_placeholder15
1while_while_cond_2171776___redundant_placeholder25
1while_while_cond_2171776___redundant_placeholder3
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
while_body_2173136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_359_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_359_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_359_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_359_matmul_readvariableop_resource:2(F
4while_lstm_cell_359_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_359_biasadd_readvariableop_resource:(??*while/lstm_cell_359/BiasAdd/ReadVariableOp?)while/lstm_cell_359/MatMul/ReadVariableOp?+while/lstm_cell_359/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_359/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_359_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_359/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_359_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_359/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_359/addAddV2$while/lstm_cell_359/MatMul:product:0&while/lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_359_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_359/BiasAddBiasAddwhile/lstm_cell_359/add:z:02while/lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_359/splitSplit,while/lstm_cell_359/split/split_dim:output:0$while/lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_359/SigmoidSigmoid"while/lstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_359/Sigmoid_1Sigmoid"while/lstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mulMul!while/lstm_cell_359/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_359/ReluRelu"while/lstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mul_1Mulwhile/lstm_cell_359/Sigmoid:y:0&while/lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/add_1AddV2while/lstm_cell_359/mul:z:0while/lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_359/Sigmoid_2Sigmoid"while/lstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_359/Relu_1Reluwhile/lstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mul_2Mul!while/lstm_cell_359/Sigmoid_2:y:0(while/lstm_cell_359/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_359/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_359/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_359/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_359/BiasAdd/ReadVariableOp*^while/lstm_cell_359/MatMul/ReadVariableOp,^while/lstm_cell_359/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_359_biasadd_readvariableop_resource5while_lstm_cell_359_biasadd_readvariableop_resource_0"n
4while_lstm_cell_359_matmul_1_readvariableop_resource6while_lstm_cell_359_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_359_matmul_readvariableop_resource4while_lstm_cell_359_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_359/BiasAdd/ReadVariableOp*while/lstm_cell_359/BiasAdd/ReadVariableOp2V
)while/lstm_cell_359/MatMul/ReadVariableOp)while/lstm_cell_359/MatMul/ReadVariableOp2Z
+while/lstm_cell_359/MatMul_1/ReadVariableOp+while/lstm_cell_359/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_168_layer_call_and_return_conditional_losses_2175146

inputs?
,lstm_cell_357_matmul_readvariableop_resource:	?A
.lstm_cell_357_matmul_1_readvariableop_resource:	d?<
-lstm_cell_357_biasadd_readvariableop_resource:	?
identity??$lstm_cell_357/BiasAdd/ReadVariableOp?#lstm_cell_357/MatMul/ReadVariableOp?%lstm_cell_357/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_357/MatMul/ReadVariableOpReadVariableOp,lstm_cell_357_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_357/MatMulMatMulstrided_slice_2:output:0+lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_357_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_357/MatMul_1MatMulzeros:output:0-lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_357/addAddV2lstm_cell_357/MatMul:product:0 lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_357_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_357/BiasAddBiasAddlstm_cell_357/add:z:0,lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_357/splitSplit&lstm_cell_357/split/split_dim:output:0lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_357/SigmoidSigmoidlstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_357/Sigmoid_1Sigmoidlstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_357/mulMullstm_cell_357/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_357/ReluRelulstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_357/mul_1Mullstm_cell_357/Sigmoid:y:0 lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_357/add_1AddV2lstm_cell_357/mul:z:0lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_357/Sigmoid_2Sigmoidlstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_357/Relu_1Relulstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_357/mul_2Mullstm_cell_357/Sigmoid_2:y:0"lstm_cell_357/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_357_matmul_readvariableop_resource.lstm_cell_357_matmul_1_readvariableop_resource-lstm_cell_357_biasadd_readvariableop_resource*
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
while_body_2175062*
condR
while_cond_2175061*K
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
NoOpNoOp%^lstm_cell_357/BiasAdd/ReadVariableOp$^lstm_cell_357/MatMul/ReadVariableOp&^lstm_cell_357/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_357/BiasAdd/ReadVariableOp$lstm_cell_357/BiasAdd/ReadVariableOp2J
#lstm_cell_357/MatMul/ReadVariableOp#lstm_cell_357/MatMul/ReadVariableOp2N
%lstm_cell_357/MatMul_1/ReadVariableOp%lstm_cell_357/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_169_layer_call_and_return_conditional_losses_2175762

inputs?
,lstm_cell_358_matmul_readvariableop_resource:	d?A
.lstm_cell_358_matmul_1_readvariableop_resource:	2?<
-lstm_cell_358_biasadd_readvariableop_resource:	?
identity??$lstm_cell_358/BiasAdd/ReadVariableOp?#lstm_cell_358/MatMul/ReadVariableOp?%lstm_cell_358/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_358/MatMul/ReadVariableOpReadVariableOp,lstm_cell_358_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_358/MatMulMatMulstrided_slice_2:output:0+lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_358_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_358/MatMul_1MatMulzeros:output:0-lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_358/addAddV2lstm_cell_358/MatMul:product:0 lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_358_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_358/BiasAddBiasAddlstm_cell_358/add:z:0,lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_358/splitSplit&lstm_cell_358/split/split_dim:output:0lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_358/SigmoidSigmoidlstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_358/Sigmoid_1Sigmoidlstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_358/mulMullstm_cell_358/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_358/ReluRelulstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_358/mul_1Mullstm_cell_358/Sigmoid:y:0 lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_358/add_1AddV2lstm_cell_358/mul:z:0lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_358/Sigmoid_2Sigmoidlstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_358/Relu_1Relulstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_358/mul_2Mullstm_cell_358/Sigmoid_2:y:0"lstm_cell_358/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_358_matmul_readvariableop_resource.lstm_cell_358_matmul_1_readvariableop_resource-lstm_cell_358_biasadd_readvariableop_resource*
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
while_body_2175678*
condR
while_cond_2175677*K
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
NoOpNoOp%^lstm_cell_358/BiasAdd/ReadVariableOp$^lstm_cell_358/MatMul/ReadVariableOp&^lstm_cell_358/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_358/BiasAdd/ReadVariableOp$lstm_cell_358/BiasAdd/ReadVariableOp2J
#lstm_cell_358/MatMul/ReadVariableOp#lstm_cell_358/MatMul/ReadVariableOp2N
%lstm_cell_358/MatMul_1/ReadVariableOp%lstm_cell_358/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_168_layer_call_and_return_conditional_losses_2171655

inputs(
lstm_cell_357_2171573:	?(
lstm_cell_357_2171575:	d?$
lstm_cell_357_2171577:	?
identity??%lstm_cell_357/StatefulPartitionedCall?while;
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
%lstm_cell_357/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_357_2171573lstm_cell_357_2171575lstm_cell_357_2171577*
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
J__inference_lstm_cell_357_layer_call_and_return_conditional_losses_2171572n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_357_2171573lstm_cell_357_2171575lstm_cell_357_2171577*
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
while_body_2171586*
condR
while_cond_2171585*K
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
NoOpNoOp&^lstm_cell_357/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_357/StatefulPartitionedCall%lstm_cell_357/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_56_layer_call_and_return_conditional_losses_2173700
lstm_168_input#
lstm_168_2173673:	?#
lstm_168_2173675:	d?
lstm_168_2173677:	?#
lstm_169_2173680:	d?#
lstm_169_2173682:	2?
lstm_169_2173684:	?"
lstm_170_2173687:2("
lstm_170_2173689:
(
lstm_170_2173691:("
dense_56_2173694:

dense_56_2173696:
identity?? dense_56/StatefulPartitionedCall? lstm_168/StatefulPartitionedCall? lstm_169/StatefulPartitionedCall? lstm_170/StatefulPartitionedCall?
 lstm_168/StatefulPartitionedCallStatefulPartitionedCalllstm_168_inputlstm_168_2173673lstm_168_2173675lstm_168_2173677*
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
E__inference_lstm_168_layer_call_and_return_conditional_losses_2172704?
 lstm_169/StatefulPartitionedCallStatefulPartitionedCall)lstm_168/StatefulPartitionedCall:output:0lstm_169_2173680lstm_169_2173682lstm_169_2173684*
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
E__inference_lstm_169_layer_call_and_return_conditional_losses_2172854?
 lstm_170/StatefulPartitionedCallStatefulPartitionedCall)lstm_169/StatefulPartitionedCall:output:0lstm_170_2173687lstm_170_2173689lstm_170_2173691*
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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2173004?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)lstm_170/StatefulPartitionedCall:output:0dense_56_2173694dense_56_2173696*
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
E__inference_dense_56_layer_call_and_return_conditional_losses_2173022x
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_56/StatefulPartitionedCall!^lstm_168/StatefulPartitionedCall!^lstm_169/StatefulPartitionedCall!^lstm_170/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 lstm_168/StatefulPartitionedCall lstm_168/StatefulPartitionedCall2D
 lstm_169/StatefulPartitionedCall lstm_169/StatefulPartitionedCall2D
 lstm_170/StatefulPartitionedCall lstm_170/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_168_input
?
?
*__inference_lstm_170_layer_call_fn_2175938

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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2173004o
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
*__inference_lstm_170_layer_call_fn_2175916
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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2172355o
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
while_cond_2176293
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2176293___redundant_placeholder05
1while_while_cond_2176293___redundant_placeholder15
1while_while_cond_2176293___redundant_placeholder25
1while_while_cond_2176293___redundant_placeholder3
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
while_body_2176151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_359_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_359_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_359_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_359_matmul_readvariableop_resource:2(F
4while_lstm_cell_359_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_359_biasadd_readvariableop_resource:(??*while/lstm_cell_359/BiasAdd/ReadVariableOp?)while/lstm_cell_359/MatMul/ReadVariableOp?+while/lstm_cell_359/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_359/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_359_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_359/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_359_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_359/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_359/addAddV2$while/lstm_cell_359/MatMul:product:0&while/lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_359_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_359/BiasAddBiasAddwhile/lstm_cell_359/add:z:02while/lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_359/splitSplit,while/lstm_cell_359/split/split_dim:output:0$while/lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_359/SigmoidSigmoid"while/lstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_359/Sigmoid_1Sigmoid"while/lstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mulMul!while/lstm_cell_359/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_359/ReluRelu"while/lstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mul_1Mulwhile/lstm_cell_359/Sigmoid:y:0&while/lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/add_1AddV2while/lstm_cell_359/mul:z:0while/lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_359/Sigmoid_2Sigmoid"while/lstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_359/Relu_1Reluwhile/lstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mul_2Mul!while/lstm_cell_359/Sigmoid_2:y:0(while/lstm_cell_359/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_359/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_359/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_359/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_359/BiasAdd/ReadVariableOp*^while/lstm_cell_359/MatMul/ReadVariableOp,^while/lstm_cell_359/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_359_biasadd_readvariableop_resource5while_lstm_cell_359_biasadd_readvariableop_resource_0"n
4while_lstm_cell_359_matmul_1_readvariableop_resource6while_lstm_cell_359_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_359_matmul_readvariableop_resource4while_lstm_cell_359_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_359/BiasAdd/ReadVariableOp*while/lstm_cell_359/BiasAdd/ReadVariableOp2V
)while/lstm_cell_359/MatMul/ReadVariableOp)while/lstm_cell_359/MatMul/ReadVariableOp2Z
+while/lstm_cell_359/MatMul_1/ReadVariableOp+while/lstm_cell_359/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_169_while_cond_2174016.
*lstm_169_while_lstm_169_while_loop_counter4
0lstm_169_while_lstm_169_while_maximum_iterations
lstm_169_while_placeholder 
lstm_169_while_placeholder_1 
lstm_169_while_placeholder_2 
lstm_169_while_placeholder_30
,lstm_169_while_less_lstm_169_strided_slice_1G
Clstm_169_while_lstm_169_while_cond_2174016___redundant_placeholder0G
Clstm_169_while_lstm_169_while_cond_2174016___redundant_placeholder1G
Clstm_169_while_lstm_169_while_cond_2174016___redundant_placeholder2G
Clstm_169_while_lstm_169_while_cond_2174016___redundant_placeholder3
lstm_169_while_identity
?
lstm_169/while/LessLesslstm_169_while_placeholder,lstm_169_while_less_lstm_169_strided_slice_1*
T0*
_output_shapes
: ]
lstm_169/while/IdentityIdentitylstm_169/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_169_while_identity lstm_169/while/Identity:output:0*(
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
J__inference_lstm_cell_359_layer_call_and_return_conditional_losses_2176802

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
while_cond_2175677
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2175677___redundant_placeholder05
1while_while_cond_2175677___redundant_placeholder15
1while_while_cond_2175677___redundant_placeholder25
1while_while_cond_2175677___redundant_placeholder3
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
while_cond_2172126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2172126___redundant_placeholder05
1while_while_cond_2172126___redundant_placeholder15
1while_while_cond_2172126___redundant_placeholder25
1while_while_cond_2172126___redundant_placeholder3
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
while_body_2172920
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_359_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_359_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_359_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_359_matmul_readvariableop_resource:2(F
4while_lstm_cell_359_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_359_biasadd_readvariableop_resource:(??*while/lstm_cell_359/BiasAdd/ReadVariableOp?)while/lstm_cell_359/MatMul/ReadVariableOp?+while/lstm_cell_359/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_359/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_359_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_359/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_359_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_359/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_359/addAddV2$while/lstm_cell_359/MatMul:product:0&while/lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_359_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_359/BiasAddBiasAddwhile/lstm_cell_359/add:z:02while/lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_359/splitSplit,while/lstm_cell_359/split/split_dim:output:0$while/lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_359/SigmoidSigmoid"while/lstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_359/Sigmoid_1Sigmoid"while/lstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mulMul!while/lstm_cell_359/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_359/ReluRelu"while/lstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mul_1Mulwhile/lstm_cell_359/Sigmoid:y:0&while/lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/add_1AddV2while/lstm_cell_359/mul:z:0while/lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_359/Sigmoid_2Sigmoid"while/lstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_359/Relu_1Reluwhile/lstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mul_2Mul!while/lstm_cell_359/Sigmoid_2:y:0(while/lstm_cell_359/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_359/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_359/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_359/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_359/BiasAdd/ReadVariableOp*^while/lstm_cell_359/MatMul/ReadVariableOp,^while/lstm_cell_359/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_359_biasadd_readvariableop_resource5while_lstm_cell_359_biasadd_readvariableop_resource_0"n
4while_lstm_cell_359_matmul_1_readvariableop_resource6while_lstm_cell_359_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_359_matmul_readvariableop_resource4while_lstm_cell_359_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_359/BiasAdd/ReadVariableOp*while/lstm_cell_359/BiasAdd/ReadVariableOp2V
)while/lstm_cell_359/MatMul/ReadVariableOp)while/lstm_cell_359/MatMul/ReadVariableOp2Z
+while/lstm_cell_359/MatMul_1/ReadVariableOp+while/lstm_cell_359/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_358_layer_call_fn_2176655

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
J__inference_lstm_cell_358_layer_call_and_return_conditional_losses_2171922o
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
?#
?
while_body_2171777
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_357_2171801_0:	?0
while_lstm_cell_357_2171803_0:	d?,
while_lstm_cell_357_2171805_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_357_2171801:	?.
while_lstm_cell_357_2171803:	d?*
while_lstm_cell_357_2171805:	???+while/lstm_cell_357/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_357/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_357_2171801_0while_lstm_cell_357_2171803_0while_lstm_cell_357_2171805_0*
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
J__inference_lstm_cell_357_layer_call_and_return_conditional_losses_2171718?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_357/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_357/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_357/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_357/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_357_2171801while_lstm_cell_357_2171801_0"<
while_lstm_cell_357_2171803while_lstm_cell_357_2171803_0"<
while_lstm_cell_357_2171805while_lstm_cell_357_2171805_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_357/StatefulPartitionedCall+while/lstm_cell_357/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_168_layer_call_and_return_conditional_losses_2173550

inputs?
,lstm_cell_357_matmul_readvariableop_resource:	?A
.lstm_cell_357_matmul_1_readvariableop_resource:	d?<
-lstm_cell_357_biasadd_readvariableop_resource:	?
identity??$lstm_cell_357/BiasAdd/ReadVariableOp?#lstm_cell_357/MatMul/ReadVariableOp?%lstm_cell_357/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_357/MatMul/ReadVariableOpReadVariableOp,lstm_cell_357_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_357/MatMulMatMulstrided_slice_2:output:0+lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_357_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_357/MatMul_1MatMulzeros:output:0-lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_357/addAddV2lstm_cell_357/MatMul:product:0 lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_357_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_357/BiasAddBiasAddlstm_cell_357/add:z:0,lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_357/splitSplit&lstm_cell_357/split/split_dim:output:0lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_357/SigmoidSigmoidlstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_357/Sigmoid_1Sigmoidlstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_357/mulMullstm_cell_357/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_357/ReluRelulstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_357/mul_1Mullstm_cell_357/Sigmoid:y:0 lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_357/add_1AddV2lstm_cell_357/mul:z:0lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_357/Sigmoid_2Sigmoidlstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_357/Relu_1Relulstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_357/mul_2Mullstm_cell_357/Sigmoid_2:y:0"lstm_cell_357/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_357_matmul_readvariableop_resource.lstm_cell_357_matmul_1_readvariableop_resource-lstm_cell_357_biasadd_readvariableop_resource*
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
while_body_2173466*
condR
while_cond_2173465*K
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
NoOpNoOp%^lstm_cell_357/BiasAdd/ReadVariableOp$^lstm_cell_357/MatMul/ReadVariableOp&^lstm_cell_357/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_357/BiasAdd/ReadVariableOp$lstm_cell_357/BiasAdd/ReadVariableOp2J
#lstm_cell_357/MatMul/ReadVariableOp#lstm_cell_357/MatMul/ReadVariableOp2N
%lstm_cell_357/MatMul_1/ReadVariableOp%lstm_cell_357/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_358_layer_call_and_return_conditional_losses_2176704

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
/__inference_lstm_cell_358_layer_call_fn_2176672

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
J__inference_lstm_cell_358_layer_call_and_return_conditional_losses_2172068o
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

?
lstm_170_while_cond_2174582.
*lstm_170_while_lstm_170_while_loop_counter4
0lstm_170_while_lstm_170_while_maximum_iterations
lstm_170_while_placeholder 
lstm_170_while_placeholder_1 
lstm_170_while_placeholder_2 
lstm_170_while_placeholder_30
,lstm_170_while_less_lstm_170_strided_slice_1G
Clstm_170_while_lstm_170_while_cond_2174582___redundant_placeholder0G
Clstm_170_while_lstm_170_while_cond_2174582___redundant_placeholder1G
Clstm_170_while_lstm_170_while_cond_2174582___redundant_placeholder2G
Clstm_170_while_lstm_170_while_cond_2174582___redundant_placeholder3
lstm_170_while_identity
?
lstm_170/while/LessLesslstm_170_while_placeholder,lstm_170_while_less_lstm_170_strided_slice_1*
T0*
_output_shapes
: ]
lstm_170/while/IdentityIdentitylstm_170/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_170_while_identity lstm_170/while/Identity:output:0*(
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
while_cond_2172919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2172919___redundant_placeholder05
1while_while_cond_2172919___redundant_placeholder15
1while_while_cond_2172919___redundant_placeholder25
1while_while_cond_2172919___redundant_placeholder3
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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2172355

inputs'
lstm_cell_359_2172273:2('
lstm_cell_359_2172275:
(#
lstm_cell_359_2172277:(
identity??%lstm_cell_359/StatefulPartitionedCall?while;
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
%lstm_cell_359/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_359_2172273lstm_cell_359_2172275lstm_cell_359_2172277*
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
J__inference_lstm_cell_359_layer_call_and_return_conditional_losses_2172272n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_359_2172273lstm_cell_359_2172275lstm_cell_359_2172277*
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
while_body_2172286*
condR
while_cond_2172285*K
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
NoOpNoOp&^lstm_cell_359/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_359/StatefulPartitionedCall%lstm_cell_359/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
*__inference_lstm_170_layer_call_fn_2175949

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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2173220o
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
?W
?
 __inference__traced_save_2176977
file_prefix.
*savev2_dense_56_kernel_read_readvariableop,
(savev2_dense_56_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_168_lstm_cell_168_kernel_read_readvariableopF
Bsavev2_lstm_168_lstm_cell_168_recurrent_kernel_read_readvariableop:
6savev2_lstm_168_lstm_cell_168_bias_read_readvariableop<
8savev2_lstm_169_lstm_cell_169_kernel_read_readvariableopF
Bsavev2_lstm_169_lstm_cell_169_recurrent_kernel_read_readvariableop:
6savev2_lstm_169_lstm_cell_169_bias_read_readvariableop<
8savev2_lstm_170_lstm_cell_170_kernel_read_readvariableopF
Bsavev2_lstm_170_lstm_cell_170_recurrent_kernel_read_readvariableop:
6savev2_lstm_170_lstm_cell_170_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_56_kernel_m_read_readvariableop3
/savev2_adam_dense_56_bias_m_read_readvariableopC
?savev2_adam_lstm_168_lstm_cell_168_kernel_m_read_readvariableopM
Isavev2_adam_lstm_168_lstm_cell_168_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_168_lstm_cell_168_bias_m_read_readvariableopC
?savev2_adam_lstm_169_lstm_cell_169_kernel_m_read_readvariableopM
Isavev2_adam_lstm_169_lstm_cell_169_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_169_lstm_cell_169_bias_m_read_readvariableopC
?savev2_adam_lstm_170_lstm_cell_170_kernel_m_read_readvariableopM
Isavev2_adam_lstm_170_lstm_cell_170_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_170_lstm_cell_170_bias_m_read_readvariableop5
1savev2_adam_dense_56_kernel_v_read_readvariableop3
/savev2_adam_dense_56_bias_v_read_readvariableopC
?savev2_adam_lstm_168_lstm_cell_168_kernel_v_read_readvariableopM
Isavev2_adam_lstm_168_lstm_cell_168_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_168_lstm_cell_168_bias_v_read_readvariableopC
?savev2_adam_lstm_169_lstm_cell_169_kernel_v_read_readvariableopM
Isavev2_adam_lstm_169_lstm_cell_169_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_169_lstm_cell_169_bias_v_read_readvariableopC
?savev2_adam_lstm_170_lstm_cell_170_kernel_v_read_readvariableopM
Isavev2_adam_lstm_170_lstm_cell_170_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_170_lstm_cell_170_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_56_kernel_read_readvariableop(savev2_dense_56_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_168_lstm_cell_168_kernel_read_readvariableopBsavev2_lstm_168_lstm_cell_168_recurrent_kernel_read_readvariableop6savev2_lstm_168_lstm_cell_168_bias_read_readvariableop8savev2_lstm_169_lstm_cell_169_kernel_read_readvariableopBsavev2_lstm_169_lstm_cell_169_recurrent_kernel_read_readvariableop6savev2_lstm_169_lstm_cell_169_bias_read_readvariableop8savev2_lstm_170_lstm_cell_170_kernel_read_readvariableopBsavev2_lstm_170_lstm_cell_170_recurrent_kernel_read_readvariableop6savev2_lstm_170_lstm_cell_170_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_56_kernel_m_read_readvariableop/savev2_adam_dense_56_bias_m_read_readvariableop?savev2_adam_lstm_168_lstm_cell_168_kernel_m_read_readvariableopIsavev2_adam_lstm_168_lstm_cell_168_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_168_lstm_cell_168_bias_m_read_readvariableop?savev2_adam_lstm_169_lstm_cell_169_kernel_m_read_readvariableopIsavev2_adam_lstm_169_lstm_cell_169_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_169_lstm_cell_169_bias_m_read_readvariableop?savev2_adam_lstm_170_lstm_cell_170_kernel_m_read_readvariableopIsavev2_adam_lstm_170_lstm_cell_170_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_170_lstm_cell_170_bias_m_read_readvariableop1savev2_adam_dense_56_kernel_v_read_readvariableop/savev2_adam_dense_56_bias_v_read_readvariableop?savev2_adam_lstm_168_lstm_cell_168_kernel_v_read_readvariableopIsavev2_adam_lstm_168_lstm_cell_168_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_168_lstm_cell_168_bias_v_read_readvariableop?savev2_adam_lstm_169_lstm_cell_169_kernel_v_read_readvariableopIsavev2_adam_lstm_169_lstm_cell_169_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_169_lstm_cell_169_bias_v_read_readvariableop?savev2_adam_lstm_170_lstm_cell_170_kernel_v_read_readvariableopIsavev2_adam_lstm_170_lstm_cell_170_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_170_lstm_cell_170_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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

?
/__inference_sequential_56_layer_call_fn_2173670
lstm_168_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_168_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_56_layer_call_and_return_conditional_losses_2173618o
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
_user_specified_namelstm_168_input
?C
?

lstm_169_while_body_2174444.
*lstm_169_while_lstm_169_while_loop_counter4
0lstm_169_while_lstm_169_while_maximum_iterations
lstm_169_while_placeholder 
lstm_169_while_placeholder_1 
lstm_169_while_placeholder_2 
lstm_169_while_placeholder_3-
)lstm_169_while_lstm_169_strided_slice_1_0i
elstm_169_while_tensorarrayv2read_tensorlistgetitem_lstm_169_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_169_while_lstm_cell_358_matmul_readvariableop_resource_0:	d?R
?lstm_169_while_lstm_cell_358_matmul_1_readvariableop_resource_0:	2?M
>lstm_169_while_lstm_cell_358_biasadd_readvariableop_resource_0:	?
lstm_169_while_identity
lstm_169_while_identity_1
lstm_169_while_identity_2
lstm_169_while_identity_3
lstm_169_while_identity_4
lstm_169_while_identity_5+
'lstm_169_while_lstm_169_strided_slice_1g
clstm_169_while_tensorarrayv2read_tensorlistgetitem_lstm_169_tensorarrayunstack_tensorlistfromtensorN
;lstm_169_while_lstm_cell_358_matmul_readvariableop_resource:	d?P
=lstm_169_while_lstm_cell_358_matmul_1_readvariableop_resource:	2?K
<lstm_169_while_lstm_cell_358_biasadd_readvariableop_resource:	???3lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOp?2lstm_169/while/lstm_cell_358/MatMul/ReadVariableOp?4lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOp?
@lstm_169/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_169/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_169_while_tensorarrayv2read_tensorlistgetitem_lstm_169_tensorarrayunstack_tensorlistfromtensor_0lstm_169_while_placeholderIlstm_169/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_169/while/lstm_cell_358/MatMul/ReadVariableOpReadVariableOp=lstm_169_while_lstm_cell_358_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_169/while/lstm_cell_358/MatMulMatMul9lstm_169/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_169/while/lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOp?lstm_169_while_lstm_cell_358_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_169/while/lstm_cell_358/MatMul_1MatMullstm_169_while_placeholder_2<lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_169/while/lstm_cell_358/addAddV2-lstm_169/while/lstm_cell_358/MatMul:product:0/lstm_169/while/lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOp>lstm_169_while_lstm_cell_358_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_169/while/lstm_cell_358/BiasAddBiasAdd$lstm_169/while/lstm_cell_358/add:z:0;lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_169/while/lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_169/while/lstm_cell_358/splitSplit5lstm_169/while/lstm_cell_358/split/split_dim:output:0-lstm_169/while/lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_169/while/lstm_cell_358/SigmoidSigmoid+lstm_169/while/lstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_169/while/lstm_cell_358/Sigmoid_1Sigmoid+lstm_169/while/lstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_169/while/lstm_cell_358/mulMul*lstm_169/while/lstm_cell_358/Sigmoid_1:y:0lstm_169_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_169/while/lstm_cell_358/ReluRelu+lstm_169/while/lstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_169/while/lstm_cell_358/mul_1Mul(lstm_169/while/lstm_cell_358/Sigmoid:y:0/lstm_169/while/lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_169/while/lstm_cell_358/add_1AddV2$lstm_169/while/lstm_cell_358/mul:z:0&lstm_169/while/lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_169/while/lstm_cell_358/Sigmoid_2Sigmoid+lstm_169/while/lstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_169/while/lstm_cell_358/Relu_1Relu&lstm_169/while/lstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_169/while/lstm_cell_358/mul_2Mul*lstm_169/while/lstm_cell_358/Sigmoid_2:y:01lstm_169/while/lstm_cell_358/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_169/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_169_while_placeholder_1lstm_169_while_placeholder&lstm_169/while/lstm_cell_358/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_169/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_169/while/addAddV2lstm_169_while_placeholderlstm_169/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_169/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_169/while/add_1AddV2*lstm_169_while_lstm_169_while_loop_counterlstm_169/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_169/while/IdentityIdentitylstm_169/while/add_1:z:0^lstm_169/while/NoOp*
T0*
_output_shapes
: ?
lstm_169/while/Identity_1Identity0lstm_169_while_lstm_169_while_maximum_iterations^lstm_169/while/NoOp*
T0*
_output_shapes
: t
lstm_169/while/Identity_2Identitylstm_169/while/add:z:0^lstm_169/while/NoOp*
T0*
_output_shapes
: ?
lstm_169/while/Identity_3IdentityClstm_169/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_169/while/NoOp*
T0*
_output_shapes
: ?
lstm_169/while/Identity_4Identity&lstm_169/while/lstm_cell_358/mul_2:z:0^lstm_169/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_169/while/Identity_5Identity&lstm_169/while/lstm_cell_358/add_1:z:0^lstm_169/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_169/while/NoOpNoOp4^lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOp3^lstm_169/while/lstm_cell_358/MatMul/ReadVariableOp5^lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_169_while_identity lstm_169/while/Identity:output:0"?
lstm_169_while_identity_1"lstm_169/while/Identity_1:output:0"?
lstm_169_while_identity_2"lstm_169/while/Identity_2:output:0"?
lstm_169_while_identity_3"lstm_169/while/Identity_3:output:0"?
lstm_169_while_identity_4"lstm_169/while/Identity_4:output:0"?
lstm_169_while_identity_5"lstm_169/while/Identity_5:output:0"T
'lstm_169_while_lstm_169_strided_slice_1)lstm_169_while_lstm_169_strided_slice_1_0"~
<lstm_169_while_lstm_cell_358_biasadd_readvariableop_resource>lstm_169_while_lstm_cell_358_biasadd_readvariableop_resource_0"?
=lstm_169_while_lstm_cell_358_matmul_1_readvariableop_resource?lstm_169_while_lstm_cell_358_matmul_1_readvariableop_resource_0"|
;lstm_169_while_lstm_cell_358_matmul_readvariableop_resource=lstm_169_while_lstm_cell_358_matmul_readvariableop_resource_0"?
clstm_169_while_tensorarrayv2read_tensorlistgetitem_lstm_169_tensorarrayunstack_tensorlistfromtensorelstm_169_while_tensorarrayv2read_tensorlistgetitem_lstm_169_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOp3lstm_169/while/lstm_cell_358/BiasAdd/ReadVariableOp2h
2lstm_169/while/lstm_cell_358/MatMul/ReadVariableOp2lstm_169/while/lstm_cell_358/MatMul/ReadVariableOp2l
4lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOp4lstm_169/while/lstm_cell_358/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
??
?
"__inference__wrapped_model_2171505
lstm_168_inputV
Csequential_56_lstm_168_lstm_cell_357_matmul_readvariableop_resource:	?X
Esequential_56_lstm_168_lstm_cell_357_matmul_1_readvariableop_resource:	d?S
Dsequential_56_lstm_168_lstm_cell_357_biasadd_readvariableop_resource:	?V
Csequential_56_lstm_169_lstm_cell_358_matmul_readvariableop_resource:	d?X
Esequential_56_lstm_169_lstm_cell_358_matmul_1_readvariableop_resource:	2?S
Dsequential_56_lstm_169_lstm_cell_358_biasadd_readvariableop_resource:	?U
Csequential_56_lstm_170_lstm_cell_359_matmul_readvariableop_resource:2(W
Esequential_56_lstm_170_lstm_cell_359_matmul_1_readvariableop_resource:
(R
Dsequential_56_lstm_170_lstm_cell_359_biasadd_readvariableop_resource:(G
5sequential_56_dense_56_matmul_readvariableop_resource:
D
6sequential_56_dense_56_biasadd_readvariableop_resource:
identity??-sequential_56/dense_56/BiasAdd/ReadVariableOp?,sequential_56/dense_56/MatMul/ReadVariableOp?;sequential_56/lstm_168/lstm_cell_357/BiasAdd/ReadVariableOp?:sequential_56/lstm_168/lstm_cell_357/MatMul/ReadVariableOp?<sequential_56/lstm_168/lstm_cell_357/MatMul_1/ReadVariableOp?sequential_56/lstm_168/while?;sequential_56/lstm_169/lstm_cell_358/BiasAdd/ReadVariableOp?:sequential_56/lstm_169/lstm_cell_358/MatMul/ReadVariableOp?<sequential_56/lstm_169/lstm_cell_358/MatMul_1/ReadVariableOp?sequential_56/lstm_169/while?;sequential_56/lstm_170/lstm_cell_359/BiasAdd/ReadVariableOp?:sequential_56/lstm_170/lstm_cell_359/MatMul/ReadVariableOp?<sequential_56/lstm_170/lstm_cell_359/MatMul_1/ReadVariableOp?sequential_56/lstm_170/whileZ
sequential_56/lstm_168/ShapeShapelstm_168_input*
T0*
_output_shapes
:t
*sequential_56/lstm_168/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_56/lstm_168/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_56/lstm_168/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_56/lstm_168/strided_sliceStridedSlice%sequential_56/lstm_168/Shape:output:03sequential_56/lstm_168/strided_slice/stack:output:05sequential_56/lstm_168/strided_slice/stack_1:output:05sequential_56/lstm_168/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_56/lstm_168/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_56/lstm_168/zeros/packedPack-sequential_56/lstm_168/strided_slice:output:0.sequential_56/lstm_168/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_56/lstm_168/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_56/lstm_168/zerosFill,sequential_56/lstm_168/zeros/packed:output:0+sequential_56/lstm_168/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_56/lstm_168/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_56/lstm_168/zeros_1/packedPack-sequential_56/lstm_168/strided_slice:output:00sequential_56/lstm_168/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_56/lstm_168/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_56/lstm_168/zeros_1Fill.sequential_56/lstm_168/zeros_1/packed:output:0-sequential_56/lstm_168/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_56/lstm_168/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_56/lstm_168/transpose	Transposelstm_168_input.sequential_56/lstm_168/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_56/lstm_168/Shape_1Shape$sequential_56/lstm_168/transpose:y:0*
T0*
_output_shapes
:v
,sequential_56/lstm_168/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_56/lstm_168/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_56/lstm_168/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_56/lstm_168/strided_slice_1StridedSlice'sequential_56/lstm_168/Shape_1:output:05sequential_56/lstm_168/strided_slice_1/stack:output:07sequential_56/lstm_168/strided_slice_1/stack_1:output:07sequential_56/lstm_168/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_56/lstm_168/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_56/lstm_168/TensorArrayV2TensorListReserve;sequential_56/lstm_168/TensorArrayV2/element_shape:output:0/sequential_56/lstm_168/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_56/lstm_168/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_56/lstm_168/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_56/lstm_168/transpose:y:0Usequential_56/lstm_168/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_56/lstm_168/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_56/lstm_168/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_56/lstm_168/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_56/lstm_168/strided_slice_2StridedSlice$sequential_56/lstm_168/transpose:y:05sequential_56/lstm_168/strided_slice_2/stack:output:07sequential_56/lstm_168/strided_slice_2/stack_1:output:07sequential_56/lstm_168/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_56/lstm_168/lstm_cell_357/MatMul/ReadVariableOpReadVariableOpCsequential_56_lstm_168_lstm_cell_357_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_56/lstm_168/lstm_cell_357/MatMulMatMul/sequential_56/lstm_168/strided_slice_2:output:0Bsequential_56/lstm_168/lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_56/lstm_168/lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOpEsequential_56_lstm_168_lstm_cell_357_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_56/lstm_168/lstm_cell_357/MatMul_1MatMul%sequential_56/lstm_168/zeros:output:0Dsequential_56/lstm_168/lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_56/lstm_168/lstm_cell_357/addAddV25sequential_56/lstm_168/lstm_cell_357/MatMul:product:07sequential_56/lstm_168/lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_56/lstm_168/lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOpDsequential_56_lstm_168_lstm_cell_357_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_56/lstm_168/lstm_cell_357/BiasAddBiasAdd,sequential_56/lstm_168/lstm_cell_357/add:z:0Csequential_56/lstm_168/lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_56/lstm_168/lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_56/lstm_168/lstm_cell_357/splitSplit=sequential_56/lstm_168/lstm_cell_357/split/split_dim:output:05sequential_56/lstm_168/lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_56/lstm_168/lstm_cell_357/SigmoidSigmoid3sequential_56/lstm_168/lstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_56/lstm_168/lstm_cell_357/Sigmoid_1Sigmoid3sequential_56/lstm_168/lstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_56/lstm_168/lstm_cell_357/mulMul2sequential_56/lstm_168/lstm_cell_357/Sigmoid_1:y:0'sequential_56/lstm_168/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_56/lstm_168/lstm_cell_357/ReluRelu3sequential_56/lstm_168/lstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_56/lstm_168/lstm_cell_357/mul_1Mul0sequential_56/lstm_168/lstm_cell_357/Sigmoid:y:07sequential_56/lstm_168/lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_56/lstm_168/lstm_cell_357/add_1AddV2,sequential_56/lstm_168/lstm_cell_357/mul:z:0.sequential_56/lstm_168/lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_56/lstm_168/lstm_cell_357/Sigmoid_2Sigmoid3sequential_56/lstm_168/lstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_56/lstm_168/lstm_cell_357/Relu_1Relu.sequential_56/lstm_168/lstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_56/lstm_168/lstm_cell_357/mul_2Mul2sequential_56/lstm_168/lstm_cell_357/Sigmoid_2:y:09sequential_56/lstm_168/lstm_cell_357/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_56/lstm_168/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_56/lstm_168/TensorArrayV2_1TensorListReserve=sequential_56/lstm_168/TensorArrayV2_1/element_shape:output:0/sequential_56/lstm_168/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_56/lstm_168/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_56/lstm_168/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_56/lstm_168/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_56/lstm_168/whileWhile2sequential_56/lstm_168/while/loop_counter:output:08sequential_56/lstm_168/while/maximum_iterations:output:0$sequential_56/lstm_168/time:output:0/sequential_56/lstm_168/TensorArrayV2_1:handle:0%sequential_56/lstm_168/zeros:output:0'sequential_56/lstm_168/zeros_1:output:0/sequential_56/lstm_168/strided_slice_1:output:0Nsequential_56/lstm_168/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_56_lstm_168_lstm_cell_357_matmul_readvariableop_resourceEsequential_56_lstm_168_lstm_cell_357_matmul_1_readvariableop_resourceDsequential_56_lstm_168_lstm_cell_357_biasadd_readvariableop_resource*
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
)sequential_56_lstm_168_while_body_2171137*5
cond-R+
)sequential_56_lstm_168_while_cond_2171136*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_56/lstm_168/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_56/lstm_168/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_56/lstm_168/while:output:3Psequential_56/lstm_168/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_56/lstm_168/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_56/lstm_168/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_56/lstm_168/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_56/lstm_168/strided_slice_3StridedSliceBsequential_56/lstm_168/TensorArrayV2Stack/TensorListStack:tensor:05sequential_56/lstm_168/strided_slice_3/stack:output:07sequential_56/lstm_168/strided_slice_3/stack_1:output:07sequential_56/lstm_168/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_56/lstm_168/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_56/lstm_168/transpose_1	TransposeBsequential_56/lstm_168/TensorArrayV2Stack/TensorListStack:tensor:00sequential_56/lstm_168/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_56/lstm_168/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_56/lstm_169/ShapeShape&sequential_56/lstm_168/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_56/lstm_169/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_56/lstm_169/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_56/lstm_169/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_56/lstm_169/strided_sliceStridedSlice%sequential_56/lstm_169/Shape:output:03sequential_56/lstm_169/strided_slice/stack:output:05sequential_56/lstm_169/strided_slice/stack_1:output:05sequential_56/lstm_169/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_56/lstm_169/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_56/lstm_169/zeros/packedPack-sequential_56/lstm_169/strided_slice:output:0.sequential_56/lstm_169/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_56/lstm_169/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_56/lstm_169/zerosFill,sequential_56/lstm_169/zeros/packed:output:0+sequential_56/lstm_169/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_56/lstm_169/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_56/lstm_169/zeros_1/packedPack-sequential_56/lstm_169/strided_slice:output:00sequential_56/lstm_169/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_56/lstm_169/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_56/lstm_169/zeros_1Fill.sequential_56/lstm_169/zeros_1/packed:output:0-sequential_56/lstm_169/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_56/lstm_169/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_56/lstm_169/transpose	Transpose&sequential_56/lstm_168/transpose_1:y:0.sequential_56/lstm_169/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_56/lstm_169/Shape_1Shape$sequential_56/lstm_169/transpose:y:0*
T0*
_output_shapes
:v
,sequential_56/lstm_169/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_56/lstm_169/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_56/lstm_169/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_56/lstm_169/strided_slice_1StridedSlice'sequential_56/lstm_169/Shape_1:output:05sequential_56/lstm_169/strided_slice_1/stack:output:07sequential_56/lstm_169/strided_slice_1/stack_1:output:07sequential_56/lstm_169/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_56/lstm_169/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_56/lstm_169/TensorArrayV2TensorListReserve;sequential_56/lstm_169/TensorArrayV2/element_shape:output:0/sequential_56/lstm_169/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_56/lstm_169/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_56/lstm_169/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_56/lstm_169/transpose:y:0Usequential_56/lstm_169/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_56/lstm_169/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_56/lstm_169/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_56/lstm_169/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_56/lstm_169/strided_slice_2StridedSlice$sequential_56/lstm_169/transpose:y:05sequential_56/lstm_169/strided_slice_2/stack:output:07sequential_56/lstm_169/strided_slice_2/stack_1:output:07sequential_56/lstm_169/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_56/lstm_169/lstm_cell_358/MatMul/ReadVariableOpReadVariableOpCsequential_56_lstm_169_lstm_cell_358_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_56/lstm_169/lstm_cell_358/MatMulMatMul/sequential_56/lstm_169/strided_slice_2:output:0Bsequential_56/lstm_169/lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_56/lstm_169/lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOpEsequential_56_lstm_169_lstm_cell_358_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_56/lstm_169/lstm_cell_358/MatMul_1MatMul%sequential_56/lstm_169/zeros:output:0Dsequential_56/lstm_169/lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_56/lstm_169/lstm_cell_358/addAddV25sequential_56/lstm_169/lstm_cell_358/MatMul:product:07sequential_56/lstm_169/lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_56/lstm_169/lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOpDsequential_56_lstm_169_lstm_cell_358_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_56/lstm_169/lstm_cell_358/BiasAddBiasAdd,sequential_56/lstm_169/lstm_cell_358/add:z:0Csequential_56/lstm_169/lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_56/lstm_169/lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_56/lstm_169/lstm_cell_358/splitSplit=sequential_56/lstm_169/lstm_cell_358/split/split_dim:output:05sequential_56/lstm_169/lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_56/lstm_169/lstm_cell_358/SigmoidSigmoid3sequential_56/lstm_169/lstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_56/lstm_169/lstm_cell_358/Sigmoid_1Sigmoid3sequential_56/lstm_169/lstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_56/lstm_169/lstm_cell_358/mulMul2sequential_56/lstm_169/lstm_cell_358/Sigmoid_1:y:0'sequential_56/lstm_169/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_56/lstm_169/lstm_cell_358/ReluRelu3sequential_56/lstm_169/lstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_56/lstm_169/lstm_cell_358/mul_1Mul0sequential_56/lstm_169/lstm_cell_358/Sigmoid:y:07sequential_56/lstm_169/lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_56/lstm_169/lstm_cell_358/add_1AddV2,sequential_56/lstm_169/lstm_cell_358/mul:z:0.sequential_56/lstm_169/lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_56/lstm_169/lstm_cell_358/Sigmoid_2Sigmoid3sequential_56/lstm_169/lstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_56/lstm_169/lstm_cell_358/Relu_1Relu.sequential_56/lstm_169/lstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_56/lstm_169/lstm_cell_358/mul_2Mul2sequential_56/lstm_169/lstm_cell_358/Sigmoid_2:y:09sequential_56/lstm_169/lstm_cell_358/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_56/lstm_169/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_56/lstm_169/TensorArrayV2_1TensorListReserve=sequential_56/lstm_169/TensorArrayV2_1/element_shape:output:0/sequential_56/lstm_169/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_56/lstm_169/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_56/lstm_169/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_56/lstm_169/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_56/lstm_169/whileWhile2sequential_56/lstm_169/while/loop_counter:output:08sequential_56/lstm_169/while/maximum_iterations:output:0$sequential_56/lstm_169/time:output:0/sequential_56/lstm_169/TensorArrayV2_1:handle:0%sequential_56/lstm_169/zeros:output:0'sequential_56/lstm_169/zeros_1:output:0/sequential_56/lstm_169/strided_slice_1:output:0Nsequential_56/lstm_169/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_56_lstm_169_lstm_cell_358_matmul_readvariableop_resourceEsequential_56_lstm_169_lstm_cell_358_matmul_1_readvariableop_resourceDsequential_56_lstm_169_lstm_cell_358_biasadd_readvariableop_resource*
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
)sequential_56_lstm_169_while_body_2171276*5
cond-R+
)sequential_56_lstm_169_while_cond_2171275*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_56/lstm_169/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_56/lstm_169/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_56/lstm_169/while:output:3Psequential_56/lstm_169/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_56/lstm_169/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_56/lstm_169/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_56/lstm_169/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_56/lstm_169/strided_slice_3StridedSliceBsequential_56/lstm_169/TensorArrayV2Stack/TensorListStack:tensor:05sequential_56/lstm_169/strided_slice_3/stack:output:07sequential_56/lstm_169/strided_slice_3/stack_1:output:07sequential_56/lstm_169/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_56/lstm_169/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_56/lstm_169/transpose_1	TransposeBsequential_56/lstm_169/TensorArrayV2Stack/TensorListStack:tensor:00sequential_56/lstm_169/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_56/lstm_169/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_56/lstm_170/ShapeShape&sequential_56/lstm_169/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_56/lstm_170/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_56/lstm_170/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_56/lstm_170/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_56/lstm_170/strided_sliceStridedSlice%sequential_56/lstm_170/Shape:output:03sequential_56/lstm_170/strided_slice/stack:output:05sequential_56/lstm_170/strided_slice/stack_1:output:05sequential_56/lstm_170/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_56/lstm_170/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_56/lstm_170/zeros/packedPack-sequential_56/lstm_170/strided_slice:output:0.sequential_56/lstm_170/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_56/lstm_170/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_56/lstm_170/zerosFill,sequential_56/lstm_170/zeros/packed:output:0+sequential_56/lstm_170/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_56/lstm_170/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_56/lstm_170/zeros_1/packedPack-sequential_56/lstm_170/strided_slice:output:00sequential_56/lstm_170/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_56/lstm_170/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_56/lstm_170/zeros_1Fill.sequential_56/lstm_170/zeros_1/packed:output:0-sequential_56/lstm_170/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_56/lstm_170/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_56/lstm_170/transpose	Transpose&sequential_56/lstm_169/transpose_1:y:0.sequential_56/lstm_170/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_56/lstm_170/Shape_1Shape$sequential_56/lstm_170/transpose:y:0*
T0*
_output_shapes
:v
,sequential_56/lstm_170/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_56/lstm_170/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_56/lstm_170/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_56/lstm_170/strided_slice_1StridedSlice'sequential_56/lstm_170/Shape_1:output:05sequential_56/lstm_170/strided_slice_1/stack:output:07sequential_56/lstm_170/strided_slice_1/stack_1:output:07sequential_56/lstm_170/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_56/lstm_170/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_56/lstm_170/TensorArrayV2TensorListReserve;sequential_56/lstm_170/TensorArrayV2/element_shape:output:0/sequential_56/lstm_170/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_56/lstm_170/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_56/lstm_170/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_56/lstm_170/transpose:y:0Usequential_56/lstm_170/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_56/lstm_170/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_56/lstm_170/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_56/lstm_170/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_56/lstm_170/strided_slice_2StridedSlice$sequential_56/lstm_170/transpose:y:05sequential_56/lstm_170/strided_slice_2/stack:output:07sequential_56/lstm_170/strided_slice_2/stack_1:output:07sequential_56/lstm_170/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_56/lstm_170/lstm_cell_359/MatMul/ReadVariableOpReadVariableOpCsequential_56_lstm_170_lstm_cell_359_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_56/lstm_170/lstm_cell_359/MatMulMatMul/sequential_56/lstm_170/strided_slice_2:output:0Bsequential_56/lstm_170/lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_56/lstm_170/lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOpEsequential_56_lstm_170_lstm_cell_359_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_56/lstm_170/lstm_cell_359/MatMul_1MatMul%sequential_56/lstm_170/zeros:output:0Dsequential_56/lstm_170/lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_56/lstm_170/lstm_cell_359/addAddV25sequential_56/lstm_170/lstm_cell_359/MatMul:product:07sequential_56/lstm_170/lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_56/lstm_170/lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOpDsequential_56_lstm_170_lstm_cell_359_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_56/lstm_170/lstm_cell_359/BiasAddBiasAdd,sequential_56/lstm_170/lstm_cell_359/add:z:0Csequential_56/lstm_170/lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_56/lstm_170/lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_56/lstm_170/lstm_cell_359/splitSplit=sequential_56/lstm_170/lstm_cell_359/split/split_dim:output:05sequential_56/lstm_170/lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_56/lstm_170/lstm_cell_359/SigmoidSigmoid3sequential_56/lstm_170/lstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_56/lstm_170/lstm_cell_359/Sigmoid_1Sigmoid3sequential_56/lstm_170/lstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_56/lstm_170/lstm_cell_359/mulMul2sequential_56/lstm_170/lstm_cell_359/Sigmoid_1:y:0'sequential_56/lstm_170/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_56/lstm_170/lstm_cell_359/ReluRelu3sequential_56/lstm_170/lstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_56/lstm_170/lstm_cell_359/mul_1Mul0sequential_56/lstm_170/lstm_cell_359/Sigmoid:y:07sequential_56/lstm_170/lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_56/lstm_170/lstm_cell_359/add_1AddV2,sequential_56/lstm_170/lstm_cell_359/mul:z:0.sequential_56/lstm_170/lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_56/lstm_170/lstm_cell_359/Sigmoid_2Sigmoid3sequential_56/lstm_170/lstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_56/lstm_170/lstm_cell_359/Relu_1Relu.sequential_56/lstm_170/lstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_56/lstm_170/lstm_cell_359/mul_2Mul2sequential_56/lstm_170/lstm_cell_359/Sigmoid_2:y:09sequential_56/lstm_170/lstm_cell_359/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_56/lstm_170/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_56/lstm_170/TensorArrayV2_1TensorListReserve=sequential_56/lstm_170/TensorArrayV2_1/element_shape:output:0/sequential_56/lstm_170/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_56/lstm_170/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_56/lstm_170/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_56/lstm_170/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_56/lstm_170/whileWhile2sequential_56/lstm_170/while/loop_counter:output:08sequential_56/lstm_170/while/maximum_iterations:output:0$sequential_56/lstm_170/time:output:0/sequential_56/lstm_170/TensorArrayV2_1:handle:0%sequential_56/lstm_170/zeros:output:0'sequential_56/lstm_170/zeros_1:output:0/sequential_56/lstm_170/strided_slice_1:output:0Nsequential_56/lstm_170/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_56_lstm_170_lstm_cell_359_matmul_readvariableop_resourceEsequential_56_lstm_170_lstm_cell_359_matmul_1_readvariableop_resourceDsequential_56_lstm_170_lstm_cell_359_biasadd_readvariableop_resource*
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
)sequential_56_lstm_170_while_body_2171415*5
cond-R+
)sequential_56_lstm_170_while_cond_2171414*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_56/lstm_170/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_56/lstm_170/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_56/lstm_170/while:output:3Psequential_56/lstm_170/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_56/lstm_170/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_56/lstm_170/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_56/lstm_170/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_56/lstm_170/strided_slice_3StridedSliceBsequential_56/lstm_170/TensorArrayV2Stack/TensorListStack:tensor:05sequential_56/lstm_170/strided_slice_3/stack:output:07sequential_56/lstm_170/strided_slice_3/stack_1:output:07sequential_56/lstm_170/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_56/lstm_170/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_56/lstm_170/transpose_1	TransposeBsequential_56/lstm_170/TensorArrayV2Stack/TensorListStack:tensor:00sequential_56/lstm_170/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_56/lstm_170/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_56/dense_56/MatMul/ReadVariableOpReadVariableOp5sequential_56_dense_56_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_56/dense_56/MatMulMatMul/sequential_56/lstm_170/strided_slice_3:output:04sequential_56/dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_56/dense_56/BiasAdd/ReadVariableOpReadVariableOp6sequential_56_dense_56_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_56/dense_56/BiasAddBiasAdd'sequential_56/dense_56/MatMul:product:05sequential_56/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_56/dense_56/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_56/dense_56/BiasAdd/ReadVariableOp-^sequential_56/dense_56/MatMul/ReadVariableOp<^sequential_56/lstm_168/lstm_cell_357/BiasAdd/ReadVariableOp;^sequential_56/lstm_168/lstm_cell_357/MatMul/ReadVariableOp=^sequential_56/lstm_168/lstm_cell_357/MatMul_1/ReadVariableOp^sequential_56/lstm_168/while<^sequential_56/lstm_169/lstm_cell_358/BiasAdd/ReadVariableOp;^sequential_56/lstm_169/lstm_cell_358/MatMul/ReadVariableOp=^sequential_56/lstm_169/lstm_cell_358/MatMul_1/ReadVariableOp^sequential_56/lstm_169/while<^sequential_56/lstm_170/lstm_cell_359/BiasAdd/ReadVariableOp;^sequential_56/lstm_170/lstm_cell_359/MatMul/ReadVariableOp=^sequential_56/lstm_170/lstm_cell_359/MatMul_1/ReadVariableOp^sequential_56/lstm_170/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_56/dense_56/BiasAdd/ReadVariableOp-sequential_56/dense_56/BiasAdd/ReadVariableOp2\
,sequential_56/dense_56/MatMul/ReadVariableOp,sequential_56/dense_56/MatMul/ReadVariableOp2z
;sequential_56/lstm_168/lstm_cell_357/BiasAdd/ReadVariableOp;sequential_56/lstm_168/lstm_cell_357/BiasAdd/ReadVariableOp2x
:sequential_56/lstm_168/lstm_cell_357/MatMul/ReadVariableOp:sequential_56/lstm_168/lstm_cell_357/MatMul/ReadVariableOp2|
<sequential_56/lstm_168/lstm_cell_357/MatMul_1/ReadVariableOp<sequential_56/lstm_168/lstm_cell_357/MatMul_1/ReadVariableOp2<
sequential_56/lstm_168/whilesequential_56/lstm_168/while2z
;sequential_56/lstm_169/lstm_cell_358/BiasAdd/ReadVariableOp;sequential_56/lstm_169/lstm_cell_358/BiasAdd/ReadVariableOp2x
:sequential_56/lstm_169/lstm_cell_358/MatMul/ReadVariableOp:sequential_56/lstm_169/lstm_cell_358/MatMul/ReadVariableOp2|
<sequential_56/lstm_169/lstm_cell_358/MatMul_1/ReadVariableOp<sequential_56/lstm_169/lstm_cell_358/MatMul_1/ReadVariableOp2<
sequential_56/lstm_169/whilesequential_56/lstm_169/while2z
;sequential_56/lstm_170/lstm_cell_359/BiasAdd/ReadVariableOp;sequential_56/lstm_170/lstm_cell_359/BiasAdd/ReadVariableOp2x
:sequential_56/lstm_170/lstm_cell_359/MatMul/ReadVariableOp:sequential_56/lstm_170/lstm_cell_359/MatMul/ReadVariableOp2|
<sequential_56/lstm_170/lstm_cell_359/MatMul_1/ReadVariableOp<sequential_56/lstm_170/lstm_cell_359/MatMul_1/ReadVariableOp2<
sequential_56/lstm_170/whilesequential_56/lstm_170/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_168_input
?
?
/__inference_lstm_cell_359_layer_call_fn_2176753

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
J__inference_lstm_cell_359_layer_call_and_return_conditional_losses_2172272o
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
??
?
#__inference__traced_restore_2177107
file_prefix2
 assignvariableop_dense_56_kernel:
.
 assignvariableop_1_dense_56_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_168_lstm_cell_168_kernel:	?M
:assignvariableop_8_lstm_168_lstm_cell_168_recurrent_kernel:	d?=
.assignvariableop_9_lstm_168_lstm_cell_168_bias:	?D
1assignvariableop_10_lstm_169_lstm_cell_169_kernel:	d?N
;assignvariableop_11_lstm_169_lstm_cell_169_recurrent_kernel:	2?>
/assignvariableop_12_lstm_169_lstm_cell_169_bias:	?C
1assignvariableop_13_lstm_170_lstm_cell_170_kernel:2(M
;assignvariableop_14_lstm_170_lstm_cell_170_recurrent_kernel:
(=
/assignvariableop_15_lstm_170_lstm_cell_170_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_56_kernel_m:
6
(assignvariableop_19_adam_dense_56_bias_m:K
8assignvariableop_20_adam_lstm_168_lstm_cell_168_kernel_m:	?U
Bassignvariableop_21_adam_lstm_168_lstm_cell_168_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_168_lstm_cell_168_bias_m:	?K
8assignvariableop_23_adam_lstm_169_lstm_cell_169_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_169_lstm_cell_169_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_169_lstm_cell_169_bias_m:	?J
8assignvariableop_26_adam_lstm_170_lstm_cell_170_kernel_m:2(T
Bassignvariableop_27_adam_lstm_170_lstm_cell_170_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_170_lstm_cell_170_bias_m:(<
*assignvariableop_29_adam_dense_56_kernel_v:
6
(assignvariableop_30_adam_dense_56_bias_v:K
8assignvariableop_31_adam_lstm_168_lstm_cell_168_kernel_v:	?U
Bassignvariableop_32_adam_lstm_168_lstm_cell_168_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_168_lstm_cell_168_bias_v:	?K
8assignvariableop_34_adam_lstm_169_lstm_cell_169_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_169_lstm_cell_169_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_169_lstm_cell_169_bias_v:	?J
8assignvariableop_37_adam_lstm_170_lstm_cell_170_kernel_v:2(T
Bassignvariableop_38_adam_lstm_170_lstm_cell_170_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_170_lstm_cell_170_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_56_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_56_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_168_lstm_cell_168_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_168_lstm_cell_168_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_168_lstm_cell_168_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_169_lstm_cell_169_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_169_lstm_cell_169_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_169_lstm_cell_169_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_170_lstm_cell_170_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_170_lstm_cell_170_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_170_lstm_cell_170_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_56_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_56_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_168_lstm_cell_168_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_168_lstm_cell_168_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_168_lstm_cell_168_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_169_lstm_cell_169_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_169_lstm_cell_169_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_169_lstm_cell_169_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_170_lstm_cell_170_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_170_lstm_cell_170_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_170_lstm_cell_170_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_56_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_56_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_168_lstm_cell_168_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_168_lstm_cell_168_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_168_lstm_cell_168_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_169_lstm_cell_169_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_169_lstm_cell_169_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_169_lstm_cell_169_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_170_lstm_cell_170_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_170_lstm_cell_170_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_170_lstm_cell_170_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_2173465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2173465___redundant_placeholder05
1while_while_cond_2173465___redundant_placeholder15
1while_while_cond_2173465___redundant_placeholder25
1while_while_cond_2173465___redundant_placeholder3
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
lstm_168_while_cond_2174304.
*lstm_168_while_lstm_168_while_loop_counter4
0lstm_168_while_lstm_168_while_maximum_iterations
lstm_168_while_placeholder 
lstm_168_while_placeholder_1 
lstm_168_while_placeholder_2 
lstm_168_while_placeholder_30
,lstm_168_while_less_lstm_168_strided_slice_1G
Clstm_168_while_lstm_168_while_cond_2174304___redundant_placeholder0G
Clstm_168_while_lstm_168_while_cond_2174304___redundant_placeholder1G
Clstm_168_while_lstm_168_while_cond_2174304___redundant_placeholder2G
Clstm_168_while_lstm_168_while_cond_2174304___redundant_placeholder3
lstm_168_while_identity
?
lstm_168/while/LessLesslstm_168_while_placeholder,lstm_168_while_less_lstm_168_strided_slice_1*
T0*
_output_shapes
: ]
lstm_168/while/IdentityIdentitylstm_168/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_168_while_identity lstm_168/while/Identity:output:0*(
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
while_body_2171936
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_358_2171960_0:	d?0
while_lstm_cell_358_2171962_0:	2?,
while_lstm_cell_358_2171964_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_358_2171960:	d?.
while_lstm_cell_358_2171962:	2?*
while_lstm_cell_358_2171964:	???+while/lstm_cell_358/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_358/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_358_2171960_0while_lstm_cell_358_2171962_0while_lstm_cell_358_2171964_0*
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
J__inference_lstm_cell_358_layer_call_and_return_conditional_losses_2171922?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_358/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_358/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_358/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_358/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_358_2171960while_lstm_cell_358_2171960_0"<
while_lstm_cell_358_2171962while_lstm_cell_358_2171962_0"<
while_lstm_cell_358_2171964while_lstm_cell_358_2171964_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_358/StatefulPartitionedCall+while/lstm_cell_358/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2172285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2172285___redundant_placeholder05
1while_while_cond_2172285___redundant_placeholder15
1while_while_cond_2172285___redundant_placeholder25
1while_while_cond_2172285___redundant_placeholder3
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
while_body_2176437
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_359_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_359_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_359_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_359_matmul_readvariableop_resource:2(F
4while_lstm_cell_359_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_359_biasadd_readvariableop_resource:(??*while/lstm_cell_359/BiasAdd/ReadVariableOp?)while/lstm_cell_359/MatMul/ReadVariableOp?+while/lstm_cell_359/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_359/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_359_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_359/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_359_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_359/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_359/addAddV2$while/lstm_cell_359/MatMul:product:0&while/lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_359_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_359/BiasAddBiasAddwhile/lstm_cell_359/add:z:02while/lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_359/splitSplit,while/lstm_cell_359/split/split_dim:output:0$while/lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_359/SigmoidSigmoid"while/lstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_359/Sigmoid_1Sigmoid"while/lstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mulMul!while/lstm_cell_359/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_359/ReluRelu"while/lstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mul_1Mulwhile/lstm_cell_359/Sigmoid:y:0&while/lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/add_1AddV2while/lstm_cell_359/mul:z:0while/lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_359/Sigmoid_2Sigmoid"while/lstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_359/Relu_1Reluwhile/lstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_359/mul_2Mul!while/lstm_cell_359/Sigmoid_2:y:0(while/lstm_cell_359/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_359/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_359/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_359/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_359/BiasAdd/ReadVariableOp*^while/lstm_cell_359/MatMul/ReadVariableOp,^while/lstm_cell_359/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_359_biasadd_readvariableop_resource5while_lstm_cell_359_biasadd_readvariableop_resource_0"n
4while_lstm_cell_359_matmul_1_readvariableop_resource6while_lstm_cell_359_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_359_matmul_readvariableop_resource4while_lstm_cell_359_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_359/BiasAdd/ReadVariableOp*while/lstm_cell_359/BiasAdd/ReadVariableOp2V
)while/lstm_cell_359/MatMul/ReadVariableOp)while/lstm_cell_359/MatMul/ReadVariableOp2Z
+while/lstm_cell_359/MatMul_1/ReadVariableOp+while/lstm_cell_359/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2175678
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_358_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_358_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_358_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_358_matmul_readvariableop_resource:	d?G
4while_lstm_cell_358_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_358_biasadd_readvariableop_resource:	???*while/lstm_cell_358/BiasAdd/ReadVariableOp?)while/lstm_cell_358/MatMul/ReadVariableOp?+while/lstm_cell_358/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_358/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_358_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_358/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_358_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_358/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_358/addAddV2$while/lstm_cell_358/MatMul:product:0&while/lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_358_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_358/BiasAddBiasAddwhile/lstm_cell_358/add:z:02while/lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_358/splitSplit,while/lstm_cell_358/split/split_dim:output:0$while/lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_358/SigmoidSigmoid"while/lstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_358/Sigmoid_1Sigmoid"while/lstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mulMul!while/lstm_cell_358/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_358/ReluRelu"while/lstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mul_1Mulwhile/lstm_cell_358/Sigmoid:y:0&while/lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/add_1AddV2while/lstm_cell_358/mul:z:0while/lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_358/Sigmoid_2Sigmoid"while/lstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_358/Relu_1Reluwhile/lstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mul_2Mul!while/lstm_cell_358/Sigmoid_2:y:0(while/lstm_cell_358/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_358/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_358/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_358/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_358/BiasAdd/ReadVariableOp*^while/lstm_cell_358/MatMul/ReadVariableOp,^while/lstm_cell_358/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_358_biasadd_readvariableop_resource5while_lstm_cell_358_biasadd_readvariableop_resource_0"n
4while_lstm_cell_358_matmul_1_readvariableop_resource6while_lstm_cell_358_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_358_matmul_readvariableop_resource4while_lstm_cell_358_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_358/BiasAdd/ReadVariableOp*while/lstm_cell_358/BiasAdd/ReadVariableOp2V
)while/lstm_cell_358/MatMul/ReadVariableOp)while/lstm_cell_358/MatMul/ReadVariableOp2Z
+while/lstm_cell_358/MatMul_1/ReadVariableOp+while/lstm_cell_358/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_56_lstm_170_while_cond_2171414J
Fsequential_56_lstm_170_while_sequential_56_lstm_170_while_loop_counterP
Lsequential_56_lstm_170_while_sequential_56_lstm_170_while_maximum_iterations,
(sequential_56_lstm_170_while_placeholder.
*sequential_56_lstm_170_while_placeholder_1.
*sequential_56_lstm_170_while_placeholder_2.
*sequential_56_lstm_170_while_placeholder_3L
Hsequential_56_lstm_170_while_less_sequential_56_lstm_170_strided_slice_1c
_sequential_56_lstm_170_while_sequential_56_lstm_170_while_cond_2171414___redundant_placeholder0c
_sequential_56_lstm_170_while_sequential_56_lstm_170_while_cond_2171414___redundant_placeholder1c
_sequential_56_lstm_170_while_sequential_56_lstm_170_while_cond_2171414___redundant_placeholder2c
_sequential_56_lstm_170_while_sequential_56_lstm_170_while_cond_2171414___redundant_placeholder3)
%sequential_56_lstm_170_while_identity
?
!sequential_56/lstm_170/while/LessLess(sequential_56_lstm_170_while_placeholderHsequential_56_lstm_170_while_less_sequential_56_lstm_170_strided_slice_1*
T0*
_output_shapes
: y
%sequential_56/lstm_170/while/IdentityIdentity%sequential_56/lstm_170/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_56_lstm_170_while_identity.sequential_56/lstm_170/while/Identity:output:0*(
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
*__inference_lstm_168_layer_call_fn_2174706

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
E__inference_lstm_168_layer_call_and_return_conditional_losses_2172704s
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

?
lstm_169_while_cond_2174443.
*lstm_169_while_lstm_169_while_loop_counter4
0lstm_169_while_lstm_169_while_maximum_iterations
lstm_169_while_placeholder 
lstm_169_while_placeholder_1 
lstm_169_while_placeholder_2 
lstm_169_while_placeholder_30
,lstm_169_while_less_lstm_169_strided_slice_1G
Clstm_169_while_lstm_169_while_cond_2174443___redundant_placeholder0G
Clstm_169_while_lstm_169_while_cond_2174443___redundant_placeholder1G
Clstm_169_while_lstm_169_while_cond_2174443___redundant_placeholder2G
Clstm_169_while_lstm_169_while_cond_2174443___redundant_placeholder3
lstm_169_while_identity
?
lstm_169/while/LessLesslstm_169_while_placeholder,lstm_169_while_less_lstm_169_strided_slice_1*
T0*
_output_shapes
: ]
lstm_169/while/IdentityIdentitylstm_169/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_169_while_identity lstm_169/while/Identity:output:0*(
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
E__inference_lstm_169_layer_call_and_return_conditional_losses_2173385

inputs?
,lstm_cell_358_matmul_readvariableop_resource:	d?A
.lstm_cell_358_matmul_1_readvariableop_resource:	2?<
-lstm_cell_358_biasadd_readvariableop_resource:	?
identity??$lstm_cell_358/BiasAdd/ReadVariableOp?#lstm_cell_358/MatMul/ReadVariableOp?%lstm_cell_358/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_358/MatMul/ReadVariableOpReadVariableOp,lstm_cell_358_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_358/MatMulMatMulstrided_slice_2:output:0+lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_358_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_358/MatMul_1MatMulzeros:output:0-lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_358/addAddV2lstm_cell_358/MatMul:product:0 lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_358_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_358/BiasAddBiasAddlstm_cell_358/add:z:0,lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_358/splitSplit&lstm_cell_358/split/split_dim:output:0lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_358/SigmoidSigmoidlstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_358/Sigmoid_1Sigmoidlstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_358/mulMullstm_cell_358/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_358/ReluRelulstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_358/mul_1Mullstm_cell_358/Sigmoid:y:0 lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_358/add_1AddV2lstm_cell_358/mul:z:0lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_358/Sigmoid_2Sigmoidlstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_358/Relu_1Relulstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_358/mul_2Mullstm_cell_358/Sigmoid_2:y:0"lstm_cell_358/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_358_matmul_readvariableop_resource.lstm_cell_358_matmul_1_readvariableop_resource-lstm_cell_358_biasadd_readvariableop_resource*
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
while_body_2173301*
condR
while_cond_2173300*K
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
NoOpNoOp%^lstm_cell_358/BiasAdd/ReadVariableOp$^lstm_cell_358/MatMul/ReadVariableOp&^lstm_cell_358/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_358/BiasAdd/ReadVariableOp$lstm_cell_358/BiasAdd/ReadVariableOp2J
#lstm_cell_358/MatMul/ReadVariableOp#lstm_cell_358/MatMul/ReadVariableOp2N
%lstm_cell_358/MatMul_1/ReadVariableOp%lstm_cell_358/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2173135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2173135___redundant_placeholder05
1while_while_cond_2173135___redundant_placeholder15
1while_while_cond_2173135___redundant_placeholder25
1while_while_cond_2173135___redundant_placeholder3
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
while_cond_2172619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2172619___redundant_placeholder05
1while_while_cond_2172619___redundant_placeholder15
1while_while_cond_2172619___redundant_placeholder25
1while_while_cond_2172619___redundant_placeholder3
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
while_body_2175535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_358_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_358_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_358_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_358_matmul_readvariableop_resource:	d?G
4while_lstm_cell_358_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_358_biasadd_readvariableop_resource:	???*while/lstm_cell_358/BiasAdd/ReadVariableOp?)while/lstm_cell_358/MatMul/ReadVariableOp?+while/lstm_cell_358/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_358/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_358_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_358/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_358_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_358/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_358/addAddV2$while/lstm_cell_358/MatMul:product:0&while/lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_358_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_358/BiasAddBiasAddwhile/lstm_cell_358/add:z:02while/lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_358/splitSplit,while/lstm_cell_358/split/split_dim:output:0$while/lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_358/SigmoidSigmoid"while/lstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_358/Sigmoid_1Sigmoid"while/lstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mulMul!while/lstm_cell_358/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_358/ReluRelu"while/lstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mul_1Mulwhile/lstm_cell_358/Sigmoid:y:0&while/lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/add_1AddV2while/lstm_cell_358/mul:z:0while/lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_358/Sigmoid_2Sigmoid"while/lstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_358/Relu_1Reluwhile/lstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mul_2Mul!while/lstm_cell_358/Sigmoid_2:y:0(while/lstm_cell_358/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_358/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_358/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_358/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_358/BiasAdd/ReadVariableOp*^while/lstm_cell_358/MatMul/ReadVariableOp,^while/lstm_cell_358/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_358_biasadd_readvariableop_resource5while_lstm_cell_358_biasadd_readvariableop_resource_0"n
4while_lstm_cell_358_matmul_1_readvariableop_resource6while_lstm_cell_358_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_358_matmul_readvariableop_resource4while_lstm_cell_358_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_358/BiasAdd/ReadVariableOp*while/lstm_cell_358/BiasAdd/ReadVariableOp2V
)while/lstm_cell_358/MatMul/ReadVariableOp)while/lstm_cell_358/MatMul/ReadVariableOp2Z
+while/lstm_cell_358/MatMul_1/ReadVariableOp+while/lstm_cell_358/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_359_layer_call_and_return_conditional_losses_2176834

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
?C
?

lstm_168_while_body_2173878.
*lstm_168_while_lstm_168_while_loop_counter4
0lstm_168_while_lstm_168_while_maximum_iterations
lstm_168_while_placeholder 
lstm_168_while_placeholder_1 
lstm_168_while_placeholder_2 
lstm_168_while_placeholder_3-
)lstm_168_while_lstm_168_strided_slice_1_0i
elstm_168_while_tensorarrayv2read_tensorlistgetitem_lstm_168_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_168_while_lstm_cell_357_matmul_readvariableop_resource_0:	?R
?lstm_168_while_lstm_cell_357_matmul_1_readvariableop_resource_0:	d?M
>lstm_168_while_lstm_cell_357_biasadd_readvariableop_resource_0:	?
lstm_168_while_identity
lstm_168_while_identity_1
lstm_168_while_identity_2
lstm_168_while_identity_3
lstm_168_while_identity_4
lstm_168_while_identity_5+
'lstm_168_while_lstm_168_strided_slice_1g
clstm_168_while_tensorarrayv2read_tensorlistgetitem_lstm_168_tensorarrayunstack_tensorlistfromtensorN
;lstm_168_while_lstm_cell_357_matmul_readvariableop_resource:	?P
=lstm_168_while_lstm_cell_357_matmul_1_readvariableop_resource:	d?K
<lstm_168_while_lstm_cell_357_biasadd_readvariableop_resource:	???3lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOp?2lstm_168/while/lstm_cell_357/MatMul/ReadVariableOp?4lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOp?
@lstm_168/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_168/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_168_while_tensorarrayv2read_tensorlistgetitem_lstm_168_tensorarrayunstack_tensorlistfromtensor_0lstm_168_while_placeholderIlstm_168/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_168/while/lstm_cell_357/MatMul/ReadVariableOpReadVariableOp=lstm_168_while_lstm_cell_357_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_168/while/lstm_cell_357/MatMulMatMul9lstm_168/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_168/while/lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOp?lstm_168_while_lstm_cell_357_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_168/while/lstm_cell_357/MatMul_1MatMullstm_168_while_placeholder_2<lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_168/while/lstm_cell_357/addAddV2-lstm_168/while/lstm_cell_357/MatMul:product:0/lstm_168/while/lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOp>lstm_168_while_lstm_cell_357_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_168/while/lstm_cell_357/BiasAddBiasAdd$lstm_168/while/lstm_cell_357/add:z:0;lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_168/while/lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_168/while/lstm_cell_357/splitSplit5lstm_168/while/lstm_cell_357/split/split_dim:output:0-lstm_168/while/lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_168/while/lstm_cell_357/SigmoidSigmoid+lstm_168/while/lstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_168/while/lstm_cell_357/Sigmoid_1Sigmoid+lstm_168/while/lstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_168/while/lstm_cell_357/mulMul*lstm_168/while/lstm_cell_357/Sigmoid_1:y:0lstm_168_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_168/while/lstm_cell_357/ReluRelu+lstm_168/while/lstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_168/while/lstm_cell_357/mul_1Mul(lstm_168/while/lstm_cell_357/Sigmoid:y:0/lstm_168/while/lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_168/while/lstm_cell_357/add_1AddV2$lstm_168/while/lstm_cell_357/mul:z:0&lstm_168/while/lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_168/while/lstm_cell_357/Sigmoid_2Sigmoid+lstm_168/while/lstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_168/while/lstm_cell_357/Relu_1Relu&lstm_168/while/lstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_168/while/lstm_cell_357/mul_2Mul*lstm_168/while/lstm_cell_357/Sigmoid_2:y:01lstm_168/while/lstm_cell_357/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_168/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_168_while_placeholder_1lstm_168_while_placeholder&lstm_168/while/lstm_cell_357/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_168/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_168/while/addAddV2lstm_168_while_placeholderlstm_168/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_168/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_168/while/add_1AddV2*lstm_168_while_lstm_168_while_loop_counterlstm_168/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_168/while/IdentityIdentitylstm_168/while/add_1:z:0^lstm_168/while/NoOp*
T0*
_output_shapes
: ?
lstm_168/while/Identity_1Identity0lstm_168_while_lstm_168_while_maximum_iterations^lstm_168/while/NoOp*
T0*
_output_shapes
: t
lstm_168/while/Identity_2Identitylstm_168/while/add:z:0^lstm_168/while/NoOp*
T0*
_output_shapes
: ?
lstm_168/while/Identity_3IdentityClstm_168/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_168/while/NoOp*
T0*
_output_shapes
: ?
lstm_168/while/Identity_4Identity&lstm_168/while/lstm_cell_357/mul_2:z:0^lstm_168/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_168/while/Identity_5Identity&lstm_168/while/lstm_cell_357/add_1:z:0^lstm_168/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_168/while/NoOpNoOp4^lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOp3^lstm_168/while/lstm_cell_357/MatMul/ReadVariableOp5^lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_168_while_identity lstm_168/while/Identity:output:0"?
lstm_168_while_identity_1"lstm_168/while/Identity_1:output:0"?
lstm_168_while_identity_2"lstm_168/while/Identity_2:output:0"?
lstm_168_while_identity_3"lstm_168/while/Identity_3:output:0"?
lstm_168_while_identity_4"lstm_168/while/Identity_4:output:0"?
lstm_168_while_identity_5"lstm_168/while/Identity_5:output:0"T
'lstm_168_while_lstm_168_strided_slice_1)lstm_168_while_lstm_168_strided_slice_1_0"~
<lstm_168_while_lstm_cell_357_biasadd_readvariableop_resource>lstm_168_while_lstm_cell_357_biasadd_readvariableop_resource_0"?
=lstm_168_while_lstm_cell_357_matmul_1_readvariableop_resource?lstm_168_while_lstm_cell_357_matmul_1_readvariableop_resource_0"|
;lstm_168_while_lstm_cell_357_matmul_readvariableop_resource=lstm_168_while_lstm_cell_357_matmul_readvariableop_resource_0"?
clstm_168_while_tensorarrayv2read_tensorlistgetitem_lstm_168_tensorarrayunstack_tensorlistfromtensorelstm_168_while_tensorarrayv2read_tensorlistgetitem_lstm_168_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOp3lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOp2h
2lstm_168/while/lstm_cell_357/MatMul/ReadVariableOp2lstm_168/while/lstm_cell_357/MatMul/ReadVariableOp2l
4lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOp4lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_56_layer_call_fn_2173054
lstm_168_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_168_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_56_layer_call_and_return_conditional_losses_2173029o
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
_user_specified_namelstm_168_input
?
?
*__inference_lstm_169_layer_call_fn_2175300
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
E__inference_lstm_169_layer_call_and_return_conditional_losses_2172005|
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
?K
?
E__inference_lstm_170_layer_call_and_return_conditional_losses_2176235
inputs_0>
,lstm_cell_359_matmul_readvariableop_resource:2(@
.lstm_cell_359_matmul_1_readvariableop_resource:
(;
-lstm_cell_359_biasadd_readvariableop_resource:(
identity??$lstm_cell_359/BiasAdd/ReadVariableOp?#lstm_cell_359/MatMul/ReadVariableOp?%lstm_cell_359/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_359/MatMul/ReadVariableOpReadVariableOp,lstm_cell_359_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_359/MatMulMatMulstrided_slice_2:output:0+lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_359_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_359/MatMul_1MatMulzeros:output:0-lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_359/addAddV2lstm_cell_359/MatMul:product:0 lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_359_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_359/BiasAddBiasAddlstm_cell_359/add:z:0,lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_359/splitSplit&lstm_cell_359/split/split_dim:output:0lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_359/SigmoidSigmoidlstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_359/Sigmoid_1Sigmoidlstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_359/mulMullstm_cell_359/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_359/ReluRelulstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_359/mul_1Mullstm_cell_359/Sigmoid:y:0 lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_359/add_1AddV2lstm_cell_359/mul:z:0lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_359/Sigmoid_2Sigmoidlstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_359/Relu_1Relulstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_359/mul_2Mullstm_cell_359/Sigmoid_2:y:0"lstm_cell_359/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_359_matmul_readvariableop_resource.lstm_cell_359_matmul_1_readvariableop_resource-lstm_cell_359_biasadd_readvariableop_resource*
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
while_body_2176151*
condR
while_cond_2176150*K
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
NoOpNoOp%^lstm_cell_359/BiasAdd/ReadVariableOp$^lstm_cell_359/MatMul/ReadVariableOp&^lstm_cell_359/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_359/BiasAdd/ReadVariableOp$lstm_cell_359/BiasAdd/ReadVariableOp2J
#lstm_cell_359/MatMul/ReadVariableOp#lstm_cell_359/MatMul/ReadVariableOp2N
%lstm_cell_359/MatMul_1/ReadVariableOp%lstm_cell_359/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?	
?
E__inference_dense_56_layer_call_and_return_conditional_losses_2173022

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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2176378

inputs>
,lstm_cell_359_matmul_readvariableop_resource:2(@
.lstm_cell_359_matmul_1_readvariableop_resource:
(;
-lstm_cell_359_biasadd_readvariableop_resource:(
identity??$lstm_cell_359/BiasAdd/ReadVariableOp?#lstm_cell_359/MatMul/ReadVariableOp?%lstm_cell_359/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_359/MatMul/ReadVariableOpReadVariableOp,lstm_cell_359_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_359/MatMulMatMulstrided_slice_2:output:0+lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_359_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_359/MatMul_1MatMulzeros:output:0-lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_359/addAddV2lstm_cell_359/MatMul:product:0 lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_359_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_359/BiasAddBiasAddlstm_cell_359/add:z:0,lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_359/splitSplit&lstm_cell_359/split/split_dim:output:0lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_359/SigmoidSigmoidlstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_359/Sigmoid_1Sigmoidlstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_359/mulMullstm_cell_359/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_359/ReluRelulstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_359/mul_1Mullstm_cell_359/Sigmoid:y:0 lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_359/add_1AddV2lstm_cell_359/mul:z:0lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_359/Sigmoid_2Sigmoidlstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_359/Relu_1Relulstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_359/mul_2Mullstm_cell_359/Sigmoid_2:y:0"lstm_cell_359/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_359_matmul_readvariableop_resource.lstm_cell_359_matmul_1_readvariableop_resource-lstm_cell_359_biasadd_readvariableop_resource*
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
while_body_2176294*
condR
while_cond_2176293*K
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
NoOpNoOp%^lstm_cell_359/BiasAdd/ReadVariableOp$^lstm_cell_359/MatMul/ReadVariableOp&^lstm_cell_359/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_359/BiasAdd/ReadVariableOp$lstm_cell_359/BiasAdd/ReadVariableOp2J
#lstm_cell_359/MatMul/ReadVariableOp#lstm_cell_359/MatMul/ReadVariableOp2N
%lstm_cell_359/MatMul_1/ReadVariableOp%lstm_cell_359/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_168_layer_call_and_return_conditional_losses_2172704

inputs?
,lstm_cell_357_matmul_readvariableop_resource:	?A
.lstm_cell_357_matmul_1_readvariableop_resource:	d?<
-lstm_cell_357_biasadd_readvariableop_resource:	?
identity??$lstm_cell_357/BiasAdd/ReadVariableOp?#lstm_cell_357/MatMul/ReadVariableOp?%lstm_cell_357/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_357/MatMul/ReadVariableOpReadVariableOp,lstm_cell_357_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_357/MatMulMatMulstrided_slice_2:output:0+lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_357_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_357/MatMul_1MatMulzeros:output:0-lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_357/addAddV2lstm_cell_357/MatMul:product:0 lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_357_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_357/BiasAddBiasAddlstm_cell_357/add:z:0,lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_357/splitSplit&lstm_cell_357/split/split_dim:output:0lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_357/SigmoidSigmoidlstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_357/Sigmoid_1Sigmoidlstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_357/mulMullstm_cell_357/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_357/ReluRelulstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_357/mul_1Mullstm_cell_357/Sigmoid:y:0 lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_357/add_1AddV2lstm_cell_357/mul:z:0lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_357/Sigmoid_2Sigmoidlstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_357/Relu_1Relulstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_357/mul_2Mullstm_cell_357/Sigmoid_2:y:0"lstm_cell_357/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_357_matmul_readvariableop_resource.lstm_cell_357_matmul_1_readvariableop_resource-lstm_cell_357_biasadd_readvariableop_resource*
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
while_body_2172620*
condR
while_cond_2172619*K
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
NoOpNoOp%^lstm_cell_357/BiasAdd/ReadVariableOp$^lstm_cell_357/MatMul/ReadVariableOp&^lstm_cell_357/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_357/BiasAdd/ReadVariableOp$lstm_cell_357/BiasAdd/ReadVariableOp2J
#lstm_cell_357/MatMul/ReadVariableOp#lstm_cell_357/MatMul/ReadVariableOp2N
%lstm_cell_357/MatMul_1/ReadVariableOp%lstm_cell_357/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_168_while_cond_2173877.
*lstm_168_while_lstm_168_while_loop_counter4
0lstm_168_while_lstm_168_while_maximum_iterations
lstm_168_while_placeholder 
lstm_168_while_placeholder_1 
lstm_168_while_placeholder_2 
lstm_168_while_placeholder_30
,lstm_168_while_less_lstm_168_strided_slice_1G
Clstm_168_while_lstm_168_while_cond_2173877___redundant_placeholder0G
Clstm_168_while_lstm_168_while_cond_2173877___redundant_placeholder1G
Clstm_168_while_lstm_168_while_cond_2173877___redundant_placeholder2G
Clstm_168_while_lstm_168_while_cond_2173877___redundant_placeholder3
lstm_168_while_identity
?
lstm_168/while/LessLesslstm_168_while_placeholder,lstm_168_while_less_lstm_168_strided_slice_1*
T0*
_output_shapes
: ]
lstm_168/while/IdentityIdentitylstm_168/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_168_while_identity lstm_168/while/Identity:output:0*(
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
while_body_2173301
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_358_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_358_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_358_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_358_matmul_readvariableop_resource:	d?G
4while_lstm_cell_358_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_358_biasadd_readvariableop_resource:	???*while/lstm_cell_358/BiasAdd/ReadVariableOp?)while/lstm_cell_358/MatMul/ReadVariableOp?+while/lstm_cell_358/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_358/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_358_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_358/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_358_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_358/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_358/addAddV2$while/lstm_cell_358/MatMul:product:0&while/lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_358_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_358/BiasAddBiasAddwhile/lstm_cell_358/add:z:02while/lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_358/splitSplit,while/lstm_cell_358/split/split_dim:output:0$while/lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_358/SigmoidSigmoid"while/lstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_358/Sigmoid_1Sigmoid"while/lstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mulMul!while/lstm_cell_358/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_358/ReluRelu"while/lstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mul_1Mulwhile/lstm_cell_358/Sigmoid:y:0&while/lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/add_1AddV2while/lstm_cell_358/mul:z:0while/lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_358/Sigmoid_2Sigmoid"while/lstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_358/Relu_1Reluwhile/lstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mul_2Mul!while/lstm_cell_358/Sigmoid_2:y:0(while/lstm_cell_358/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_358/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_358/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_358/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_358/BiasAdd/ReadVariableOp*^while/lstm_cell_358/MatMul/ReadVariableOp,^while/lstm_cell_358/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_358_biasadd_readvariableop_resource5while_lstm_cell_358_biasadd_readvariableop_resource_0"n
4while_lstm_cell_358_matmul_1_readvariableop_resource6while_lstm_cell_358_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_358_matmul_readvariableop_resource4while_lstm_cell_358_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_358/BiasAdd/ReadVariableOp*while/lstm_cell_358/BiasAdd/ReadVariableOp2V
)while/lstm_cell_358/MatMul/ReadVariableOp)while/lstm_cell_358/MatMul/ReadVariableOp2Z
+while/lstm_cell_358/MatMul_1/ReadVariableOp+while/lstm_cell_358/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2175204
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2175204___redundant_placeholder05
1while_while_cond_2175204___redundant_placeholder15
1while_while_cond_2175204___redundant_placeholder25
1while_while_cond_2175204___redundant_placeholder3
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
)sequential_56_lstm_170_while_body_2171415J
Fsequential_56_lstm_170_while_sequential_56_lstm_170_while_loop_counterP
Lsequential_56_lstm_170_while_sequential_56_lstm_170_while_maximum_iterations,
(sequential_56_lstm_170_while_placeholder.
*sequential_56_lstm_170_while_placeholder_1.
*sequential_56_lstm_170_while_placeholder_2.
*sequential_56_lstm_170_while_placeholder_3I
Esequential_56_lstm_170_while_sequential_56_lstm_170_strided_slice_1_0?
?sequential_56_lstm_170_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_170_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_56_lstm_170_while_lstm_cell_359_matmul_readvariableop_resource_0:2(_
Msequential_56_lstm_170_while_lstm_cell_359_matmul_1_readvariableop_resource_0:
(Z
Lsequential_56_lstm_170_while_lstm_cell_359_biasadd_readvariableop_resource_0:()
%sequential_56_lstm_170_while_identity+
'sequential_56_lstm_170_while_identity_1+
'sequential_56_lstm_170_while_identity_2+
'sequential_56_lstm_170_while_identity_3+
'sequential_56_lstm_170_while_identity_4+
'sequential_56_lstm_170_while_identity_5G
Csequential_56_lstm_170_while_sequential_56_lstm_170_strided_slice_1?
sequential_56_lstm_170_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_170_tensorarrayunstack_tensorlistfromtensor[
Isequential_56_lstm_170_while_lstm_cell_359_matmul_readvariableop_resource:2(]
Ksequential_56_lstm_170_while_lstm_cell_359_matmul_1_readvariableop_resource:
(X
Jsequential_56_lstm_170_while_lstm_cell_359_biasadd_readvariableop_resource:(??Asequential_56/lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOp?@sequential_56/lstm_170/while/lstm_cell_359/MatMul/ReadVariableOp?Bsequential_56/lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOp?
Nsequential_56/lstm_170/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_56/lstm_170/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_56_lstm_170_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_170_tensorarrayunstack_tensorlistfromtensor_0(sequential_56_lstm_170_while_placeholderWsequential_56/lstm_170/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_56/lstm_170/while/lstm_cell_359/MatMul/ReadVariableOpReadVariableOpKsequential_56_lstm_170_while_lstm_cell_359_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_56/lstm_170/while/lstm_cell_359/MatMulMatMulGsequential_56/lstm_170/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_56/lstm_170/while/lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_56/lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOpMsequential_56_lstm_170_while_lstm_cell_359_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_56/lstm_170/while/lstm_cell_359/MatMul_1MatMul*sequential_56_lstm_170_while_placeholder_2Jsequential_56/lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_56/lstm_170/while/lstm_cell_359/addAddV2;sequential_56/lstm_170/while/lstm_cell_359/MatMul:product:0=sequential_56/lstm_170/while/lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_56/lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOpLsequential_56_lstm_170_while_lstm_cell_359_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_56/lstm_170/while/lstm_cell_359/BiasAddBiasAdd2sequential_56/lstm_170/while/lstm_cell_359/add:z:0Isequential_56/lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_56/lstm_170/while/lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_56/lstm_170/while/lstm_cell_359/splitSplitCsequential_56/lstm_170/while/lstm_cell_359/split/split_dim:output:0;sequential_56/lstm_170/while/lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_56/lstm_170/while/lstm_cell_359/SigmoidSigmoid9sequential_56/lstm_170/while/lstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_56/lstm_170/while/lstm_cell_359/Sigmoid_1Sigmoid9sequential_56/lstm_170/while/lstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_56/lstm_170/while/lstm_cell_359/mulMul8sequential_56/lstm_170/while/lstm_cell_359/Sigmoid_1:y:0*sequential_56_lstm_170_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_56/lstm_170/while/lstm_cell_359/ReluRelu9sequential_56/lstm_170/while/lstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_56/lstm_170/while/lstm_cell_359/mul_1Mul6sequential_56/lstm_170/while/lstm_cell_359/Sigmoid:y:0=sequential_56/lstm_170/while/lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_56/lstm_170/while/lstm_cell_359/add_1AddV22sequential_56/lstm_170/while/lstm_cell_359/mul:z:04sequential_56/lstm_170/while/lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_56/lstm_170/while/lstm_cell_359/Sigmoid_2Sigmoid9sequential_56/lstm_170/while/lstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_56/lstm_170/while/lstm_cell_359/Relu_1Relu4sequential_56/lstm_170/while/lstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_56/lstm_170/while/lstm_cell_359/mul_2Mul8sequential_56/lstm_170/while/lstm_cell_359/Sigmoid_2:y:0?sequential_56/lstm_170/while/lstm_cell_359/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_56/lstm_170/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_56_lstm_170_while_placeholder_1(sequential_56_lstm_170_while_placeholder4sequential_56/lstm_170/while/lstm_cell_359/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_56/lstm_170/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_56/lstm_170/while/addAddV2(sequential_56_lstm_170_while_placeholder+sequential_56/lstm_170/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_56/lstm_170/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_56/lstm_170/while/add_1AddV2Fsequential_56_lstm_170_while_sequential_56_lstm_170_while_loop_counter-sequential_56/lstm_170/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_56/lstm_170/while/IdentityIdentity&sequential_56/lstm_170/while/add_1:z:0"^sequential_56/lstm_170/while/NoOp*
T0*
_output_shapes
: ?
'sequential_56/lstm_170/while/Identity_1IdentityLsequential_56_lstm_170_while_sequential_56_lstm_170_while_maximum_iterations"^sequential_56/lstm_170/while/NoOp*
T0*
_output_shapes
: ?
'sequential_56/lstm_170/while/Identity_2Identity$sequential_56/lstm_170/while/add:z:0"^sequential_56/lstm_170/while/NoOp*
T0*
_output_shapes
: ?
'sequential_56/lstm_170/while/Identity_3IdentityQsequential_56/lstm_170/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_56/lstm_170/while/NoOp*
T0*
_output_shapes
: ?
'sequential_56/lstm_170/while/Identity_4Identity4sequential_56/lstm_170/while/lstm_cell_359/mul_2:z:0"^sequential_56/lstm_170/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_56/lstm_170/while/Identity_5Identity4sequential_56/lstm_170/while/lstm_cell_359/add_1:z:0"^sequential_56/lstm_170/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_56/lstm_170/while/NoOpNoOpB^sequential_56/lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOpA^sequential_56/lstm_170/while/lstm_cell_359/MatMul/ReadVariableOpC^sequential_56/lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_56_lstm_170_while_identity.sequential_56/lstm_170/while/Identity:output:0"[
'sequential_56_lstm_170_while_identity_10sequential_56/lstm_170/while/Identity_1:output:0"[
'sequential_56_lstm_170_while_identity_20sequential_56/lstm_170/while/Identity_2:output:0"[
'sequential_56_lstm_170_while_identity_30sequential_56/lstm_170/while/Identity_3:output:0"[
'sequential_56_lstm_170_while_identity_40sequential_56/lstm_170/while/Identity_4:output:0"[
'sequential_56_lstm_170_while_identity_50sequential_56/lstm_170/while/Identity_5:output:0"?
Jsequential_56_lstm_170_while_lstm_cell_359_biasadd_readvariableop_resourceLsequential_56_lstm_170_while_lstm_cell_359_biasadd_readvariableop_resource_0"?
Ksequential_56_lstm_170_while_lstm_cell_359_matmul_1_readvariableop_resourceMsequential_56_lstm_170_while_lstm_cell_359_matmul_1_readvariableop_resource_0"?
Isequential_56_lstm_170_while_lstm_cell_359_matmul_readvariableop_resourceKsequential_56_lstm_170_while_lstm_cell_359_matmul_readvariableop_resource_0"?
Csequential_56_lstm_170_while_sequential_56_lstm_170_strided_slice_1Esequential_56_lstm_170_while_sequential_56_lstm_170_strided_slice_1_0"?
sequential_56_lstm_170_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_170_tensorarrayunstack_tensorlistfromtensor?sequential_56_lstm_170_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_170_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_56/lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOpAsequential_56/lstm_170/while/lstm_cell_359/BiasAdd/ReadVariableOp2?
@sequential_56/lstm_170/while/lstm_cell_359/MatMul/ReadVariableOp@sequential_56/lstm_170/while/lstm_cell_359/MatMul/ReadVariableOp2?
Bsequential_56/lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOpBsequential_56/lstm_170/while/lstm_cell_359/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2171585
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2171585___redundant_placeholder05
1while_while_cond_2171585___redundant_placeholder15
1while_while_cond_2171585___redundant_placeholder25
1while_while_cond_2171585___redundant_placeholder3
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
while_cond_2174775
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2174775___redundant_placeholder05
1while_while_cond_2174775___redundant_placeholder15
1while_while_cond_2174775___redundant_placeholder25
1while_while_cond_2174775___redundant_placeholder3
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
while_body_2173466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_357_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_357_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_357_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_357_matmul_readvariableop_resource:	?G
4while_lstm_cell_357_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_357_biasadd_readvariableop_resource:	???*while/lstm_cell_357/BiasAdd/ReadVariableOp?)while/lstm_cell_357/MatMul/ReadVariableOp?+while/lstm_cell_357/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_357/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_357_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_357/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_357_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_357/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_357/addAddV2$while/lstm_cell_357/MatMul:product:0&while/lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_357_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_357/BiasAddBiasAddwhile/lstm_cell_357/add:z:02while/lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_357/splitSplit,while/lstm_cell_357/split/split_dim:output:0$while/lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_357/SigmoidSigmoid"while/lstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_357/Sigmoid_1Sigmoid"while/lstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mulMul!while/lstm_cell_357/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_357/ReluRelu"while/lstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mul_1Mulwhile/lstm_cell_357/Sigmoid:y:0&while/lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/add_1AddV2while/lstm_cell_357/mul:z:0while/lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_357/Sigmoid_2Sigmoid"while/lstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_357/Relu_1Reluwhile/lstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mul_2Mul!while/lstm_cell_357/Sigmoid_2:y:0(while/lstm_cell_357/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_357/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_357/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_357/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_357/BiasAdd/ReadVariableOp*^while/lstm_cell_357/MatMul/ReadVariableOp,^while/lstm_cell_357/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_357_biasadd_readvariableop_resource5while_lstm_cell_357_biasadd_readvariableop_resource_0"n
4while_lstm_cell_357_matmul_1_readvariableop_resource6while_lstm_cell_357_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_357_matmul_readvariableop_resource4while_lstm_cell_357_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_357/BiasAdd/ReadVariableOp*while/lstm_cell_357/BiasAdd/ReadVariableOp2V
)while/lstm_cell_357/MatMul/ReadVariableOp)while/lstm_cell_357/MatMul/ReadVariableOp2Z
+while/lstm_cell_357/MatMul_1/ReadVariableOp+while/lstm_cell_357/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_168_while_body_2174305.
*lstm_168_while_lstm_168_while_loop_counter4
0lstm_168_while_lstm_168_while_maximum_iterations
lstm_168_while_placeholder 
lstm_168_while_placeholder_1 
lstm_168_while_placeholder_2 
lstm_168_while_placeholder_3-
)lstm_168_while_lstm_168_strided_slice_1_0i
elstm_168_while_tensorarrayv2read_tensorlistgetitem_lstm_168_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_168_while_lstm_cell_357_matmul_readvariableop_resource_0:	?R
?lstm_168_while_lstm_cell_357_matmul_1_readvariableop_resource_0:	d?M
>lstm_168_while_lstm_cell_357_biasadd_readvariableop_resource_0:	?
lstm_168_while_identity
lstm_168_while_identity_1
lstm_168_while_identity_2
lstm_168_while_identity_3
lstm_168_while_identity_4
lstm_168_while_identity_5+
'lstm_168_while_lstm_168_strided_slice_1g
clstm_168_while_tensorarrayv2read_tensorlistgetitem_lstm_168_tensorarrayunstack_tensorlistfromtensorN
;lstm_168_while_lstm_cell_357_matmul_readvariableop_resource:	?P
=lstm_168_while_lstm_cell_357_matmul_1_readvariableop_resource:	d?K
<lstm_168_while_lstm_cell_357_biasadd_readvariableop_resource:	???3lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOp?2lstm_168/while/lstm_cell_357/MatMul/ReadVariableOp?4lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOp?
@lstm_168/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_168/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_168_while_tensorarrayv2read_tensorlistgetitem_lstm_168_tensorarrayunstack_tensorlistfromtensor_0lstm_168_while_placeholderIlstm_168/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_168/while/lstm_cell_357/MatMul/ReadVariableOpReadVariableOp=lstm_168_while_lstm_cell_357_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_168/while/lstm_cell_357/MatMulMatMul9lstm_168/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_168/while/lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOp?lstm_168_while_lstm_cell_357_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_168/while/lstm_cell_357/MatMul_1MatMullstm_168_while_placeholder_2<lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_168/while/lstm_cell_357/addAddV2-lstm_168/while/lstm_cell_357/MatMul:product:0/lstm_168/while/lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOp>lstm_168_while_lstm_cell_357_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_168/while/lstm_cell_357/BiasAddBiasAdd$lstm_168/while/lstm_cell_357/add:z:0;lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_168/while/lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_168/while/lstm_cell_357/splitSplit5lstm_168/while/lstm_cell_357/split/split_dim:output:0-lstm_168/while/lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_168/while/lstm_cell_357/SigmoidSigmoid+lstm_168/while/lstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_168/while/lstm_cell_357/Sigmoid_1Sigmoid+lstm_168/while/lstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_168/while/lstm_cell_357/mulMul*lstm_168/while/lstm_cell_357/Sigmoid_1:y:0lstm_168_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_168/while/lstm_cell_357/ReluRelu+lstm_168/while/lstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_168/while/lstm_cell_357/mul_1Mul(lstm_168/while/lstm_cell_357/Sigmoid:y:0/lstm_168/while/lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_168/while/lstm_cell_357/add_1AddV2$lstm_168/while/lstm_cell_357/mul:z:0&lstm_168/while/lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_168/while/lstm_cell_357/Sigmoid_2Sigmoid+lstm_168/while/lstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_168/while/lstm_cell_357/Relu_1Relu&lstm_168/while/lstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_168/while/lstm_cell_357/mul_2Mul*lstm_168/while/lstm_cell_357/Sigmoid_2:y:01lstm_168/while/lstm_cell_357/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_168/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_168_while_placeholder_1lstm_168_while_placeholder&lstm_168/while/lstm_cell_357/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_168/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_168/while/addAddV2lstm_168_while_placeholderlstm_168/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_168/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_168/while/add_1AddV2*lstm_168_while_lstm_168_while_loop_counterlstm_168/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_168/while/IdentityIdentitylstm_168/while/add_1:z:0^lstm_168/while/NoOp*
T0*
_output_shapes
: ?
lstm_168/while/Identity_1Identity0lstm_168_while_lstm_168_while_maximum_iterations^lstm_168/while/NoOp*
T0*
_output_shapes
: t
lstm_168/while/Identity_2Identitylstm_168/while/add:z:0^lstm_168/while/NoOp*
T0*
_output_shapes
: ?
lstm_168/while/Identity_3IdentityClstm_168/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_168/while/NoOp*
T0*
_output_shapes
: ?
lstm_168/while/Identity_4Identity&lstm_168/while/lstm_cell_357/mul_2:z:0^lstm_168/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_168/while/Identity_5Identity&lstm_168/while/lstm_cell_357/add_1:z:0^lstm_168/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_168/while/NoOpNoOp4^lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOp3^lstm_168/while/lstm_cell_357/MatMul/ReadVariableOp5^lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_168_while_identity lstm_168/while/Identity:output:0"?
lstm_168_while_identity_1"lstm_168/while/Identity_1:output:0"?
lstm_168_while_identity_2"lstm_168/while/Identity_2:output:0"?
lstm_168_while_identity_3"lstm_168/while/Identity_3:output:0"?
lstm_168_while_identity_4"lstm_168/while/Identity_4:output:0"?
lstm_168_while_identity_5"lstm_168/while/Identity_5:output:0"T
'lstm_168_while_lstm_168_strided_slice_1)lstm_168_while_lstm_168_strided_slice_1_0"~
<lstm_168_while_lstm_cell_357_biasadd_readvariableop_resource>lstm_168_while_lstm_cell_357_biasadd_readvariableop_resource_0"?
=lstm_168_while_lstm_cell_357_matmul_1_readvariableop_resource?lstm_168_while_lstm_cell_357_matmul_1_readvariableop_resource_0"|
;lstm_168_while_lstm_cell_357_matmul_readvariableop_resource=lstm_168_while_lstm_cell_357_matmul_readvariableop_resource_0"?
clstm_168_while_tensorarrayv2read_tensorlistgetitem_lstm_168_tensorarrayunstack_tensorlistfromtensorelstm_168_while_tensorarrayv2read_tensorlistgetitem_lstm_168_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOp3lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOp2h
2lstm_168/while/lstm_cell_357/MatMul/ReadVariableOp2lstm_168/while/lstm_cell_357/MatMul/ReadVariableOp2l
4lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOp4lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_168_layer_call_fn_2174684
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
E__inference_lstm_168_layer_call_and_return_conditional_losses_2171655|
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
E__inference_lstm_168_layer_call_and_return_conditional_losses_2175289

inputs?
,lstm_cell_357_matmul_readvariableop_resource:	?A
.lstm_cell_357_matmul_1_readvariableop_resource:	d?<
-lstm_cell_357_biasadd_readvariableop_resource:	?
identity??$lstm_cell_357/BiasAdd/ReadVariableOp?#lstm_cell_357/MatMul/ReadVariableOp?%lstm_cell_357/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_357/MatMul/ReadVariableOpReadVariableOp,lstm_cell_357_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_357/MatMulMatMulstrided_slice_2:output:0+lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_357_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_357/MatMul_1MatMulzeros:output:0-lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_357/addAddV2lstm_cell_357/MatMul:product:0 lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_357_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_357/BiasAddBiasAddlstm_cell_357/add:z:0,lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_357/splitSplit&lstm_cell_357/split/split_dim:output:0lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_357/SigmoidSigmoidlstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_357/Sigmoid_1Sigmoidlstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_357/mulMullstm_cell_357/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_357/ReluRelulstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_357/mul_1Mullstm_cell_357/Sigmoid:y:0 lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_357/add_1AddV2lstm_cell_357/mul:z:0lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_357/Sigmoid_2Sigmoidlstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_357/Relu_1Relulstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_357/mul_2Mullstm_cell_357/Sigmoid_2:y:0"lstm_cell_357/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_357_matmul_readvariableop_resource.lstm_cell_357_matmul_1_readvariableop_resource-lstm_cell_357_biasadd_readvariableop_resource*
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
while_body_2175205*
condR
while_cond_2175204*K
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
NoOpNoOp%^lstm_cell_357/BiasAdd/ReadVariableOp$^lstm_cell_357/MatMul/ReadVariableOp&^lstm_cell_357/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_357/BiasAdd/ReadVariableOp$lstm_cell_357/BiasAdd/ReadVariableOp2J
#lstm_cell_357/MatMul/ReadVariableOp#lstm_cell_357/MatMul/ReadVariableOp2N
%lstm_cell_357/MatMul_1/ReadVariableOp%lstm_cell_357/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_359_layer_call_fn_2176770

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
J__inference_lstm_cell_359_layer_call_and_return_conditional_losses_2172418o
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
while_cond_2172476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2172476___redundant_placeholder05
1while_while_cond_2172476___redundant_placeholder15
1while_while_cond_2172476___redundant_placeholder25
1while_while_cond_2172476___redundant_placeholder3
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
while_body_2175392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_358_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_358_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_358_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_358_matmul_readvariableop_resource:	d?G
4while_lstm_cell_358_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_358_biasadd_readvariableop_resource:	???*while/lstm_cell_358/BiasAdd/ReadVariableOp?)while/lstm_cell_358/MatMul/ReadVariableOp?+while/lstm_cell_358/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_358/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_358_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_358/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_358_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_358/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_358/addAddV2$while/lstm_cell_358/MatMul:product:0&while/lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_358_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_358/BiasAddBiasAddwhile/lstm_cell_358/add:z:02while/lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_358/splitSplit,while/lstm_cell_358/split/split_dim:output:0$while/lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_358/SigmoidSigmoid"while/lstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_358/Sigmoid_1Sigmoid"while/lstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mulMul!while/lstm_cell_358/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_358/ReluRelu"while/lstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mul_1Mulwhile/lstm_cell_358/Sigmoid:y:0&while/lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/add_1AddV2while/lstm_cell_358/mul:z:0while/lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_358/Sigmoid_2Sigmoid"while/lstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_358/Relu_1Reluwhile/lstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_358/mul_2Mul!while/lstm_cell_358/Sigmoid_2:y:0(while/lstm_cell_358/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_358/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_358/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_358/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_358/BiasAdd/ReadVariableOp*^while/lstm_cell_358/MatMul/ReadVariableOp,^while/lstm_cell_358/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_358_biasadd_readvariableop_resource5while_lstm_cell_358_biasadd_readvariableop_resource_0"n
4while_lstm_cell_358_matmul_1_readvariableop_resource6while_lstm_cell_358_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_358_matmul_readvariableop_resource4while_lstm_cell_358_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_358/BiasAdd/ReadVariableOp*while/lstm_cell_358/BiasAdd/ReadVariableOp2V
)while/lstm_cell_358/MatMul/ReadVariableOp)while/lstm_cell_358/MatMul/ReadVariableOp2Z
+while/lstm_cell_358/MatMul_1/ReadVariableOp+while/lstm_cell_358/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2171586
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_357_2171610_0:	?0
while_lstm_cell_357_2171612_0:	d?,
while_lstm_cell_357_2171614_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_357_2171610:	?.
while_lstm_cell_357_2171612:	d?*
while_lstm_cell_357_2171614:	???+while/lstm_cell_357/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_357/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_357_2171610_0while_lstm_cell_357_2171612_0while_lstm_cell_357_2171614_0*
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
J__inference_lstm_cell_357_layer_call_and_return_conditional_losses_2171572?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_357/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_357/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_357/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_357/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_357_2171610while_lstm_cell_357_2171610_0"<
while_lstm_cell_357_2171612while_lstm_cell_357_2171612_0"<
while_lstm_cell_357_2171614while_lstm_cell_357_2171614_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_357/StatefulPartitionedCall+while/lstm_cell_357/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2172546

inputs'
lstm_cell_359_2172464:2('
lstm_cell_359_2172466:
(#
lstm_cell_359_2172468:(
identity??%lstm_cell_359/StatefulPartitionedCall?while;
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
%lstm_cell_359/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_359_2172464lstm_cell_359_2172466lstm_cell_359_2172468*
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
J__inference_lstm_cell_359_layer_call_and_return_conditional_losses_2172418n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_359_2172464lstm_cell_359_2172466lstm_cell_359_2172468*
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
while_body_2172477*
condR
while_cond_2172476*K
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
NoOpNoOp&^lstm_cell_359/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_359/StatefulPartitionedCall%lstm_cell_359/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_2175061
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2175061___redundant_placeholder05
1while_while_cond_2175061___redundant_placeholder15
1while_while_cond_2175061___redundant_placeholder25
1while_while_cond_2175061___redundant_placeholder3
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
?K
?
E__inference_lstm_169_layer_call_and_return_conditional_losses_2175476
inputs_0?
,lstm_cell_358_matmul_readvariableop_resource:	d?A
.lstm_cell_358_matmul_1_readvariableop_resource:	2?<
-lstm_cell_358_biasadd_readvariableop_resource:	?
identity??$lstm_cell_358/BiasAdd/ReadVariableOp?#lstm_cell_358/MatMul/ReadVariableOp?%lstm_cell_358/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_358/MatMul/ReadVariableOpReadVariableOp,lstm_cell_358_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_358/MatMulMatMulstrided_slice_2:output:0+lstm_cell_358/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_358/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_358_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_358/MatMul_1MatMulzeros:output:0-lstm_cell_358/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_358/addAddV2lstm_cell_358/MatMul:product:0 lstm_cell_358/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_358/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_358_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_358/BiasAddBiasAddlstm_cell_358/add:z:0,lstm_cell_358/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_358/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_358/splitSplit&lstm_cell_358/split/split_dim:output:0lstm_cell_358/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_358/SigmoidSigmoidlstm_cell_358/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_358/Sigmoid_1Sigmoidlstm_cell_358/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_358/mulMullstm_cell_358/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_358/ReluRelulstm_cell_358/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_358/mul_1Mullstm_cell_358/Sigmoid:y:0 lstm_cell_358/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_358/add_1AddV2lstm_cell_358/mul:z:0lstm_cell_358/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_358/Sigmoid_2Sigmoidlstm_cell_358/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_358/Relu_1Relulstm_cell_358/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_358/mul_2Mullstm_cell_358/Sigmoid_2:y:0"lstm_cell_358/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_358_matmul_readvariableop_resource.lstm_cell_358_matmul_1_readvariableop_resource-lstm_cell_358_biasadd_readvariableop_resource*
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
while_body_2175392*
condR
while_cond_2175391*K
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
NoOpNoOp%^lstm_cell_358/BiasAdd/ReadVariableOp$^lstm_cell_358/MatMul/ReadVariableOp&^lstm_cell_358/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_358/BiasAdd/ReadVariableOp$lstm_cell_358/BiasAdd/ReadVariableOp2J
#lstm_cell_358/MatMul/ReadVariableOp#lstm_cell_358/MatMul/ReadVariableOp2N
%lstm_cell_358/MatMul_1/ReadVariableOp%lstm_cell_358/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_2175391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2175391___redundant_placeholder05
1while_while_cond_2175391___redundant_placeholder15
1while_while_cond_2175391___redundant_placeholder25
1while_while_cond_2175391___redundant_placeholder3
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
/__inference_sequential_56_layer_call_fn_2173792

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
J__inference_sequential_56_layer_call_and_return_conditional_losses_2173029o
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
?S
?
)sequential_56_lstm_168_while_body_2171137J
Fsequential_56_lstm_168_while_sequential_56_lstm_168_while_loop_counterP
Lsequential_56_lstm_168_while_sequential_56_lstm_168_while_maximum_iterations,
(sequential_56_lstm_168_while_placeholder.
*sequential_56_lstm_168_while_placeholder_1.
*sequential_56_lstm_168_while_placeholder_2.
*sequential_56_lstm_168_while_placeholder_3I
Esequential_56_lstm_168_while_sequential_56_lstm_168_strided_slice_1_0?
?sequential_56_lstm_168_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_168_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_56_lstm_168_while_lstm_cell_357_matmul_readvariableop_resource_0:	?`
Msequential_56_lstm_168_while_lstm_cell_357_matmul_1_readvariableop_resource_0:	d?[
Lsequential_56_lstm_168_while_lstm_cell_357_biasadd_readvariableop_resource_0:	?)
%sequential_56_lstm_168_while_identity+
'sequential_56_lstm_168_while_identity_1+
'sequential_56_lstm_168_while_identity_2+
'sequential_56_lstm_168_while_identity_3+
'sequential_56_lstm_168_while_identity_4+
'sequential_56_lstm_168_while_identity_5G
Csequential_56_lstm_168_while_sequential_56_lstm_168_strided_slice_1?
sequential_56_lstm_168_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_168_tensorarrayunstack_tensorlistfromtensor\
Isequential_56_lstm_168_while_lstm_cell_357_matmul_readvariableop_resource:	?^
Ksequential_56_lstm_168_while_lstm_cell_357_matmul_1_readvariableop_resource:	d?Y
Jsequential_56_lstm_168_while_lstm_cell_357_biasadd_readvariableop_resource:	???Asequential_56/lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOp?@sequential_56/lstm_168/while/lstm_cell_357/MatMul/ReadVariableOp?Bsequential_56/lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOp?
Nsequential_56/lstm_168/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_56/lstm_168/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_56_lstm_168_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_168_tensorarrayunstack_tensorlistfromtensor_0(sequential_56_lstm_168_while_placeholderWsequential_56/lstm_168/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_56/lstm_168/while/lstm_cell_357/MatMul/ReadVariableOpReadVariableOpKsequential_56_lstm_168_while_lstm_cell_357_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_56/lstm_168/while/lstm_cell_357/MatMulMatMulGsequential_56/lstm_168/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_56/lstm_168/while/lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_56/lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOpMsequential_56_lstm_168_while_lstm_cell_357_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_56/lstm_168/while/lstm_cell_357/MatMul_1MatMul*sequential_56_lstm_168_while_placeholder_2Jsequential_56/lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_56/lstm_168/while/lstm_cell_357/addAddV2;sequential_56/lstm_168/while/lstm_cell_357/MatMul:product:0=sequential_56/lstm_168/while/lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_56/lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOpLsequential_56_lstm_168_while_lstm_cell_357_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_56/lstm_168/while/lstm_cell_357/BiasAddBiasAdd2sequential_56/lstm_168/while/lstm_cell_357/add:z:0Isequential_56/lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_56/lstm_168/while/lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_56/lstm_168/while/lstm_cell_357/splitSplitCsequential_56/lstm_168/while/lstm_cell_357/split/split_dim:output:0;sequential_56/lstm_168/while/lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_56/lstm_168/while/lstm_cell_357/SigmoidSigmoid9sequential_56/lstm_168/while/lstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_56/lstm_168/while/lstm_cell_357/Sigmoid_1Sigmoid9sequential_56/lstm_168/while/lstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_56/lstm_168/while/lstm_cell_357/mulMul8sequential_56/lstm_168/while/lstm_cell_357/Sigmoid_1:y:0*sequential_56_lstm_168_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_56/lstm_168/while/lstm_cell_357/ReluRelu9sequential_56/lstm_168/while/lstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_56/lstm_168/while/lstm_cell_357/mul_1Mul6sequential_56/lstm_168/while/lstm_cell_357/Sigmoid:y:0=sequential_56/lstm_168/while/lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_56/lstm_168/while/lstm_cell_357/add_1AddV22sequential_56/lstm_168/while/lstm_cell_357/mul:z:04sequential_56/lstm_168/while/lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_56/lstm_168/while/lstm_cell_357/Sigmoid_2Sigmoid9sequential_56/lstm_168/while/lstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_56/lstm_168/while/lstm_cell_357/Relu_1Relu4sequential_56/lstm_168/while/lstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_56/lstm_168/while/lstm_cell_357/mul_2Mul8sequential_56/lstm_168/while/lstm_cell_357/Sigmoid_2:y:0?sequential_56/lstm_168/while/lstm_cell_357/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_56/lstm_168/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_56_lstm_168_while_placeholder_1(sequential_56_lstm_168_while_placeholder4sequential_56/lstm_168/while/lstm_cell_357/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_56/lstm_168/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_56/lstm_168/while/addAddV2(sequential_56_lstm_168_while_placeholder+sequential_56/lstm_168/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_56/lstm_168/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_56/lstm_168/while/add_1AddV2Fsequential_56_lstm_168_while_sequential_56_lstm_168_while_loop_counter-sequential_56/lstm_168/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_56/lstm_168/while/IdentityIdentity&sequential_56/lstm_168/while/add_1:z:0"^sequential_56/lstm_168/while/NoOp*
T0*
_output_shapes
: ?
'sequential_56/lstm_168/while/Identity_1IdentityLsequential_56_lstm_168_while_sequential_56_lstm_168_while_maximum_iterations"^sequential_56/lstm_168/while/NoOp*
T0*
_output_shapes
: ?
'sequential_56/lstm_168/while/Identity_2Identity$sequential_56/lstm_168/while/add:z:0"^sequential_56/lstm_168/while/NoOp*
T0*
_output_shapes
: ?
'sequential_56/lstm_168/while/Identity_3IdentityQsequential_56/lstm_168/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_56/lstm_168/while/NoOp*
T0*
_output_shapes
: ?
'sequential_56/lstm_168/while/Identity_4Identity4sequential_56/lstm_168/while/lstm_cell_357/mul_2:z:0"^sequential_56/lstm_168/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_56/lstm_168/while/Identity_5Identity4sequential_56/lstm_168/while/lstm_cell_357/add_1:z:0"^sequential_56/lstm_168/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_56/lstm_168/while/NoOpNoOpB^sequential_56/lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOpA^sequential_56/lstm_168/while/lstm_cell_357/MatMul/ReadVariableOpC^sequential_56/lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_56_lstm_168_while_identity.sequential_56/lstm_168/while/Identity:output:0"[
'sequential_56_lstm_168_while_identity_10sequential_56/lstm_168/while/Identity_1:output:0"[
'sequential_56_lstm_168_while_identity_20sequential_56/lstm_168/while/Identity_2:output:0"[
'sequential_56_lstm_168_while_identity_30sequential_56/lstm_168/while/Identity_3:output:0"[
'sequential_56_lstm_168_while_identity_40sequential_56/lstm_168/while/Identity_4:output:0"[
'sequential_56_lstm_168_while_identity_50sequential_56/lstm_168/while/Identity_5:output:0"?
Jsequential_56_lstm_168_while_lstm_cell_357_biasadd_readvariableop_resourceLsequential_56_lstm_168_while_lstm_cell_357_biasadd_readvariableop_resource_0"?
Ksequential_56_lstm_168_while_lstm_cell_357_matmul_1_readvariableop_resourceMsequential_56_lstm_168_while_lstm_cell_357_matmul_1_readvariableop_resource_0"?
Isequential_56_lstm_168_while_lstm_cell_357_matmul_readvariableop_resourceKsequential_56_lstm_168_while_lstm_cell_357_matmul_readvariableop_resource_0"?
Csequential_56_lstm_168_while_sequential_56_lstm_168_strided_slice_1Esequential_56_lstm_168_while_sequential_56_lstm_168_strided_slice_1_0"?
sequential_56_lstm_168_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_168_tensorarrayunstack_tensorlistfromtensor?sequential_56_lstm_168_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_168_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_56/lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOpAsequential_56/lstm_168/while/lstm_cell_357/BiasAdd/ReadVariableOp2?
@sequential_56/lstm_168/while/lstm_cell_357/MatMul/ReadVariableOp@sequential_56/lstm_168/while/lstm_cell_357/MatMul/ReadVariableOp2?
Bsequential_56/lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOpBsequential_56/lstm_168/while/lstm_cell_357/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_168_layer_call_and_return_conditional_losses_2174860
inputs_0?
,lstm_cell_357_matmul_readvariableop_resource:	?A
.lstm_cell_357_matmul_1_readvariableop_resource:	d?<
-lstm_cell_357_biasadd_readvariableop_resource:	?
identity??$lstm_cell_357/BiasAdd/ReadVariableOp?#lstm_cell_357/MatMul/ReadVariableOp?%lstm_cell_357/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_357/MatMul/ReadVariableOpReadVariableOp,lstm_cell_357_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_357/MatMulMatMulstrided_slice_2:output:0+lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_357_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_357/MatMul_1MatMulzeros:output:0-lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_357/addAddV2lstm_cell_357/MatMul:product:0 lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_357_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_357/BiasAddBiasAddlstm_cell_357/add:z:0,lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_357/splitSplit&lstm_cell_357/split/split_dim:output:0lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_357/SigmoidSigmoidlstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_357/Sigmoid_1Sigmoidlstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_357/mulMullstm_cell_357/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_357/ReluRelulstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_357/mul_1Mullstm_cell_357/Sigmoid:y:0 lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_357/add_1AddV2lstm_cell_357/mul:z:0lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_357/Sigmoid_2Sigmoidlstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_357/Relu_1Relulstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_357/mul_2Mullstm_cell_357/Sigmoid_2:y:0"lstm_cell_357/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_357_matmul_readvariableop_resource.lstm_cell_357_matmul_1_readvariableop_resource-lstm_cell_357_biasadd_readvariableop_resource*
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
while_body_2174776*
condR
while_cond_2174775*K
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
NoOpNoOp%^lstm_cell_357/BiasAdd/ReadVariableOp$^lstm_cell_357/MatMul/ReadVariableOp&^lstm_cell_357/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_357/BiasAdd/ReadVariableOp$lstm_cell_357/BiasAdd/ReadVariableOp2J
#lstm_cell_357/MatMul/ReadVariableOp#lstm_cell_357/MatMul/ReadVariableOp2N
%lstm_cell_357/MatMul_1/ReadVariableOp%lstm_cell_357/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
E__inference_lstm_169_layer_call_and_return_conditional_losses_2172196

inputs(
lstm_cell_358_2172114:	d?(
lstm_cell_358_2172116:	2?$
lstm_cell_358_2172118:	?
identity??%lstm_cell_358/StatefulPartitionedCall?while;
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
%lstm_cell_358/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_358_2172114lstm_cell_358_2172116lstm_cell_358_2172118*
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
J__inference_lstm_cell_358_layer_call_and_return_conditional_losses_2172068n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_358_2172114lstm_cell_358_2172116lstm_cell_358_2172118*
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
while_body_2172127*
condR
while_cond_2172126*K
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
NoOpNoOp&^lstm_cell_358/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_358/StatefulPartitionedCall%lstm_cell_358/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_169_layer_call_fn_2175311
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
E__inference_lstm_169_layer_call_and_return_conditional_losses_2172196|
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
while_body_2172127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_358_2172151_0:	d?0
while_lstm_cell_358_2172153_0:	2?,
while_lstm_cell_358_2172155_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_358_2172151:	d?.
while_lstm_cell_358_2172153:	2?*
while_lstm_cell_358_2172155:	???+while/lstm_cell_358/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_358/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_358_2172151_0while_lstm_cell_358_2172153_0while_lstm_cell_358_2172155_0*
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
J__inference_lstm_cell_358_layer_call_and_return_conditional_losses_2172068?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_358/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_358/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_358/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_358/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_358_2172151while_lstm_cell_358_2172151_0"<
while_lstm_cell_358_2172153while_lstm_cell_358_2172153_0"<
while_lstm_cell_358_2172155while_lstm_cell_358_2172155_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_358/StatefulPartitionedCall+while/lstm_cell_358/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2175534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2175534___redundant_placeholder05
1while_while_cond_2175534___redundant_placeholder15
1while_while_cond_2175534___redundant_placeholder25
1while_while_cond_2175534___redundant_placeholder3
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
)sequential_56_lstm_169_while_cond_2171275J
Fsequential_56_lstm_169_while_sequential_56_lstm_169_while_loop_counterP
Lsequential_56_lstm_169_while_sequential_56_lstm_169_while_maximum_iterations,
(sequential_56_lstm_169_while_placeholder.
*sequential_56_lstm_169_while_placeholder_1.
*sequential_56_lstm_169_while_placeholder_2.
*sequential_56_lstm_169_while_placeholder_3L
Hsequential_56_lstm_169_while_less_sequential_56_lstm_169_strided_slice_1c
_sequential_56_lstm_169_while_sequential_56_lstm_169_while_cond_2171275___redundant_placeholder0c
_sequential_56_lstm_169_while_sequential_56_lstm_169_while_cond_2171275___redundant_placeholder1c
_sequential_56_lstm_169_while_sequential_56_lstm_169_while_cond_2171275___redundant_placeholder2c
_sequential_56_lstm_169_while_sequential_56_lstm_169_while_cond_2171275___redundant_placeholder3)
%sequential_56_lstm_169_while_identity
?
!sequential_56/lstm_169/while/LessLess(sequential_56_lstm_169_while_placeholderHsequential_56_lstm_169_while_less_sequential_56_lstm_169_strided_slice_1*
T0*
_output_shapes
: y
%sequential_56/lstm_169/while/IdentityIdentity%sequential_56/lstm_169/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_56_lstm_169_while_identity.sequential_56/lstm_169/while/Identity:output:0*(
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
while_cond_2176150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2176150___redundant_placeholder05
1while_while_cond_2176150___redundant_placeholder15
1while_while_cond_2176150___redundant_placeholder25
1while_while_cond_2176150___redundant_placeholder3
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
J__inference_lstm_cell_357_layer_call_and_return_conditional_losses_2176606

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
while_body_2174919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_357_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_357_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_357_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_357_matmul_readvariableop_resource:	?G
4while_lstm_cell_357_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_357_biasadd_readvariableop_resource:	???*while/lstm_cell_357/BiasAdd/ReadVariableOp?)while/lstm_cell_357/MatMul/ReadVariableOp?+while/lstm_cell_357/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_357/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_357_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_357/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_357/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_357/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_357_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_357/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_357/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_357/addAddV2$while/lstm_cell_357/MatMul:product:0&while/lstm_cell_357/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_357/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_357_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_357/BiasAddBiasAddwhile/lstm_cell_357/add:z:02while/lstm_cell_357/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_357/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_357/splitSplit,while/lstm_cell_357/split/split_dim:output:0$while/lstm_cell_357/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_357/SigmoidSigmoid"while/lstm_cell_357/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_357/Sigmoid_1Sigmoid"while/lstm_cell_357/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mulMul!while/lstm_cell_357/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_357/ReluRelu"while/lstm_cell_357/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mul_1Mulwhile/lstm_cell_357/Sigmoid:y:0&while/lstm_cell_357/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/add_1AddV2while/lstm_cell_357/mul:z:0while/lstm_cell_357/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_357/Sigmoid_2Sigmoid"while/lstm_cell_357/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_357/Relu_1Reluwhile/lstm_cell_357/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_357/mul_2Mul!while/lstm_cell_357/Sigmoid_2:y:0(while/lstm_cell_357/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_357/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_357/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_357/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_357/BiasAdd/ReadVariableOp*^while/lstm_cell_357/MatMul/ReadVariableOp,^while/lstm_cell_357/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_357_biasadd_readvariableop_resource5while_lstm_cell_357_biasadd_readvariableop_resource_0"n
4while_lstm_cell_357_matmul_1_readvariableop_resource6while_lstm_cell_357_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_357_matmul_readvariableop_resource4while_lstm_cell_357_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_357/BiasAdd/ReadVariableOp*while/lstm_cell_357/BiasAdd/ReadVariableOp2V
)while/lstm_cell_357/MatMul/ReadVariableOp)while/lstm_cell_357/MatMul/ReadVariableOp2Z
+while/lstm_cell_357/MatMul_1/ReadVariableOp+while/lstm_cell_357/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2176092
inputs_0>
,lstm_cell_359_matmul_readvariableop_resource:2(@
.lstm_cell_359_matmul_1_readvariableop_resource:
(;
-lstm_cell_359_biasadd_readvariableop_resource:(
identity??$lstm_cell_359/BiasAdd/ReadVariableOp?#lstm_cell_359/MatMul/ReadVariableOp?%lstm_cell_359/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_359/MatMul/ReadVariableOpReadVariableOp,lstm_cell_359_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_359/MatMulMatMulstrided_slice_2:output:0+lstm_cell_359/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_359/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_359_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_359/MatMul_1MatMulzeros:output:0-lstm_cell_359/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_359/addAddV2lstm_cell_359/MatMul:product:0 lstm_cell_359/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_359/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_359_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_359/BiasAddBiasAddlstm_cell_359/add:z:0,lstm_cell_359/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_359/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_359/splitSplit&lstm_cell_359/split/split_dim:output:0lstm_cell_359/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_359/SigmoidSigmoidlstm_cell_359/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_359/Sigmoid_1Sigmoidlstm_cell_359/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_359/mulMullstm_cell_359/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_359/ReluRelulstm_cell_359/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_359/mul_1Mullstm_cell_359/Sigmoid:y:0 lstm_cell_359/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_359/add_1AddV2lstm_cell_359/mul:z:0lstm_cell_359/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_359/Sigmoid_2Sigmoidlstm_cell_359/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_359/Relu_1Relulstm_cell_359/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_359/mul_2Mullstm_cell_359/Sigmoid_2:y:0"lstm_cell_359/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_359_matmul_readvariableop_resource.lstm_cell_359_matmul_1_readvariableop_resource-lstm_cell_359_biasadd_readvariableop_resource*
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
while_body_2176008*
condR
while_cond_2176007*K
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
NoOpNoOp%^lstm_cell_359/BiasAdd/ReadVariableOp$^lstm_cell_359/MatMul/ReadVariableOp&^lstm_cell_359/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_359/BiasAdd/ReadVariableOp$lstm_cell_359/BiasAdd/ReadVariableOp2J
#lstm_cell_359/MatMul/ReadVariableOp#lstm_cell_359/MatMul/ReadVariableOp2N
%lstm_cell_359/MatMul_1/ReadVariableOp%lstm_cell_359/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_sequential_56_layer_call_and_return_conditional_losses_2173618

inputs#
lstm_168_2173591:	?#
lstm_168_2173593:	d?
lstm_168_2173595:	?#
lstm_169_2173598:	d?#
lstm_169_2173600:	2?
lstm_169_2173602:	?"
lstm_170_2173605:2("
lstm_170_2173607:
(
lstm_170_2173609:("
dense_56_2173612:

dense_56_2173614:
identity?? dense_56/StatefulPartitionedCall? lstm_168/StatefulPartitionedCall? lstm_169/StatefulPartitionedCall? lstm_170/StatefulPartitionedCall?
 lstm_168/StatefulPartitionedCallStatefulPartitionedCallinputslstm_168_2173591lstm_168_2173593lstm_168_2173595*
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
E__inference_lstm_168_layer_call_and_return_conditional_losses_2173550?
 lstm_169/StatefulPartitionedCallStatefulPartitionedCall)lstm_168/StatefulPartitionedCall:output:0lstm_169_2173598lstm_169_2173600lstm_169_2173602*
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
E__inference_lstm_169_layer_call_and_return_conditional_losses_2173385?
 lstm_170/StatefulPartitionedCallStatefulPartitionedCall)lstm_169/StatefulPartitionedCall:output:0lstm_170_2173605lstm_170_2173607lstm_170_2173609*
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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2173220?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)lstm_170/StatefulPartitionedCall:output:0dense_56_2173612dense_56_2173614*
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
E__inference_dense_56_layer_call_and_return_conditional_losses_2173022x
IdentityIdentity)dense_56/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_56/StatefulPartitionedCall!^lstm_168/StatefulPartitionedCall!^lstm_169/StatefulPartitionedCall!^lstm_170/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 lstm_168/StatefulPartitionedCall lstm_168/StatefulPartitionedCall2D
 lstm_169/StatefulPartitionedCall lstm_169/StatefulPartitionedCall2D
 lstm_170/StatefulPartitionedCall lstm_170/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_168_input;
 serving_default_lstm_168_input:0?????????<
dense_560
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
2dense_56/kernel
:2dense_56/bias
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
0:.	?2lstm_168/lstm_cell_168/kernel
::8	d?2'lstm_168/lstm_cell_168/recurrent_kernel
*:(?2lstm_168/lstm_cell_168/bias
0:.	d?2lstm_169/lstm_cell_169/kernel
::8	2?2'lstm_169/lstm_cell_169/recurrent_kernel
*:(?2lstm_169/lstm_cell_169/bias
/:-2(2lstm_170/lstm_cell_170/kernel
9:7
(2'lstm_170/lstm_cell_170/recurrent_kernel
):'(2lstm_170/lstm_cell_170/bias
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
2Adam/dense_56/kernel/m
 :2Adam/dense_56/bias/m
5:3	?2$Adam/lstm_168/lstm_cell_168/kernel/m
?:=	d?2.Adam/lstm_168/lstm_cell_168/recurrent_kernel/m
/:-?2"Adam/lstm_168/lstm_cell_168/bias/m
5:3	d?2$Adam/lstm_169/lstm_cell_169/kernel/m
?:=	2?2.Adam/lstm_169/lstm_cell_169/recurrent_kernel/m
/:-?2"Adam/lstm_169/lstm_cell_169/bias/m
4:22(2$Adam/lstm_170/lstm_cell_170/kernel/m
>:<
(2.Adam/lstm_170/lstm_cell_170/recurrent_kernel/m
.:,(2"Adam/lstm_170/lstm_cell_170/bias/m
&:$
2Adam/dense_56/kernel/v
 :2Adam/dense_56/bias/v
5:3	?2$Adam/lstm_168/lstm_cell_168/kernel/v
?:=	d?2.Adam/lstm_168/lstm_cell_168/recurrent_kernel/v
/:-?2"Adam/lstm_168/lstm_cell_168/bias/v
5:3	d?2$Adam/lstm_169/lstm_cell_169/kernel/v
?:=	2?2.Adam/lstm_169/lstm_cell_169/recurrent_kernel/v
/:-?2"Adam/lstm_169/lstm_cell_169/bias/v
4:22(2$Adam/lstm_170/lstm_cell_170/kernel/v
>:<
(2.Adam/lstm_170/lstm_cell_170/recurrent_kernel/v
.:,(2"Adam/lstm_170/lstm_cell_170/bias/v
?2?
/__inference_sequential_56_layer_call_fn_2173054
/__inference_sequential_56_layer_call_fn_2173792
/__inference_sequential_56_layer_call_fn_2173819
/__inference_sequential_56_layer_call_fn_2173670?
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
J__inference_sequential_56_layer_call_and_return_conditional_losses_2174246
J__inference_sequential_56_layer_call_and_return_conditional_losses_2174673
J__inference_sequential_56_layer_call_and_return_conditional_losses_2173700
J__inference_sequential_56_layer_call_and_return_conditional_losses_2173730?
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
"__inference__wrapped_model_2171505lstm_168_input"?
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
*__inference_lstm_168_layer_call_fn_2174684
*__inference_lstm_168_layer_call_fn_2174695
*__inference_lstm_168_layer_call_fn_2174706
*__inference_lstm_168_layer_call_fn_2174717?
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
E__inference_lstm_168_layer_call_and_return_conditional_losses_2174860
E__inference_lstm_168_layer_call_and_return_conditional_losses_2175003
E__inference_lstm_168_layer_call_and_return_conditional_losses_2175146
E__inference_lstm_168_layer_call_and_return_conditional_losses_2175289?
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
*__inference_lstm_169_layer_call_fn_2175300
*__inference_lstm_169_layer_call_fn_2175311
*__inference_lstm_169_layer_call_fn_2175322
*__inference_lstm_169_layer_call_fn_2175333?
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
E__inference_lstm_169_layer_call_and_return_conditional_losses_2175476
E__inference_lstm_169_layer_call_and_return_conditional_losses_2175619
E__inference_lstm_169_layer_call_and_return_conditional_losses_2175762
E__inference_lstm_169_layer_call_and_return_conditional_losses_2175905?
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
*__inference_lstm_170_layer_call_fn_2175916
*__inference_lstm_170_layer_call_fn_2175927
*__inference_lstm_170_layer_call_fn_2175938
*__inference_lstm_170_layer_call_fn_2175949?
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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2176092
E__inference_lstm_170_layer_call_and_return_conditional_losses_2176235
E__inference_lstm_170_layer_call_and_return_conditional_losses_2176378
E__inference_lstm_170_layer_call_and_return_conditional_losses_2176521?
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
*__inference_dense_56_layer_call_fn_2176530?
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
E__inference_dense_56_layer_call_and_return_conditional_losses_2176540?
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
%__inference_signature_wrapper_2173765lstm_168_input"?
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
/__inference_lstm_cell_357_layer_call_fn_2176557
/__inference_lstm_cell_357_layer_call_fn_2176574?
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
J__inference_lstm_cell_357_layer_call_and_return_conditional_losses_2176606
J__inference_lstm_cell_357_layer_call_and_return_conditional_losses_2176638?
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
/__inference_lstm_cell_358_layer_call_fn_2176655
/__inference_lstm_cell_358_layer_call_fn_2176672?
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
J__inference_lstm_cell_358_layer_call_and_return_conditional_losses_2176704
J__inference_lstm_cell_358_layer_call_and_return_conditional_losses_2176736?
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
/__inference_lstm_cell_359_layer_call_fn_2176753
/__inference_lstm_cell_359_layer_call_fn_2176770?
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
J__inference_lstm_cell_359_layer_call_and_return_conditional_losses_2176802
J__inference_lstm_cell_359_layer_call_and_return_conditional_losses_2176834?
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
"__inference__wrapped_model_2171505-./012345!";?8
1?.
,?)
lstm_168_input?????????
? "3?0
.
dense_56"?
dense_56??????????
E__inference_dense_56_layer_call_and_return_conditional_losses_2176540\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_56_layer_call_fn_2176530O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_168_layer_call_and_return_conditional_losses_2174860?-./O?L
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
E__inference_lstm_168_layer_call_and_return_conditional_losses_2175003?-./O?L
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
E__inference_lstm_168_layer_call_and_return_conditional_losses_2175146q-./??<
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
E__inference_lstm_168_layer_call_and_return_conditional_losses_2175289q-./??<
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
*__inference_lstm_168_layer_call_fn_2174684}-./O?L
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
*__inference_lstm_168_layer_call_fn_2174695}-./O?L
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
*__inference_lstm_168_layer_call_fn_2174706d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_168_layer_call_fn_2174717d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_169_layer_call_and_return_conditional_losses_2175476?012O?L
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
E__inference_lstm_169_layer_call_and_return_conditional_losses_2175619?012O?L
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
E__inference_lstm_169_layer_call_and_return_conditional_losses_2175762q012??<
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
E__inference_lstm_169_layer_call_and_return_conditional_losses_2175905q012??<
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
*__inference_lstm_169_layer_call_fn_2175300}012O?L
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
*__inference_lstm_169_layer_call_fn_2175311}012O?L
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
*__inference_lstm_169_layer_call_fn_2175322d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_169_layer_call_fn_2175333d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_170_layer_call_and_return_conditional_losses_2176092}345O?L
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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2176235}345O?L
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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2176378m345??<
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
E__inference_lstm_170_layer_call_and_return_conditional_losses_2176521m345??<
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
*__inference_lstm_170_layer_call_fn_2175916p345O?L
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
*__inference_lstm_170_layer_call_fn_2175927p345O?L
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
*__inference_lstm_170_layer_call_fn_2175938`345??<
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
*__inference_lstm_170_layer_call_fn_2175949`345??<
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
J__inference_lstm_cell_357_layer_call_and_return_conditional_losses_2176606?-./??}
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
J__inference_lstm_cell_357_layer_call_and_return_conditional_losses_2176638?-./??}
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
/__inference_lstm_cell_357_layer_call_fn_2176557?-./??}
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
/__inference_lstm_cell_357_layer_call_fn_2176574?-./??}
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
J__inference_lstm_cell_358_layer_call_and_return_conditional_losses_2176704?012??}
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
J__inference_lstm_cell_358_layer_call_and_return_conditional_losses_2176736?012??}
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
/__inference_lstm_cell_358_layer_call_fn_2176655?012??}
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
/__inference_lstm_cell_358_layer_call_fn_2176672?012??}
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
J__inference_lstm_cell_359_layer_call_and_return_conditional_losses_2176802?345??}
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
J__inference_lstm_cell_359_layer_call_and_return_conditional_losses_2176834?345??}
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
/__inference_lstm_cell_359_layer_call_fn_2176753?345??}
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
/__inference_lstm_cell_359_layer_call_fn_2176770?345??}
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
J__inference_sequential_56_layer_call_and_return_conditional_losses_2173700y-./012345!"C?@
9?6
,?)
lstm_168_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_56_layer_call_and_return_conditional_losses_2173730y-./012345!"C?@
9?6
,?)
lstm_168_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_56_layer_call_and_return_conditional_losses_2174246q-./012345!";?8
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
J__inference_sequential_56_layer_call_and_return_conditional_losses_2174673q-./012345!";?8
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
/__inference_sequential_56_layer_call_fn_2173054l-./012345!"C?@
9?6
,?)
lstm_168_input?????????
p 

 
? "???????????
/__inference_sequential_56_layer_call_fn_2173670l-./012345!"C?@
9?6
,?)
lstm_168_input?????????
p

 
? "???????????
/__inference_sequential_56_layer_call_fn_2173792d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_56_layer_call_fn_2173819d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2173765?-./012345!"M?J
? 
C?@
>
lstm_168_input,?)
lstm_168_input?????????"3?0
.
dense_56"?
dense_56?????????