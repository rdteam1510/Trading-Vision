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
dense_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_38/kernel
s
#dense_38/kernel/Read/ReadVariableOpReadVariableOpdense_38/kernel*
_output_shapes

:
*
dtype0
r
dense_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_38/bias
k
!dense_38/bias/Read/ReadVariableOpReadVariableOpdense_38/bias*
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
lstm_114/lstm_cell_114/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_114/lstm_cell_114/kernel
?
1lstm_114/lstm_cell_114/kernel/Read/ReadVariableOpReadVariableOplstm_114/lstm_cell_114/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_114/lstm_cell_114/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_114/lstm_cell_114/recurrent_kernel
?
;lstm_114/lstm_cell_114/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_114/lstm_cell_114/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_114/lstm_cell_114/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_114/lstm_cell_114/bias
?
/lstm_114/lstm_cell_114/bias/Read/ReadVariableOpReadVariableOplstm_114/lstm_cell_114/bias*
_output_shapes	
:?*
dtype0
?
lstm_115/lstm_cell_115/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_115/lstm_cell_115/kernel
?
1lstm_115/lstm_cell_115/kernel/Read/ReadVariableOpReadVariableOplstm_115/lstm_cell_115/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_115/lstm_cell_115/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_115/lstm_cell_115/recurrent_kernel
?
;lstm_115/lstm_cell_115/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_115/lstm_cell_115/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_115/lstm_cell_115/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_115/lstm_cell_115/bias
?
/lstm_115/lstm_cell_115/bias/Read/ReadVariableOpReadVariableOplstm_115/lstm_cell_115/bias*
_output_shapes	
:?*
dtype0
?
lstm_116/lstm_cell_116/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_116/lstm_cell_116/kernel
?
1lstm_116/lstm_cell_116/kernel/Read/ReadVariableOpReadVariableOplstm_116/lstm_cell_116/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_116/lstm_cell_116/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_116/lstm_cell_116/recurrent_kernel
?
;lstm_116/lstm_cell_116/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_116/lstm_cell_116/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_116/lstm_cell_116/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_116/lstm_cell_116/bias
?
/lstm_116/lstm_cell_116/bias/Read/ReadVariableOpReadVariableOplstm_116/lstm_cell_116/bias*
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
Adam/dense_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_38/kernel/m
?
*Adam/dense_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_38/bias/m
y
(Adam/dense_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_114/lstm_cell_114/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_114/lstm_cell_114/kernel/m
?
8Adam/lstm_114/lstm_cell_114/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_114/lstm_cell_114/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_114/lstm_cell_114/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_114/lstm_cell_114/recurrent_kernel/m
?
BAdam/lstm_114/lstm_cell_114/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_114/lstm_cell_114/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_114/lstm_cell_114/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_114/lstm_cell_114/bias/m
?
6Adam/lstm_114/lstm_cell_114/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_114/lstm_cell_114/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_115/lstm_cell_115/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_115/lstm_cell_115/kernel/m
?
8Adam/lstm_115/lstm_cell_115/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_115/lstm_cell_115/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_115/lstm_cell_115/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_115/lstm_cell_115/recurrent_kernel/m
?
BAdam/lstm_115/lstm_cell_115/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_115/lstm_cell_115/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_115/lstm_cell_115/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_115/lstm_cell_115/bias/m
?
6Adam/lstm_115/lstm_cell_115/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_115/lstm_cell_115/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_116/lstm_cell_116/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_116/lstm_cell_116/kernel/m
?
8Adam/lstm_116/lstm_cell_116/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_116/lstm_cell_116/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_116/lstm_cell_116/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_116/lstm_cell_116/recurrent_kernel/m
?
BAdam/lstm_116/lstm_cell_116/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_116/lstm_cell_116/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_116/lstm_cell_116/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_116/lstm_cell_116/bias/m
?
6Adam/lstm_116/lstm_cell_116/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_116/lstm_cell_116/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_38/kernel/v
?
*Adam/dense_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_38/bias/v
y
(Adam/dense_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_114/lstm_cell_114/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_114/lstm_cell_114/kernel/v
?
8Adam/lstm_114/lstm_cell_114/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_114/lstm_cell_114/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_114/lstm_cell_114/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_114/lstm_cell_114/recurrent_kernel/v
?
BAdam/lstm_114/lstm_cell_114/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_114/lstm_cell_114/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_114/lstm_cell_114/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_114/lstm_cell_114/bias/v
?
6Adam/lstm_114/lstm_cell_114/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_114/lstm_cell_114/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_115/lstm_cell_115/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_115/lstm_cell_115/kernel/v
?
8Adam/lstm_115/lstm_cell_115/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_115/lstm_cell_115/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_115/lstm_cell_115/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_115/lstm_cell_115/recurrent_kernel/v
?
BAdam/lstm_115/lstm_cell_115/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_115/lstm_cell_115/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_115/lstm_cell_115/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_115/lstm_cell_115/bias/v
?
6Adam/lstm_115/lstm_cell_115/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_115/lstm_cell_115/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_116/lstm_cell_116/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_116/lstm_cell_116/kernel/v
?
8Adam/lstm_116/lstm_cell_116/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_116/lstm_cell_116/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_116/lstm_cell_116/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_116/lstm_cell_116/recurrent_kernel/v
?
BAdam/lstm_116/lstm_cell_116/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_116/lstm_cell_116/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_116/lstm_cell_116/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_116/lstm_cell_116/bias/v
?
6Adam/lstm_116/lstm_cell_116/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_116/lstm_cell_116/bias/v*
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
VARIABLE_VALUEdense_38/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_38/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_114/lstm_cell_114/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_114/lstm_cell_114/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_114/lstm_cell_114/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_115/lstm_cell_115/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_115/lstm_cell_115/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_115/lstm_cell_115/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_116/lstm_cell_116/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_116/lstm_cell_116/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_116/lstm_cell_116/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_38/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_38/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_114/lstm_cell_114/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_114/lstm_cell_114/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_114/lstm_cell_114/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_115/lstm_cell_115/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_115/lstm_cell_115/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_115/lstm_cell_115/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_116/lstm_cell_116/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_116/lstm_cell_116/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_116/lstm_cell_116/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_38/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_38/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_114/lstm_cell_114/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_114/lstm_cell_114/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_114/lstm_cell_114/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_115/lstm_cell_115/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_115/lstm_cell_115/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_115/lstm_cell_115/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_116/lstm_cell_116/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_116/lstm_cell_116/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_116/lstm_cell_116/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_114_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_114_inputlstm_114/lstm_cell_114/kernel'lstm_114/lstm_cell_114/recurrent_kernellstm_114/lstm_cell_114/biaslstm_115/lstm_cell_115/kernel'lstm_115/lstm_cell_115/recurrent_kernellstm_115/lstm_cell_115/biaslstm_116/lstm_cell_116/kernel'lstm_116/lstm_cell_116/recurrent_kernellstm_116/lstm_cell_116/biasdense_38/kerneldense_38/bias*
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
%__inference_signature_wrapper_1211560
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_38/kernel/Read/ReadVariableOp!dense_38/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_114/lstm_cell_114/kernel/Read/ReadVariableOp;lstm_114/lstm_cell_114/recurrent_kernel/Read/ReadVariableOp/lstm_114/lstm_cell_114/bias/Read/ReadVariableOp1lstm_115/lstm_cell_115/kernel/Read/ReadVariableOp;lstm_115/lstm_cell_115/recurrent_kernel/Read/ReadVariableOp/lstm_115/lstm_cell_115/bias/Read/ReadVariableOp1lstm_116/lstm_cell_116/kernel/Read/ReadVariableOp;lstm_116/lstm_cell_116/recurrent_kernel/Read/ReadVariableOp/lstm_116/lstm_cell_116/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_38/kernel/m/Read/ReadVariableOp(Adam/dense_38/bias/m/Read/ReadVariableOp8Adam/lstm_114/lstm_cell_114/kernel/m/Read/ReadVariableOpBAdam/lstm_114/lstm_cell_114/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_114/lstm_cell_114/bias/m/Read/ReadVariableOp8Adam/lstm_115/lstm_cell_115/kernel/m/Read/ReadVariableOpBAdam/lstm_115/lstm_cell_115/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_115/lstm_cell_115/bias/m/Read/ReadVariableOp8Adam/lstm_116/lstm_cell_116/kernel/m/Read/ReadVariableOpBAdam/lstm_116/lstm_cell_116/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_116/lstm_cell_116/bias/m/Read/ReadVariableOp*Adam/dense_38/kernel/v/Read/ReadVariableOp(Adam/dense_38/bias/v/Read/ReadVariableOp8Adam/lstm_114/lstm_cell_114/kernel/v/Read/ReadVariableOpBAdam/lstm_114/lstm_cell_114/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_114/lstm_cell_114/bias/v/Read/ReadVariableOp8Adam/lstm_115/lstm_cell_115/kernel/v/Read/ReadVariableOpBAdam/lstm_115/lstm_cell_115/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_115/lstm_cell_115/bias/v/Read/ReadVariableOp8Adam/lstm_116/lstm_cell_116/kernel/v/Read/ReadVariableOpBAdam/lstm_116/lstm_cell_116/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_116/lstm_cell_116/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1214772
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_38/kerneldense_38/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_114/lstm_cell_114/kernel'lstm_114/lstm_cell_114/recurrent_kernellstm_114/lstm_cell_114/biaslstm_115/lstm_cell_115/kernel'lstm_115/lstm_cell_115/recurrent_kernellstm_115/lstm_cell_115/biaslstm_116/lstm_cell_116/kernel'lstm_116/lstm_cell_116/recurrent_kernellstm_116/lstm_cell_116/biastotalcountAdam/dense_38/kernel/mAdam/dense_38/bias/m$Adam/lstm_114/lstm_cell_114/kernel/m.Adam/lstm_114/lstm_cell_114/recurrent_kernel/m"Adam/lstm_114/lstm_cell_114/bias/m$Adam/lstm_115/lstm_cell_115/kernel/m.Adam/lstm_115/lstm_cell_115/recurrent_kernel/m"Adam/lstm_115/lstm_cell_115/bias/m$Adam/lstm_116/lstm_cell_116/kernel/m.Adam/lstm_116/lstm_cell_116/recurrent_kernel/m"Adam/lstm_116/lstm_cell_116/bias/mAdam/dense_38/kernel/vAdam/dense_38/bias/v$Adam/lstm_114/lstm_cell_114/kernel/v.Adam/lstm_114/lstm_cell_114/recurrent_kernel/v"Adam/lstm_114/lstm_cell_114/bias/v$Adam/lstm_115/lstm_cell_115/kernel/v.Adam/lstm_115/lstm_cell_115/recurrent_kernel/v"Adam/lstm_115/lstm_cell_115/bias/v$Adam/lstm_116/lstm_cell_116/kernel/v.Adam/lstm_116/lstm_cell_116/recurrent_kernel/v"Adam/lstm_116/lstm_cell_116/bias/v*4
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
#__inference__traced_restore_1214902??+
?
?
while_cond_1213945
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1213945___redundant_placeholder05
1while_while_cond_1213945___redundant_placeholder15
1while_while_cond_1213945___redundant_placeholder25
1while_while_cond_1213945___redundant_placeholder3
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
while_cond_1210714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1210714___redundant_placeholder05
1while_while_cond_1210714___redundant_placeholder15
1while_while_cond_1210714___redundant_placeholder25
1while_while_cond_1210714___redundant_placeholder3
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
lstm_115_while_cond_1212238.
*lstm_115_while_lstm_115_while_loop_counter4
0lstm_115_while_lstm_115_while_maximum_iterations
lstm_115_while_placeholder 
lstm_115_while_placeholder_1 
lstm_115_while_placeholder_2 
lstm_115_while_placeholder_30
,lstm_115_while_less_lstm_115_strided_slice_1G
Clstm_115_while_lstm_115_while_cond_1212238___redundant_placeholder0G
Clstm_115_while_lstm_115_while_cond_1212238___redundant_placeholder1G
Clstm_115_while_lstm_115_while_cond_1212238___redundant_placeholder2G
Clstm_115_while_lstm_115_while_cond_1212238___redundant_placeholder3
lstm_115_while_identity
?
lstm_115/while/LessLesslstm_115_while_placeholder,lstm_115_while_less_lstm_115_strided_slice_1*
T0*
_output_shapes
: ]
lstm_115/while/IdentityIdentitylstm_115/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_115_while_identity lstm_115/while/Identity:output:0*(
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
)sequential_38_lstm_116_while_body_1209210J
Fsequential_38_lstm_116_while_sequential_38_lstm_116_while_loop_counterP
Lsequential_38_lstm_116_while_sequential_38_lstm_116_while_maximum_iterations,
(sequential_38_lstm_116_while_placeholder.
*sequential_38_lstm_116_while_placeholder_1.
*sequential_38_lstm_116_while_placeholder_2.
*sequential_38_lstm_116_while_placeholder_3I
Esequential_38_lstm_116_while_sequential_38_lstm_116_strided_slice_1_0?
?sequential_38_lstm_116_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_116_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_38_lstm_116_while_lstm_cell_200_matmul_readvariableop_resource_0:2(_
Msequential_38_lstm_116_while_lstm_cell_200_matmul_1_readvariableop_resource_0:
(Z
Lsequential_38_lstm_116_while_lstm_cell_200_biasadd_readvariableop_resource_0:()
%sequential_38_lstm_116_while_identity+
'sequential_38_lstm_116_while_identity_1+
'sequential_38_lstm_116_while_identity_2+
'sequential_38_lstm_116_while_identity_3+
'sequential_38_lstm_116_while_identity_4+
'sequential_38_lstm_116_while_identity_5G
Csequential_38_lstm_116_while_sequential_38_lstm_116_strided_slice_1?
sequential_38_lstm_116_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_116_tensorarrayunstack_tensorlistfromtensor[
Isequential_38_lstm_116_while_lstm_cell_200_matmul_readvariableop_resource:2(]
Ksequential_38_lstm_116_while_lstm_cell_200_matmul_1_readvariableop_resource:
(X
Jsequential_38_lstm_116_while_lstm_cell_200_biasadd_readvariableop_resource:(??Asequential_38/lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOp?@sequential_38/lstm_116/while/lstm_cell_200/MatMul/ReadVariableOp?Bsequential_38/lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOp?
Nsequential_38/lstm_116/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_38/lstm_116/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_38_lstm_116_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_116_tensorarrayunstack_tensorlistfromtensor_0(sequential_38_lstm_116_while_placeholderWsequential_38/lstm_116/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_38/lstm_116/while/lstm_cell_200/MatMul/ReadVariableOpReadVariableOpKsequential_38_lstm_116_while_lstm_cell_200_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_38/lstm_116/while/lstm_cell_200/MatMulMatMulGsequential_38/lstm_116/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_38/lstm_116/while/lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_38/lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOpMsequential_38_lstm_116_while_lstm_cell_200_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_38/lstm_116/while/lstm_cell_200/MatMul_1MatMul*sequential_38_lstm_116_while_placeholder_2Jsequential_38/lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_38/lstm_116/while/lstm_cell_200/addAddV2;sequential_38/lstm_116/while/lstm_cell_200/MatMul:product:0=sequential_38/lstm_116/while/lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_38/lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOpLsequential_38_lstm_116_while_lstm_cell_200_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_38/lstm_116/while/lstm_cell_200/BiasAddBiasAdd2sequential_38/lstm_116/while/lstm_cell_200/add:z:0Isequential_38/lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_38/lstm_116/while/lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_38/lstm_116/while/lstm_cell_200/splitSplitCsequential_38/lstm_116/while/lstm_cell_200/split/split_dim:output:0;sequential_38/lstm_116/while/lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_38/lstm_116/while/lstm_cell_200/SigmoidSigmoid9sequential_38/lstm_116/while/lstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_38/lstm_116/while/lstm_cell_200/Sigmoid_1Sigmoid9sequential_38/lstm_116/while/lstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_38/lstm_116/while/lstm_cell_200/mulMul8sequential_38/lstm_116/while/lstm_cell_200/Sigmoid_1:y:0*sequential_38_lstm_116_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_38/lstm_116/while/lstm_cell_200/ReluRelu9sequential_38/lstm_116/while/lstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_38/lstm_116/while/lstm_cell_200/mul_1Mul6sequential_38/lstm_116/while/lstm_cell_200/Sigmoid:y:0=sequential_38/lstm_116/while/lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_38/lstm_116/while/lstm_cell_200/add_1AddV22sequential_38/lstm_116/while/lstm_cell_200/mul:z:04sequential_38/lstm_116/while/lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_38/lstm_116/while/lstm_cell_200/Sigmoid_2Sigmoid9sequential_38/lstm_116/while/lstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_38/lstm_116/while/lstm_cell_200/Relu_1Relu4sequential_38/lstm_116/while/lstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_38/lstm_116/while/lstm_cell_200/mul_2Mul8sequential_38/lstm_116/while/lstm_cell_200/Sigmoid_2:y:0?sequential_38/lstm_116/while/lstm_cell_200/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_38/lstm_116/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_38_lstm_116_while_placeholder_1(sequential_38_lstm_116_while_placeholder4sequential_38/lstm_116/while/lstm_cell_200/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_38/lstm_116/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_38/lstm_116/while/addAddV2(sequential_38_lstm_116_while_placeholder+sequential_38/lstm_116/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_38/lstm_116/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_38/lstm_116/while/add_1AddV2Fsequential_38_lstm_116_while_sequential_38_lstm_116_while_loop_counter-sequential_38/lstm_116/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_38/lstm_116/while/IdentityIdentity&sequential_38/lstm_116/while/add_1:z:0"^sequential_38/lstm_116/while/NoOp*
T0*
_output_shapes
: ?
'sequential_38/lstm_116/while/Identity_1IdentityLsequential_38_lstm_116_while_sequential_38_lstm_116_while_maximum_iterations"^sequential_38/lstm_116/while/NoOp*
T0*
_output_shapes
: ?
'sequential_38/lstm_116/while/Identity_2Identity$sequential_38/lstm_116/while/add:z:0"^sequential_38/lstm_116/while/NoOp*
T0*
_output_shapes
: ?
'sequential_38/lstm_116/while/Identity_3IdentityQsequential_38/lstm_116/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_38/lstm_116/while/NoOp*
T0*
_output_shapes
: ?
'sequential_38/lstm_116/while/Identity_4Identity4sequential_38/lstm_116/while/lstm_cell_200/mul_2:z:0"^sequential_38/lstm_116/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_38/lstm_116/while/Identity_5Identity4sequential_38/lstm_116/while/lstm_cell_200/add_1:z:0"^sequential_38/lstm_116/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_38/lstm_116/while/NoOpNoOpB^sequential_38/lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOpA^sequential_38/lstm_116/while/lstm_cell_200/MatMul/ReadVariableOpC^sequential_38/lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_38_lstm_116_while_identity.sequential_38/lstm_116/while/Identity:output:0"[
'sequential_38_lstm_116_while_identity_10sequential_38/lstm_116/while/Identity_1:output:0"[
'sequential_38_lstm_116_while_identity_20sequential_38/lstm_116/while/Identity_2:output:0"[
'sequential_38_lstm_116_while_identity_30sequential_38/lstm_116/while/Identity_3:output:0"[
'sequential_38_lstm_116_while_identity_40sequential_38/lstm_116/while/Identity_4:output:0"[
'sequential_38_lstm_116_while_identity_50sequential_38/lstm_116/while/Identity_5:output:0"?
Jsequential_38_lstm_116_while_lstm_cell_200_biasadd_readvariableop_resourceLsequential_38_lstm_116_while_lstm_cell_200_biasadd_readvariableop_resource_0"?
Ksequential_38_lstm_116_while_lstm_cell_200_matmul_1_readvariableop_resourceMsequential_38_lstm_116_while_lstm_cell_200_matmul_1_readvariableop_resource_0"?
Isequential_38_lstm_116_while_lstm_cell_200_matmul_readvariableop_resourceKsequential_38_lstm_116_while_lstm_cell_200_matmul_readvariableop_resource_0"?
Csequential_38_lstm_116_while_sequential_38_lstm_116_strided_slice_1Esequential_38_lstm_116_while_sequential_38_lstm_116_strided_slice_1_0"?
sequential_38_lstm_116_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_116_tensorarrayunstack_tensorlistfromtensor?sequential_38_lstm_116_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_116_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_38/lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOpAsequential_38/lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOp2?
@sequential_38/lstm_116/while/lstm_cell_200/MatMul/ReadVariableOp@sequential_38/lstm_116/while/lstm_cell_200/MatMul/ReadVariableOp2?
Bsequential_38/lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOpBsequential_38/lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_38_layer_call_and_return_conditional_losses_1211525
lstm_114_input#
lstm_114_1211498:	?#
lstm_114_1211500:	d?
lstm_114_1211502:	?#
lstm_115_1211505:	d?#
lstm_115_1211507:	2?
lstm_115_1211509:	?"
lstm_116_1211512:2("
lstm_116_1211514:
(
lstm_116_1211516:("
dense_38_1211519:

dense_38_1211521:
identity?? dense_38/StatefulPartitionedCall? lstm_114/StatefulPartitionedCall? lstm_115/StatefulPartitionedCall? lstm_116/StatefulPartitionedCall?
 lstm_114/StatefulPartitionedCallStatefulPartitionedCalllstm_114_inputlstm_114_1211498lstm_114_1211500lstm_114_1211502*
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
E__inference_lstm_114_layer_call_and_return_conditional_losses_1211345?
 lstm_115/StatefulPartitionedCallStatefulPartitionedCall)lstm_114/StatefulPartitionedCall:output:0lstm_115_1211505lstm_115_1211507lstm_115_1211509*
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
E__inference_lstm_115_layer_call_and_return_conditional_losses_1211180?
 lstm_116/StatefulPartitionedCallStatefulPartitionedCall)lstm_115/StatefulPartitionedCall:output:0lstm_116_1211512lstm_116_1211514lstm_116_1211516*
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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1211015?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)lstm_116/StatefulPartitionedCall:output:0dense_38_1211519dense_38_1211521*
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
E__inference_dense_38_layer_call_and_return_conditional_losses_1210817x
IdentityIdentity)dense_38/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_38/StatefulPartitionedCall!^lstm_114/StatefulPartitionedCall!^lstm_115/StatefulPartitionedCall!^lstm_116/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 lstm_114/StatefulPartitionedCall lstm_114/StatefulPartitionedCall2D
 lstm_115/StatefulPartitionedCall lstm_115/StatefulPartitionedCall2D
 lstm_116/StatefulPartitionedCall lstm_116/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_114_input
?	
?
E__inference_dense_38_layer_call_and_return_conditional_losses_1210817

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
*__inference_lstm_114_layer_call_fn_1212512

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
E__inference_lstm_114_layer_call_and_return_conditional_losses_1211345s
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
?
E__inference_lstm_116_layer_call_and_return_conditional_losses_1210150

inputs'
lstm_cell_200_1210068:2('
lstm_cell_200_1210070:
(#
lstm_cell_200_1210072:(
identity??%lstm_cell_200/StatefulPartitionedCall?while;
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
%lstm_cell_200/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_200_1210068lstm_cell_200_1210070lstm_cell_200_1210072*
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
J__inference_lstm_cell_200_layer_call_and_return_conditional_losses_1210067n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_200_1210068lstm_cell_200_1210070lstm_cell_200_1210072*
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
while_body_1210081*
condR
while_cond_1210080*K
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
NoOpNoOp&^lstm_cell_200/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_200/StatefulPartitionedCall%lstm_cell_200/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_114_layer_call_and_return_conditional_losses_1209450

inputs(
lstm_cell_198_1209368:	?(
lstm_cell_198_1209370:	d?$
lstm_cell_198_1209372:	?
identity??%lstm_cell_198/StatefulPartitionedCall?while;
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
%lstm_cell_198/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_198_1209368lstm_cell_198_1209370lstm_cell_198_1209372*
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
J__inference_lstm_cell_198_layer_call_and_return_conditional_losses_1209367n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_198_1209368lstm_cell_198_1209370lstm_cell_198_1209372*
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
while_body_1209381*
condR
while_cond_1209380*K
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
NoOpNoOp&^lstm_cell_198/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_198/StatefulPartitionedCall%lstm_cell_198/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?8
?
while_body_1213330
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_199_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_199_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_199_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_199_matmul_readvariableop_resource:	d?G
4while_lstm_cell_199_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_199_biasadd_readvariableop_resource:	???*while/lstm_cell_199/BiasAdd/ReadVariableOp?)while/lstm_cell_199/MatMul/ReadVariableOp?+while/lstm_cell_199/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_199/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_199_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_199/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_199_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_199/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_199/addAddV2$while/lstm_cell_199/MatMul:product:0&while/lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_199_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_199/BiasAddBiasAddwhile/lstm_cell_199/add:z:02while/lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_199/splitSplit,while/lstm_cell_199/split/split_dim:output:0$while/lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_199/SigmoidSigmoid"while/lstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_199/Sigmoid_1Sigmoid"while/lstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mulMul!while/lstm_cell_199/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_199/ReluRelu"while/lstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mul_1Mulwhile/lstm_cell_199/Sigmoid:y:0&while/lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/add_1AddV2while/lstm_cell_199/mul:z:0while/lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_199/Sigmoid_2Sigmoid"while/lstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_199/Relu_1Reluwhile/lstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mul_2Mul!while/lstm_cell_199/Sigmoid_2:y:0(while/lstm_cell_199/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_199/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_199/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_199/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_199/BiasAdd/ReadVariableOp*^while/lstm_cell_199/MatMul/ReadVariableOp,^while/lstm_cell_199/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_199_biasadd_readvariableop_resource5while_lstm_cell_199_biasadd_readvariableop_resource_0"n
4while_lstm_cell_199_matmul_1_readvariableop_resource6while_lstm_cell_199_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_199_matmul_readvariableop_resource4while_lstm_cell_199_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_199/BiasAdd/ReadVariableOp*while/lstm_cell_199/BiasAdd/ReadVariableOp2V
)while/lstm_cell_199/MatMul/ReadVariableOp)while/lstm_cell_199/MatMul/ReadVariableOp2Z
+while/lstm_cell_199/MatMul_1/ReadVariableOp+while/lstm_cell_199/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_199_layer_call_and_return_conditional_losses_1214499

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
while_cond_1209571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1209571___redundant_placeholder05
1while_while_cond_1209571___redundant_placeholder15
1while_while_cond_1209571___redundant_placeholder25
1while_while_cond_1209571___redundant_placeholder3
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
*__inference_lstm_116_layer_call_fn_1213733

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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1210799o
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
?
)sequential_38_lstm_114_while_cond_1208931J
Fsequential_38_lstm_114_while_sequential_38_lstm_114_while_loop_counterP
Lsequential_38_lstm_114_while_sequential_38_lstm_114_while_maximum_iterations,
(sequential_38_lstm_114_while_placeholder.
*sequential_38_lstm_114_while_placeholder_1.
*sequential_38_lstm_114_while_placeholder_2.
*sequential_38_lstm_114_while_placeholder_3L
Hsequential_38_lstm_114_while_less_sequential_38_lstm_114_strided_slice_1c
_sequential_38_lstm_114_while_sequential_38_lstm_114_while_cond_1208931___redundant_placeholder0c
_sequential_38_lstm_114_while_sequential_38_lstm_114_while_cond_1208931___redundant_placeholder1c
_sequential_38_lstm_114_while_sequential_38_lstm_114_while_cond_1208931___redundant_placeholder2c
_sequential_38_lstm_114_while_sequential_38_lstm_114_while_cond_1208931___redundant_placeholder3)
%sequential_38_lstm_114_while_identity
?
!sequential_38/lstm_114/while/LessLess(sequential_38_lstm_114_while_placeholderHsequential_38_lstm_114_while_less_sequential_38_lstm_114_strided_slice_1*
T0*
_output_shapes
: y
%sequential_38/lstm_114/while/IdentityIdentity%sequential_38/lstm_114/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_38_lstm_114_while_identity.sequential_38/lstm_114/while/Identity:output:0*(
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
while_cond_1209380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1209380___redundant_placeholder05
1while_while_cond_1209380___redundant_placeholder15
1while_while_cond_1209380___redundant_placeholder25
1while_while_cond_1209380___redundant_placeholder3
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
while_cond_1213615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1213615___redundant_placeholder05
1while_while_cond_1213615___redundant_placeholder15
1while_while_cond_1213615___redundant_placeholder25
1while_while_cond_1213615___redundant_placeholder3
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
while_body_1210415
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_198_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_198_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_198_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_198_matmul_readvariableop_resource:	?G
4while_lstm_cell_198_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_198_biasadd_readvariableop_resource:	???*while/lstm_cell_198/BiasAdd/ReadVariableOp?)while/lstm_cell_198/MatMul/ReadVariableOp?+while/lstm_cell_198/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_198/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_198_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_198/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_198_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_198/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_198/addAddV2$while/lstm_cell_198/MatMul:product:0&while/lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_198_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_198/BiasAddBiasAddwhile/lstm_cell_198/add:z:02while/lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_198/splitSplit,while/lstm_cell_198/split/split_dim:output:0$while/lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_198/SigmoidSigmoid"while/lstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_198/Sigmoid_1Sigmoid"while/lstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mulMul!while/lstm_cell_198/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_198/ReluRelu"while/lstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mul_1Mulwhile/lstm_cell_198/Sigmoid:y:0&while/lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/add_1AddV2while/lstm_cell_198/mul:z:0while/lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_198/Sigmoid_2Sigmoid"while/lstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_198/Relu_1Reluwhile/lstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mul_2Mul!while/lstm_cell_198/Sigmoid_2:y:0(while/lstm_cell_198/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_198/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_198/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_198/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_198/BiasAdd/ReadVariableOp*^while/lstm_cell_198/MatMul/ReadVariableOp,^while/lstm_cell_198/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_198_biasadd_readvariableop_resource5while_lstm_cell_198_biasadd_readvariableop_resource_0"n
4while_lstm_cell_198_matmul_1_readvariableop_resource6while_lstm_cell_198_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_198_matmul_readvariableop_resource4while_lstm_cell_198_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_198/BiasAdd/ReadVariableOp*while/lstm_cell_198/BiasAdd/ReadVariableOp2V
)while/lstm_cell_198/MatMul/ReadVariableOp)while/lstm_cell_198/MatMul/ReadVariableOp2Z
+while/lstm_cell_198/MatMul_1/ReadVariableOp+while/lstm_cell_198/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1211015

inputs>
,lstm_cell_200_matmul_readvariableop_resource:2(@
.lstm_cell_200_matmul_1_readvariableop_resource:
(;
-lstm_cell_200_biasadd_readvariableop_resource:(
identity??$lstm_cell_200/BiasAdd/ReadVariableOp?#lstm_cell_200/MatMul/ReadVariableOp?%lstm_cell_200/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_200/MatMul/ReadVariableOpReadVariableOp,lstm_cell_200_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_200/MatMulMatMulstrided_slice_2:output:0+lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_200_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_200/MatMul_1MatMulzeros:output:0-lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_200/addAddV2lstm_cell_200/MatMul:product:0 lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_200_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_200/BiasAddBiasAddlstm_cell_200/add:z:0,lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_200/splitSplit&lstm_cell_200/split/split_dim:output:0lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_200/SigmoidSigmoidlstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_200/Sigmoid_1Sigmoidlstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_200/mulMullstm_cell_200/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_200/ReluRelulstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_200/mul_1Mullstm_cell_200/Sigmoid:y:0 lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_200/add_1AddV2lstm_cell_200/mul:z:0lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_200/Sigmoid_2Sigmoidlstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_200/Relu_1Relulstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_200/mul_2Mullstm_cell_200/Sigmoid_2:y:0"lstm_cell_200/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_200_matmul_readvariableop_resource.lstm_cell_200_matmul_1_readvariableop_resource-lstm_cell_200_biasadd_readvariableop_resource*
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
while_body_1210931*
condR
while_cond_1210930*K
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
NoOpNoOp%^lstm_cell_200/BiasAdd/ReadVariableOp$^lstm_cell_200/MatMul/ReadVariableOp&^lstm_cell_200/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_200/BiasAdd/ReadVariableOp$lstm_cell_200/BiasAdd/ReadVariableOp2J
#lstm_cell_200/MatMul/ReadVariableOp#lstm_cell_200/MatMul/ReadVariableOp2N
%lstm_cell_200/MatMul_1/ReadVariableOp%lstm_cell_200/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_1213803
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_200_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_200_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_200_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_200_matmul_readvariableop_resource:2(F
4while_lstm_cell_200_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_200_biasadd_readvariableop_resource:(??*while/lstm_cell_200/BiasAdd/ReadVariableOp?)while/lstm_cell_200/MatMul/ReadVariableOp?+while/lstm_cell_200/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_200/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_200_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_200/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_200_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_200/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_200/addAddV2$while/lstm_cell_200/MatMul:product:0&while/lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_200_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_200/BiasAddBiasAddwhile/lstm_cell_200/add:z:02while/lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_200/splitSplit,while/lstm_cell_200/split/split_dim:output:0$while/lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_200/SigmoidSigmoid"while/lstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_200/Sigmoid_1Sigmoid"while/lstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mulMul!while/lstm_cell_200/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_200/ReluRelu"while/lstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mul_1Mulwhile/lstm_cell_200/Sigmoid:y:0&while/lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/add_1AddV2while/lstm_cell_200/mul:z:0while/lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_200/Sigmoid_2Sigmoid"while/lstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_200/Relu_1Reluwhile/lstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mul_2Mul!while/lstm_cell_200/Sigmoid_2:y:0(while/lstm_cell_200/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_200/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_200/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_200/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_200/BiasAdd/ReadVariableOp*^while/lstm_cell_200/MatMul/ReadVariableOp,^while/lstm_cell_200/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_200_biasadd_readvariableop_resource5while_lstm_cell_200_biasadd_readvariableop_resource_0"n
4while_lstm_cell_200_matmul_1_readvariableop_resource6while_lstm_cell_200_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_200_matmul_readvariableop_resource4while_lstm_cell_200_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_200/BiasAdd/ReadVariableOp*while/lstm_cell_200/BiasAdd/ReadVariableOp2V
)while/lstm_cell_200/MatMul/ReadVariableOp)while/lstm_cell_200/MatMul/ReadVariableOp2Z
+while/lstm_cell_200/MatMul_1/ReadVariableOp+while/lstm_cell_200/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_114_layer_call_and_return_conditional_losses_1212655
inputs_0?
,lstm_cell_198_matmul_readvariableop_resource:	?A
.lstm_cell_198_matmul_1_readvariableop_resource:	d?<
-lstm_cell_198_biasadd_readvariableop_resource:	?
identity??$lstm_cell_198/BiasAdd/ReadVariableOp?#lstm_cell_198/MatMul/ReadVariableOp?%lstm_cell_198/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_198/MatMul/ReadVariableOpReadVariableOp,lstm_cell_198_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_198/MatMulMatMulstrided_slice_2:output:0+lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_198_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_198/MatMul_1MatMulzeros:output:0-lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_198/addAddV2lstm_cell_198/MatMul:product:0 lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_198_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_198/BiasAddBiasAddlstm_cell_198/add:z:0,lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_198/splitSplit&lstm_cell_198/split/split_dim:output:0lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_198/SigmoidSigmoidlstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_198/Sigmoid_1Sigmoidlstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_198/mulMullstm_cell_198/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_198/ReluRelulstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_198/mul_1Mullstm_cell_198/Sigmoid:y:0 lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_198/add_1AddV2lstm_cell_198/mul:z:0lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_198/Sigmoid_2Sigmoidlstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_198/Relu_1Relulstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_198/mul_2Mullstm_cell_198/Sigmoid_2:y:0"lstm_cell_198/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_198_matmul_readvariableop_resource.lstm_cell_198_matmul_1_readvariableop_resource-lstm_cell_198_biasadd_readvariableop_resource*
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
while_body_1212571*
condR
while_cond_1212570*K
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
NoOpNoOp%^lstm_cell_198/BiasAdd/ReadVariableOp$^lstm_cell_198/MatMul/ReadVariableOp&^lstm_cell_198/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_198/BiasAdd/ReadVariableOp$lstm_cell_198/BiasAdd/ReadVariableOp2J
#lstm_cell_198/MatMul/ReadVariableOp#lstm_cell_198/MatMul/ReadVariableOp2N
%lstm_cell_198/MatMul_1/ReadVariableOp%lstm_cell_198/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?

lstm_114_while_body_1211673.
*lstm_114_while_lstm_114_while_loop_counter4
0lstm_114_while_lstm_114_while_maximum_iterations
lstm_114_while_placeholder 
lstm_114_while_placeholder_1 
lstm_114_while_placeholder_2 
lstm_114_while_placeholder_3-
)lstm_114_while_lstm_114_strided_slice_1_0i
elstm_114_while_tensorarrayv2read_tensorlistgetitem_lstm_114_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_114_while_lstm_cell_198_matmul_readvariableop_resource_0:	?R
?lstm_114_while_lstm_cell_198_matmul_1_readvariableop_resource_0:	d?M
>lstm_114_while_lstm_cell_198_biasadd_readvariableop_resource_0:	?
lstm_114_while_identity
lstm_114_while_identity_1
lstm_114_while_identity_2
lstm_114_while_identity_3
lstm_114_while_identity_4
lstm_114_while_identity_5+
'lstm_114_while_lstm_114_strided_slice_1g
clstm_114_while_tensorarrayv2read_tensorlistgetitem_lstm_114_tensorarrayunstack_tensorlistfromtensorN
;lstm_114_while_lstm_cell_198_matmul_readvariableop_resource:	?P
=lstm_114_while_lstm_cell_198_matmul_1_readvariableop_resource:	d?K
<lstm_114_while_lstm_cell_198_biasadd_readvariableop_resource:	???3lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOp?2lstm_114/while/lstm_cell_198/MatMul/ReadVariableOp?4lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOp?
@lstm_114/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_114/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_114_while_tensorarrayv2read_tensorlistgetitem_lstm_114_tensorarrayunstack_tensorlistfromtensor_0lstm_114_while_placeholderIlstm_114/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_114/while/lstm_cell_198/MatMul/ReadVariableOpReadVariableOp=lstm_114_while_lstm_cell_198_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_114/while/lstm_cell_198/MatMulMatMul9lstm_114/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_114/while/lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOp?lstm_114_while_lstm_cell_198_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_114/while/lstm_cell_198/MatMul_1MatMullstm_114_while_placeholder_2<lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_114/while/lstm_cell_198/addAddV2-lstm_114/while/lstm_cell_198/MatMul:product:0/lstm_114/while/lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOp>lstm_114_while_lstm_cell_198_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_114/while/lstm_cell_198/BiasAddBiasAdd$lstm_114/while/lstm_cell_198/add:z:0;lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_114/while/lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_114/while/lstm_cell_198/splitSplit5lstm_114/while/lstm_cell_198/split/split_dim:output:0-lstm_114/while/lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_114/while/lstm_cell_198/SigmoidSigmoid+lstm_114/while/lstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_114/while/lstm_cell_198/Sigmoid_1Sigmoid+lstm_114/while/lstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_114/while/lstm_cell_198/mulMul*lstm_114/while/lstm_cell_198/Sigmoid_1:y:0lstm_114_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_114/while/lstm_cell_198/ReluRelu+lstm_114/while/lstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_114/while/lstm_cell_198/mul_1Mul(lstm_114/while/lstm_cell_198/Sigmoid:y:0/lstm_114/while/lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_114/while/lstm_cell_198/add_1AddV2$lstm_114/while/lstm_cell_198/mul:z:0&lstm_114/while/lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_114/while/lstm_cell_198/Sigmoid_2Sigmoid+lstm_114/while/lstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_114/while/lstm_cell_198/Relu_1Relu&lstm_114/while/lstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_114/while/lstm_cell_198/mul_2Mul*lstm_114/while/lstm_cell_198/Sigmoid_2:y:01lstm_114/while/lstm_cell_198/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_114/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_114_while_placeholder_1lstm_114_while_placeholder&lstm_114/while/lstm_cell_198/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_114/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_114/while/addAddV2lstm_114_while_placeholderlstm_114/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_114/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_114/while/add_1AddV2*lstm_114_while_lstm_114_while_loop_counterlstm_114/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_114/while/IdentityIdentitylstm_114/while/add_1:z:0^lstm_114/while/NoOp*
T0*
_output_shapes
: ?
lstm_114/while/Identity_1Identity0lstm_114_while_lstm_114_while_maximum_iterations^lstm_114/while/NoOp*
T0*
_output_shapes
: t
lstm_114/while/Identity_2Identitylstm_114/while/add:z:0^lstm_114/while/NoOp*
T0*
_output_shapes
: ?
lstm_114/while/Identity_3IdentityClstm_114/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_114/while/NoOp*
T0*
_output_shapes
: ?
lstm_114/while/Identity_4Identity&lstm_114/while/lstm_cell_198/mul_2:z:0^lstm_114/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_114/while/Identity_5Identity&lstm_114/while/lstm_cell_198/add_1:z:0^lstm_114/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_114/while/NoOpNoOp4^lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOp3^lstm_114/while/lstm_cell_198/MatMul/ReadVariableOp5^lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_114_while_identity lstm_114/while/Identity:output:0"?
lstm_114_while_identity_1"lstm_114/while/Identity_1:output:0"?
lstm_114_while_identity_2"lstm_114/while/Identity_2:output:0"?
lstm_114_while_identity_3"lstm_114/while/Identity_3:output:0"?
lstm_114_while_identity_4"lstm_114/while/Identity_4:output:0"?
lstm_114_while_identity_5"lstm_114/while/Identity_5:output:0"T
'lstm_114_while_lstm_114_strided_slice_1)lstm_114_while_lstm_114_strided_slice_1_0"~
<lstm_114_while_lstm_cell_198_biasadd_readvariableop_resource>lstm_114_while_lstm_cell_198_biasadd_readvariableop_resource_0"?
=lstm_114_while_lstm_cell_198_matmul_1_readvariableop_resource?lstm_114_while_lstm_cell_198_matmul_1_readvariableop_resource_0"|
;lstm_114_while_lstm_cell_198_matmul_readvariableop_resource=lstm_114_while_lstm_cell_198_matmul_readvariableop_resource_0"?
clstm_114_while_tensorarrayv2read_tensorlistgetitem_lstm_114_tensorarrayunstack_tensorlistfromtensorelstm_114_while_tensorarrayv2read_tensorlistgetitem_lstm_114_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOp3lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOp2h
2lstm_114/while/lstm_cell_198/MatMul/ReadVariableOp2lstm_114/while/lstm_cell_198/MatMul/ReadVariableOp2l
4lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOp4lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_114_while_cond_1212099.
*lstm_114_while_lstm_114_while_loop_counter4
0lstm_114_while_lstm_114_while_maximum_iterations
lstm_114_while_placeholder 
lstm_114_while_placeholder_1 
lstm_114_while_placeholder_2 
lstm_114_while_placeholder_30
,lstm_114_while_less_lstm_114_strided_slice_1G
Clstm_114_while_lstm_114_while_cond_1212099___redundant_placeholder0G
Clstm_114_while_lstm_114_while_cond_1212099___redundant_placeholder1G
Clstm_114_while_lstm_114_while_cond_1212099___redundant_placeholder2G
Clstm_114_while_lstm_114_while_cond_1212099___redundant_placeholder3
lstm_114_while_identity
?
lstm_114/while/LessLesslstm_114_while_placeholder,lstm_114_while_less_lstm_114_strided_slice_1*
T0*
_output_shapes
: ]
lstm_114/while/IdentityIdentitylstm_114/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_114_while_identity lstm_114/while/Identity:output:0*(
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
while_cond_1210271
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1210271___redundant_placeholder05
1while_while_cond_1210271___redundant_placeholder15
1while_while_cond_1210271___redundant_placeholder25
1while_while_cond_1210271___redundant_placeholder3
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
J__inference_lstm_cell_200_layer_call_and_return_conditional_losses_1214597

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
while_cond_1210080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1210080___redundant_placeholder05
1while_while_cond_1210080___redundant_placeholder15
1while_while_cond_1210080___redundant_placeholder25
1while_while_cond_1210080___redundant_placeholder3
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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1210341

inputs'
lstm_cell_200_1210259:2('
lstm_cell_200_1210261:
(#
lstm_cell_200_1210263:(
identity??%lstm_cell_200/StatefulPartitionedCall?while;
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
%lstm_cell_200/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_200_1210259lstm_cell_200_1210261lstm_cell_200_1210263*
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
J__inference_lstm_cell_200_layer_call_and_return_conditional_losses_1210213n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_200_1210259lstm_cell_200_1210261lstm_cell_200_1210263*
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
while_body_1210272*
condR
while_cond_1210271*K
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
NoOpNoOp&^lstm_cell_200/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_200/StatefulPartitionedCall%lstm_cell_200/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_1211560
lstm_114_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_114_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1209300o
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
_user_specified_namelstm_114_input
?8
?
while_body_1211261
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_198_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_198_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_198_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_198_matmul_readvariableop_resource:	?G
4while_lstm_cell_198_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_198_biasadd_readvariableop_resource:	???*while/lstm_cell_198/BiasAdd/ReadVariableOp?)while/lstm_cell_198/MatMul/ReadVariableOp?+while/lstm_cell_198/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_198/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_198_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_198/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_198_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_198/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_198/addAddV2$while/lstm_cell_198/MatMul:product:0&while/lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_198_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_198/BiasAddBiasAddwhile/lstm_cell_198/add:z:02while/lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_198/splitSplit,while/lstm_cell_198/split/split_dim:output:0$while/lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_198/SigmoidSigmoid"while/lstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_198/Sigmoid_1Sigmoid"while/lstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mulMul!while/lstm_cell_198/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_198/ReluRelu"while/lstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mul_1Mulwhile/lstm_cell_198/Sigmoid:y:0&while/lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/add_1AddV2while/lstm_cell_198/mul:z:0while/lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_198/Sigmoid_2Sigmoid"while/lstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_198/Relu_1Reluwhile/lstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mul_2Mul!while/lstm_cell_198/Sigmoid_2:y:0(while/lstm_cell_198/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_198/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_198/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_198/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_198/BiasAdd/ReadVariableOp*^while/lstm_cell_198/MatMul/ReadVariableOp,^while/lstm_cell_198/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_198_biasadd_readvariableop_resource5while_lstm_cell_198_biasadd_readvariableop_resource_0"n
4while_lstm_cell_198_matmul_1_readvariableop_resource6while_lstm_cell_198_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_198_matmul_readvariableop_resource4while_lstm_cell_198_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_198/BiasAdd/ReadVariableOp*while/lstm_cell_198/BiasAdd/ReadVariableOp2V
)while/lstm_cell_198/MatMul/ReadVariableOp)while/lstm_cell_198/MatMul/ReadVariableOp2Z
+while/lstm_cell_198/MatMul_1/ReadVariableOp+while/lstm_cell_198/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_116_layer_call_fn_1213711
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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1210150o
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
*__inference_lstm_115_layer_call_fn_1213106
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
E__inference_lstm_115_layer_call_and_return_conditional_losses_1209991|
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
while_body_1209922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_199_1209946_0:	d?0
while_lstm_cell_199_1209948_0:	2?,
while_lstm_cell_199_1209950_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_199_1209946:	d?.
while_lstm_cell_199_1209948:	2?*
while_lstm_cell_199_1209950:	???+while/lstm_cell_199/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_199/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_199_1209946_0while_lstm_cell_199_1209948_0while_lstm_cell_199_1209950_0*
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
J__inference_lstm_cell_199_layer_call_and_return_conditional_losses_1209863?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_199/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_199/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_199/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_199/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_199_1209946while_lstm_cell_199_1209946_0"<
while_lstm_cell_199_1209948while_lstm_cell_199_1209948_0"<
while_lstm_cell_199_1209950while_lstm_cell_199_1209950_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_199/StatefulPartitionedCall+while/lstm_cell_199/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_200_layer_call_fn_1214565

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
J__inference_lstm_cell_200_layer_call_and_return_conditional_losses_1210213o
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
?J
?
E__inference_lstm_115_layer_call_and_return_conditional_losses_1210649

inputs?
,lstm_cell_199_matmul_readvariableop_resource:	d?A
.lstm_cell_199_matmul_1_readvariableop_resource:	2?<
-lstm_cell_199_biasadd_readvariableop_resource:	?
identity??$lstm_cell_199/BiasAdd/ReadVariableOp?#lstm_cell_199/MatMul/ReadVariableOp?%lstm_cell_199/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_199/MatMul/ReadVariableOpReadVariableOp,lstm_cell_199_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_199/MatMulMatMulstrided_slice_2:output:0+lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_199_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_199/MatMul_1MatMulzeros:output:0-lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_199/addAddV2lstm_cell_199/MatMul:product:0 lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_199_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_199/BiasAddBiasAddlstm_cell_199/add:z:0,lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_199/splitSplit&lstm_cell_199/split/split_dim:output:0lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_199/SigmoidSigmoidlstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_199/Sigmoid_1Sigmoidlstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_199/mulMullstm_cell_199/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_199/ReluRelulstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_199/mul_1Mullstm_cell_199/Sigmoid:y:0 lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_199/add_1AddV2lstm_cell_199/mul:z:0lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_199/Sigmoid_2Sigmoidlstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_199/Relu_1Relulstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_199/mul_2Mullstm_cell_199/Sigmoid_2:y:0"lstm_cell_199/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_199_matmul_readvariableop_resource.lstm_cell_199_matmul_1_readvariableop_resource-lstm_cell_199_biasadd_readvariableop_resource*
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
while_body_1210565*
condR
while_cond_1210564*K
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
NoOpNoOp%^lstm_cell_199/BiasAdd/ReadVariableOp$^lstm_cell_199/MatMul/ReadVariableOp&^lstm_cell_199/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_199/BiasAdd/ReadVariableOp$lstm_cell_199/BiasAdd/ReadVariableOp2J
#lstm_cell_199/MatMul/ReadVariableOp#lstm_cell_199/MatMul/ReadVariableOp2N
%lstm_cell_199/MatMul_1/ReadVariableOp%lstm_cell_199/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_200_layer_call_and_return_conditional_losses_1214629

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
E__inference_lstm_114_layer_call_and_return_conditional_losses_1212941

inputs?
,lstm_cell_198_matmul_readvariableop_resource:	?A
.lstm_cell_198_matmul_1_readvariableop_resource:	d?<
-lstm_cell_198_biasadd_readvariableop_resource:	?
identity??$lstm_cell_198/BiasAdd/ReadVariableOp?#lstm_cell_198/MatMul/ReadVariableOp?%lstm_cell_198/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_198/MatMul/ReadVariableOpReadVariableOp,lstm_cell_198_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_198/MatMulMatMulstrided_slice_2:output:0+lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_198_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_198/MatMul_1MatMulzeros:output:0-lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_198/addAddV2lstm_cell_198/MatMul:product:0 lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_198_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_198/BiasAddBiasAddlstm_cell_198/add:z:0,lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_198/splitSplit&lstm_cell_198/split/split_dim:output:0lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_198/SigmoidSigmoidlstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_198/Sigmoid_1Sigmoidlstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_198/mulMullstm_cell_198/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_198/ReluRelulstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_198/mul_1Mullstm_cell_198/Sigmoid:y:0 lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_198/add_1AddV2lstm_cell_198/mul:z:0lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_198/Sigmoid_2Sigmoidlstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_198/Relu_1Relulstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_198/mul_2Mullstm_cell_198/Sigmoid_2:y:0"lstm_cell_198/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_198_matmul_readvariableop_resource.lstm_cell_198_matmul_1_readvariableop_resource-lstm_cell_198_biasadd_readvariableop_resource*
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
while_body_1212857*
condR
while_cond_1212856*K
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
NoOpNoOp%^lstm_cell_198/BiasAdd/ReadVariableOp$^lstm_cell_198/MatMul/ReadVariableOp&^lstm_cell_198/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_198/BiasAdd/ReadVariableOp$lstm_cell_198/BiasAdd/ReadVariableOp2J
#lstm_cell_198/MatMul/ReadVariableOp#lstm_cell_198/MatMul/ReadVariableOp2N
%lstm_cell_198/MatMul_1/ReadVariableOp%lstm_cell_198/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_115_layer_call_and_return_conditional_losses_1211180

inputs?
,lstm_cell_199_matmul_readvariableop_resource:	d?A
.lstm_cell_199_matmul_1_readvariableop_resource:	2?<
-lstm_cell_199_biasadd_readvariableop_resource:	?
identity??$lstm_cell_199/BiasAdd/ReadVariableOp?#lstm_cell_199/MatMul/ReadVariableOp?%lstm_cell_199/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_199/MatMul/ReadVariableOpReadVariableOp,lstm_cell_199_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_199/MatMulMatMulstrided_slice_2:output:0+lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_199_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_199/MatMul_1MatMulzeros:output:0-lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_199/addAddV2lstm_cell_199/MatMul:product:0 lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_199_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_199/BiasAddBiasAddlstm_cell_199/add:z:0,lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_199/splitSplit&lstm_cell_199/split/split_dim:output:0lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_199/SigmoidSigmoidlstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_199/Sigmoid_1Sigmoidlstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_199/mulMullstm_cell_199/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_199/ReluRelulstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_199/mul_1Mullstm_cell_199/Sigmoid:y:0 lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_199/add_1AddV2lstm_cell_199/mul:z:0lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_199/Sigmoid_2Sigmoidlstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_199/Relu_1Relulstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_199/mul_2Mullstm_cell_199/Sigmoid_2:y:0"lstm_cell_199/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_199_matmul_readvariableop_resource.lstm_cell_199_matmul_1_readvariableop_resource-lstm_cell_199_biasadd_readvariableop_resource*
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
while_body_1211096*
condR
while_cond_1211095*K
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
NoOpNoOp%^lstm_cell_199/BiasAdd/ReadVariableOp$^lstm_cell_199/MatMul/ReadVariableOp&^lstm_cell_199/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_199/BiasAdd/ReadVariableOp$lstm_cell_199/BiasAdd/ReadVariableOp2J
#lstm_cell_199/MatMul/ReadVariableOp#lstm_cell_199/MatMul/ReadVariableOp2N
%lstm_cell_199/MatMul_1/ReadVariableOp%lstm_cell_199/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_1210931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_200_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_200_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_200_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_200_matmul_readvariableop_resource:2(F
4while_lstm_cell_200_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_200_biasadd_readvariableop_resource:(??*while/lstm_cell_200/BiasAdd/ReadVariableOp?)while/lstm_cell_200/MatMul/ReadVariableOp?+while/lstm_cell_200/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_200/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_200_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_200/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_200_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_200/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_200/addAddV2$while/lstm_cell_200/MatMul:product:0&while/lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_200_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_200/BiasAddBiasAddwhile/lstm_cell_200/add:z:02while/lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_200/splitSplit,while/lstm_cell_200/split/split_dim:output:0$while/lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_200/SigmoidSigmoid"while/lstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_200/Sigmoid_1Sigmoid"while/lstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mulMul!while/lstm_cell_200/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_200/ReluRelu"while/lstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mul_1Mulwhile/lstm_cell_200/Sigmoid:y:0&while/lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/add_1AddV2while/lstm_cell_200/mul:z:0while/lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_200/Sigmoid_2Sigmoid"while/lstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_200/Relu_1Reluwhile/lstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mul_2Mul!while/lstm_cell_200/Sigmoid_2:y:0(while/lstm_cell_200/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_200/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_200/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_200/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_200/BiasAdd/ReadVariableOp*^while/lstm_cell_200/MatMul/ReadVariableOp,^while/lstm_cell_200/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_200_biasadd_readvariableop_resource5while_lstm_cell_200_biasadd_readvariableop_resource_0"n
4while_lstm_cell_200_matmul_1_readvariableop_resource6while_lstm_cell_200_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_200_matmul_readvariableop_resource4while_lstm_cell_200_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_200/BiasAdd/ReadVariableOp*while/lstm_cell_200/BiasAdd/ReadVariableOp2V
)while/lstm_cell_200/MatMul/ReadVariableOp)while/lstm_cell_200/MatMul/ReadVariableOp2Z
+while/lstm_cell_200/MatMul_1/ReadVariableOp+while/lstm_cell_200/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_115_layer_call_and_return_conditional_losses_1213271
inputs_0?
,lstm_cell_199_matmul_readvariableop_resource:	d?A
.lstm_cell_199_matmul_1_readvariableop_resource:	2?<
-lstm_cell_199_biasadd_readvariableop_resource:	?
identity??$lstm_cell_199/BiasAdd/ReadVariableOp?#lstm_cell_199/MatMul/ReadVariableOp?%lstm_cell_199/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_199/MatMul/ReadVariableOpReadVariableOp,lstm_cell_199_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_199/MatMulMatMulstrided_slice_2:output:0+lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_199_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_199/MatMul_1MatMulzeros:output:0-lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_199/addAddV2lstm_cell_199/MatMul:product:0 lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_199_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_199/BiasAddBiasAddlstm_cell_199/add:z:0,lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_199/splitSplit&lstm_cell_199/split/split_dim:output:0lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_199/SigmoidSigmoidlstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_199/Sigmoid_1Sigmoidlstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_199/mulMullstm_cell_199/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_199/ReluRelulstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_199/mul_1Mullstm_cell_199/Sigmoid:y:0 lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_199/add_1AddV2lstm_cell_199/mul:z:0lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_199/Sigmoid_2Sigmoidlstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_199/Relu_1Relulstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_199/mul_2Mullstm_cell_199/Sigmoid_2:y:0"lstm_cell_199/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_199_matmul_readvariableop_resource.lstm_cell_199_matmul_1_readvariableop_resource-lstm_cell_199_biasadd_readvariableop_resource*
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
while_body_1213187*
condR
while_cond_1213186*K
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
NoOpNoOp%^lstm_cell_199/BiasAdd/ReadVariableOp$^lstm_cell_199/MatMul/ReadVariableOp&^lstm_cell_199/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_199/BiasAdd/ReadVariableOp$lstm_cell_199/BiasAdd/ReadVariableOp2J
#lstm_cell_199/MatMul/ReadVariableOp#lstm_cell_199/MatMul/ReadVariableOp2N
%lstm_cell_199/MatMul_1/ReadVariableOp%lstm_cell_199/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?#
?
while_body_1210081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_200_1210105_0:2(/
while_lstm_cell_200_1210107_0:
(+
while_lstm_cell_200_1210109_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_200_1210105:2(-
while_lstm_cell_200_1210107:
()
while_lstm_cell_200_1210109:(??+while/lstm_cell_200/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_200/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_200_1210105_0while_lstm_cell_200_1210107_0while_lstm_cell_200_1210109_0*
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
J__inference_lstm_cell_200_layer_call_and_return_conditional_losses_1210067?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_200/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_200/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_200/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_200/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_200_1210105while_lstm_cell_200_1210105_0"<
while_lstm_cell_200_1210107while_lstm_cell_200_1210107_0"<
while_lstm_cell_200_1210109while_lstm_cell_200_1210109_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_200/StatefulPartitionedCall+while/lstm_cell_200/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_115_layer_call_and_return_conditional_losses_1209800

inputs(
lstm_cell_199_1209718:	d?(
lstm_cell_199_1209720:	2?$
lstm_cell_199_1209722:	?
identity??%lstm_cell_199/StatefulPartitionedCall?while;
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
%lstm_cell_199/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_199_1209718lstm_cell_199_1209720lstm_cell_199_1209722*
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
J__inference_lstm_cell_199_layer_call_and_return_conditional_losses_1209717n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_199_1209718lstm_cell_199_1209720lstm_cell_199_1209722*
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
while_body_1209731*
condR
while_cond_1209730*K
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
NoOpNoOp&^lstm_cell_199/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_199/StatefulPartitionedCall%lstm_cell_199/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
??
?
J__inference_sequential_38_layer_call_and_return_conditional_losses_1212468

inputsH
5lstm_114_lstm_cell_198_matmul_readvariableop_resource:	?J
7lstm_114_lstm_cell_198_matmul_1_readvariableop_resource:	d?E
6lstm_114_lstm_cell_198_biasadd_readvariableop_resource:	?H
5lstm_115_lstm_cell_199_matmul_readvariableop_resource:	d?J
7lstm_115_lstm_cell_199_matmul_1_readvariableop_resource:	2?E
6lstm_115_lstm_cell_199_biasadd_readvariableop_resource:	?G
5lstm_116_lstm_cell_200_matmul_readvariableop_resource:2(I
7lstm_116_lstm_cell_200_matmul_1_readvariableop_resource:
(D
6lstm_116_lstm_cell_200_biasadd_readvariableop_resource:(9
'dense_38_matmul_readvariableop_resource:
6
(dense_38_biasadd_readvariableop_resource:
identity??dense_38/BiasAdd/ReadVariableOp?dense_38/MatMul/ReadVariableOp?-lstm_114/lstm_cell_198/BiasAdd/ReadVariableOp?,lstm_114/lstm_cell_198/MatMul/ReadVariableOp?.lstm_114/lstm_cell_198/MatMul_1/ReadVariableOp?lstm_114/while?-lstm_115/lstm_cell_199/BiasAdd/ReadVariableOp?,lstm_115/lstm_cell_199/MatMul/ReadVariableOp?.lstm_115/lstm_cell_199/MatMul_1/ReadVariableOp?lstm_115/while?-lstm_116/lstm_cell_200/BiasAdd/ReadVariableOp?,lstm_116/lstm_cell_200/MatMul/ReadVariableOp?.lstm_116/lstm_cell_200/MatMul_1/ReadVariableOp?lstm_116/whileD
lstm_114/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_114/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_114/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_114/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_114/strided_sliceStridedSlicelstm_114/Shape:output:0%lstm_114/strided_slice/stack:output:0'lstm_114/strided_slice/stack_1:output:0'lstm_114/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_114/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_114/zeros/packedPacklstm_114/strided_slice:output:0 lstm_114/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_114/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_114/zerosFilllstm_114/zeros/packed:output:0lstm_114/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_114/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_114/zeros_1/packedPacklstm_114/strided_slice:output:0"lstm_114/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_114/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_114/zeros_1Fill lstm_114/zeros_1/packed:output:0lstm_114/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_114/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_114/transpose	Transposeinputs lstm_114/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_114/Shape_1Shapelstm_114/transpose:y:0*
T0*
_output_shapes
:h
lstm_114/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_114/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_114/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_114/strided_slice_1StridedSlicelstm_114/Shape_1:output:0'lstm_114/strided_slice_1/stack:output:0)lstm_114/strided_slice_1/stack_1:output:0)lstm_114/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_114/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_114/TensorArrayV2TensorListReserve-lstm_114/TensorArrayV2/element_shape:output:0!lstm_114/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_114/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_114/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_114/transpose:y:0Glstm_114/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_114/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_114/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_114/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_114/strided_slice_2StridedSlicelstm_114/transpose:y:0'lstm_114/strided_slice_2/stack:output:0)lstm_114/strided_slice_2/stack_1:output:0)lstm_114/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_114/lstm_cell_198/MatMul/ReadVariableOpReadVariableOp5lstm_114_lstm_cell_198_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_114/lstm_cell_198/MatMulMatMul!lstm_114/strided_slice_2:output:04lstm_114/lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_114/lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOp7lstm_114_lstm_cell_198_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_114/lstm_cell_198/MatMul_1MatMullstm_114/zeros:output:06lstm_114/lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_114/lstm_cell_198/addAddV2'lstm_114/lstm_cell_198/MatMul:product:0)lstm_114/lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_114/lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOp6lstm_114_lstm_cell_198_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_114/lstm_cell_198/BiasAddBiasAddlstm_114/lstm_cell_198/add:z:05lstm_114/lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_114/lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_114/lstm_cell_198/splitSplit/lstm_114/lstm_cell_198/split/split_dim:output:0'lstm_114/lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_114/lstm_cell_198/SigmoidSigmoid%lstm_114/lstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_114/lstm_cell_198/Sigmoid_1Sigmoid%lstm_114/lstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_114/lstm_cell_198/mulMul$lstm_114/lstm_cell_198/Sigmoid_1:y:0lstm_114/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_114/lstm_cell_198/ReluRelu%lstm_114/lstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_114/lstm_cell_198/mul_1Mul"lstm_114/lstm_cell_198/Sigmoid:y:0)lstm_114/lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_114/lstm_cell_198/add_1AddV2lstm_114/lstm_cell_198/mul:z:0 lstm_114/lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_114/lstm_cell_198/Sigmoid_2Sigmoid%lstm_114/lstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_114/lstm_cell_198/Relu_1Relu lstm_114/lstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_114/lstm_cell_198/mul_2Mul$lstm_114/lstm_cell_198/Sigmoid_2:y:0+lstm_114/lstm_cell_198/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_114/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_114/TensorArrayV2_1TensorListReserve/lstm_114/TensorArrayV2_1/element_shape:output:0!lstm_114/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_114/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_114/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_114/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_114/whileWhile$lstm_114/while/loop_counter:output:0*lstm_114/while/maximum_iterations:output:0lstm_114/time:output:0!lstm_114/TensorArrayV2_1:handle:0lstm_114/zeros:output:0lstm_114/zeros_1:output:0!lstm_114/strided_slice_1:output:0@lstm_114/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_114_lstm_cell_198_matmul_readvariableop_resource7lstm_114_lstm_cell_198_matmul_1_readvariableop_resource6lstm_114_lstm_cell_198_biasadd_readvariableop_resource*
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
lstm_114_while_body_1212100*'
condR
lstm_114_while_cond_1212099*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_114/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_114/TensorArrayV2Stack/TensorListStackTensorListStacklstm_114/while:output:3Blstm_114/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_114/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_114/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_114/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_114/strided_slice_3StridedSlice4lstm_114/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_114/strided_slice_3/stack:output:0)lstm_114/strided_slice_3/stack_1:output:0)lstm_114/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_114/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_114/transpose_1	Transpose4lstm_114/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_114/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_114/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_115/ShapeShapelstm_114/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_115/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_115/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_115/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_115/strided_sliceStridedSlicelstm_115/Shape:output:0%lstm_115/strided_slice/stack:output:0'lstm_115/strided_slice/stack_1:output:0'lstm_115/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_115/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_115/zeros/packedPacklstm_115/strided_slice:output:0 lstm_115/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_115/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_115/zerosFilllstm_115/zeros/packed:output:0lstm_115/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_115/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_115/zeros_1/packedPacklstm_115/strided_slice:output:0"lstm_115/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_115/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_115/zeros_1Fill lstm_115/zeros_1/packed:output:0lstm_115/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_115/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_115/transpose	Transposelstm_114/transpose_1:y:0 lstm_115/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_115/Shape_1Shapelstm_115/transpose:y:0*
T0*
_output_shapes
:h
lstm_115/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_115/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_115/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_115/strided_slice_1StridedSlicelstm_115/Shape_1:output:0'lstm_115/strided_slice_1/stack:output:0)lstm_115/strided_slice_1/stack_1:output:0)lstm_115/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_115/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_115/TensorArrayV2TensorListReserve-lstm_115/TensorArrayV2/element_shape:output:0!lstm_115/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_115/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_115/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_115/transpose:y:0Glstm_115/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_115/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_115/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_115/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_115/strided_slice_2StridedSlicelstm_115/transpose:y:0'lstm_115/strided_slice_2/stack:output:0)lstm_115/strided_slice_2/stack_1:output:0)lstm_115/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_115/lstm_cell_199/MatMul/ReadVariableOpReadVariableOp5lstm_115_lstm_cell_199_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_115/lstm_cell_199/MatMulMatMul!lstm_115/strided_slice_2:output:04lstm_115/lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_115/lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOp7lstm_115_lstm_cell_199_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_115/lstm_cell_199/MatMul_1MatMullstm_115/zeros:output:06lstm_115/lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_115/lstm_cell_199/addAddV2'lstm_115/lstm_cell_199/MatMul:product:0)lstm_115/lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_115/lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOp6lstm_115_lstm_cell_199_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_115/lstm_cell_199/BiasAddBiasAddlstm_115/lstm_cell_199/add:z:05lstm_115/lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_115/lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_115/lstm_cell_199/splitSplit/lstm_115/lstm_cell_199/split/split_dim:output:0'lstm_115/lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_115/lstm_cell_199/SigmoidSigmoid%lstm_115/lstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_115/lstm_cell_199/Sigmoid_1Sigmoid%lstm_115/lstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_115/lstm_cell_199/mulMul$lstm_115/lstm_cell_199/Sigmoid_1:y:0lstm_115/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_115/lstm_cell_199/ReluRelu%lstm_115/lstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_115/lstm_cell_199/mul_1Mul"lstm_115/lstm_cell_199/Sigmoid:y:0)lstm_115/lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_115/lstm_cell_199/add_1AddV2lstm_115/lstm_cell_199/mul:z:0 lstm_115/lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_115/lstm_cell_199/Sigmoid_2Sigmoid%lstm_115/lstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_115/lstm_cell_199/Relu_1Relu lstm_115/lstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_115/lstm_cell_199/mul_2Mul$lstm_115/lstm_cell_199/Sigmoid_2:y:0+lstm_115/lstm_cell_199/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_115/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_115/TensorArrayV2_1TensorListReserve/lstm_115/TensorArrayV2_1/element_shape:output:0!lstm_115/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_115/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_115/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_115/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_115/whileWhile$lstm_115/while/loop_counter:output:0*lstm_115/while/maximum_iterations:output:0lstm_115/time:output:0!lstm_115/TensorArrayV2_1:handle:0lstm_115/zeros:output:0lstm_115/zeros_1:output:0!lstm_115/strided_slice_1:output:0@lstm_115/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_115_lstm_cell_199_matmul_readvariableop_resource7lstm_115_lstm_cell_199_matmul_1_readvariableop_resource6lstm_115_lstm_cell_199_biasadd_readvariableop_resource*
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
lstm_115_while_body_1212239*'
condR
lstm_115_while_cond_1212238*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_115/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_115/TensorArrayV2Stack/TensorListStackTensorListStacklstm_115/while:output:3Blstm_115/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_115/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_115/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_115/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_115/strided_slice_3StridedSlice4lstm_115/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_115/strided_slice_3/stack:output:0)lstm_115/strided_slice_3/stack_1:output:0)lstm_115/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_115/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_115/transpose_1	Transpose4lstm_115/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_115/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_115/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_116/ShapeShapelstm_115/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_116/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_116/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_116/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_116/strided_sliceStridedSlicelstm_116/Shape:output:0%lstm_116/strided_slice/stack:output:0'lstm_116/strided_slice/stack_1:output:0'lstm_116/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_116/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_116/zeros/packedPacklstm_116/strided_slice:output:0 lstm_116/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_116/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_116/zerosFilllstm_116/zeros/packed:output:0lstm_116/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_116/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_116/zeros_1/packedPacklstm_116/strided_slice:output:0"lstm_116/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_116/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_116/zeros_1Fill lstm_116/zeros_1/packed:output:0lstm_116/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_116/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_116/transpose	Transposelstm_115/transpose_1:y:0 lstm_116/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_116/Shape_1Shapelstm_116/transpose:y:0*
T0*
_output_shapes
:h
lstm_116/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_116/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_116/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_116/strided_slice_1StridedSlicelstm_116/Shape_1:output:0'lstm_116/strided_slice_1/stack:output:0)lstm_116/strided_slice_1/stack_1:output:0)lstm_116/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_116/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_116/TensorArrayV2TensorListReserve-lstm_116/TensorArrayV2/element_shape:output:0!lstm_116/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_116/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_116/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_116/transpose:y:0Glstm_116/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_116/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_116/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_116/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_116/strided_slice_2StridedSlicelstm_116/transpose:y:0'lstm_116/strided_slice_2/stack:output:0)lstm_116/strided_slice_2/stack_1:output:0)lstm_116/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_116/lstm_cell_200/MatMul/ReadVariableOpReadVariableOp5lstm_116_lstm_cell_200_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_116/lstm_cell_200/MatMulMatMul!lstm_116/strided_slice_2:output:04lstm_116/lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_116/lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOp7lstm_116_lstm_cell_200_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_116/lstm_cell_200/MatMul_1MatMullstm_116/zeros:output:06lstm_116/lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_116/lstm_cell_200/addAddV2'lstm_116/lstm_cell_200/MatMul:product:0)lstm_116/lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_116/lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOp6lstm_116_lstm_cell_200_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_116/lstm_cell_200/BiasAddBiasAddlstm_116/lstm_cell_200/add:z:05lstm_116/lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_116/lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_116/lstm_cell_200/splitSplit/lstm_116/lstm_cell_200/split/split_dim:output:0'lstm_116/lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_116/lstm_cell_200/SigmoidSigmoid%lstm_116/lstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_116/lstm_cell_200/Sigmoid_1Sigmoid%lstm_116/lstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_116/lstm_cell_200/mulMul$lstm_116/lstm_cell_200/Sigmoid_1:y:0lstm_116/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_116/lstm_cell_200/ReluRelu%lstm_116/lstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_116/lstm_cell_200/mul_1Mul"lstm_116/lstm_cell_200/Sigmoid:y:0)lstm_116/lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_116/lstm_cell_200/add_1AddV2lstm_116/lstm_cell_200/mul:z:0 lstm_116/lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_116/lstm_cell_200/Sigmoid_2Sigmoid%lstm_116/lstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_116/lstm_cell_200/Relu_1Relu lstm_116/lstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_116/lstm_cell_200/mul_2Mul$lstm_116/lstm_cell_200/Sigmoid_2:y:0+lstm_116/lstm_cell_200/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_116/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_116/TensorArrayV2_1TensorListReserve/lstm_116/TensorArrayV2_1/element_shape:output:0!lstm_116/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_116/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_116/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_116/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_116/whileWhile$lstm_116/while/loop_counter:output:0*lstm_116/while/maximum_iterations:output:0lstm_116/time:output:0!lstm_116/TensorArrayV2_1:handle:0lstm_116/zeros:output:0lstm_116/zeros_1:output:0!lstm_116/strided_slice_1:output:0@lstm_116/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_116_lstm_cell_200_matmul_readvariableop_resource7lstm_116_lstm_cell_200_matmul_1_readvariableop_resource6lstm_116_lstm_cell_200_biasadd_readvariableop_resource*
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
lstm_116_while_body_1212378*'
condR
lstm_116_while_cond_1212377*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_116/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_116/TensorArrayV2Stack/TensorListStackTensorListStacklstm_116/while:output:3Blstm_116/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_116/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_116/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_116/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_116/strided_slice_3StridedSlice4lstm_116/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_116/strided_slice_3/stack:output:0)lstm_116/strided_slice_3/stack_1:output:0)lstm_116/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_116/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_116/transpose_1	Transpose4lstm_116/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_116/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_116/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_38/MatMulMatMul!lstm_116/strided_slice_3:output:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_38/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp.^lstm_114/lstm_cell_198/BiasAdd/ReadVariableOp-^lstm_114/lstm_cell_198/MatMul/ReadVariableOp/^lstm_114/lstm_cell_198/MatMul_1/ReadVariableOp^lstm_114/while.^lstm_115/lstm_cell_199/BiasAdd/ReadVariableOp-^lstm_115/lstm_cell_199/MatMul/ReadVariableOp/^lstm_115/lstm_cell_199/MatMul_1/ReadVariableOp^lstm_115/while.^lstm_116/lstm_cell_200/BiasAdd/ReadVariableOp-^lstm_116/lstm_cell_200/MatMul/ReadVariableOp/^lstm_116/lstm_cell_200/MatMul_1/ReadVariableOp^lstm_116/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2^
-lstm_114/lstm_cell_198/BiasAdd/ReadVariableOp-lstm_114/lstm_cell_198/BiasAdd/ReadVariableOp2\
,lstm_114/lstm_cell_198/MatMul/ReadVariableOp,lstm_114/lstm_cell_198/MatMul/ReadVariableOp2`
.lstm_114/lstm_cell_198/MatMul_1/ReadVariableOp.lstm_114/lstm_cell_198/MatMul_1/ReadVariableOp2 
lstm_114/whilelstm_114/while2^
-lstm_115/lstm_cell_199/BiasAdd/ReadVariableOp-lstm_115/lstm_cell_199/BiasAdd/ReadVariableOp2\
,lstm_115/lstm_cell_199/MatMul/ReadVariableOp,lstm_115/lstm_cell_199/MatMul/ReadVariableOp2`
.lstm_115/lstm_cell_199/MatMul_1/ReadVariableOp.lstm_115/lstm_cell_199/MatMul_1/ReadVariableOp2 
lstm_115/whilelstm_115/while2^
-lstm_116/lstm_cell_200/BiasAdd/ReadVariableOp-lstm_116/lstm_cell_200/BiasAdd/ReadVariableOp2\
,lstm_116/lstm_cell_200/MatMul/ReadVariableOp,lstm_116/lstm_cell_200/MatMul/ReadVariableOp2`
.lstm_116/lstm_cell_200/MatMul_1/ReadVariableOp.lstm_116/lstm_cell_200/MatMul_1/ReadVariableOp2 
lstm_116/whilelstm_116/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
/__inference_sequential_38_layer_call_fn_1210849
lstm_114_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_114_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_38_layer_call_and_return_conditional_losses_1210824o
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
_user_specified_namelstm_114_input
?S
?
)sequential_38_lstm_114_while_body_1208932J
Fsequential_38_lstm_114_while_sequential_38_lstm_114_while_loop_counterP
Lsequential_38_lstm_114_while_sequential_38_lstm_114_while_maximum_iterations,
(sequential_38_lstm_114_while_placeholder.
*sequential_38_lstm_114_while_placeholder_1.
*sequential_38_lstm_114_while_placeholder_2.
*sequential_38_lstm_114_while_placeholder_3I
Esequential_38_lstm_114_while_sequential_38_lstm_114_strided_slice_1_0?
?sequential_38_lstm_114_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_114_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_38_lstm_114_while_lstm_cell_198_matmul_readvariableop_resource_0:	?`
Msequential_38_lstm_114_while_lstm_cell_198_matmul_1_readvariableop_resource_0:	d?[
Lsequential_38_lstm_114_while_lstm_cell_198_biasadd_readvariableop_resource_0:	?)
%sequential_38_lstm_114_while_identity+
'sequential_38_lstm_114_while_identity_1+
'sequential_38_lstm_114_while_identity_2+
'sequential_38_lstm_114_while_identity_3+
'sequential_38_lstm_114_while_identity_4+
'sequential_38_lstm_114_while_identity_5G
Csequential_38_lstm_114_while_sequential_38_lstm_114_strided_slice_1?
sequential_38_lstm_114_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_114_tensorarrayunstack_tensorlistfromtensor\
Isequential_38_lstm_114_while_lstm_cell_198_matmul_readvariableop_resource:	?^
Ksequential_38_lstm_114_while_lstm_cell_198_matmul_1_readvariableop_resource:	d?Y
Jsequential_38_lstm_114_while_lstm_cell_198_biasadd_readvariableop_resource:	???Asequential_38/lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOp?@sequential_38/lstm_114/while/lstm_cell_198/MatMul/ReadVariableOp?Bsequential_38/lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOp?
Nsequential_38/lstm_114/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_38/lstm_114/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_38_lstm_114_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_114_tensorarrayunstack_tensorlistfromtensor_0(sequential_38_lstm_114_while_placeholderWsequential_38/lstm_114/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_38/lstm_114/while/lstm_cell_198/MatMul/ReadVariableOpReadVariableOpKsequential_38_lstm_114_while_lstm_cell_198_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_38/lstm_114/while/lstm_cell_198/MatMulMatMulGsequential_38/lstm_114/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_38/lstm_114/while/lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_38/lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOpMsequential_38_lstm_114_while_lstm_cell_198_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_38/lstm_114/while/lstm_cell_198/MatMul_1MatMul*sequential_38_lstm_114_while_placeholder_2Jsequential_38/lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_38/lstm_114/while/lstm_cell_198/addAddV2;sequential_38/lstm_114/while/lstm_cell_198/MatMul:product:0=sequential_38/lstm_114/while/lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_38/lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOpLsequential_38_lstm_114_while_lstm_cell_198_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_38/lstm_114/while/lstm_cell_198/BiasAddBiasAdd2sequential_38/lstm_114/while/lstm_cell_198/add:z:0Isequential_38/lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_38/lstm_114/while/lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_38/lstm_114/while/lstm_cell_198/splitSplitCsequential_38/lstm_114/while/lstm_cell_198/split/split_dim:output:0;sequential_38/lstm_114/while/lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_38/lstm_114/while/lstm_cell_198/SigmoidSigmoid9sequential_38/lstm_114/while/lstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_38/lstm_114/while/lstm_cell_198/Sigmoid_1Sigmoid9sequential_38/lstm_114/while/lstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_38/lstm_114/while/lstm_cell_198/mulMul8sequential_38/lstm_114/while/lstm_cell_198/Sigmoid_1:y:0*sequential_38_lstm_114_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_38/lstm_114/while/lstm_cell_198/ReluRelu9sequential_38/lstm_114/while/lstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_38/lstm_114/while/lstm_cell_198/mul_1Mul6sequential_38/lstm_114/while/lstm_cell_198/Sigmoid:y:0=sequential_38/lstm_114/while/lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_38/lstm_114/while/lstm_cell_198/add_1AddV22sequential_38/lstm_114/while/lstm_cell_198/mul:z:04sequential_38/lstm_114/while/lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_38/lstm_114/while/lstm_cell_198/Sigmoid_2Sigmoid9sequential_38/lstm_114/while/lstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_38/lstm_114/while/lstm_cell_198/Relu_1Relu4sequential_38/lstm_114/while/lstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_38/lstm_114/while/lstm_cell_198/mul_2Mul8sequential_38/lstm_114/while/lstm_cell_198/Sigmoid_2:y:0?sequential_38/lstm_114/while/lstm_cell_198/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_38/lstm_114/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_38_lstm_114_while_placeholder_1(sequential_38_lstm_114_while_placeholder4sequential_38/lstm_114/while/lstm_cell_198/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_38/lstm_114/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_38/lstm_114/while/addAddV2(sequential_38_lstm_114_while_placeholder+sequential_38/lstm_114/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_38/lstm_114/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_38/lstm_114/while/add_1AddV2Fsequential_38_lstm_114_while_sequential_38_lstm_114_while_loop_counter-sequential_38/lstm_114/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_38/lstm_114/while/IdentityIdentity&sequential_38/lstm_114/while/add_1:z:0"^sequential_38/lstm_114/while/NoOp*
T0*
_output_shapes
: ?
'sequential_38/lstm_114/while/Identity_1IdentityLsequential_38_lstm_114_while_sequential_38_lstm_114_while_maximum_iterations"^sequential_38/lstm_114/while/NoOp*
T0*
_output_shapes
: ?
'sequential_38/lstm_114/while/Identity_2Identity$sequential_38/lstm_114/while/add:z:0"^sequential_38/lstm_114/while/NoOp*
T0*
_output_shapes
: ?
'sequential_38/lstm_114/while/Identity_3IdentityQsequential_38/lstm_114/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_38/lstm_114/while/NoOp*
T0*
_output_shapes
: ?
'sequential_38/lstm_114/while/Identity_4Identity4sequential_38/lstm_114/while/lstm_cell_198/mul_2:z:0"^sequential_38/lstm_114/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_38/lstm_114/while/Identity_5Identity4sequential_38/lstm_114/while/lstm_cell_198/add_1:z:0"^sequential_38/lstm_114/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_38/lstm_114/while/NoOpNoOpB^sequential_38/lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOpA^sequential_38/lstm_114/while/lstm_cell_198/MatMul/ReadVariableOpC^sequential_38/lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_38_lstm_114_while_identity.sequential_38/lstm_114/while/Identity:output:0"[
'sequential_38_lstm_114_while_identity_10sequential_38/lstm_114/while/Identity_1:output:0"[
'sequential_38_lstm_114_while_identity_20sequential_38/lstm_114/while/Identity_2:output:0"[
'sequential_38_lstm_114_while_identity_30sequential_38/lstm_114/while/Identity_3:output:0"[
'sequential_38_lstm_114_while_identity_40sequential_38/lstm_114/while/Identity_4:output:0"[
'sequential_38_lstm_114_while_identity_50sequential_38/lstm_114/while/Identity_5:output:0"?
Jsequential_38_lstm_114_while_lstm_cell_198_biasadd_readvariableop_resourceLsequential_38_lstm_114_while_lstm_cell_198_biasadd_readvariableop_resource_0"?
Ksequential_38_lstm_114_while_lstm_cell_198_matmul_1_readvariableop_resourceMsequential_38_lstm_114_while_lstm_cell_198_matmul_1_readvariableop_resource_0"?
Isequential_38_lstm_114_while_lstm_cell_198_matmul_readvariableop_resourceKsequential_38_lstm_114_while_lstm_cell_198_matmul_readvariableop_resource_0"?
Csequential_38_lstm_114_while_sequential_38_lstm_114_strided_slice_1Esequential_38_lstm_114_while_sequential_38_lstm_114_strided_slice_1_0"?
sequential_38_lstm_114_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_114_tensorarrayunstack_tensorlistfromtensor?sequential_38_lstm_114_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_114_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_38/lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOpAsequential_38/lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOp2?
@sequential_38/lstm_114/while/lstm_cell_198/MatMul/ReadVariableOp@sequential_38/lstm_114/while/lstm_cell_198/MatMul/ReadVariableOp2?
Bsequential_38/lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOpBsequential_38/lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1213186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1213186___redundant_placeholder05
1while_while_cond_1213186___redundant_placeholder15
1while_while_cond_1213186___redundant_placeholder25
1while_while_cond_1213186___redundant_placeholder3
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
J__inference_sequential_38_layer_call_and_return_conditional_losses_1212041

inputsH
5lstm_114_lstm_cell_198_matmul_readvariableop_resource:	?J
7lstm_114_lstm_cell_198_matmul_1_readvariableop_resource:	d?E
6lstm_114_lstm_cell_198_biasadd_readvariableop_resource:	?H
5lstm_115_lstm_cell_199_matmul_readvariableop_resource:	d?J
7lstm_115_lstm_cell_199_matmul_1_readvariableop_resource:	2?E
6lstm_115_lstm_cell_199_biasadd_readvariableop_resource:	?G
5lstm_116_lstm_cell_200_matmul_readvariableop_resource:2(I
7lstm_116_lstm_cell_200_matmul_1_readvariableop_resource:
(D
6lstm_116_lstm_cell_200_biasadd_readvariableop_resource:(9
'dense_38_matmul_readvariableop_resource:
6
(dense_38_biasadd_readvariableop_resource:
identity??dense_38/BiasAdd/ReadVariableOp?dense_38/MatMul/ReadVariableOp?-lstm_114/lstm_cell_198/BiasAdd/ReadVariableOp?,lstm_114/lstm_cell_198/MatMul/ReadVariableOp?.lstm_114/lstm_cell_198/MatMul_1/ReadVariableOp?lstm_114/while?-lstm_115/lstm_cell_199/BiasAdd/ReadVariableOp?,lstm_115/lstm_cell_199/MatMul/ReadVariableOp?.lstm_115/lstm_cell_199/MatMul_1/ReadVariableOp?lstm_115/while?-lstm_116/lstm_cell_200/BiasAdd/ReadVariableOp?,lstm_116/lstm_cell_200/MatMul/ReadVariableOp?.lstm_116/lstm_cell_200/MatMul_1/ReadVariableOp?lstm_116/whileD
lstm_114/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_114/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_114/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_114/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_114/strided_sliceStridedSlicelstm_114/Shape:output:0%lstm_114/strided_slice/stack:output:0'lstm_114/strided_slice/stack_1:output:0'lstm_114/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_114/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_114/zeros/packedPacklstm_114/strided_slice:output:0 lstm_114/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_114/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_114/zerosFilllstm_114/zeros/packed:output:0lstm_114/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_114/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_114/zeros_1/packedPacklstm_114/strided_slice:output:0"lstm_114/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_114/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_114/zeros_1Fill lstm_114/zeros_1/packed:output:0lstm_114/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_114/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_114/transpose	Transposeinputs lstm_114/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_114/Shape_1Shapelstm_114/transpose:y:0*
T0*
_output_shapes
:h
lstm_114/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_114/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_114/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_114/strided_slice_1StridedSlicelstm_114/Shape_1:output:0'lstm_114/strided_slice_1/stack:output:0)lstm_114/strided_slice_1/stack_1:output:0)lstm_114/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_114/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_114/TensorArrayV2TensorListReserve-lstm_114/TensorArrayV2/element_shape:output:0!lstm_114/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_114/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_114/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_114/transpose:y:0Glstm_114/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_114/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_114/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_114/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_114/strided_slice_2StridedSlicelstm_114/transpose:y:0'lstm_114/strided_slice_2/stack:output:0)lstm_114/strided_slice_2/stack_1:output:0)lstm_114/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_114/lstm_cell_198/MatMul/ReadVariableOpReadVariableOp5lstm_114_lstm_cell_198_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_114/lstm_cell_198/MatMulMatMul!lstm_114/strided_slice_2:output:04lstm_114/lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_114/lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOp7lstm_114_lstm_cell_198_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_114/lstm_cell_198/MatMul_1MatMullstm_114/zeros:output:06lstm_114/lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_114/lstm_cell_198/addAddV2'lstm_114/lstm_cell_198/MatMul:product:0)lstm_114/lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_114/lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOp6lstm_114_lstm_cell_198_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_114/lstm_cell_198/BiasAddBiasAddlstm_114/lstm_cell_198/add:z:05lstm_114/lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_114/lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_114/lstm_cell_198/splitSplit/lstm_114/lstm_cell_198/split/split_dim:output:0'lstm_114/lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_114/lstm_cell_198/SigmoidSigmoid%lstm_114/lstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_114/lstm_cell_198/Sigmoid_1Sigmoid%lstm_114/lstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_114/lstm_cell_198/mulMul$lstm_114/lstm_cell_198/Sigmoid_1:y:0lstm_114/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_114/lstm_cell_198/ReluRelu%lstm_114/lstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_114/lstm_cell_198/mul_1Mul"lstm_114/lstm_cell_198/Sigmoid:y:0)lstm_114/lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_114/lstm_cell_198/add_1AddV2lstm_114/lstm_cell_198/mul:z:0 lstm_114/lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_114/lstm_cell_198/Sigmoid_2Sigmoid%lstm_114/lstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_114/lstm_cell_198/Relu_1Relu lstm_114/lstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_114/lstm_cell_198/mul_2Mul$lstm_114/lstm_cell_198/Sigmoid_2:y:0+lstm_114/lstm_cell_198/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_114/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_114/TensorArrayV2_1TensorListReserve/lstm_114/TensorArrayV2_1/element_shape:output:0!lstm_114/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_114/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_114/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_114/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_114/whileWhile$lstm_114/while/loop_counter:output:0*lstm_114/while/maximum_iterations:output:0lstm_114/time:output:0!lstm_114/TensorArrayV2_1:handle:0lstm_114/zeros:output:0lstm_114/zeros_1:output:0!lstm_114/strided_slice_1:output:0@lstm_114/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_114_lstm_cell_198_matmul_readvariableop_resource7lstm_114_lstm_cell_198_matmul_1_readvariableop_resource6lstm_114_lstm_cell_198_biasadd_readvariableop_resource*
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
lstm_114_while_body_1211673*'
condR
lstm_114_while_cond_1211672*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_114/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_114/TensorArrayV2Stack/TensorListStackTensorListStacklstm_114/while:output:3Blstm_114/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_114/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_114/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_114/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_114/strided_slice_3StridedSlice4lstm_114/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_114/strided_slice_3/stack:output:0)lstm_114/strided_slice_3/stack_1:output:0)lstm_114/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_114/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_114/transpose_1	Transpose4lstm_114/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_114/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_114/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_115/ShapeShapelstm_114/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_115/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_115/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_115/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_115/strided_sliceStridedSlicelstm_115/Shape:output:0%lstm_115/strided_slice/stack:output:0'lstm_115/strided_slice/stack_1:output:0'lstm_115/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_115/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_115/zeros/packedPacklstm_115/strided_slice:output:0 lstm_115/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_115/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_115/zerosFilllstm_115/zeros/packed:output:0lstm_115/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_115/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_115/zeros_1/packedPacklstm_115/strided_slice:output:0"lstm_115/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_115/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_115/zeros_1Fill lstm_115/zeros_1/packed:output:0lstm_115/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_115/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_115/transpose	Transposelstm_114/transpose_1:y:0 lstm_115/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_115/Shape_1Shapelstm_115/transpose:y:0*
T0*
_output_shapes
:h
lstm_115/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_115/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_115/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_115/strided_slice_1StridedSlicelstm_115/Shape_1:output:0'lstm_115/strided_slice_1/stack:output:0)lstm_115/strided_slice_1/stack_1:output:0)lstm_115/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_115/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_115/TensorArrayV2TensorListReserve-lstm_115/TensorArrayV2/element_shape:output:0!lstm_115/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_115/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_115/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_115/transpose:y:0Glstm_115/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_115/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_115/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_115/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_115/strided_slice_2StridedSlicelstm_115/transpose:y:0'lstm_115/strided_slice_2/stack:output:0)lstm_115/strided_slice_2/stack_1:output:0)lstm_115/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_115/lstm_cell_199/MatMul/ReadVariableOpReadVariableOp5lstm_115_lstm_cell_199_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_115/lstm_cell_199/MatMulMatMul!lstm_115/strided_slice_2:output:04lstm_115/lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_115/lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOp7lstm_115_lstm_cell_199_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_115/lstm_cell_199/MatMul_1MatMullstm_115/zeros:output:06lstm_115/lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_115/lstm_cell_199/addAddV2'lstm_115/lstm_cell_199/MatMul:product:0)lstm_115/lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_115/lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOp6lstm_115_lstm_cell_199_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_115/lstm_cell_199/BiasAddBiasAddlstm_115/lstm_cell_199/add:z:05lstm_115/lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_115/lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_115/lstm_cell_199/splitSplit/lstm_115/lstm_cell_199/split/split_dim:output:0'lstm_115/lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_115/lstm_cell_199/SigmoidSigmoid%lstm_115/lstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_115/lstm_cell_199/Sigmoid_1Sigmoid%lstm_115/lstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_115/lstm_cell_199/mulMul$lstm_115/lstm_cell_199/Sigmoid_1:y:0lstm_115/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_115/lstm_cell_199/ReluRelu%lstm_115/lstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_115/lstm_cell_199/mul_1Mul"lstm_115/lstm_cell_199/Sigmoid:y:0)lstm_115/lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_115/lstm_cell_199/add_1AddV2lstm_115/lstm_cell_199/mul:z:0 lstm_115/lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_115/lstm_cell_199/Sigmoid_2Sigmoid%lstm_115/lstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_115/lstm_cell_199/Relu_1Relu lstm_115/lstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_115/lstm_cell_199/mul_2Mul$lstm_115/lstm_cell_199/Sigmoid_2:y:0+lstm_115/lstm_cell_199/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_115/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_115/TensorArrayV2_1TensorListReserve/lstm_115/TensorArrayV2_1/element_shape:output:0!lstm_115/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_115/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_115/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_115/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_115/whileWhile$lstm_115/while/loop_counter:output:0*lstm_115/while/maximum_iterations:output:0lstm_115/time:output:0!lstm_115/TensorArrayV2_1:handle:0lstm_115/zeros:output:0lstm_115/zeros_1:output:0!lstm_115/strided_slice_1:output:0@lstm_115/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_115_lstm_cell_199_matmul_readvariableop_resource7lstm_115_lstm_cell_199_matmul_1_readvariableop_resource6lstm_115_lstm_cell_199_biasadd_readvariableop_resource*
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
lstm_115_while_body_1211812*'
condR
lstm_115_while_cond_1211811*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_115/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_115/TensorArrayV2Stack/TensorListStackTensorListStacklstm_115/while:output:3Blstm_115/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_115/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_115/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_115/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_115/strided_slice_3StridedSlice4lstm_115/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_115/strided_slice_3/stack:output:0)lstm_115/strided_slice_3/stack_1:output:0)lstm_115/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_115/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_115/transpose_1	Transpose4lstm_115/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_115/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_115/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_116/ShapeShapelstm_115/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_116/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_116/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_116/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_116/strided_sliceStridedSlicelstm_116/Shape:output:0%lstm_116/strided_slice/stack:output:0'lstm_116/strided_slice/stack_1:output:0'lstm_116/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_116/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_116/zeros/packedPacklstm_116/strided_slice:output:0 lstm_116/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_116/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_116/zerosFilllstm_116/zeros/packed:output:0lstm_116/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_116/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_116/zeros_1/packedPacklstm_116/strided_slice:output:0"lstm_116/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_116/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_116/zeros_1Fill lstm_116/zeros_1/packed:output:0lstm_116/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_116/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_116/transpose	Transposelstm_115/transpose_1:y:0 lstm_116/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_116/Shape_1Shapelstm_116/transpose:y:0*
T0*
_output_shapes
:h
lstm_116/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_116/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_116/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_116/strided_slice_1StridedSlicelstm_116/Shape_1:output:0'lstm_116/strided_slice_1/stack:output:0)lstm_116/strided_slice_1/stack_1:output:0)lstm_116/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_116/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_116/TensorArrayV2TensorListReserve-lstm_116/TensorArrayV2/element_shape:output:0!lstm_116/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_116/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_116/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_116/transpose:y:0Glstm_116/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_116/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_116/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_116/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_116/strided_slice_2StridedSlicelstm_116/transpose:y:0'lstm_116/strided_slice_2/stack:output:0)lstm_116/strided_slice_2/stack_1:output:0)lstm_116/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_116/lstm_cell_200/MatMul/ReadVariableOpReadVariableOp5lstm_116_lstm_cell_200_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_116/lstm_cell_200/MatMulMatMul!lstm_116/strided_slice_2:output:04lstm_116/lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_116/lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOp7lstm_116_lstm_cell_200_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_116/lstm_cell_200/MatMul_1MatMullstm_116/zeros:output:06lstm_116/lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_116/lstm_cell_200/addAddV2'lstm_116/lstm_cell_200/MatMul:product:0)lstm_116/lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_116/lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOp6lstm_116_lstm_cell_200_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_116/lstm_cell_200/BiasAddBiasAddlstm_116/lstm_cell_200/add:z:05lstm_116/lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_116/lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_116/lstm_cell_200/splitSplit/lstm_116/lstm_cell_200/split/split_dim:output:0'lstm_116/lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_116/lstm_cell_200/SigmoidSigmoid%lstm_116/lstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_116/lstm_cell_200/Sigmoid_1Sigmoid%lstm_116/lstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_116/lstm_cell_200/mulMul$lstm_116/lstm_cell_200/Sigmoid_1:y:0lstm_116/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_116/lstm_cell_200/ReluRelu%lstm_116/lstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_116/lstm_cell_200/mul_1Mul"lstm_116/lstm_cell_200/Sigmoid:y:0)lstm_116/lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_116/lstm_cell_200/add_1AddV2lstm_116/lstm_cell_200/mul:z:0 lstm_116/lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_116/lstm_cell_200/Sigmoid_2Sigmoid%lstm_116/lstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_116/lstm_cell_200/Relu_1Relu lstm_116/lstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_116/lstm_cell_200/mul_2Mul$lstm_116/lstm_cell_200/Sigmoid_2:y:0+lstm_116/lstm_cell_200/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_116/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_116/TensorArrayV2_1TensorListReserve/lstm_116/TensorArrayV2_1/element_shape:output:0!lstm_116/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_116/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_116/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_116/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_116/whileWhile$lstm_116/while/loop_counter:output:0*lstm_116/while/maximum_iterations:output:0lstm_116/time:output:0!lstm_116/TensorArrayV2_1:handle:0lstm_116/zeros:output:0lstm_116/zeros_1:output:0!lstm_116/strided_slice_1:output:0@lstm_116/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_116_lstm_cell_200_matmul_readvariableop_resource7lstm_116_lstm_cell_200_matmul_1_readvariableop_resource6lstm_116_lstm_cell_200_biasadd_readvariableop_resource*
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
lstm_116_while_body_1211951*'
condR
lstm_116_while_cond_1211950*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_116/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_116/TensorArrayV2Stack/TensorListStackTensorListStacklstm_116/while:output:3Blstm_116/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_116/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_116/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_116/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_116/strided_slice_3StridedSlice4lstm_116/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_116/strided_slice_3/stack:output:0)lstm_116/strided_slice_3/stack_1:output:0)lstm_116/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_116/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_116/transpose_1	Transpose4lstm_116/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_116/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_116/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_38/MatMulMatMul!lstm_116/strided_slice_3:output:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_38/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp.^lstm_114/lstm_cell_198/BiasAdd/ReadVariableOp-^lstm_114/lstm_cell_198/MatMul/ReadVariableOp/^lstm_114/lstm_cell_198/MatMul_1/ReadVariableOp^lstm_114/while.^lstm_115/lstm_cell_199/BiasAdd/ReadVariableOp-^lstm_115/lstm_cell_199/MatMul/ReadVariableOp/^lstm_115/lstm_cell_199/MatMul_1/ReadVariableOp^lstm_115/while.^lstm_116/lstm_cell_200/BiasAdd/ReadVariableOp-^lstm_116/lstm_cell_200/MatMul/ReadVariableOp/^lstm_116/lstm_cell_200/MatMul_1/ReadVariableOp^lstm_116/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2^
-lstm_114/lstm_cell_198/BiasAdd/ReadVariableOp-lstm_114/lstm_cell_198/BiasAdd/ReadVariableOp2\
,lstm_114/lstm_cell_198/MatMul/ReadVariableOp,lstm_114/lstm_cell_198/MatMul/ReadVariableOp2`
.lstm_114/lstm_cell_198/MatMul_1/ReadVariableOp.lstm_114/lstm_cell_198/MatMul_1/ReadVariableOp2 
lstm_114/whilelstm_114/while2^
-lstm_115/lstm_cell_199/BiasAdd/ReadVariableOp-lstm_115/lstm_cell_199/BiasAdd/ReadVariableOp2\
,lstm_115/lstm_cell_199/MatMul/ReadVariableOp,lstm_115/lstm_cell_199/MatMul/ReadVariableOp2`
.lstm_115/lstm_cell_199/MatMul_1/ReadVariableOp.lstm_115/lstm_cell_199/MatMul_1/ReadVariableOp2 
lstm_115/whilelstm_115/while2^
-lstm_116/lstm_cell_200/BiasAdd/ReadVariableOp-lstm_116/lstm_cell_200/BiasAdd/ReadVariableOp2\
,lstm_116/lstm_cell_200/MatMul/ReadVariableOp,lstm_116/lstm_cell_200/MatMul/ReadVariableOp2`
.lstm_116/lstm_cell_200/MatMul_1/ReadVariableOp.lstm_116/lstm_cell_200/MatMul_1/ReadVariableOp2 
lstm_116/whilelstm_116/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1213472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1213472___redundant_placeholder05
1while_while_cond_1213472___redundant_placeholder15
1while_while_cond_1213472___redundant_placeholder25
1while_while_cond_1213472___redundant_placeholder3
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
/__inference_lstm_cell_198_layer_call_fn_1214352

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
J__inference_lstm_cell_198_layer_call_and_return_conditional_losses_1209367o
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
while_cond_1214088
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1214088___redundant_placeholder05
1while_while_cond_1214088___redundant_placeholder15
1while_while_cond_1214088___redundant_placeholder25
1while_while_cond_1214088___redundant_placeholder3
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
lstm_115_while_cond_1211811.
*lstm_115_while_lstm_115_while_loop_counter4
0lstm_115_while_lstm_115_while_maximum_iterations
lstm_115_while_placeholder 
lstm_115_while_placeholder_1 
lstm_115_while_placeholder_2 
lstm_115_while_placeholder_30
,lstm_115_while_less_lstm_115_strided_slice_1G
Clstm_115_while_lstm_115_while_cond_1211811___redundant_placeholder0G
Clstm_115_while_lstm_115_while_cond_1211811___redundant_placeholder1G
Clstm_115_while_lstm_115_while_cond_1211811___redundant_placeholder2G
Clstm_115_while_lstm_115_while_cond_1211811___redundant_placeholder3
lstm_115_while_identity
?
lstm_115/while/LessLesslstm_115_while_placeholder,lstm_115_while_less_lstm_115_strided_slice_1*
T0*
_output_shapes
: ]
lstm_115/while/IdentityIdentitylstm_115/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_115_while_identity lstm_115/while/Identity:output:0*(
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
J__inference_lstm_cell_198_layer_call_and_return_conditional_losses_1209513

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
while_cond_1212856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1212856___redundant_placeholder05
1while_while_cond_1212856___redundant_placeholder15
1while_while_cond_1212856___redundant_placeholder25
1while_while_cond_1212856___redundant_placeholder3
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
while_body_1213616
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_199_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_199_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_199_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_199_matmul_readvariableop_resource:	d?G
4while_lstm_cell_199_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_199_biasadd_readvariableop_resource:	???*while/lstm_cell_199/BiasAdd/ReadVariableOp?)while/lstm_cell_199/MatMul/ReadVariableOp?+while/lstm_cell_199/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_199/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_199_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_199/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_199_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_199/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_199/addAddV2$while/lstm_cell_199/MatMul:product:0&while/lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_199_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_199/BiasAddBiasAddwhile/lstm_cell_199/add:z:02while/lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_199/splitSplit,while/lstm_cell_199/split/split_dim:output:0$while/lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_199/SigmoidSigmoid"while/lstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_199/Sigmoid_1Sigmoid"while/lstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mulMul!while/lstm_cell_199/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_199/ReluRelu"while/lstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mul_1Mulwhile/lstm_cell_199/Sigmoid:y:0&while/lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/add_1AddV2while/lstm_cell_199/mul:z:0while/lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_199/Sigmoid_2Sigmoid"while/lstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_199/Relu_1Reluwhile/lstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mul_2Mul!while/lstm_cell_199/Sigmoid_2:y:0(while/lstm_cell_199/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_199/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_199/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_199/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_199/BiasAdd/ReadVariableOp*^while/lstm_cell_199/MatMul/ReadVariableOp,^while/lstm_cell_199/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_199_biasadd_readvariableop_resource5while_lstm_cell_199_biasadd_readvariableop_resource_0"n
4while_lstm_cell_199_matmul_1_readvariableop_resource6while_lstm_cell_199_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_199_matmul_readvariableop_resource4while_lstm_cell_199_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_199/BiasAdd/ReadVariableOp*while/lstm_cell_199/BiasAdd/ReadVariableOp2V
)while/lstm_cell_199/MatMul/ReadVariableOp)while/lstm_cell_199/MatMul/ReadVariableOp2Z
+while/lstm_cell_199/MatMul_1/ReadVariableOp+while/lstm_cell_199/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1210564
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1210564___redundant_placeholder05
1while_while_cond_1210564___redundant_placeholder15
1while_while_cond_1210564___redundant_placeholder25
1while_while_cond_1210564___redundant_placeholder3
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
while_body_1209572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_198_1209596_0:	?0
while_lstm_cell_198_1209598_0:	d?,
while_lstm_cell_198_1209600_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_198_1209596:	?.
while_lstm_cell_198_1209598:	d?*
while_lstm_cell_198_1209600:	???+while/lstm_cell_198/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_198/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_198_1209596_0while_lstm_cell_198_1209598_0while_lstm_cell_198_1209600_0*
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
J__inference_lstm_cell_198_layer_call_and_return_conditional_losses_1209513?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_198/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_198/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_198/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_198/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_198_1209596while_lstm_cell_198_1209596_0"<
while_lstm_cell_198_1209598while_lstm_cell_198_1209598_0"<
while_lstm_cell_198_1209600while_lstm_cell_198_1209600_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_198/StatefulPartitionedCall+while/lstm_cell_198/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_114_layer_call_and_return_conditional_losses_1211345

inputs?
,lstm_cell_198_matmul_readvariableop_resource:	?A
.lstm_cell_198_matmul_1_readvariableop_resource:	d?<
-lstm_cell_198_biasadd_readvariableop_resource:	?
identity??$lstm_cell_198/BiasAdd/ReadVariableOp?#lstm_cell_198/MatMul/ReadVariableOp?%lstm_cell_198/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_198/MatMul/ReadVariableOpReadVariableOp,lstm_cell_198_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_198/MatMulMatMulstrided_slice_2:output:0+lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_198_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_198/MatMul_1MatMulzeros:output:0-lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_198/addAddV2lstm_cell_198/MatMul:product:0 lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_198_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_198/BiasAddBiasAddlstm_cell_198/add:z:0,lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_198/splitSplit&lstm_cell_198/split/split_dim:output:0lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_198/SigmoidSigmoidlstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_198/Sigmoid_1Sigmoidlstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_198/mulMullstm_cell_198/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_198/ReluRelulstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_198/mul_1Mullstm_cell_198/Sigmoid:y:0 lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_198/add_1AddV2lstm_cell_198/mul:z:0lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_198/Sigmoid_2Sigmoidlstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_198/Relu_1Relulstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_198/mul_2Mullstm_cell_198/Sigmoid_2:y:0"lstm_cell_198/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_198_matmul_readvariableop_resource.lstm_cell_198_matmul_1_readvariableop_resource-lstm_cell_198_biasadd_readvariableop_resource*
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
while_body_1211261*
condR
while_cond_1211260*K
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
NoOpNoOp%^lstm_cell_198/BiasAdd/ReadVariableOp$^lstm_cell_198/MatMul/ReadVariableOp&^lstm_cell_198/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_198/BiasAdd/ReadVariableOp$lstm_cell_198/BiasAdd/ReadVariableOp2J
#lstm_cell_198/MatMul/ReadVariableOp#lstm_cell_198/MatMul/ReadVariableOp2N
%lstm_cell_198/MatMul_1/ReadVariableOp%lstm_cell_198/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
/__inference_sequential_38_layer_call_fn_1211587

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
J__inference_sequential_38_layer_call_and_return_conditional_losses_1210824o
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
?
)sequential_38_lstm_115_while_cond_1209070J
Fsequential_38_lstm_115_while_sequential_38_lstm_115_while_loop_counterP
Lsequential_38_lstm_115_while_sequential_38_lstm_115_while_maximum_iterations,
(sequential_38_lstm_115_while_placeholder.
*sequential_38_lstm_115_while_placeholder_1.
*sequential_38_lstm_115_while_placeholder_2.
*sequential_38_lstm_115_while_placeholder_3L
Hsequential_38_lstm_115_while_less_sequential_38_lstm_115_strided_slice_1c
_sequential_38_lstm_115_while_sequential_38_lstm_115_while_cond_1209070___redundant_placeholder0c
_sequential_38_lstm_115_while_sequential_38_lstm_115_while_cond_1209070___redundant_placeholder1c
_sequential_38_lstm_115_while_sequential_38_lstm_115_while_cond_1209070___redundant_placeholder2c
_sequential_38_lstm_115_while_sequential_38_lstm_115_while_cond_1209070___redundant_placeholder3)
%sequential_38_lstm_115_while_identity
?
!sequential_38/lstm_115/while/LessLess(sequential_38_lstm_115_while_placeholderHsequential_38_lstm_115_while_less_sequential_38_lstm_115_strided_slice_1*
T0*
_output_shapes
: y
%sequential_38/lstm_115/while/IdentityIdentity%sequential_38/lstm_115/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_38_lstm_115_while_identity.sequential_38/lstm_115/while/Identity:output:0*(
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
"__inference__wrapped_model_1209300
lstm_114_inputV
Csequential_38_lstm_114_lstm_cell_198_matmul_readvariableop_resource:	?X
Esequential_38_lstm_114_lstm_cell_198_matmul_1_readvariableop_resource:	d?S
Dsequential_38_lstm_114_lstm_cell_198_biasadd_readvariableop_resource:	?V
Csequential_38_lstm_115_lstm_cell_199_matmul_readvariableop_resource:	d?X
Esequential_38_lstm_115_lstm_cell_199_matmul_1_readvariableop_resource:	2?S
Dsequential_38_lstm_115_lstm_cell_199_biasadd_readvariableop_resource:	?U
Csequential_38_lstm_116_lstm_cell_200_matmul_readvariableop_resource:2(W
Esequential_38_lstm_116_lstm_cell_200_matmul_1_readvariableop_resource:
(R
Dsequential_38_lstm_116_lstm_cell_200_biasadd_readvariableop_resource:(G
5sequential_38_dense_38_matmul_readvariableop_resource:
D
6sequential_38_dense_38_biasadd_readvariableop_resource:
identity??-sequential_38/dense_38/BiasAdd/ReadVariableOp?,sequential_38/dense_38/MatMul/ReadVariableOp?;sequential_38/lstm_114/lstm_cell_198/BiasAdd/ReadVariableOp?:sequential_38/lstm_114/lstm_cell_198/MatMul/ReadVariableOp?<sequential_38/lstm_114/lstm_cell_198/MatMul_1/ReadVariableOp?sequential_38/lstm_114/while?;sequential_38/lstm_115/lstm_cell_199/BiasAdd/ReadVariableOp?:sequential_38/lstm_115/lstm_cell_199/MatMul/ReadVariableOp?<sequential_38/lstm_115/lstm_cell_199/MatMul_1/ReadVariableOp?sequential_38/lstm_115/while?;sequential_38/lstm_116/lstm_cell_200/BiasAdd/ReadVariableOp?:sequential_38/lstm_116/lstm_cell_200/MatMul/ReadVariableOp?<sequential_38/lstm_116/lstm_cell_200/MatMul_1/ReadVariableOp?sequential_38/lstm_116/whileZ
sequential_38/lstm_114/ShapeShapelstm_114_input*
T0*
_output_shapes
:t
*sequential_38/lstm_114/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_38/lstm_114/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_38/lstm_114/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_38/lstm_114/strided_sliceStridedSlice%sequential_38/lstm_114/Shape:output:03sequential_38/lstm_114/strided_slice/stack:output:05sequential_38/lstm_114/strided_slice/stack_1:output:05sequential_38/lstm_114/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_38/lstm_114/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_38/lstm_114/zeros/packedPack-sequential_38/lstm_114/strided_slice:output:0.sequential_38/lstm_114/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_38/lstm_114/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_38/lstm_114/zerosFill,sequential_38/lstm_114/zeros/packed:output:0+sequential_38/lstm_114/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_38/lstm_114/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_38/lstm_114/zeros_1/packedPack-sequential_38/lstm_114/strided_slice:output:00sequential_38/lstm_114/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_38/lstm_114/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_38/lstm_114/zeros_1Fill.sequential_38/lstm_114/zeros_1/packed:output:0-sequential_38/lstm_114/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_38/lstm_114/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_38/lstm_114/transpose	Transposelstm_114_input.sequential_38/lstm_114/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_38/lstm_114/Shape_1Shape$sequential_38/lstm_114/transpose:y:0*
T0*
_output_shapes
:v
,sequential_38/lstm_114/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_38/lstm_114/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_38/lstm_114/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_38/lstm_114/strided_slice_1StridedSlice'sequential_38/lstm_114/Shape_1:output:05sequential_38/lstm_114/strided_slice_1/stack:output:07sequential_38/lstm_114/strided_slice_1/stack_1:output:07sequential_38/lstm_114/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_38/lstm_114/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_38/lstm_114/TensorArrayV2TensorListReserve;sequential_38/lstm_114/TensorArrayV2/element_shape:output:0/sequential_38/lstm_114/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_38/lstm_114/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_38/lstm_114/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_38/lstm_114/transpose:y:0Usequential_38/lstm_114/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_38/lstm_114/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_38/lstm_114/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_38/lstm_114/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_38/lstm_114/strided_slice_2StridedSlice$sequential_38/lstm_114/transpose:y:05sequential_38/lstm_114/strided_slice_2/stack:output:07sequential_38/lstm_114/strided_slice_2/stack_1:output:07sequential_38/lstm_114/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_38/lstm_114/lstm_cell_198/MatMul/ReadVariableOpReadVariableOpCsequential_38_lstm_114_lstm_cell_198_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_38/lstm_114/lstm_cell_198/MatMulMatMul/sequential_38/lstm_114/strided_slice_2:output:0Bsequential_38/lstm_114/lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_38/lstm_114/lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOpEsequential_38_lstm_114_lstm_cell_198_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_38/lstm_114/lstm_cell_198/MatMul_1MatMul%sequential_38/lstm_114/zeros:output:0Dsequential_38/lstm_114/lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_38/lstm_114/lstm_cell_198/addAddV25sequential_38/lstm_114/lstm_cell_198/MatMul:product:07sequential_38/lstm_114/lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_38/lstm_114/lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOpDsequential_38_lstm_114_lstm_cell_198_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_38/lstm_114/lstm_cell_198/BiasAddBiasAdd,sequential_38/lstm_114/lstm_cell_198/add:z:0Csequential_38/lstm_114/lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_38/lstm_114/lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_38/lstm_114/lstm_cell_198/splitSplit=sequential_38/lstm_114/lstm_cell_198/split/split_dim:output:05sequential_38/lstm_114/lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_38/lstm_114/lstm_cell_198/SigmoidSigmoid3sequential_38/lstm_114/lstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_38/lstm_114/lstm_cell_198/Sigmoid_1Sigmoid3sequential_38/lstm_114/lstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_38/lstm_114/lstm_cell_198/mulMul2sequential_38/lstm_114/lstm_cell_198/Sigmoid_1:y:0'sequential_38/lstm_114/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_38/lstm_114/lstm_cell_198/ReluRelu3sequential_38/lstm_114/lstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_38/lstm_114/lstm_cell_198/mul_1Mul0sequential_38/lstm_114/lstm_cell_198/Sigmoid:y:07sequential_38/lstm_114/lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_38/lstm_114/lstm_cell_198/add_1AddV2,sequential_38/lstm_114/lstm_cell_198/mul:z:0.sequential_38/lstm_114/lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_38/lstm_114/lstm_cell_198/Sigmoid_2Sigmoid3sequential_38/lstm_114/lstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_38/lstm_114/lstm_cell_198/Relu_1Relu.sequential_38/lstm_114/lstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_38/lstm_114/lstm_cell_198/mul_2Mul2sequential_38/lstm_114/lstm_cell_198/Sigmoid_2:y:09sequential_38/lstm_114/lstm_cell_198/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_38/lstm_114/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_38/lstm_114/TensorArrayV2_1TensorListReserve=sequential_38/lstm_114/TensorArrayV2_1/element_shape:output:0/sequential_38/lstm_114/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_38/lstm_114/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_38/lstm_114/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_38/lstm_114/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_38/lstm_114/whileWhile2sequential_38/lstm_114/while/loop_counter:output:08sequential_38/lstm_114/while/maximum_iterations:output:0$sequential_38/lstm_114/time:output:0/sequential_38/lstm_114/TensorArrayV2_1:handle:0%sequential_38/lstm_114/zeros:output:0'sequential_38/lstm_114/zeros_1:output:0/sequential_38/lstm_114/strided_slice_1:output:0Nsequential_38/lstm_114/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_38_lstm_114_lstm_cell_198_matmul_readvariableop_resourceEsequential_38_lstm_114_lstm_cell_198_matmul_1_readvariableop_resourceDsequential_38_lstm_114_lstm_cell_198_biasadd_readvariableop_resource*
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
)sequential_38_lstm_114_while_body_1208932*5
cond-R+
)sequential_38_lstm_114_while_cond_1208931*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_38/lstm_114/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_38/lstm_114/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_38/lstm_114/while:output:3Psequential_38/lstm_114/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_38/lstm_114/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_38/lstm_114/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_38/lstm_114/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_38/lstm_114/strided_slice_3StridedSliceBsequential_38/lstm_114/TensorArrayV2Stack/TensorListStack:tensor:05sequential_38/lstm_114/strided_slice_3/stack:output:07sequential_38/lstm_114/strided_slice_3/stack_1:output:07sequential_38/lstm_114/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_38/lstm_114/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_38/lstm_114/transpose_1	TransposeBsequential_38/lstm_114/TensorArrayV2Stack/TensorListStack:tensor:00sequential_38/lstm_114/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_38/lstm_114/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_38/lstm_115/ShapeShape&sequential_38/lstm_114/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_38/lstm_115/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_38/lstm_115/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_38/lstm_115/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_38/lstm_115/strided_sliceStridedSlice%sequential_38/lstm_115/Shape:output:03sequential_38/lstm_115/strided_slice/stack:output:05sequential_38/lstm_115/strided_slice/stack_1:output:05sequential_38/lstm_115/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_38/lstm_115/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_38/lstm_115/zeros/packedPack-sequential_38/lstm_115/strided_slice:output:0.sequential_38/lstm_115/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_38/lstm_115/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_38/lstm_115/zerosFill,sequential_38/lstm_115/zeros/packed:output:0+sequential_38/lstm_115/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_38/lstm_115/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_38/lstm_115/zeros_1/packedPack-sequential_38/lstm_115/strided_slice:output:00sequential_38/lstm_115/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_38/lstm_115/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_38/lstm_115/zeros_1Fill.sequential_38/lstm_115/zeros_1/packed:output:0-sequential_38/lstm_115/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_38/lstm_115/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_38/lstm_115/transpose	Transpose&sequential_38/lstm_114/transpose_1:y:0.sequential_38/lstm_115/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_38/lstm_115/Shape_1Shape$sequential_38/lstm_115/transpose:y:0*
T0*
_output_shapes
:v
,sequential_38/lstm_115/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_38/lstm_115/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_38/lstm_115/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_38/lstm_115/strided_slice_1StridedSlice'sequential_38/lstm_115/Shape_1:output:05sequential_38/lstm_115/strided_slice_1/stack:output:07sequential_38/lstm_115/strided_slice_1/stack_1:output:07sequential_38/lstm_115/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_38/lstm_115/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_38/lstm_115/TensorArrayV2TensorListReserve;sequential_38/lstm_115/TensorArrayV2/element_shape:output:0/sequential_38/lstm_115/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_38/lstm_115/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_38/lstm_115/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_38/lstm_115/transpose:y:0Usequential_38/lstm_115/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_38/lstm_115/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_38/lstm_115/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_38/lstm_115/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_38/lstm_115/strided_slice_2StridedSlice$sequential_38/lstm_115/transpose:y:05sequential_38/lstm_115/strided_slice_2/stack:output:07sequential_38/lstm_115/strided_slice_2/stack_1:output:07sequential_38/lstm_115/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_38/lstm_115/lstm_cell_199/MatMul/ReadVariableOpReadVariableOpCsequential_38_lstm_115_lstm_cell_199_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_38/lstm_115/lstm_cell_199/MatMulMatMul/sequential_38/lstm_115/strided_slice_2:output:0Bsequential_38/lstm_115/lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_38/lstm_115/lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOpEsequential_38_lstm_115_lstm_cell_199_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_38/lstm_115/lstm_cell_199/MatMul_1MatMul%sequential_38/lstm_115/zeros:output:0Dsequential_38/lstm_115/lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_38/lstm_115/lstm_cell_199/addAddV25sequential_38/lstm_115/lstm_cell_199/MatMul:product:07sequential_38/lstm_115/lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_38/lstm_115/lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOpDsequential_38_lstm_115_lstm_cell_199_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_38/lstm_115/lstm_cell_199/BiasAddBiasAdd,sequential_38/lstm_115/lstm_cell_199/add:z:0Csequential_38/lstm_115/lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_38/lstm_115/lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_38/lstm_115/lstm_cell_199/splitSplit=sequential_38/lstm_115/lstm_cell_199/split/split_dim:output:05sequential_38/lstm_115/lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_38/lstm_115/lstm_cell_199/SigmoidSigmoid3sequential_38/lstm_115/lstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_38/lstm_115/lstm_cell_199/Sigmoid_1Sigmoid3sequential_38/lstm_115/lstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_38/lstm_115/lstm_cell_199/mulMul2sequential_38/lstm_115/lstm_cell_199/Sigmoid_1:y:0'sequential_38/lstm_115/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_38/lstm_115/lstm_cell_199/ReluRelu3sequential_38/lstm_115/lstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_38/lstm_115/lstm_cell_199/mul_1Mul0sequential_38/lstm_115/lstm_cell_199/Sigmoid:y:07sequential_38/lstm_115/lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_38/lstm_115/lstm_cell_199/add_1AddV2,sequential_38/lstm_115/lstm_cell_199/mul:z:0.sequential_38/lstm_115/lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_38/lstm_115/lstm_cell_199/Sigmoid_2Sigmoid3sequential_38/lstm_115/lstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_38/lstm_115/lstm_cell_199/Relu_1Relu.sequential_38/lstm_115/lstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_38/lstm_115/lstm_cell_199/mul_2Mul2sequential_38/lstm_115/lstm_cell_199/Sigmoid_2:y:09sequential_38/lstm_115/lstm_cell_199/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_38/lstm_115/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_38/lstm_115/TensorArrayV2_1TensorListReserve=sequential_38/lstm_115/TensorArrayV2_1/element_shape:output:0/sequential_38/lstm_115/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_38/lstm_115/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_38/lstm_115/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_38/lstm_115/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_38/lstm_115/whileWhile2sequential_38/lstm_115/while/loop_counter:output:08sequential_38/lstm_115/while/maximum_iterations:output:0$sequential_38/lstm_115/time:output:0/sequential_38/lstm_115/TensorArrayV2_1:handle:0%sequential_38/lstm_115/zeros:output:0'sequential_38/lstm_115/zeros_1:output:0/sequential_38/lstm_115/strided_slice_1:output:0Nsequential_38/lstm_115/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_38_lstm_115_lstm_cell_199_matmul_readvariableop_resourceEsequential_38_lstm_115_lstm_cell_199_matmul_1_readvariableop_resourceDsequential_38_lstm_115_lstm_cell_199_biasadd_readvariableop_resource*
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
)sequential_38_lstm_115_while_body_1209071*5
cond-R+
)sequential_38_lstm_115_while_cond_1209070*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_38/lstm_115/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_38/lstm_115/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_38/lstm_115/while:output:3Psequential_38/lstm_115/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_38/lstm_115/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_38/lstm_115/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_38/lstm_115/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_38/lstm_115/strided_slice_3StridedSliceBsequential_38/lstm_115/TensorArrayV2Stack/TensorListStack:tensor:05sequential_38/lstm_115/strided_slice_3/stack:output:07sequential_38/lstm_115/strided_slice_3/stack_1:output:07sequential_38/lstm_115/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_38/lstm_115/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_38/lstm_115/transpose_1	TransposeBsequential_38/lstm_115/TensorArrayV2Stack/TensorListStack:tensor:00sequential_38/lstm_115/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_38/lstm_115/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_38/lstm_116/ShapeShape&sequential_38/lstm_115/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_38/lstm_116/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_38/lstm_116/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_38/lstm_116/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_38/lstm_116/strided_sliceStridedSlice%sequential_38/lstm_116/Shape:output:03sequential_38/lstm_116/strided_slice/stack:output:05sequential_38/lstm_116/strided_slice/stack_1:output:05sequential_38/lstm_116/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_38/lstm_116/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_38/lstm_116/zeros/packedPack-sequential_38/lstm_116/strided_slice:output:0.sequential_38/lstm_116/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_38/lstm_116/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_38/lstm_116/zerosFill,sequential_38/lstm_116/zeros/packed:output:0+sequential_38/lstm_116/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_38/lstm_116/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_38/lstm_116/zeros_1/packedPack-sequential_38/lstm_116/strided_slice:output:00sequential_38/lstm_116/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_38/lstm_116/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_38/lstm_116/zeros_1Fill.sequential_38/lstm_116/zeros_1/packed:output:0-sequential_38/lstm_116/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_38/lstm_116/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_38/lstm_116/transpose	Transpose&sequential_38/lstm_115/transpose_1:y:0.sequential_38/lstm_116/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_38/lstm_116/Shape_1Shape$sequential_38/lstm_116/transpose:y:0*
T0*
_output_shapes
:v
,sequential_38/lstm_116/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_38/lstm_116/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_38/lstm_116/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_38/lstm_116/strided_slice_1StridedSlice'sequential_38/lstm_116/Shape_1:output:05sequential_38/lstm_116/strided_slice_1/stack:output:07sequential_38/lstm_116/strided_slice_1/stack_1:output:07sequential_38/lstm_116/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_38/lstm_116/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_38/lstm_116/TensorArrayV2TensorListReserve;sequential_38/lstm_116/TensorArrayV2/element_shape:output:0/sequential_38/lstm_116/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_38/lstm_116/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_38/lstm_116/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_38/lstm_116/transpose:y:0Usequential_38/lstm_116/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_38/lstm_116/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_38/lstm_116/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_38/lstm_116/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_38/lstm_116/strided_slice_2StridedSlice$sequential_38/lstm_116/transpose:y:05sequential_38/lstm_116/strided_slice_2/stack:output:07sequential_38/lstm_116/strided_slice_2/stack_1:output:07sequential_38/lstm_116/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_38/lstm_116/lstm_cell_200/MatMul/ReadVariableOpReadVariableOpCsequential_38_lstm_116_lstm_cell_200_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_38/lstm_116/lstm_cell_200/MatMulMatMul/sequential_38/lstm_116/strided_slice_2:output:0Bsequential_38/lstm_116/lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_38/lstm_116/lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOpEsequential_38_lstm_116_lstm_cell_200_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_38/lstm_116/lstm_cell_200/MatMul_1MatMul%sequential_38/lstm_116/zeros:output:0Dsequential_38/lstm_116/lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_38/lstm_116/lstm_cell_200/addAddV25sequential_38/lstm_116/lstm_cell_200/MatMul:product:07sequential_38/lstm_116/lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_38/lstm_116/lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOpDsequential_38_lstm_116_lstm_cell_200_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_38/lstm_116/lstm_cell_200/BiasAddBiasAdd,sequential_38/lstm_116/lstm_cell_200/add:z:0Csequential_38/lstm_116/lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_38/lstm_116/lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_38/lstm_116/lstm_cell_200/splitSplit=sequential_38/lstm_116/lstm_cell_200/split/split_dim:output:05sequential_38/lstm_116/lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_38/lstm_116/lstm_cell_200/SigmoidSigmoid3sequential_38/lstm_116/lstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_38/lstm_116/lstm_cell_200/Sigmoid_1Sigmoid3sequential_38/lstm_116/lstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_38/lstm_116/lstm_cell_200/mulMul2sequential_38/lstm_116/lstm_cell_200/Sigmoid_1:y:0'sequential_38/lstm_116/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_38/lstm_116/lstm_cell_200/ReluRelu3sequential_38/lstm_116/lstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_38/lstm_116/lstm_cell_200/mul_1Mul0sequential_38/lstm_116/lstm_cell_200/Sigmoid:y:07sequential_38/lstm_116/lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_38/lstm_116/lstm_cell_200/add_1AddV2,sequential_38/lstm_116/lstm_cell_200/mul:z:0.sequential_38/lstm_116/lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_38/lstm_116/lstm_cell_200/Sigmoid_2Sigmoid3sequential_38/lstm_116/lstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_38/lstm_116/lstm_cell_200/Relu_1Relu.sequential_38/lstm_116/lstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_38/lstm_116/lstm_cell_200/mul_2Mul2sequential_38/lstm_116/lstm_cell_200/Sigmoid_2:y:09sequential_38/lstm_116/lstm_cell_200/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_38/lstm_116/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_38/lstm_116/TensorArrayV2_1TensorListReserve=sequential_38/lstm_116/TensorArrayV2_1/element_shape:output:0/sequential_38/lstm_116/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_38/lstm_116/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_38/lstm_116/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_38/lstm_116/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_38/lstm_116/whileWhile2sequential_38/lstm_116/while/loop_counter:output:08sequential_38/lstm_116/while/maximum_iterations:output:0$sequential_38/lstm_116/time:output:0/sequential_38/lstm_116/TensorArrayV2_1:handle:0%sequential_38/lstm_116/zeros:output:0'sequential_38/lstm_116/zeros_1:output:0/sequential_38/lstm_116/strided_slice_1:output:0Nsequential_38/lstm_116/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_38_lstm_116_lstm_cell_200_matmul_readvariableop_resourceEsequential_38_lstm_116_lstm_cell_200_matmul_1_readvariableop_resourceDsequential_38_lstm_116_lstm_cell_200_biasadd_readvariableop_resource*
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
)sequential_38_lstm_116_while_body_1209210*5
cond-R+
)sequential_38_lstm_116_while_cond_1209209*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_38/lstm_116/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_38/lstm_116/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_38/lstm_116/while:output:3Psequential_38/lstm_116/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_38/lstm_116/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_38/lstm_116/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_38/lstm_116/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_38/lstm_116/strided_slice_3StridedSliceBsequential_38/lstm_116/TensorArrayV2Stack/TensorListStack:tensor:05sequential_38/lstm_116/strided_slice_3/stack:output:07sequential_38/lstm_116/strided_slice_3/stack_1:output:07sequential_38/lstm_116/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_38/lstm_116/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_38/lstm_116/transpose_1	TransposeBsequential_38/lstm_116/TensorArrayV2Stack/TensorListStack:tensor:00sequential_38/lstm_116/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_38/lstm_116/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_38/dense_38/MatMul/ReadVariableOpReadVariableOp5sequential_38_dense_38_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_38/dense_38/MatMulMatMul/sequential_38/lstm_116/strided_slice_3:output:04sequential_38/dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_38/dense_38/BiasAdd/ReadVariableOpReadVariableOp6sequential_38_dense_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_38/dense_38/BiasAddBiasAdd'sequential_38/dense_38/MatMul:product:05sequential_38/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_38/dense_38/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_38/dense_38/BiasAdd/ReadVariableOp-^sequential_38/dense_38/MatMul/ReadVariableOp<^sequential_38/lstm_114/lstm_cell_198/BiasAdd/ReadVariableOp;^sequential_38/lstm_114/lstm_cell_198/MatMul/ReadVariableOp=^sequential_38/lstm_114/lstm_cell_198/MatMul_1/ReadVariableOp^sequential_38/lstm_114/while<^sequential_38/lstm_115/lstm_cell_199/BiasAdd/ReadVariableOp;^sequential_38/lstm_115/lstm_cell_199/MatMul/ReadVariableOp=^sequential_38/lstm_115/lstm_cell_199/MatMul_1/ReadVariableOp^sequential_38/lstm_115/while<^sequential_38/lstm_116/lstm_cell_200/BiasAdd/ReadVariableOp;^sequential_38/lstm_116/lstm_cell_200/MatMul/ReadVariableOp=^sequential_38/lstm_116/lstm_cell_200/MatMul_1/ReadVariableOp^sequential_38/lstm_116/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_38/dense_38/BiasAdd/ReadVariableOp-sequential_38/dense_38/BiasAdd/ReadVariableOp2\
,sequential_38/dense_38/MatMul/ReadVariableOp,sequential_38/dense_38/MatMul/ReadVariableOp2z
;sequential_38/lstm_114/lstm_cell_198/BiasAdd/ReadVariableOp;sequential_38/lstm_114/lstm_cell_198/BiasAdd/ReadVariableOp2x
:sequential_38/lstm_114/lstm_cell_198/MatMul/ReadVariableOp:sequential_38/lstm_114/lstm_cell_198/MatMul/ReadVariableOp2|
<sequential_38/lstm_114/lstm_cell_198/MatMul_1/ReadVariableOp<sequential_38/lstm_114/lstm_cell_198/MatMul_1/ReadVariableOp2<
sequential_38/lstm_114/whilesequential_38/lstm_114/while2z
;sequential_38/lstm_115/lstm_cell_199/BiasAdd/ReadVariableOp;sequential_38/lstm_115/lstm_cell_199/BiasAdd/ReadVariableOp2x
:sequential_38/lstm_115/lstm_cell_199/MatMul/ReadVariableOp:sequential_38/lstm_115/lstm_cell_199/MatMul/ReadVariableOp2|
<sequential_38/lstm_115/lstm_cell_199/MatMul_1/ReadVariableOp<sequential_38/lstm_115/lstm_cell_199/MatMul_1/ReadVariableOp2<
sequential_38/lstm_115/whilesequential_38/lstm_115/while2z
;sequential_38/lstm_116/lstm_cell_200/BiasAdd/ReadVariableOp;sequential_38/lstm_116/lstm_cell_200/BiasAdd/ReadVariableOp2x
:sequential_38/lstm_116/lstm_cell_200/MatMul/ReadVariableOp:sequential_38/lstm_116/lstm_cell_200/MatMul/ReadVariableOp2|
<sequential_38/lstm_116/lstm_cell_200/MatMul_1/ReadVariableOp<sequential_38/lstm_116/lstm_cell_200/MatMul_1/ReadVariableOp2<
sequential_38/lstm_116/whilesequential_38/lstm_116/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_114_input
?

?
lstm_114_while_cond_1211672.
*lstm_114_while_lstm_114_while_loop_counter4
0lstm_114_while_lstm_114_while_maximum_iterations
lstm_114_while_placeholder 
lstm_114_while_placeholder_1 
lstm_114_while_placeholder_2 
lstm_114_while_placeholder_30
,lstm_114_while_less_lstm_114_strided_slice_1G
Clstm_114_while_lstm_114_while_cond_1211672___redundant_placeholder0G
Clstm_114_while_lstm_114_while_cond_1211672___redundant_placeholder1G
Clstm_114_while_lstm_114_while_cond_1211672___redundant_placeholder2G
Clstm_114_while_lstm_114_while_cond_1211672___redundant_placeholder3
lstm_114_while_identity
?
lstm_114/while/LessLesslstm_114_while_placeholder,lstm_114_while_less_lstm_114_strided_slice_1*
T0*
_output_shapes
: ]
lstm_114/while/IdentityIdentitylstm_114/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_114_while_identity lstm_114/while/Identity:output:0*(
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
while_cond_1210414
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1210414___redundant_placeholder05
1while_while_cond_1210414___redundant_placeholder15
1while_while_cond_1210414___redundant_placeholder25
1while_while_cond_1210414___redundant_placeholder3
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
*__inference_lstm_114_layer_call_fn_1212501

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
E__inference_lstm_114_layer_call_and_return_conditional_losses_1210499s
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
while_body_1214232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_200_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_200_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_200_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_200_matmul_readvariableop_resource:2(F
4while_lstm_cell_200_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_200_biasadd_readvariableop_resource:(??*while/lstm_cell_200/BiasAdd/ReadVariableOp?)while/lstm_cell_200/MatMul/ReadVariableOp?+while/lstm_cell_200/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_200/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_200_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_200/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_200_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_200/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_200/addAddV2$while/lstm_cell_200/MatMul:product:0&while/lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_200_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_200/BiasAddBiasAddwhile/lstm_cell_200/add:z:02while/lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_200/splitSplit,while/lstm_cell_200/split/split_dim:output:0$while/lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_200/SigmoidSigmoid"while/lstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_200/Sigmoid_1Sigmoid"while/lstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mulMul!while/lstm_cell_200/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_200/ReluRelu"while/lstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mul_1Mulwhile/lstm_cell_200/Sigmoid:y:0&while/lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/add_1AddV2while/lstm_cell_200/mul:z:0while/lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_200/Sigmoid_2Sigmoid"while/lstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_200/Relu_1Reluwhile/lstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mul_2Mul!while/lstm_cell_200/Sigmoid_2:y:0(while/lstm_cell_200/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_200/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_200/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_200/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_200/BiasAdd/ReadVariableOp*^while/lstm_cell_200/MatMul/ReadVariableOp,^while/lstm_cell_200/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_200_biasadd_readvariableop_resource5while_lstm_cell_200_biasadd_readvariableop_resource_0"n
4while_lstm_cell_200_matmul_1_readvariableop_resource6while_lstm_cell_200_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_200_matmul_readvariableop_resource4while_lstm_cell_200_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_200/BiasAdd/ReadVariableOp*while/lstm_cell_200/BiasAdd/ReadVariableOp2V
)while/lstm_cell_200/MatMul/ReadVariableOp)while/lstm_cell_200/MatMul/ReadVariableOp2Z
+while/lstm_cell_200/MatMul_1/ReadVariableOp+while/lstm_cell_200/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_114_layer_call_and_return_conditional_losses_1210499

inputs?
,lstm_cell_198_matmul_readvariableop_resource:	?A
.lstm_cell_198_matmul_1_readvariableop_resource:	d?<
-lstm_cell_198_biasadd_readvariableop_resource:	?
identity??$lstm_cell_198/BiasAdd/ReadVariableOp?#lstm_cell_198/MatMul/ReadVariableOp?%lstm_cell_198/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_198/MatMul/ReadVariableOpReadVariableOp,lstm_cell_198_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_198/MatMulMatMulstrided_slice_2:output:0+lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_198_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_198/MatMul_1MatMulzeros:output:0-lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_198/addAddV2lstm_cell_198/MatMul:product:0 lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_198_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_198/BiasAddBiasAddlstm_cell_198/add:z:0,lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_198/splitSplit&lstm_cell_198/split/split_dim:output:0lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_198/SigmoidSigmoidlstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_198/Sigmoid_1Sigmoidlstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_198/mulMullstm_cell_198/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_198/ReluRelulstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_198/mul_1Mullstm_cell_198/Sigmoid:y:0 lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_198/add_1AddV2lstm_cell_198/mul:z:0lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_198/Sigmoid_2Sigmoidlstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_198/Relu_1Relulstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_198/mul_2Mullstm_cell_198/Sigmoid_2:y:0"lstm_cell_198/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_198_matmul_readvariableop_resource.lstm_cell_198_matmul_1_readvariableop_resource-lstm_cell_198_biasadd_readvariableop_resource*
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
while_body_1210415*
condR
while_cond_1210414*K
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
NoOpNoOp%^lstm_cell_198/BiasAdd/ReadVariableOp$^lstm_cell_198/MatMul/ReadVariableOp&^lstm_cell_198/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_198/BiasAdd/ReadVariableOp$lstm_cell_198/BiasAdd/ReadVariableOp2J
#lstm_cell_198/MatMul/ReadVariableOp#lstm_cell_198/MatMul/ReadVariableOp2N
%lstm_cell_198/MatMul_1/ReadVariableOp%lstm_cell_198/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1209921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1209921___redundant_placeholder05
1while_while_cond_1209921___redundant_placeholder15
1while_while_cond_1209921___redundant_placeholder25
1while_while_cond_1209921___redundant_placeholder3
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
/__inference_lstm_cell_199_layer_call_fn_1214467

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
J__inference_lstm_cell_199_layer_call_and_return_conditional_losses_1209863o
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
J__inference_lstm_cell_199_layer_call_and_return_conditional_losses_1214531

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
?S
?
)sequential_38_lstm_115_while_body_1209071J
Fsequential_38_lstm_115_while_sequential_38_lstm_115_while_loop_counterP
Lsequential_38_lstm_115_while_sequential_38_lstm_115_while_maximum_iterations,
(sequential_38_lstm_115_while_placeholder.
*sequential_38_lstm_115_while_placeholder_1.
*sequential_38_lstm_115_while_placeholder_2.
*sequential_38_lstm_115_while_placeholder_3I
Esequential_38_lstm_115_while_sequential_38_lstm_115_strided_slice_1_0?
?sequential_38_lstm_115_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_115_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_38_lstm_115_while_lstm_cell_199_matmul_readvariableop_resource_0:	d?`
Msequential_38_lstm_115_while_lstm_cell_199_matmul_1_readvariableop_resource_0:	2?[
Lsequential_38_lstm_115_while_lstm_cell_199_biasadd_readvariableop_resource_0:	?)
%sequential_38_lstm_115_while_identity+
'sequential_38_lstm_115_while_identity_1+
'sequential_38_lstm_115_while_identity_2+
'sequential_38_lstm_115_while_identity_3+
'sequential_38_lstm_115_while_identity_4+
'sequential_38_lstm_115_while_identity_5G
Csequential_38_lstm_115_while_sequential_38_lstm_115_strided_slice_1?
sequential_38_lstm_115_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_115_tensorarrayunstack_tensorlistfromtensor\
Isequential_38_lstm_115_while_lstm_cell_199_matmul_readvariableop_resource:	d?^
Ksequential_38_lstm_115_while_lstm_cell_199_matmul_1_readvariableop_resource:	2?Y
Jsequential_38_lstm_115_while_lstm_cell_199_biasadd_readvariableop_resource:	???Asequential_38/lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOp?@sequential_38/lstm_115/while/lstm_cell_199/MatMul/ReadVariableOp?Bsequential_38/lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOp?
Nsequential_38/lstm_115/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_38/lstm_115/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_38_lstm_115_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_115_tensorarrayunstack_tensorlistfromtensor_0(sequential_38_lstm_115_while_placeholderWsequential_38/lstm_115/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_38/lstm_115/while/lstm_cell_199/MatMul/ReadVariableOpReadVariableOpKsequential_38_lstm_115_while_lstm_cell_199_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_38/lstm_115/while/lstm_cell_199/MatMulMatMulGsequential_38/lstm_115/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_38/lstm_115/while/lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_38/lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOpMsequential_38_lstm_115_while_lstm_cell_199_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_38/lstm_115/while/lstm_cell_199/MatMul_1MatMul*sequential_38_lstm_115_while_placeholder_2Jsequential_38/lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_38/lstm_115/while/lstm_cell_199/addAddV2;sequential_38/lstm_115/while/lstm_cell_199/MatMul:product:0=sequential_38/lstm_115/while/lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_38/lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOpLsequential_38_lstm_115_while_lstm_cell_199_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_38/lstm_115/while/lstm_cell_199/BiasAddBiasAdd2sequential_38/lstm_115/while/lstm_cell_199/add:z:0Isequential_38/lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_38/lstm_115/while/lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_38/lstm_115/while/lstm_cell_199/splitSplitCsequential_38/lstm_115/while/lstm_cell_199/split/split_dim:output:0;sequential_38/lstm_115/while/lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_38/lstm_115/while/lstm_cell_199/SigmoidSigmoid9sequential_38/lstm_115/while/lstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_38/lstm_115/while/lstm_cell_199/Sigmoid_1Sigmoid9sequential_38/lstm_115/while/lstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_38/lstm_115/while/lstm_cell_199/mulMul8sequential_38/lstm_115/while/lstm_cell_199/Sigmoid_1:y:0*sequential_38_lstm_115_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_38/lstm_115/while/lstm_cell_199/ReluRelu9sequential_38/lstm_115/while/lstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_38/lstm_115/while/lstm_cell_199/mul_1Mul6sequential_38/lstm_115/while/lstm_cell_199/Sigmoid:y:0=sequential_38/lstm_115/while/lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_38/lstm_115/while/lstm_cell_199/add_1AddV22sequential_38/lstm_115/while/lstm_cell_199/mul:z:04sequential_38/lstm_115/while/lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_38/lstm_115/while/lstm_cell_199/Sigmoid_2Sigmoid9sequential_38/lstm_115/while/lstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_38/lstm_115/while/lstm_cell_199/Relu_1Relu4sequential_38/lstm_115/while/lstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_38/lstm_115/while/lstm_cell_199/mul_2Mul8sequential_38/lstm_115/while/lstm_cell_199/Sigmoid_2:y:0?sequential_38/lstm_115/while/lstm_cell_199/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_38/lstm_115/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_38_lstm_115_while_placeholder_1(sequential_38_lstm_115_while_placeholder4sequential_38/lstm_115/while/lstm_cell_199/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_38/lstm_115/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_38/lstm_115/while/addAddV2(sequential_38_lstm_115_while_placeholder+sequential_38/lstm_115/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_38/lstm_115/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_38/lstm_115/while/add_1AddV2Fsequential_38_lstm_115_while_sequential_38_lstm_115_while_loop_counter-sequential_38/lstm_115/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_38/lstm_115/while/IdentityIdentity&sequential_38/lstm_115/while/add_1:z:0"^sequential_38/lstm_115/while/NoOp*
T0*
_output_shapes
: ?
'sequential_38/lstm_115/while/Identity_1IdentityLsequential_38_lstm_115_while_sequential_38_lstm_115_while_maximum_iterations"^sequential_38/lstm_115/while/NoOp*
T0*
_output_shapes
: ?
'sequential_38/lstm_115/while/Identity_2Identity$sequential_38/lstm_115/while/add:z:0"^sequential_38/lstm_115/while/NoOp*
T0*
_output_shapes
: ?
'sequential_38/lstm_115/while/Identity_3IdentityQsequential_38/lstm_115/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_38/lstm_115/while/NoOp*
T0*
_output_shapes
: ?
'sequential_38/lstm_115/while/Identity_4Identity4sequential_38/lstm_115/while/lstm_cell_199/mul_2:z:0"^sequential_38/lstm_115/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_38/lstm_115/while/Identity_5Identity4sequential_38/lstm_115/while/lstm_cell_199/add_1:z:0"^sequential_38/lstm_115/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_38/lstm_115/while/NoOpNoOpB^sequential_38/lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOpA^sequential_38/lstm_115/while/lstm_cell_199/MatMul/ReadVariableOpC^sequential_38/lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_38_lstm_115_while_identity.sequential_38/lstm_115/while/Identity:output:0"[
'sequential_38_lstm_115_while_identity_10sequential_38/lstm_115/while/Identity_1:output:0"[
'sequential_38_lstm_115_while_identity_20sequential_38/lstm_115/while/Identity_2:output:0"[
'sequential_38_lstm_115_while_identity_30sequential_38/lstm_115/while/Identity_3:output:0"[
'sequential_38_lstm_115_while_identity_40sequential_38/lstm_115/while/Identity_4:output:0"[
'sequential_38_lstm_115_while_identity_50sequential_38/lstm_115/while/Identity_5:output:0"?
Jsequential_38_lstm_115_while_lstm_cell_199_biasadd_readvariableop_resourceLsequential_38_lstm_115_while_lstm_cell_199_biasadd_readvariableop_resource_0"?
Ksequential_38_lstm_115_while_lstm_cell_199_matmul_1_readvariableop_resourceMsequential_38_lstm_115_while_lstm_cell_199_matmul_1_readvariableop_resource_0"?
Isequential_38_lstm_115_while_lstm_cell_199_matmul_readvariableop_resourceKsequential_38_lstm_115_while_lstm_cell_199_matmul_readvariableop_resource_0"?
Csequential_38_lstm_115_while_sequential_38_lstm_115_strided_slice_1Esequential_38_lstm_115_while_sequential_38_lstm_115_strided_slice_1_0"?
sequential_38_lstm_115_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_115_tensorarrayunstack_tensorlistfromtensor?sequential_38_lstm_115_while_tensorarrayv2read_tensorlistgetitem_sequential_38_lstm_115_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_38/lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOpAsequential_38/lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOp2?
@sequential_38/lstm_115/while/lstm_cell_199/MatMul/ReadVariableOp@sequential_38/lstm_115/while/lstm_cell_199/MatMul/ReadVariableOp2?
Bsequential_38/lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOpBsequential_38/lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_200_layer_call_fn_1214548

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
J__inference_lstm_cell_200_layer_call_and_return_conditional_losses_1210067o
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
while_body_1210715
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_200_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_200_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_200_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_200_matmul_readvariableop_resource:2(F
4while_lstm_cell_200_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_200_biasadd_readvariableop_resource:(??*while/lstm_cell_200/BiasAdd/ReadVariableOp?)while/lstm_cell_200/MatMul/ReadVariableOp?+while/lstm_cell_200/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_200/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_200_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_200/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_200_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_200/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_200/addAddV2$while/lstm_cell_200/MatMul:product:0&while/lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_200_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_200/BiasAddBiasAddwhile/lstm_cell_200/add:z:02while/lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_200/splitSplit,while/lstm_cell_200/split/split_dim:output:0$while/lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_200/SigmoidSigmoid"while/lstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_200/Sigmoid_1Sigmoid"while/lstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mulMul!while/lstm_cell_200/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_200/ReluRelu"while/lstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mul_1Mulwhile/lstm_cell_200/Sigmoid:y:0&while/lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/add_1AddV2while/lstm_cell_200/mul:z:0while/lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_200/Sigmoid_2Sigmoid"while/lstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_200/Relu_1Reluwhile/lstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mul_2Mul!while/lstm_cell_200/Sigmoid_2:y:0(while/lstm_cell_200/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_200/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_200/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_200/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_200/BiasAdd/ReadVariableOp*^while/lstm_cell_200/MatMul/ReadVariableOp,^while/lstm_cell_200/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_200_biasadd_readvariableop_resource5while_lstm_cell_200_biasadd_readvariableop_resource_0"n
4while_lstm_cell_200_matmul_1_readvariableop_resource6while_lstm_cell_200_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_200_matmul_readvariableop_resource4while_lstm_cell_200_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_200/BiasAdd/ReadVariableOp*while/lstm_cell_200/BiasAdd/ReadVariableOp2V
)while/lstm_cell_200/MatMul/ReadVariableOp)while/lstm_cell_200/MatMul/ReadVariableOp2Z
+while/lstm_cell_200/MatMul_1/ReadVariableOp+while/lstm_cell_200/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_116_while_body_1211951.
*lstm_116_while_lstm_116_while_loop_counter4
0lstm_116_while_lstm_116_while_maximum_iterations
lstm_116_while_placeholder 
lstm_116_while_placeholder_1 
lstm_116_while_placeholder_2 
lstm_116_while_placeholder_3-
)lstm_116_while_lstm_116_strided_slice_1_0i
elstm_116_while_tensorarrayv2read_tensorlistgetitem_lstm_116_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_116_while_lstm_cell_200_matmul_readvariableop_resource_0:2(Q
?lstm_116_while_lstm_cell_200_matmul_1_readvariableop_resource_0:
(L
>lstm_116_while_lstm_cell_200_biasadd_readvariableop_resource_0:(
lstm_116_while_identity
lstm_116_while_identity_1
lstm_116_while_identity_2
lstm_116_while_identity_3
lstm_116_while_identity_4
lstm_116_while_identity_5+
'lstm_116_while_lstm_116_strided_slice_1g
clstm_116_while_tensorarrayv2read_tensorlistgetitem_lstm_116_tensorarrayunstack_tensorlistfromtensorM
;lstm_116_while_lstm_cell_200_matmul_readvariableop_resource:2(O
=lstm_116_while_lstm_cell_200_matmul_1_readvariableop_resource:
(J
<lstm_116_while_lstm_cell_200_biasadd_readvariableop_resource:(??3lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOp?2lstm_116/while/lstm_cell_200/MatMul/ReadVariableOp?4lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOp?
@lstm_116/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_116/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_116_while_tensorarrayv2read_tensorlistgetitem_lstm_116_tensorarrayunstack_tensorlistfromtensor_0lstm_116_while_placeholderIlstm_116/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_116/while/lstm_cell_200/MatMul/ReadVariableOpReadVariableOp=lstm_116_while_lstm_cell_200_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_116/while/lstm_cell_200/MatMulMatMul9lstm_116/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_116/while/lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOp?lstm_116_while_lstm_cell_200_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_116/while/lstm_cell_200/MatMul_1MatMullstm_116_while_placeholder_2<lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_116/while/lstm_cell_200/addAddV2-lstm_116/while/lstm_cell_200/MatMul:product:0/lstm_116/while/lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOp>lstm_116_while_lstm_cell_200_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_116/while/lstm_cell_200/BiasAddBiasAdd$lstm_116/while/lstm_cell_200/add:z:0;lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_116/while/lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_116/while/lstm_cell_200/splitSplit5lstm_116/while/lstm_cell_200/split/split_dim:output:0-lstm_116/while/lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_116/while/lstm_cell_200/SigmoidSigmoid+lstm_116/while/lstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_116/while/lstm_cell_200/Sigmoid_1Sigmoid+lstm_116/while/lstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_116/while/lstm_cell_200/mulMul*lstm_116/while/lstm_cell_200/Sigmoid_1:y:0lstm_116_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_116/while/lstm_cell_200/ReluRelu+lstm_116/while/lstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_116/while/lstm_cell_200/mul_1Mul(lstm_116/while/lstm_cell_200/Sigmoid:y:0/lstm_116/while/lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_116/while/lstm_cell_200/add_1AddV2$lstm_116/while/lstm_cell_200/mul:z:0&lstm_116/while/lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_116/while/lstm_cell_200/Sigmoid_2Sigmoid+lstm_116/while/lstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_116/while/lstm_cell_200/Relu_1Relu&lstm_116/while/lstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_116/while/lstm_cell_200/mul_2Mul*lstm_116/while/lstm_cell_200/Sigmoid_2:y:01lstm_116/while/lstm_cell_200/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_116/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_116_while_placeholder_1lstm_116_while_placeholder&lstm_116/while/lstm_cell_200/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_116/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_116/while/addAddV2lstm_116_while_placeholderlstm_116/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_116/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_116/while/add_1AddV2*lstm_116_while_lstm_116_while_loop_counterlstm_116/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_116/while/IdentityIdentitylstm_116/while/add_1:z:0^lstm_116/while/NoOp*
T0*
_output_shapes
: ?
lstm_116/while/Identity_1Identity0lstm_116_while_lstm_116_while_maximum_iterations^lstm_116/while/NoOp*
T0*
_output_shapes
: t
lstm_116/while/Identity_2Identitylstm_116/while/add:z:0^lstm_116/while/NoOp*
T0*
_output_shapes
: ?
lstm_116/while/Identity_3IdentityClstm_116/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_116/while/NoOp*
T0*
_output_shapes
: ?
lstm_116/while/Identity_4Identity&lstm_116/while/lstm_cell_200/mul_2:z:0^lstm_116/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_116/while/Identity_5Identity&lstm_116/while/lstm_cell_200/add_1:z:0^lstm_116/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_116/while/NoOpNoOp4^lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOp3^lstm_116/while/lstm_cell_200/MatMul/ReadVariableOp5^lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_116_while_identity lstm_116/while/Identity:output:0"?
lstm_116_while_identity_1"lstm_116/while/Identity_1:output:0"?
lstm_116_while_identity_2"lstm_116/while/Identity_2:output:0"?
lstm_116_while_identity_3"lstm_116/while/Identity_3:output:0"?
lstm_116_while_identity_4"lstm_116/while/Identity_4:output:0"?
lstm_116_while_identity_5"lstm_116/while/Identity_5:output:0"T
'lstm_116_while_lstm_116_strided_slice_1)lstm_116_while_lstm_116_strided_slice_1_0"~
<lstm_116_while_lstm_cell_200_biasadd_readvariableop_resource>lstm_116_while_lstm_cell_200_biasadd_readvariableop_resource_0"?
=lstm_116_while_lstm_cell_200_matmul_1_readvariableop_resource?lstm_116_while_lstm_cell_200_matmul_1_readvariableop_resource_0"|
;lstm_116_while_lstm_cell_200_matmul_readvariableop_resource=lstm_116_while_lstm_cell_200_matmul_readvariableop_resource_0"?
clstm_116_while_tensorarrayv2read_tensorlistgetitem_lstm_116_tensorarrayunstack_tensorlistfromtensorelstm_116_while_tensorarrayv2read_tensorlistgetitem_lstm_116_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOp3lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOp2h
2lstm_116/while/lstm_cell_200/MatMul/ReadVariableOp2lstm_116/while/lstm_cell_200/MatMul/ReadVariableOp2l
4lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOp4lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1213473
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_199_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_199_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_199_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_199_matmul_readvariableop_resource:	d?G
4while_lstm_cell_199_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_199_biasadd_readvariableop_resource:	???*while/lstm_cell_199/BiasAdd/ReadVariableOp?)while/lstm_cell_199/MatMul/ReadVariableOp?+while/lstm_cell_199/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_199/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_199_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_199/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_199_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_199/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_199/addAddV2$while/lstm_cell_199/MatMul:product:0&while/lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_199_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_199/BiasAddBiasAddwhile/lstm_cell_199/add:z:02while/lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_199/splitSplit,while/lstm_cell_199/split/split_dim:output:0$while/lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_199/SigmoidSigmoid"while/lstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_199/Sigmoid_1Sigmoid"while/lstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mulMul!while/lstm_cell_199/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_199/ReluRelu"while/lstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mul_1Mulwhile/lstm_cell_199/Sigmoid:y:0&while/lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/add_1AddV2while/lstm_cell_199/mul:z:0while/lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_199/Sigmoid_2Sigmoid"while/lstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_199/Relu_1Reluwhile/lstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mul_2Mul!while/lstm_cell_199/Sigmoid_2:y:0(while/lstm_cell_199/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_199/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_199/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_199/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_199/BiasAdd/ReadVariableOp*^while/lstm_cell_199/MatMul/ReadVariableOp,^while/lstm_cell_199/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_199_biasadd_readvariableop_resource5while_lstm_cell_199_biasadd_readvariableop_resource_0"n
4while_lstm_cell_199_matmul_1_readvariableop_resource6while_lstm_cell_199_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_199_matmul_readvariableop_resource4while_lstm_cell_199_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_199/BiasAdd/ReadVariableOp*while/lstm_cell_199/BiasAdd/ReadVariableOp2V
)while/lstm_cell_199/MatMul/ReadVariableOp)while/lstm_cell_199/MatMul/ReadVariableOp2Z
+while/lstm_cell_199/MatMul_1/ReadVariableOp+while/lstm_cell_199/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_dense_38_layer_call_fn_1214325

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
E__inference_dense_38_layer_call_and_return_conditional_losses_1210817o
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
?8
?
while_body_1212857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_198_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_198_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_198_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_198_matmul_readvariableop_resource:	?G
4while_lstm_cell_198_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_198_biasadd_readvariableop_resource:	???*while/lstm_cell_198/BiasAdd/ReadVariableOp?)while/lstm_cell_198/MatMul/ReadVariableOp?+while/lstm_cell_198/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_198/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_198_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_198/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_198_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_198/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_198/addAddV2$while/lstm_cell_198/MatMul:product:0&while/lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_198_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_198/BiasAddBiasAddwhile/lstm_cell_198/add:z:02while/lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_198/splitSplit,while/lstm_cell_198/split/split_dim:output:0$while/lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_198/SigmoidSigmoid"while/lstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_198/Sigmoid_1Sigmoid"while/lstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mulMul!while/lstm_cell_198/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_198/ReluRelu"while/lstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mul_1Mulwhile/lstm_cell_198/Sigmoid:y:0&while/lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/add_1AddV2while/lstm_cell_198/mul:z:0while/lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_198/Sigmoid_2Sigmoid"while/lstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_198/Relu_1Reluwhile/lstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mul_2Mul!while/lstm_cell_198/Sigmoid_2:y:0(while/lstm_cell_198/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_198/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_198/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_198/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_198/BiasAdd/ReadVariableOp*^while/lstm_cell_198/MatMul/ReadVariableOp,^while/lstm_cell_198/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_198_biasadd_readvariableop_resource5while_lstm_cell_198_biasadd_readvariableop_resource_0"n
4while_lstm_cell_198_matmul_1_readvariableop_resource6while_lstm_cell_198_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_198_matmul_readvariableop_resource4while_lstm_cell_198_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_198/BiasAdd/ReadVariableOp*while/lstm_cell_198/BiasAdd/ReadVariableOp2V
)while/lstm_cell_198/MatMul/ReadVariableOp)while/lstm_cell_198/MatMul/ReadVariableOp2Z
+while/lstm_cell_198/MatMul_1/ReadVariableOp+while/lstm_cell_198/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_198_layer_call_and_return_conditional_losses_1214433

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
?
?
J__inference_sequential_38_layer_call_and_return_conditional_losses_1211495
lstm_114_input#
lstm_114_1211468:	?#
lstm_114_1211470:	d?
lstm_114_1211472:	?#
lstm_115_1211475:	d?#
lstm_115_1211477:	2?
lstm_115_1211479:	?"
lstm_116_1211482:2("
lstm_116_1211484:
(
lstm_116_1211486:("
dense_38_1211489:

dense_38_1211491:
identity?? dense_38/StatefulPartitionedCall? lstm_114/StatefulPartitionedCall? lstm_115/StatefulPartitionedCall? lstm_116/StatefulPartitionedCall?
 lstm_114/StatefulPartitionedCallStatefulPartitionedCalllstm_114_inputlstm_114_1211468lstm_114_1211470lstm_114_1211472*
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
E__inference_lstm_114_layer_call_and_return_conditional_losses_1210499?
 lstm_115/StatefulPartitionedCallStatefulPartitionedCall)lstm_114/StatefulPartitionedCall:output:0lstm_115_1211475lstm_115_1211477lstm_115_1211479*
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
E__inference_lstm_115_layer_call_and_return_conditional_losses_1210649?
 lstm_116/StatefulPartitionedCallStatefulPartitionedCall)lstm_115/StatefulPartitionedCall:output:0lstm_116_1211482lstm_116_1211484lstm_116_1211486*
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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1210799?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)lstm_116/StatefulPartitionedCall:output:0dense_38_1211489dense_38_1211491*
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
E__inference_dense_38_layer_call_and_return_conditional_losses_1210817x
IdentityIdentity)dense_38/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_38/StatefulPartitionedCall!^lstm_114/StatefulPartitionedCall!^lstm_115/StatefulPartitionedCall!^lstm_116/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 lstm_114/StatefulPartitionedCall lstm_114/StatefulPartitionedCall2D
 lstm_115/StatefulPartitionedCall lstm_115/StatefulPartitionedCall2D
 lstm_116/StatefulPartitionedCall lstm_116/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_114_input
?
?
*__inference_lstm_114_layer_call_fn_1212479
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
E__inference_lstm_114_layer_call_and_return_conditional_losses_1209450|
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
while_cond_1212999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1212999___redundant_placeholder05
1while_while_cond_1212999___redundant_placeholder15
1while_while_cond_1212999___redundant_placeholder25
1while_while_cond_1212999___redundant_placeholder3
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
J__inference_sequential_38_layer_call_and_return_conditional_losses_1211413

inputs#
lstm_114_1211386:	?#
lstm_114_1211388:	d?
lstm_114_1211390:	?#
lstm_115_1211393:	d?#
lstm_115_1211395:	2?
lstm_115_1211397:	?"
lstm_116_1211400:2("
lstm_116_1211402:
(
lstm_116_1211404:("
dense_38_1211407:

dense_38_1211409:
identity?? dense_38/StatefulPartitionedCall? lstm_114/StatefulPartitionedCall? lstm_115/StatefulPartitionedCall? lstm_116/StatefulPartitionedCall?
 lstm_114/StatefulPartitionedCallStatefulPartitionedCallinputslstm_114_1211386lstm_114_1211388lstm_114_1211390*
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
E__inference_lstm_114_layer_call_and_return_conditional_losses_1211345?
 lstm_115/StatefulPartitionedCallStatefulPartitionedCall)lstm_114/StatefulPartitionedCall:output:0lstm_115_1211393lstm_115_1211395lstm_115_1211397*
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
E__inference_lstm_115_layer_call_and_return_conditional_losses_1211180?
 lstm_116/StatefulPartitionedCallStatefulPartitionedCall)lstm_115/StatefulPartitionedCall:output:0lstm_116_1211400lstm_116_1211402lstm_116_1211404*
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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1211015?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)lstm_116/StatefulPartitionedCall:output:0dense_38_1211407dense_38_1211409*
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
E__inference_dense_38_layer_call_and_return_conditional_losses_1210817x
IdentityIdentity)dense_38/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_38/StatefulPartitionedCall!^lstm_114/StatefulPartitionedCall!^lstm_115/StatefulPartitionedCall!^lstm_116/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 lstm_114/StatefulPartitionedCall lstm_114/StatefulPartitionedCall2D
 lstm_115/StatefulPartitionedCall lstm_115/StatefulPartitionedCall2D
 lstm_116/StatefulPartitionedCall lstm_116/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1212570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1212570___redundant_placeholder05
1while_while_cond_1212570___redundant_placeholder15
1while_while_cond_1212570___redundant_placeholder25
1while_while_cond_1212570___redundant_placeholder3
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
while_cond_1213329
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1213329___redundant_placeholder05
1while_while_cond_1213329___redundant_placeholder15
1while_while_cond_1213329___redundant_placeholder25
1while_while_cond_1213329___redundant_placeholder3
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
while_body_1210272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_200_1210296_0:2(/
while_lstm_cell_200_1210298_0:
(+
while_lstm_cell_200_1210300_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_200_1210296:2(-
while_lstm_cell_200_1210298:
()
while_lstm_cell_200_1210300:(??+while/lstm_cell_200/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_200/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_200_1210296_0while_lstm_cell_200_1210298_0while_lstm_cell_200_1210300_0*
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
J__inference_lstm_cell_200_layer_call_and_return_conditional_losses_1210213?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_200/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_200/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_200/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_200/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_200_1210296while_lstm_cell_200_1210296_0"<
while_lstm_cell_200_1210298while_lstm_cell_200_1210298_0"<
while_lstm_cell_200_1210300while_lstm_cell_200_1210300_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_200/StatefulPartitionedCall+while/lstm_cell_200/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_114_layer_call_fn_1212490
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
E__inference_lstm_114_layer_call_and_return_conditional_losses_1209641|
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
while_cond_1212713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1212713___redundant_placeholder05
1while_while_cond_1212713___redundant_placeholder15
1while_while_cond_1212713___redundant_placeholder25
1while_while_cond_1212713___redundant_placeholder3
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
?W
?
 __inference__traced_save_1214772
file_prefix.
*savev2_dense_38_kernel_read_readvariableop,
(savev2_dense_38_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_114_lstm_cell_114_kernel_read_readvariableopF
Bsavev2_lstm_114_lstm_cell_114_recurrent_kernel_read_readvariableop:
6savev2_lstm_114_lstm_cell_114_bias_read_readvariableop<
8savev2_lstm_115_lstm_cell_115_kernel_read_readvariableopF
Bsavev2_lstm_115_lstm_cell_115_recurrent_kernel_read_readvariableop:
6savev2_lstm_115_lstm_cell_115_bias_read_readvariableop<
8savev2_lstm_116_lstm_cell_116_kernel_read_readvariableopF
Bsavev2_lstm_116_lstm_cell_116_recurrent_kernel_read_readvariableop:
6savev2_lstm_116_lstm_cell_116_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_38_kernel_m_read_readvariableop3
/savev2_adam_dense_38_bias_m_read_readvariableopC
?savev2_adam_lstm_114_lstm_cell_114_kernel_m_read_readvariableopM
Isavev2_adam_lstm_114_lstm_cell_114_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_114_lstm_cell_114_bias_m_read_readvariableopC
?savev2_adam_lstm_115_lstm_cell_115_kernel_m_read_readvariableopM
Isavev2_adam_lstm_115_lstm_cell_115_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_115_lstm_cell_115_bias_m_read_readvariableopC
?savev2_adam_lstm_116_lstm_cell_116_kernel_m_read_readvariableopM
Isavev2_adam_lstm_116_lstm_cell_116_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_116_lstm_cell_116_bias_m_read_readvariableop5
1savev2_adam_dense_38_kernel_v_read_readvariableop3
/savev2_adam_dense_38_bias_v_read_readvariableopC
?savev2_adam_lstm_114_lstm_cell_114_kernel_v_read_readvariableopM
Isavev2_adam_lstm_114_lstm_cell_114_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_114_lstm_cell_114_bias_v_read_readvariableopC
?savev2_adam_lstm_115_lstm_cell_115_kernel_v_read_readvariableopM
Isavev2_adam_lstm_115_lstm_cell_115_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_115_lstm_cell_115_bias_v_read_readvariableopC
?savev2_adam_lstm_116_lstm_cell_116_kernel_v_read_readvariableopM
Isavev2_adam_lstm_116_lstm_cell_116_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_116_lstm_cell_116_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_38_kernel_read_readvariableop(savev2_dense_38_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_114_lstm_cell_114_kernel_read_readvariableopBsavev2_lstm_114_lstm_cell_114_recurrent_kernel_read_readvariableop6savev2_lstm_114_lstm_cell_114_bias_read_readvariableop8savev2_lstm_115_lstm_cell_115_kernel_read_readvariableopBsavev2_lstm_115_lstm_cell_115_recurrent_kernel_read_readvariableop6savev2_lstm_115_lstm_cell_115_bias_read_readvariableop8savev2_lstm_116_lstm_cell_116_kernel_read_readvariableopBsavev2_lstm_116_lstm_cell_116_recurrent_kernel_read_readvariableop6savev2_lstm_116_lstm_cell_116_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_38_kernel_m_read_readvariableop/savev2_adam_dense_38_bias_m_read_readvariableop?savev2_adam_lstm_114_lstm_cell_114_kernel_m_read_readvariableopIsavev2_adam_lstm_114_lstm_cell_114_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_114_lstm_cell_114_bias_m_read_readvariableop?savev2_adam_lstm_115_lstm_cell_115_kernel_m_read_readvariableopIsavev2_adam_lstm_115_lstm_cell_115_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_115_lstm_cell_115_bias_m_read_readvariableop?savev2_adam_lstm_116_lstm_cell_116_kernel_m_read_readvariableopIsavev2_adam_lstm_116_lstm_cell_116_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_116_lstm_cell_116_bias_m_read_readvariableop1savev2_adam_dense_38_kernel_v_read_readvariableop/savev2_adam_dense_38_bias_v_read_readvariableop?savev2_adam_lstm_114_lstm_cell_114_kernel_v_read_readvariableopIsavev2_adam_lstm_114_lstm_cell_114_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_114_lstm_cell_114_bias_v_read_readvariableop?savev2_adam_lstm_115_lstm_cell_115_kernel_v_read_readvariableopIsavev2_adam_lstm_115_lstm_cell_115_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_115_lstm_cell_115_bias_v_read_readvariableop?savev2_adam_lstm_116_lstm_cell_116_kernel_v_read_readvariableopIsavev2_adam_lstm_116_lstm_cell_116_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_116_lstm_cell_116_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_1213000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_198_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_198_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_198_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_198_matmul_readvariableop_resource:	?G
4while_lstm_cell_198_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_198_biasadd_readvariableop_resource:	???*while/lstm_cell_198/BiasAdd/ReadVariableOp?)while/lstm_cell_198/MatMul/ReadVariableOp?+while/lstm_cell_198/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_198/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_198_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_198/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_198_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_198/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_198/addAddV2$while/lstm_cell_198/MatMul:product:0&while/lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_198_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_198/BiasAddBiasAddwhile/lstm_cell_198/add:z:02while/lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_198/splitSplit,while/lstm_cell_198/split/split_dim:output:0$while/lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_198/SigmoidSigmoid"while/lstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_198/Sigmoid_1Sigmoid"while/lstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mulMul!while/lstm_cell_198/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_198/ReluRelu"while/lstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mul_1Mulwhile/lstm_cell_198/Sigmoid:y:0&while/lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/add_1AddV2while/lstm_cell_198/mul:z:0while/lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_198/Sigmoid_2Sigmoid"while/lstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_198/Relu_1Reluwhile/lstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mul_2Mul!while/lstm_cell_198/Sigmoid_2:y:0(while/lstm_cell_198/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_198/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_198/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_198/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_198/BiasAdd/ReadVariableOp*^while/lstm_cell_198/MatMul/ReadVariableOp,^while/lstm_cell_198/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_198_biasadd_readvariableop_resource5while_lstm_cell_198_biasadd_readvariableop_resource_0"n
4while_lstm_cell_198_matmul_1_readvariableop_resource6while_lstm_cell_198_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_198_matmul_readvariableop_resource4while_lstm_cell_198_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_198/BiasAdd/ReadVariableOp*while/lstm_cell_198/BiasAdd/ReadVariableOp2V
)while/lstm_cell_198/MatMul/ReadVariableOp)while/lstm_cell_198/MatMul/ReadVariableOp2Z
+while/lstm_cell_198/MatMul_1/ReadVariableOp+while/lstm_cell_198/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_116_layer_call_fn_1213744

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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1211015o
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
E__inference_lstm_115_layer_call_and_return_conditional_losses_1213414
inputs_0?
,lstm_cell_199_matmul_readvariableop_resource:	d?A
.lstm_cell_199_matmul_1_readvariableop_resource:	2?<
-lstm_cell_199_biasadd_readvariableop_resource:	?
identity??$lstm_cell_199/BiasAdd/ReadVariableOp?#lstm_cell_199/MatMul/ReadVariableOp?%lstm_cell_199/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_199/MatMul/ReadVariableOpReadVariableOp,lstm_cell_199_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_199/MatMulMatMulstrided_slice_2:output:0+lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_199_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_199/MatMul_1MatMulzeros:output:0-lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_199/addAddV2lstm_cell_199/MatMul:product:0 lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_199_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_199/BiasAddBiasAddlstm_cell_199/add:z:0,lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_199/splitSplit&lstm_cell_199/split/split_dim:output:0lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_199/SigmoidSigmoidlstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_199/Sigmoid_1Sigmoidlstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_199/mulMullstm_cell_199/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_199/ReluRelulstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_199/mul_1Mullstm_cell_199/Sigmoid:y:0 lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_199/add_1AddV2lstm_cell_199/mul:z:0lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_199/Sigmoid_2Sigmoidlstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_199/Relu_1Relulstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_199/mul_2Mullstm_cell_199/Sigmoid_2:y:0"lstm_cell_199/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_199_matmul_readvariableop_resource.lstm_cell_199_matmul_1_readvariableop_resource-lstm_cell_199_biasadd_readvariableop_resource*
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
while_body_1213330*
condR
while_cond_1213329*K
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
NoOpNoOp%^lstm_cell_199/BiasAdd/ReadVariableOp$^lstm_cell_199/MatMul/ReadVariableOp&^lstm_cell_199/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_199/BiasAdd/ReadVariableOp$lstm_cell_199/BiasAdd/ReadVariableOp2J
#lstm_cell_199/MatMul/ReadVariableOp#lstm_cell_199/MatMul/ReadVariableOp2N
%lstm_cell_199/MatMul_1/ReadVariableOp%lstm_cell_199/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_114_layer_call_and_return_conditional_losses_1213084

inputs?
,lstm_cell_198_matmul_readvariableop_resource:	?A
.lstm_cell_198_matmul_1_readvariableop_resource:	d?<
-lstm_cell_198_biasadd_readvariableop_resource:	?
identity??$lstm_cell_198/BiasAdd/ReadVariableOp?#lstm_cell_198/MatMul/ReadVariableOp?%lstm_cell_198/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_198/MatMul/ReadVariableOpReadVariableOp,lstm_cell_198_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_198/MatMulMatMulstrided_slice_2:output:0+lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_198_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_198/MatMul_1MatMulzeros:output:0-lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_198/addAddV2lstm_cell_198/MatMul:product:0 lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_198_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_198/BiasAddBiasAddlstm_cell_198/add:z:0,lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_198/splitSplit&lstm_cell_198/split/split_dim:output:0lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_198/SigmoidSigmoidlstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_198/Sigmoid_1Sigmoidlstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_198/mulMullstm_cell_198/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_198/ReluRelulstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_198/mul_1Mullstm_cell_198/Sigmoid:y:0 lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_198/add_1AddV2lstm_cell_198/mul:z:0lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_198/Sigmoid_2Sigmoidlstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_198/Relu_1Relulstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_198/mul_2Mullstm_cell_198/Sigmoid_2:y:0"lstm_cell_198/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_198_matmul_readvariableop_resource.lstm_cell_198_matmul_1_readvariableop_resource-lstm_cell_198_biasadd_readvariableop_resource*
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
while_body_1213000*
condR
while_cond_1212999*K
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
NoOpNoOp%^lstm_cell_198/BiasAdd/ReadVariableOp$^lstm_cell_198/MatMul/ReadVariableOp&^lstm_cell_198/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_198/BiasAdd/ReadVariableOp$lstm_cell_198/BiasAdd/ReadVariableOp2J
#lstm_cell_198/MatMul/ReadVariableOp#lstm_cell_198/MatMul/ReadVariableOp2N
%lstm_cell_198/MatMul_1/ReadVariableOp%lstm_cell_198/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_116_layer_call_and_return_conditional_losses_1213887
inputs_0>
,lstm_cell_200_matmul_readvariableop_resource:2(@
.lstm_cell_200_matmul_1_readvariableop_resource:
(;
-lstm_cell_200_biasadd_readvariableop_resource:(
identity??$lstm_cell_200/BiasAdd/ReadVariableOp?#lstm_cell_200/MatMul/ReadVariableOp?%lstm_cell_200/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_200/MatMul/ReadVariableOpReadVariableOp,lstm_cell_200_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_200/MatMulMatMulstrided_slice_2:output:0+lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_200_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_200/MatMul_1MatMulzeros:output:0-lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_200/addAddV2lstm_cell_200/MatMul:product:0 lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_200_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_200/BiasAddBiasAddlstm_cell_200/add:z:0,lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_200/splitSplit&lstm_cell_200/split/split_dim:output:0lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_200/SigmoidSigmoidlstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_200/Sigmoid_1Sigmoidlstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_200/mulMullstm_cell_200/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_200/ReluRelulstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_200/mul_1Mullstm_cell_200/Sigmoid:y:0 lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_200/add_1AddV2lstm_cell_200/mul:z:0lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_200/Sigmoid_2Sigmoidlstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_200/Relu_1Relulstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_200/mul_2Mullstm_cell_200/Sigmoid_2:y:0"lstm_cell_200/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_200_matmul_readvariableop_resource.lstm_cell_200_matmul_1_readvariableop_resource-lstm_cell_200_biasadd_readvariableop_resource*
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
while_body_1213803*
condR
while_cond_1213802*K
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
NoOpNoOp%^lstm_cell_200/BiasAdd/ReadVariableOp$^lstm_cell_200/MatMul/ReadVariableOp&^lstm_cell_200/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_200/BiasAdd/ReadVariableOp$lstm_cell_200/BiasAdd/ReadVariableOp2J
#lstm_cell_200/MatMul/ReadVariableOp#lstm_cell_200/MatMul/ReadVariableOp2N
%lstm_cell_200/MatMul_1/ReadVariableOp%lstm_cell_200/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_198_layer_call_and_return_conditional_losses_1214401

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
J__inference_lstm_cell_199_layer_call_and_return_conditional_losses_1209717

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
?
E__inference_lstm_115_layer_call_and_return_conditional_losses_1209991

inputs(
lstm_cell_199_1209909:	d?(
lstm_cell_199_1209911:	2?$
lstm_cell_199_1209913:	?
identity??%lstm_cell_199/StatefulPartitionedCall?while;
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
%lstm_cell_199/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_199_1209909lstm_cell_199_1209911lstm_cell_199_1209913*
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
J__inference_lstm_cell_199_layer_call_and_return_conditional_losses_1209863n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_199_1209909lstm_cell_199_1209911lstm_cell_199_1209913*
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
while_body_1209922*
condR
while_cond_1209921*K
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
NoOpNoOp&^lstm_cell_199/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_199/StatefulPartitionedCall%lstm_cell_199/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_116_layer_call_fn_1213722
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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1210341o
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
while_body_1214089
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_200_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_200_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_200_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_200_matmul_readvariableop_resource:2(F
4while_lstm_cell_200_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_200_biasadd_readvariableop_resource:(??*while/lstm_cell_200/BiasAdd/ReadVariableOp?)while/lstm_cell_200/MatMul/ReadVariableOp?+while/lstm_cell_200/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_200/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_200_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_200/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_200_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_200/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_200/addAddV2$while/lstm_cell_200/MatMul:product:0&while/lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_200_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_200/BiasAddBiasAddwhile/lstm_cell_200/add:z:02while/lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_200/splitSplit,while/lstm_cell_200/split/split_dim:output:0$while/lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_200/SigmoidSigmoid"while/lstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_200/Sigmoid_1Sigmoid"while/lstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mulMul!while/lstm_cell_200/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_200/ReluRelu"while/lstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mul_1Mulwhile/lstm_cell_200/Sigmoid:y:0&while/lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/add_1AddV2while/lstm_cell_200/mul:z:0while/lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_200/Sigmoid_2Sigmoid"while/lstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_200/Relu_1Reluwhile/lstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mul_2Mul!while/lstm_cell_200/Sigmoid_2:y:0(while/lstm_cell_200/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_200/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_200/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_200/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_200/BiasAdd/ReadVariableOp*^while/lstm_cell_200/MatMul/ReadVariableOp,^while/lstm_cell_200/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_200_biasadd_readvariableop_resource5while_lstm_cell_200_biasadd_readvariableop_resource_0"n
4while_lstm_cell_200_matmul_1_readvariableop_resource6while_lstm_cell_200_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_200_matmul_readvariableop_resource4while_lstm_cell_200_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_200/BiasAdd/ReadVariableOp*while/lstm_cell_200/BiasAdd/ReadVariableOp2V
)while/lstm_cell_200/MatMul/ReadVariableOp)while/lstm_cell_200/MatMul/ReadVariableOp2Z
+while/lstm_cell_200/MatMul_1/ReadVariableOp+while/lstm_cell_200/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
)sequential_38_lstm_116_while_cond_1209209J
Fsequential_38_lstm_116_while_sequential_38_lstm_116_while_loop_counterP
Lsequential_38_lstm_116_while_sequential_38_lstm_116_while_maximum_iterations,
(sequential_38_lstm_116_while_placeholder.
*sequential_38_lstm_116_while_placeholder_1.
*sequential_38_lstm_116_while_placeholder_2.
*sequential_38_lstm_116_while_placeholder_3L
Hsequential_38_lstm_116_while_less_sequential_38_lstm_116_strided_slice_1c
_sequential_38_lstm_116_while_sequential_38_lstm_116_while_cond_1209209___redundant_placeholder0c
_sequential_38_lstm_116_while_sequential_38_lstm_116_while_cond_1209209___redundant_placeholder1c
_sequential_38_lstm_116_while_sequential_38_lstm_116_while_cond_1209209___redundant_placeholder2c
_sequential_38_lstm_116_while_sequential_38_lstm_116_while_cond_1209209___redundant_placeholder3)
%sequential_38_lstm_116_while_identity
?
!sequential_38/lstm_116/while/LessLess(sequential_38_lstm_116_while_placeholderHsequential_38_lstm_116_while_less_sequential_38_lstm_116_strided_slice_1*
T0*
_output_shapes
: y
%sequential_38/lstm_116/while/IdentityIdentity%sequential_38/lstm_116/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_38_lstm_116_while_identity.sequential_38/lstm_116/while/Identity:output:0*(
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
while_body_1212571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_198_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_198_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_198_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_198_matmul_readvariableop_resource:	?G
4while_lstm_cell_198_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_198_biasadd_readvariableop_resource:	???*while/lstm_cell_198/BiasAdd/ReadVariableOp?)while/lstm_cell_198/MatMul/ReadVariableOp?+while/lstm_cell_198/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_198/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_198_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_198/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_198_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_198/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_198/addAddV2$while/lstm_cell_198/MatMul:product:0&while/lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_198_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_198/BiasAddBiasAddwhile/lstm_cell_198/add:z:02while/lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_198/splitSplit,while/lstm_cell_198/split/split_dim:output:0$while/lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_198/SigmoidSigmoid"while/lstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_198/Sigmoid_1Sigmoid"while/lstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mulMul!while/lstm_cell_198/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_198/ReluRelu"while/lstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mul_1Mulwhile/lstm_cell_198/Sigmoid:y:0&while/lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/add_1AddV2while/lstm_cell_198/mul:z:0while/lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_198/Sigmoid_2Sigmoid"while/lstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_198/Relu_1Reluwhile/lstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mul_2Mul!while/lstm_cell_198/Sigmoid_2:y:0(while/lstm_cell_198/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_198/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_198/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_198/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_198/BiasAdd/ReadVariableOp*^while/lstm_cell_198/MatMul/ReadVariableOp,^while/lstm_cell_198/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_198_biasadd_readvariableop_resource5while_lstm_cell_198_biasadd_readvariableop_resource_0"n
4while_lstm_cell_198_matmul_1_readvariableop_resource6while_lstm_cell_198_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_198_matmul_readvariableop_resource4while_lstm_cell_198_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_198/BiasAdd/ReadVariableOp*while/lstm_cell_198/BiasAdd/ReadVariableOp2V
)while/lstm_cell_198/MatMul/ReadVariableOp)while/lstm_cell_198/MatMul/ReadVariableOp2Z
+while/lstm_cell_198/MatMul_1/ReadVariableOp+while/lstm_cell_198/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_200_layer_call_and_return_conditional_losses_1210067

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
?C
?

lstm_115_while_body_1211812.
*lstm_115_while_lstm_115_while_loop_counter4
0lstm_115_while_lstm_115_while_maximum_iterations
lstm_115_while_placeholder 
lstm_115_while_placeholder_1 
lstm_115_while_placeholder_2 
lstm_115_while_placeholder_3-
)lstm_115_while_lstm_115_strided_slice_1_0i
elstm_115_while_tensorarrayv2read_tensorlistgetitem_lstm_115_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_115_while_lstm_cell_199_matmul_readvariableop_resource_0:	d?R
?lstm_115_while_lstm_cell_199_matmul_1_readvariableop_resource_0:	2?M
>lstm_115_while_lstm_cell_199_biasadd_readvariableop_resource_0:	?
lstm_115_while_identity
lstm_115_while_identity_1
lstm_115_while_identity_2
lstm_115_while_identity_3
lstm_115_while_identity_4
lstm_115_while_identity_5+
'lstm_115_while_lstm_115_strided_slice_1g
clstm_115_while_tensorarrayv2read_tensorlistgetitem_lstm_115_tensorarrayunstack_tensorlistfromtensorN
;lstm_115_while_lstm_cell_199_matmul_readvariableop_resource:	d?P
=lstm_115_while_lstm_cell_199_matmul_1_readvariableop_resource:	2?K
<lstm_115_while_lstm_cell_199_biasadd_readvariableop_resource:	???3lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOp?2lstm_115/while/lstm_cell_199/MatMul/ReadVariableOp?4lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOp?
@lstm_115/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_115/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_115_while_tensorarrayv2read_tensorlistgetitem_lstm_115_tensorarrayunstack_tensorlistfromtensor_0lstm_115_while_placeholderIlstm_115/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_115/while/lstm_cell_199/MatMul/ReadVariableOpReadVariableOp=lstm_115_while_lstm_cell_199_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_115/while/lstm_cell_199/MatMulMatMul9lstm_115/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_115/while/lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOp?lstm_115_while_lstm_cell_199_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_115/while/lstm_cell_199/MatMul_1MatMullstm_115_while_placeholder_2<lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_115/while/lstm_cell_199/addAddV2-lstm_115/while/lstm_cell_199/MatMul:product:0/lstm_115/while/lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOp>lstm_115_while_lstm_cell_199_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_115/while/lstm_cell_199/BiasAddBiasAdd$lstm_115/while/lstm_cell_199/add:z:0;lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_115/while/lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_115/while/lstm_cell_199/splitSplit5lstm_115/while/lstm_cell_199/split/split_dim:output:0-lstm_115/while/lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_115/while/lstm_cell_199/SigmoidSigmoid+lstm_115/while/lstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_115/while/lstm_cell_199/Sigmoid_1Sigmoid+lstm_115/while/lstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_115/while/lstm_cell_199/mulMul*lstm_115/while/lstm_cell_199/Sigmoid_1:y:0lstm_115_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_115/while/lstm_cell_199/ReluRelu+lstm_115/while/lstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_115/while/lstm_cell_199/mul_1Mul(lstm_115/while/lstm_cell_199/Sigmoid:y:0/lstm_115/while/lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_115/while/lstm_cell_199/add_1AddV2$lstm_115/while/lstm_cell_199/mul:z:0&lstm_115/while/lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_115/while/lstm_cell_199/Sigmoid_2Sigmoid+lstm_115/while/lstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_115/while/lstm_cell_199/Relu_1Relu&lstm_115/while/lstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_115/while/lstm_cell_199/mul_2Mul*lstm_115/while/lstm_cell_199/Sigmoid_2:y:01lstm_115/while/lstm_cell_199/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_115/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_115_while_placeholder_1lstm_115_while_placeholder&lstm_115/while/lstm_cell_199/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_115/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_115/while/addAddV2lstm_115_while_placeholderlstm_115/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_115/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_115/while/add_1AddV2*lstm_115_while_lstm_115_while_loop_counterlstm_115/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_115/while/IdentityIdentitylstm_115/while/add_1:z:0^lstm_115/while/NoOp*
T0*
_output_shapes
: ?
lstm_115/while/Identity_1Identity0lstm_115_while_lstm_115_while_maximum_iterations^lstm_115/while/NoOp*
T0*
_output_shapes
: t
lstm_115/while/Identity_2Identitylstm_115/while/add:z:0^lstm_115/while/NoOp*
T0*
_output_shapes
: ?
lstm_115/while/Identity_3IdentityClstm_115/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_115/while/NoOp*
T0*
_output_shapes
: ?
lstm_115/while/Identity_4Identity&lstm_115/while/lstm_cell_199/mul_2:z:0^lstm_115/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_115/while/Identity_5Identity&lstm_115/while/lstm_cell_199/add_1:z:0^lstm_115/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_115/while/NoOpNoOp4^lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOp3^lstm_115/while/lstm_cell_199/MatMul/ReadVariableOp5^lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_115_while_identity lstm_115/while/Identity:output:0"?
lstm_115_while_identity_1"lstm_115/while/Identity_1:output:0"?
lstm_115_while_identity_2"lstm_115/while/Identity_2:output:0"?
lstm_115_while_identity_3"lstm_115/while/Identity_3:output:0"?
lstm_115_while_identity_4"lstm_115/while/Identity_4:output:0"?
lstm_115_while_identity_5"lstm_115/while/Identity_5:output:0"T
'lstm_115_while_lstm_115_strided_slice_1)lstm_115_while_lstm_115_strided_slice_1_0"~
<lstm_115_while_lstm_cell_199_biasadd_readvariableop_resource>lstm_115_while_lstm_cell_199_biasadd_readvariableop_resource_0"?
=lstm_115_while_lstm_cell_199_matmul_1_readvariableop_resource?lstm_115_while_lstm_cell_199_matmul_1_readvariableop_resource_0"|
;lstm_115_while_lstm_cell_199_matmul_readvariableop_resource=lstm_115_while_lstm_cell_199_matmul_readvariableop_resource_0"?
clstm_115_while_tensorarrayv2read_tensorlistgetitem_lstm_115_tensorarrayunstack_tensorlistfromtensorelstm_115_while_tensorarrayv2read_tensorlistgetitem_lstm_115_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOp3lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOp2h
2lstm_115/while/lstm_cell_199/MatMul/ReadVariableOp2lstm_115/while/lstm_cell_199/MatMul/ReadVariableOp2l
4lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOp4lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1214173

inputs>
,lstm_cell_200_matmul_readvariableop_resource:2(@
.lstm_cell_200_matmul_1_readvariableop_resource:
(;
-lstm_cell_200_biasadd_readvariableop_resource:(
identity??$lstm_cell_200/BiasAdd/ReadVariableOp?#lstm_cell_200/MatMul/ReadVariableOp?%lstm_cell_200/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_200/MatMul/ReadVariableOpReadVariableOp,lstm_cell_200_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_200/MatMulMatMulstrided_slice_2:output:0+lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_200_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_200/MatMul_1MatMulzeros:output:0-lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_200/addAddV2lstm_cell_200/MatMul:product:0 lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_200_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_200/BiasAddBiasAddlstm_cell_200/add:z:0,lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_200/splitSplit&lstm_cell_200/split/split_dim:output:0lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_200/SigmoidSigmoidlstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_200/Sigmoid_1Sigmoidlstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_200/mulMullstm_cell_200/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_200/ReluRelulstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_200/mul_1Mullstm_cell_200/Sigmoid:y:0 lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_200/add_1AddV2lstm_cell_200/mul:z:0lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_200/Sigmoid_2Sigmoidlstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_200/Relu_1Relulstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_200/mul_2Mullstm_cell_200/Sigmoid_2:y:0"lstm_cell_200/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_200_matmul_readvariableop_resource.lstm_cell_200_matmul_1_readvariableop_resource-lstm_cell_200_biasadd_readvariableop_resource*
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
while_body_1214089*
condR
while_cond_1214088*K
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
NoOpNoOp%^lstm_cell_200/BiasAdd/ReadVariableOp$^lstm_cell_200/MatMul/ReadVariableOp&^lstm_cell_200/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_200/BiasAdd/ReadVariableOp$lstm_cell_200/BiasAdd/ReadVariableOp2J
#lstm_cell_200/MatMul/ReadVariableOp#lstm_cell_200/MatMul/ReadVariableOp2N
%lstm_cell_200/MatMul_1/ReadVariableOp%lstm_cell_200/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?#
?
while_body_1209731
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_199_1209755_0:	d?0
while_lstm_cell_199_1209757_0:	2?,
while_lstm_cell_199_1209759_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_199_1209755:	d?.
while_lstm_cell_199_1209757:	2?*
while_lstm_cell_199_1209759:	???+while/lstm_cell_199/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_199/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_199_1209755_0while_lstm_cell_199_1209757_0while_lstm_cell_199_1209759_0*
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
J__inference_lstm_cell_199_layer_call_and_return_conditional_losses_1209717?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_199/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_199/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_199/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_199/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_199_1209755while_lstm_cell_199_1209755_0"<
while_lstm_cell_199_1209757while_lstm_cell_199_1209757_0"<
while_lstm_cell_199_1209759while_lstm_cell_199_1209759_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_199/StatefulPartitionedCall+while/lstm_cell_199/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_115_layer_call_and_return_conditional_losses_1213700

inputs?
,lstm_cell_199_matmul_readvariableop_resource:	d?A
.lstm_cell_199_matmul_1_readvariableop_resource:	2?<
-lstm_cell_199_biasadd_readvariableop_resource:	?
identity??$lstm_cell_199/BiasAdd/ReadVariableOp?#lstm_cell_199/MatMul/ReadVariableOp?%lstm_cell_199/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_199/MatMul/ReadVariableOpReadVariableOp,lstm_cell_199_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_199/MatMulMatMulstrided_slice_2:output:0+lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_199_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_199/MatMul_1MatMulzeros:output:0-lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_199/addAddV2lstm_cell_199/MatMul:product:0 lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_199_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_199/BiasAddBiasAddlstm_cell_199/add:z:0,lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_199/splitSplit&lstm_cell_199/split/split_dim:output:0lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_199/SigmoidSigmoidlstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_199/Sigmoid_1Sigmoidlstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_199/mulMullstm_cell_199/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_199/ReluRelulstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_199/mul_1Mullstm_cell_199/Sigmoid:y:0 lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_199/add_1AddV2lstm_cell_199/mul:z:0lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_199/Sigmoid_2Sigmoidlstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_199/Relu_1Relulstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_199/mul_2Mullstm_cell_199/Sigmoid_2:y:0"lstm_cell_199/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_199_matmul_readvariableop_resource.lstm_cell_199_matmul_1_readvariableop_resource-lstm_cell_199_biasadd_readvariableop_resource*
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
while_body_1213616*
condR
while_cond_1213615*K
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
NoOpNoOp%^lstm_cell_199/BiasAdd/ReadVariableOp$^lstm_cell_199/MatMul/ReadVariableOp&^lstm_cell_199/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_199/BiasAdd/ReadVariableOp$lstm_cell_199/BiasAdd/ReadVariableOp2J
#lstm_cell_199/MatMul/ReadVariableOp#lstm_cell_199/MatMul/ReadVariableOp2N
%lstm_cell_199/MatMul_1/ReadVariableOp%lstm_cell_199/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
/__inference_sequential_38_layer_call_fn_1211614

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
J__inference_sequential_38_layer_call_and_return_conditional_losses_1211413o
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
while_cond_1214231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1214231___redundant_placeholder05
1while_while_cond_1214231___redundant_placeholder15
1while_while_cond_1214231___redundant_placeholder25
1while_while_cond_1214231___redundant_placeholder3
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
lstm_116_while_cond_1212377.
*lstm_116_while_lstm_116_while_loop_counter4
0lstm_116_while_lstm_116_while_maximum_iterations
lstm_116_while_placeholder 
lstm_116_while_placeholder_1 
lstm_116_while_placeholder_2 
lstm_116_while_placeholder_30
,lstm_116_while_less_lstm_116_strided_slice_1G
Clstm_116_while_lstm_116_while_cond_1212377___redundant_placeholder0G
Clstm_116_while_lstm_116_while_cond_1212377___redundant_placeholder1G
Clstm_116_while_lstm_116_while_cond_1212377___redundant_placeholder2G
Clstm_116_while_lstm_116_while_cond_1212377___redundant_placeholder3
lstm_116_while_identity
?
lstm_116/while/LessLesslstm_116_while_placeholder,lstm_116_while_less_lstm_116_strided_slice_1*
T0*
_output_shapes
: ]
lstm_116/while/IdentityIdentitylstm_116/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_116_while_identity lstm_116/while/Identity:output:0*(
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
lstm_116_while_cond_1211950.
*lstm_116_while_lstm_116_while_loop_counter4
0lstm_116_while_lstm_116_while_maximum_iterations
lstm_116_while_placeholder 
lstm_116_while_placeholder_1 
lstm_116_while_placeholder_2 
lstm_116_while_placeholder_30
,lstm_116_while_less_lstm_116_strided_slice_1G
Clstm_116_while_lstm_116_while_cond_1211950___redundant_placeholder0G
Clstm_116_while_lstm_116_while_cond_1211950___redundant_placeholder1G
Clstm_116_while_lstm_116_while_cond_1211950___redundant_placeholder2G
Clstm_116_while_lstm_116_while_cond_1211950___redundant_placeholder3
lstm_116_while_identity
?
lstm_116/while/LessLesslstm_116_while_placeholder,lstm_116_while_less_lstm_116_strided_slice_1*
T0*
_output_shapes
: ]
lstm_116/while/IdentityIdentitylstm_116/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_116_while_identity lstm_116/while/Identity:output:0*(
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
E__inference_lstm_114_layer_call_and_return_conditional_losses_1209641

inputs(
lstm_cell_198_1209559:	?(
lstm_cell_198_1209561:	d?$
lstm_cell_198_1209563:	?
identity??%lstm_cell_198/StatefulPartitionedCall?while;
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
%lstm_cell_198/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_198_1209559lstm_cell_198_1209561lstm_cell_198_1209563*
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
J__inference_lstm_cell_198_layer_call_and_return_conditional_losses_1209513n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_198_1209559lstm_cell_198_1209561lstm_cell_198_1209563*
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
while_body_1209572*
condR
while_cond_1209571*K
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
NoOpNoOp&^lstm_cell_198/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_198/StatefulPartitionedCall%lstm_cell_198/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_114_layer_call_and_return_conditional_losses_1212798
inputs_0?
,lstm_cell_198_matmul_readvariableop_resource:	?A
.lstm_cell_198_matmul_1_readvariableop_resource:	d?<
-lstm_cell_198_biasadd_readvariableop_resource:	?
identity??$lstm_cell_198/BiasAdd/ReadVariableOp?#lstm_cell_198/MatMul/ReadVariableOp?%lstm_cell_198/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_198/MatMul/ReadVariableOpReadVariableOp,lstm_cell_198_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_198/MatMulMatMulstrided_slice_2:output:0+lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_198_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_198/MatMul_1MatMulzeros:output:0-lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_198/addAddV2lstm_cell_198/MatMul:product:0 lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_198_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_198/BiasAddBiasAddlstm_cell_198/add:z:0,lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_198/splitSplit&lstm_cell_198/split/split_dim:output:0lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_198/SigmoidSigmoidlstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_198/Sigmoid_1Sigmoidlstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_198/mulMullstm_cell_198/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_198/ReluRelulstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_198/mul_1Mullstm_cell_198/Sigmoid:y:0 lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_198/add_1AddV2lstm_cell_198/mul:z:0lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_198/Sigmoid_2Sigmoidlstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_198/Relu_1Relulstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_198/mul_2Mullstm_cell_198/Sigmoid_2:y:0"lstm_cell_198/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_198_matmul_readvariableop_resource.lstm_cell_198_matmul_1_readvariableop_resource-lstm_cell_198_biasadd_readvariableop_resource*
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
while_body_1212714*
condR
while_cond_1212713*K
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
NoOpNoOp%^lstm_cell_198/BiasAdd/ReadVariableOp$^lstm_cell_198/MatMul/ReadVariableOp&^lstm_cell_198/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_198/BiasAdd/ReadVariableOp$lstm_cell_198/BiasAdd/ReadVariableOp2J
#lstm_cell_198/MatMul/ReadVariableOp#lstm_cell_198/MatMul/ReadVariableOp2N
%lstm_cell_198/MatMul_1/ReadVariableOp%lstm_cell_198/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_115_layer_call_fn_1213095
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
E__inference_lstm_115_layer_call_and_return_conditional_losses_1209800|
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
while_body_1213946
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_200_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_200_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_200_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_200_matmul_readvariableop_resource:2(F
4while_lstm_cell_200_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_200_biasadd_readvariableop_resource:(??*while/lstm_cell_200/BiasAdd/ReadVariableOp?)while/lstm_cell_200/MatMul/ReadVariableOp?+while/lstm_cell_200/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_200/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_200_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_200/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_200_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_200/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_200/addAddV2$while/lstm_cell_200/MatMul:product:0&while/lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_200_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_200/BiasAddBiasAddwhile/lstm_cell_200/add:z:02while/lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_200/splitSplit,while/lstm_cell_200/split/split_dim:output:0$while/lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_200/SigmoidSigmoid"while/lstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_200/Sigmoid_1Sigmoid"while/lstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mulMul!while/lstm_cell_200/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_200/ReluRelu"while/lstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mul_1Mulwhile/lstm_cell_200/Sigmoid:y:0&while/lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/add_1AddV2while/lstm_cell_200/mul:z:0while/lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_200/Sigmoid_2Sigmoid"while/lstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_200/Relu_1Reluwhile/lstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_200/mul_2Mul!while/lstm_cell_200/Sigmoid_2:y:0(while/lstm_cell_200/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_200/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_200/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_200/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_200/BiasAdd/ReadVariableOp*^while/lstm_cell_200/MatMul/ReadVariableOp,^while/lstm_cell_200/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_200_biasadd_readvariableop_resource5while_lstm_cell_200_biasadd_readvariableop_resource_0"n
4while_lstm_cell_200_matmul_1_readvariableop_resource6while_lstm_cell_200_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_200_matmul_readvariableop_resource4while_lstm_cell_200_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_200/BiasAdd/ReadVariableOp*while/lstm_cell_200/BiasAdd/ReadVariableOp2V
)while/lstm_cell_200/MatMul/ReadVariableOp)while/lstm_cell_200/MatMul/ReadVariableOp2Z
+while/lstm_cell_200/MatMul_1/ReadVariableOp+while/lstm_cell_200/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1214316

inputs>
,lstm_cell_200_matmul_readvariableop_resource:2(@
.lstm_cell_200_matmul_1_readvariableop_resource:
(;
-lstm_cell_200_biasadd_readvariableop_resource:(
identity??$lstm_cell_200/BiasAdd/ReadVariableOp?#lstm_cell_200/MatMul/ReadVariableOp?%lstm_cell_200/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_200/MatMul/ReadVariableOpReadVariableOp,lstm_cell_200_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_200/MatMulMatMulstrided_slice_2:output:0+lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_200_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_200/MatMul_1MatMulzeros:output:0-lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_200/addAddV2lstm_cell_200/MatMul:product:0 lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_200_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_200/BiasAddBiasAddlstm_cell_200/add:z:0,lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_200/splitSplit&lstm_cell_200/split/split_dim:output:0lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_200/SigmoidSigmoidlstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_200/Sigmoid_1Sigmoidlstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_200/mulMullstm_cell_200/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_200/ReluRelulstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_200/mul_1Mullstm_cell_200/Sigmoid:y:0 lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_200/add_1AddV2lstm_cell_200/mul:z:0lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_200/Sigmoid_2Sigmoidlstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_200/Relu_1Relulstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_200/mul_2Mullstm_cell_200/Sigmoid_2:y:0"lstm_cell_200/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_200_matmul_readvariableop_resource.lstm_cell_200_matmul_1_readvariableop_resource-lstm_cell_200_biasadd_readvariableop_resource*
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
while_body_1214232*
condR
while_cond_1214231*K
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
NoOpNoOp%^lstm_cell_200/BiasAdd/ReadVariableOp$^lstm_cell_200/MatMul/ReadVariableOp&^lstm_cell_200/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_200/BiasAdd/ReadVariableOp$lstm_cell_200/BiasAdd/ReadVariableOp2J
#lstm_cell_200/MatMul/ReadVariableOp#lstm_cell_200/MatMul/ReadVariableOp2N
%lstm_cell_200/MatMul_1/ReadVariableOp%lstm_cell_200/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_1209730
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1209730___redundant_placeholder05
1while_while_cond_1209730___redundant_placeholder15
1while_while_cond_1209730___redundant_placeholder25
1while_while_cond_1209730___redundant_placeholder3
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
J__inference_sequential_38_layer_call_and_return_conditional_losses_1210824

inputs#
lstm_114_1210500:	?#
lstm_114_1210502:	d?
lstm_114_1210504:	?#
lstm_115_1210650:	d?#
lstm_115_1210652:	2?
lstm_115_1210654:	?"
lstm_116_1210800:2("
lstm_116_1210802:
(
lstm_116_1210804:("
dense_38_1210818:

dense_38_1210820:
identity?? dense_38/StatefulPartitionedCall? lstm_114/StatefulPartitionedCall? lstm_115/StatefulPartitionedCall? lstm_116/StatefulPartitionedCall?
 lstm_114/StatefulPartitionedCallStatefulPartitionedCallinputslstm_114_1210500lstm_114_1210502lstm_114_1210504*
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
E__inference_lstm_114_layer_call_and_return_conditional_losses_1210499?
 lstm_115/StatefulPartitionedCallStatefulPartitionedCall)lstm_114/StatefulPartitionedCall:output:0lstm_115_1210650lstm_115_1210652lstm_115_1210654*
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
E__inference_lstm_115_layer_call_and_return_conditional_losses_1210649?
 lstm_116/StatefulPartitionedCallStatefulPartitionedCall)lstm_115/StatefulPartitionedCall:output:0lstm_116_1210800lstm_116_1210802lstm_116_1210804*
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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1210799?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)lstm_116/StatefulPartitionedCall:output:0dense_38_1210818dense_38_1210820*
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
E__inference_dense_38_layer_call_and_return_conditional_losses_1210817x
IdentityIdentity)dense_38/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_38/StatefulPartitionedCall!^lstm_114/StatefulPartitionedCall!^lstm_115/StatefulPartitionedCall!^lstm_116/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2D
 lstm_114/StatefulPartitionedCall lstm_114/StatefulPartitionedCall2D
 lstm_115/StatefulPartitionedCall lstm_115/StatefulPartitionedCall2D
 lstm_116/StatefulPartitionedCall lstm_116/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1211096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_199_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_199_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_199_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_199_matmul_readvariableop_resource:	d?G
4while_lstm_cell_199_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_199_biasadd_readvariableop_resource:	???*while/lstm_cell_199/BiasAdd/ReadVariableOp?)while/lstm_cell_199/MatMul/ReadVariableOp?+while/lstm_cell_199/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_199/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_199_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_199/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_199_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_199/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_199/addAddV2$while/lstm_cell_199/MatMul:product:0&while/lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_199_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_199/BiasAddBiasAddwhile/lstm_cell_199/add:z:02while/lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_199/splitSplit,while/lstm_cell_199/split/split_dim:output:0$while/lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_199/SigmoidSigmoid"while/lstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_199/Sigmoid_1Sigmoid"while/lstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mulMul!while/lstm_cell_199/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_199/ReluRelu"while/lstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mul_1Mulwhile/lstm_cell_199/Sigmoid:y:0&while/lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/add_1AddV2while/lstm_cell_199/mul:z:0while/lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_199/Sigmoid_2Sigmoid"while/lstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_199/Relu_1Reluwhile/lstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mul_2Mul!while/lstm_cell_199/Sigmoid_2:y:0(while/lstm_cell_199/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_199/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_199/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_199/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_199/BiasAdd/ReadVariableOp*^while/lstm_cell_199/MatMul/ReadVariableOp,^while/lstm_cell_199/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_199_biasadd_readvariableop_resource5while_lstm_cell_199_biasadd_readvariableop_resource_0"n
4while_lstm_cell_199_matmul_1_readvariableop_resource6while_lstm_cell_199_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_199_matmul_readvariableop_resource4while_lstm_cell_199_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_199/BiasAdd/ReadVariableOp*while/lstm_cell_199/BiasAdd/ReadVariableOp2V
)while/lstm_cell_199/MatMul/ReadVariableOp)while/lstm_cell_199/MatMul/ReadVariableOp2Z
+while/lstm_cell_199/MatMul_1/ReadVariableOp+while/lstm_cell_199/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_38_layer_call_fn_1211465
lstm_114_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_114_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_38_layer_call_and_return_conditional_losses_1211413o
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
_user_specified_namelstm_114_input
?C
?

lstm_114_while_body_1212100.
*lstm_114_while_lstm_114_while_loop_counter4
0lstm_114_while_lstm_114_while_maximum_iterations
lstm_114_while_placeholder 
lstm_114_while_placeholder_1 
lstm_114_while_placeholder_2 
lstm_114_while_placeholder_3-
)lstm_114_while_lstm_114_strided_slice_1_0i
elstm_114_while_tensorarrayv2read_tensorlistgetitem_lstm_114_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_114_while_lstm_cell_198_matmul_readvariableop_resource_0:	?R
?lstm_114_while_lstm_cell_198_matmul_1_readvariableop_resource_0:	d?M
>lstm_114_while_lstm_cell_198_biasadd_readvariableop_resource_0:	?
lstm_114_while_identity
lstm_114_while_identity_1
lstm_114_while_identity_2
lstm_114_while_identity_3
lstm_114_while_identity_4
lstm_114_while_identity_5+
'lstm_114_while_lstm_114_strided_slice_1g
clstm_114_while_tensorarrayv2read_tensorlistgetitem_lstm_114_tensorarrayunstack_tensorlistfromtensorN
;lstm_114_while_lstm_cell_198_matmul_readvariableop_resource:	?P
=lstm_114_while_lstm_cell_198_matmul_1_readvariableop_resource:	d?K
<lstm_114_while_lstm_cell_198_biasadd_readvariableop_resource:	???3lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOp?2lstm_114/while/lstm_cell_198/MatMul/ReadVariableOp?4lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOp?
@lstm_114/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_114/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_114_while_tensorarrayv2read_tensorlistgetitem_lstm_114_tensorarrayunstack_tensorlistfromtensor_0lstm_114_while_placeholderIlstm_114/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_114/while/lstm_cell_198/MatMul/ReadVariableOpReadVariableOp=lstm_114_while_lstm_cell_198_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_114/while/lstm_cell_198/MatMulMatMul9lstm_114/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_114/while/lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOp?lstm_114_while_lstm_cell_198_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_114/while/lstm_cell_198/MatMul_1MatMullstm_114_while_placeholder_2<lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_114/while/lstm_cell_198/addAddV2-lstm_114/while/lstm_cell_198/MatMul:product:0/lstm_114/while/lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOp>lstm_114_while_lstm_cell_198_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_114/while/lstm_cell_198/BiasAddBiasAdd$lstm_114/while/lstm_cell_198/add:z:0;lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_114/while/lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_114/while/lstm_cell_198/splitSplit5lstm_114/while/lstm_cell_198/split/split_dim:output:0-lstm_114/while/lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_114/while/lstm_cell_198/SigmoidSigmoid+lstm_114/while/lstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_114/while/lstm_cell_198/Sigmoid_1Sigmoid+lstm_114/while/lstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_114/while/lstm_cell_198/mulMul*lstm_114/while/lstm_cell_198/Sigmoid_1:y:0lstm_114_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_114/while/lstm_cell_198/ReluRelu+lstm_114/while/lstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_114/while/lstm_cell_198/mul_1Mul(lstm_114/while/lstm_cell_198/Sigmoid:y:0/lstm_114/while/lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_114/while/lstm_cell_198/add_1AddV2$lstm_114/while/lstm_cell_198/mul:z:0&lstm_114/while/lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_114/while/lstm_cell_198/Sigmoid_2Sigmoid+lstm_114/while/lstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_114/while/lstm_cell_198/Relu_1Relu&lstm_114/while/lstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_114/while/lstm_cell_198/mul_2Mul*lstm_114/while/lstm_cell_198/Sigmoid_2:y:01lstm_114/while/lstm_cell_198/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_114/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_114_while_placeholder_1lstm_114_while_placeholder&lstm_114/while/lstm_cell_198/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_114/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_114/while/addAddV2lstm_114_while_placeholderlstm_114/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_114/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_114/while/add_1AddV2*lstm_114_while_lstm_114_while_loop_counterlstm_114/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_114/while/IdentityIdentitylstm_114/while/add_1:z:0^lstm_114/while/NoOp*
T0*
_output_shapes
: ?
lstm_114/while/Identity_1Identity0lstm_114_while_lstm_114_while_maximum_iterations^lstm_114/while/NoOp*
T0*
_output_shapes
: t
lstm_114/while/Identity_2Identitylstm_114/while/add:z:0^lstm_114/while/NoOp*
T0*
_output_shapes
: ?
lstm_114/while/Identity_3IdentityClstm_114/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_114/while/NoOp*
T0*
_output_shapes
: ?
lstm_114/while/Identity_4Identity&lstm_114/while/lstm_cell_198/mul_2:z:0^lstm_114/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_114/while/Identity_5Identity&lstm_114/while/lstm_cell_198/add_1:z:0^lstm_114/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_114/while/NoOpNoOp4^lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOp3^lstm_114/while/lstm_cell_198/MatMul/ReadVariableOp5^lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_114_while_identity lstm_114/while/Identity:output:0"?
lstm_114_while_identity_1"lstm_114/while/Identity_1:output:0"?
lstm_114_while_identity_2"lstm_114/while/Identity_2:output:0"?
lstm_114_while_identity_3"lstm_114/while/Identity_3:output:0"?
lstm_114_while_identity_4"lstm_114/while/Identity_4:output:0"?
lstm_114_while_identity_5"lstm_114/while/Identity_5:output:0"T
'lstm_114_while_lstm_114_strided_slice_1)lstm_114_while_lstm_114_strided_slice_1_0"~
<lstm_114_while_lstm_cell_198_biasadd_readvariableop_resource>lstm_114_while_lstm_cell_198_biasadd_readvariableop_resource_0"?
=lstm_114_while_lstm_cell_198_matmul_1_readvariableop_resource?lstm_114_while_lstm_cell_198_matmul_1_readvariableop_resource_0"|
;lstm_114_while_lstm_cell_198_matmul_readvariableop_resource=lstm_114_while_lstm_cell_198_matmul_readvariableop_resource_0"?
clstm_114_while_tensorarrayv2read_tensorlistgetitem_lstm_114_tensorarrayunstack_tensorlistfromtensorelstm_114_while_tensorarrayv2read_tensorlistgetitem_lstm_114_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOp3lstm_114/while/lstm_cell_198/BiasAdd/ReadVariableOp2h
2lstm_114/while/lstm_cell_198/MatMul/ReadVariableOp2lstm_114/while/lstm_cell_198/MatMul/ReadVariableOp2l
4lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOp4lstm_114/while/lstm_cell_198/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_116_while_body_1212378.
*lstm_116_while_lstm_116_while_loop_counter4
0lstm_116_while_lstm_116_while_maximum_iterations
lstm_116_while_placeholder 
lstm_116_while_placeholder_1 
lstm_116_while_placeholder_2 
lstm_116_while_placeholder_3-
)lstm_116_while_lstm_116_strided_slice_1_0i
elstm_116_while_tensorarrayv2read_tensorlistgetitem_lstm_116_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_116_while_lstm_cell_200_matmul_readvariableop_resource_0:2(Q
?lstm_116_while_lstm_cell_200_matmul_1_readvariableop_resource_0:
(L
>lstm_116_while_lstm_cell_200_biasadd_readvariableop_resource_0:(
lstm_116_while_identity
lstm_116_while_identity_1
lstm_116_while_identity_2
lstm_116_while_identity_3
lstm_116_while_identity_4
lstm_116_while_identity_5+
'lstm_116_while_lstm_116_strided_slice_1g
clstm_116_while_tensorarrayv2read_tensorlistgetitem_lstm_116_tensorarrayunstack_tensorlistfromtensorM
;lstm_116_while_lstm_cell_200_matmul_readvariableop_resource:2(O
=lstm_116_while_lstm_cell_200_matmul_1_readvariableop_resource:
(J
<lstm_116_while_lstm_cell_200_biasadd_readvariableop_resource:(??3lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOp?2lstm_116/while/lstm_cell_200/MatMul/ReadVariableOp?4lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOp?
@lstm_116/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_116/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_116_while_tensorarrayv2read_tensorlistgetitem_lstm_116_tensorarrayunstack_tensorlistfromtensor_0lstm_116_while_placeholderIlstm_116/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_116/while/lstm_cell_200/MatMul/ReadVariableOpReadVariableOp=lstm_116_while_lstm_cell_200_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_116/while/lstm_cell_200/MatMulMatMul9lstm_116/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_116/while/lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOp?lstm_116_while_lstm_cell_200_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_116/while/lstm_cell_200/MatMul_1MatMullstm_116_while_placeholder_2<lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_116/while/lstm_cell_200/addAddV2-lstm_116/while/lstm_cell_200/MatMul:product:0/lstm_116/while/lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOp>lstm_116_while_lstm_cell_200_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_116/while/lstm_cell_200/BiasAddBiasAdd$lstm_116/while/lstm_cell_200/add:z:0;lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_116/while/lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_116/while/lstm_cell_200/splitSplit5lstm_116/while/lstm_cell_200/split/split_dim:output:0-lstm_116/while/lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_116/while/lstm_cell_200/SigmoidSigmoid+lstm_116/while/lstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_116/while/lstm_cell_200/Sigmoid_1Sigmoid+lstm_116/while/lstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_116/while/lstm_cell_200/mulMul*lstm_116/while/lstm_cell_200/Sigmoid_1:y:0lstm_116_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_116/while/lstm_cell_200/ReluRelu+lstm_116/while/lstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_116/while/lstm_cell_200/mul_1Mul(lstm_116/while/lstm_cell_200/Sigmoid:y:0/lstm_116/while/lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_116/while/lstm_cell_200/add_1AddV2$lstm_116/while/lstm_cell_200/mul:z:0&lstm_116/while/lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_116/while/lstm_cell_200/Sigmoid_2Sigmoid+lstm_116/while/lstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_116/while/lstm_cell_200/Relu_1Relu&lstm_116/while/lstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_116/while/lstm_cell_200/mul_2Mul*lstm_116/while/lstm_cell_200/Sigmoid_2:y:01lstm_116/while/lstm_cell_200/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_116/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_116_while_placeholder_1lstm_116_while_placeholder&lstm_116/while/lstm_cell_200/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_116/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_116/while/addAddV2lstm_116_while_placeholderlstm_116/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_116/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_116/while/add_1AddV2*lstm_116_while_lstm_116_while_loop_counterlstm_116/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_116/while/IdentityIdentitylstm_116/while/add_1:z:0^lstm_116/while/NoOp*
T0*
_output_shapes
: ?
lstm_116/while/Identity_1Identity0lstm_116_while_lstm_116_while_maximum_iterations^lstm_116/while/NoOp*
T0*
_output_shapes
: t
lstm_116/while/Identity_2Identitylstm_116/while/add:z:0^lstm_116/while/NoOp*
T0*
_output_shapes
: ?
lstm_116/while/Identity_3IdentityClstm_116/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_116/while/NoOp*
T0*
_output_shapes
: ?
lstm_116/while/Identity_4Identity&lstm_116/while/lstm_cell_200/mul_2:z:0^lstm_116/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_116/while/Identity_5Identity&lstm_116/while/lstm_cell_200/add_1:z:0^lstm_116/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_116/while/NoOpNoOp4^lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOp3^lstm_116/while/lstm_cell_200/MatMul/ReadVariableOp5^lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_116_while_identity lstm_116/while/Identity:output:0"?
lstm_116_while_identity_1"lstm_116/while/Identity_1:output:0"?
lstm_116_while_identity_2"lstm_116/while/Identity_2:output:0"?
lstm_116_while_identity_3"lstm_116/while/Identity_3:output:0"?
lstm_116_while_identity_4"lstm_116/while/Identity_4:output:0"?
lstm_116_while_identity_5"lstm_116/while/Identity_5:output:0"T
'lstm_116_while_lstm_116_strided_slice_1)lstm_116_while_lstm_116_strided_slice_1_0"~
<lstm_116_while_lstm_cell_200_biasadd_readvariableop_resource>lstm_116_while_lstm_cell_200_biasadd_readvariableop_resource_0"?
=lstm_116_while_lstm_cell_200_matmul_1_readvariableop_resource?lstm_116_while_lstm_cell_200_matmul_1_readvariableop_resource_0"|
;lstm_116_while_lstm_cell_200_matmul_readvariableop_resource=lstm_116_while_lstm_cell_200_matmul_readvariableop_resource_0"?
clstm_116_while_tensorarrayv2read_tensorlistgetitem_lstm_116_tensorarrayunstack_tensorlistfromtensorelstm_116_while_tensorarrayv2read_tensorlistgetitem_lstm_116_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOp3lstm_116/while/lstm_cell_200/BiasAdd/ReadVariableOp2h
2lstm_116/while/lstm_cell_200/MatMul/ReadVariableOp2lstm_116/while/lstm_cell_200/MatMul/ReadVariableOp2l
4lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOp4lstm_116/while/lstm_cell_200/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1212714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_198_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_198_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_198_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_198_matmul_readvariableop_resource:	?G
4while_lstm_cell_198_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_198_biasadd_readvariableop_resource:	???*while/lstm_cell_198/BiasAdd/ReadVariableOp?)while/lstm_cell_198/MatMul/ReadVariableOp?+while/lstm_cell_198/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_198/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_198_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_198/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_198/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_198/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_198_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_198/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_198/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_198/addAddV2$while/lstm_cell_198/MatMul:product:0&while/lstm_cell_198/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_198/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_198_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_198/BiasAddBiasAddwhile/lstm_cell_198/add:z:02while/lstm_cell_198/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_198/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_198/splitSplit,while/lstm_cell_198/split/split_dim:output:0$while/lstm_cell_198/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_198/SigmoidSigmoid"while/lstm_cell_198/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_198/Sigmoid_1Sigmoid"while/lstm_cell_198/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mulMul!while/lstm_cell_198/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_198/ReluRelu"while/lstm_cell_198/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mul_1Mulwhile/lstm_cell_198/Sigmoid:y:0&while/lstm_cell_198/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/add_1AddV2while/lstm_cell_198/mul:z:0while/lstm_cell_198/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_198/Sigmoid_2Sigmoid"while/lstm_cell_198/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_198/Relu_1Reluwhile/lstm_cell_198/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_198/mul_2Mul!while/lstm_cell_198/Sigmoid_2:y:0(while/lstm_cell_198/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_198/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_198/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_198/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_198/BiasAdd/ReadVariableOp*^while/lstm_cell_198/MatMul/ReadVariableOp,^while/lstm_cell_198/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_198_biasadd_readvariableop_resource5while_lstm_cell_198_biasadd_readvariableop_resource_0"n
4while_lstm_cell_198_matmul_1_readvariableop_resource6while_lstm_cell_198_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_198_matmul_readvariableop_resource4while_lstm_cell_198_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_198/BiasAdd/ReadVariableOp*while/lstm_cell_198/BiasAdd/ReadVariableOp2V
)while/lstm_cell_198/MatMul/ReadVariableOp)while/lstm_cell_198/MatMul/ReadVariableOp2Z
+while/lstm_cell_198/MatMul_1/ReadVariableOp+while/lstm_cell_198/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_115_layer_call_and_return_conditional_losses_1213557

inputs?
,lstm_cell_199_matmul_readvariableop_resource:	d?A
.lstm_cell_199_matmul_1_readvariableop_resource:	2?<
-lstm_cell_199_biasadd_readvariableop_resource:	?
identity??$lstm_cell_199/BiasAdd/ReadVariableOp?#lstm_cell_199/MatMul/ReadVariableOp?%lstm_cell_199/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_199/MatMul/ReadVariableOpReadVariableOp,lstm_cell_199_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_199/MatMulMatMulstrided_slice_2:output:0+lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_199_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_199/MatMul_1MatMulzeros:output:0-lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_199/addAddV2lstm_cell_199/MatMul:product:0 lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_199_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_199/BiasAddBiasAddlstm_cell_199/add:z:0,lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_199/splitSplit&lstm_cell_199/split/split_dim:output:0lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_199/SigmoidSigmoidlstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_199/Sigmoid_1Sigmoidlstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_199/mulMullstm_cell_199/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_199/ReluRelulstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_199/mul_1Mullstm_cell_199/Sigmoid:y:0 lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_199/add_1AddV2lstm_cell_199/mul:z:0lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_199/Sigmoid_2Sigmoidlstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_199/Relu_1Relulstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_199/mul_2Mullstm_cell_199/Sigmoid_2:y:0"lstm_cell_199/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_199_matmul_readvariableop_resource.lstm_cell_199_matmul_1_readvariableop_resource-lstm_cell_199_biasadd_readvariableop_resource*
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
while_body_1213473*
condR
while_cond_1213472*K
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
NoOpNoOp%^lstm_cell_199/BiasAdd/ReadVariableOp$^lstm_cell_199/MatMul/ReadVariableOp&^lstm_cell_199/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_199/BiasAdd/ReadVariableOp$lstm_cell_199/BiasAdd/ReadVariableOp2J
#lstm_cell_199/MatMul/ReadVariableOp#lstm_cell_199/MatMul/ReadVariableOp2N
%lstm_cell_199/MatMul_1/ReadVariableOp%lstm_cell_199/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1211095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1211095___redundant_placeholder05
1while_while_cond_1211095___redundant_placeholder15
1while_while_cond_1211095___redundant_placeholder25
1while_while_cond_1211095___redundant_placeholder3
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
/__inference_lstm_cell_198_layer_call_fn_1214369

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
J__inference_lstm_cell_198_layer_call_and_return_conditional_losses_1209513o
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
?
?
J__inference_lstm_cell_200_layer_call_and_return_conditional_losses_1210213

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
while_cond_1213802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1213802___redundant_placeholder05
1while_while_cond_1213802___redundant_placeholder15
1while_while_cond_1213802___redundant_placeholder25
1while_while_cond_1213802___redundant_placeholder3
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
J__inference_lstm_cell_198_layer_call_and_return_conditional_losses_1209367

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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1214030
inputs_0>
,lstm_cell_200_matmul_readvariableop_resource:2(@
.lstm_cell_200_matmul_1_readvariableop_resource:
(;
-lstm_cell_200_biasadd_readvariableop_resource:(
identity??$lstm_cell_200/BiasAdd/ReadVariableOp?#lstm_cell_200/MatMul/ReadVariableOp?%lstm_cell_200/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_200/MatMul/ReadVariableOpReadVariableOp,lstm_cell_200_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_200/MatMulMatMulstrided_slice_2:output:0+lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_200_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_200/MatMul_1MatMulzeros:output:0-lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_200/addAddV2lstm_cell_200/MatMul:product:0 lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_200_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_200/BiasAddBiasAddlstm_cell_200/add:z:0,lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_200/splitSplit&lstm_cell_200/split/split_dim:output:0lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_200/SigmoidSigmoidlstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_200/Sigmoid_1Sigmoidlstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_200/mulMullstm_cell_200/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_200/ReluRelulstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_200/mul_1Mullstm_cell_200/Sigmoid:y:0 lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_200/add_1AddV2lstm_cell_200/mul:z:0lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_200/Sigmoid_2Sigmoidlstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_200/Relu_1Relulstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_200/mul_2Mullstm_cell_200/Sigmoid_2:y:0"lstm_cell_200/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_200_matmul_readvariableop_resource.lstm_cell_200_matmul_1_readvariableop_resource-lstm_cell_200_biasadd_readvariableop_resource*
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
while_body_1213946*
condR
while_cond_1213945*K
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
NoOpNoOp%^lstm_cell_200/BiasAdd/ReadVariableOp$^lstm_cell_200/MatMul/ReadVariableOp&^lstm_cell_200/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_200/BiasAdd/ReadVariableOp$lstm_cell_200/BiasAdd/ReadVariableOp2J
#lstm_cell_200/MatMul/ReadVariableOp#lstm_cell_200/MatMul/ReadVariableOp2N
%lstm_cell_200/MatMul_1/ReadVariableOp%lstm_cell_200/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_1211260
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1211260___redundant_placeholder05
1while_while_cond_1211260___redundant_placeholder15
1while_while_cond_1211260___redundant_placeholder25
1while_while_cond_1211260___redundant_placeholder3
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
#__inference__traced_restore_1214902
file_prefix2
 assignvariableop_dense_38_kernel:
.
 assignvariableop_1_dense_38_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_114_lstm_cell_114_kernel:	?M
:assignvariableop_8_lstm_114_lstm_cell_114_recurrent_kernel:	d?=
.assignvariableop_9_lstm_114_lstm_cell_114_bias:	?D
1assignvariableop_10_lstm_115_lstm_cell_115_kernel:	d?N
;assignvariableop_11_lstm_115_lstm_cell_115_recurrent_kernel:	2?>
/assignvariableop_12_lstm_115_lstm_cell_115_bias:	?C
1assignvariableop_13_lstm_116_lstm_cell_116_kernel:2(M
;assignvariableop_14_lstm_116_lstm_cell_116_recurrent_kernel:
(=
/assignvariableop_15_lstm_116_lstm_cell_116_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_38_kernel_m:
6
(assignvariableop_19_adam_dense_38_bias_m:K
8assignvariableop_20_adam_lstm_114_lstm_cell_114_kernel_m:	?U
Bassignvariableop_21_adam_lstm_114_lstm_cell_114_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_114_lstm_cell_114_bias_m:	?K
8assignvariableop_23_adam_lstm_115_lstm_cell_115_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_115_lstm_cell_115_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_115_lstm_cell_115_bias_m:	?J
8assignvariableop_26_adam_lstm_116_lstm_cell_116_kernel_m:2(T
Bassignvariableop_27_adam_lstm_116_lstm_cell_116_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_116_lstm_cell_116_bias_m:(<
*assignvariableop_29_adam_dense_38_kernel_v:
6
(assignvariableop_30_adam_dense_38_bias_v:K
8assignvariableop_31_adam_lstm_114_lstm_cell_114_kernel_v:	?U
Bassignvariableop_32_adam_lstm_114_lstm_cell_114_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_114_lstm_cell_114_bias_v:	?K
8assignvariableop_34_adam_lstm_115_lstm_cell_115_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_115_lstm_cell_115_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_115_lstm_cell_115_bias_v:	?J
8assignvariableop_37_adam_lstm_116_lstm_cell_116_kernel_v:2(T
Bassignvariableop_38_adam_lstm_116_lstm_cell_116_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_116_lstm_cell_116_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_38_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_38_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_114_lstm_cell_114_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_114_lstm_cell_114_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_114_lstm_cell_114_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_115_lstm_cell_115_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_115_lstm_cell_115_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_115_lstm_cell_115_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_116_lstm_cell_116_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_116_lstm_cell_116_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_116_lstm_cell_116_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_38_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_38_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_114_lstm_cell_114_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_114_lstm_cell_114_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_114_lstm_cell_114_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_115_lstm_cell_115_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_115_lstm_cell_115_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_115_lstm_cell_115_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_116_lstm_cell_116_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_116_lstm_cell_116_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_116_lstm_cell_116_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_38_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_38_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_114_lstm_cell_114_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_114_lstm_cell_114_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_114_lstm_cell_114_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_115_lstm_cell_115_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_115_lstm_cell_115_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_115_lstm_cell_115_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_116_lstm_cell_116_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_116_lstm_cell_116_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_116_lstm_cell_116_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_body_1213187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_199_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_199_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_199_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_199_matmul_readvariableop_resource:	d?G
4while_lstm_cell_199_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_199_biasadd_readvariableop_resource:	???*while/lstm_cell_199/BiasAdd/ReadVariableOp?)while/lstm_cell_199/MatMul/ReadVariableOp?+while/lstm_cell_199/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_199/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_199_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_199/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_199_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_199/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_199/addAddV2$while/lstm_cell_199/MatMul:product:0&while/lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_199_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_199/BiasAddBiasAddwhile/lstm_cell_199/add:z:02while/lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_199/splitSplit,while/lstm_cell_199/split/split_dim:output:0$while/lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_199/SigmoidSigmoid"while/lstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_199/Sigmoid_1Sigmoid"while/lstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mulMul!while/lstm_cell_199/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_199/ReluRelu"while/lstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mul_1Mulwhile/lstm_cell_199/Sigmoid:y:0&while/lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/add_1AddV2while/lstm_cell_199/mul:z:0while/lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_199/Sigmoid_2Sigmoid"while/lstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_199/Relu_1Reluwhile/lstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mul_2Mul!while/lstm_cell_199/Sigmoid_2:y:0(while/lstm_cell_199/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_199/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_199/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_199/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_199/BiasAdd/ReadVariableOp*^while/lstm_cell_199/MatMul/ReadVariableOp,^while/lstm_cell_199/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_199_biasadd_readvariableop_resource5while_lstm_cell_199_biasadd_readvariableop_resource_0"n
4while_lstm_cell_199_matmul_1_readvariableop_resource6while_lstm_cell_199_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_199_matmul_readvariableop_resource4while_lstm_cell_199_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_199/BiasAdd/ReadVariableOp*while/lstm_cell_199/BiasAdd/ReadVariableOp2V
)while/lstm_cell_199/MatMul/ReadVariableOp)while/lstm_cell_199/MatMul/ReadVariableOp2Z
+while/lstm_cell_199/MatMul_1/ReadVariableOp+while/lstm_cell_199/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_115_layer_call_fn_1213117

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
E__inference_lstm_115_layer_call_and_return_conditional_losses_1210649s
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
*__inference_lstm_115_layer_call_fn_1213128

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
E__inference_lstm_115_layer_call_and_return_conditional_losses_1211180s
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
E__inference_dense_38_layer_call_and_return_conditional_losses_1214335

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
?
while_cond_1210930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1210930___redundant_placeholder05
1while_while_cond_1210930___redundant_placeholder15
1while_while_cond_1210930___redundant_placeholder25
1while_while_cond_1210930___redundant_placeholder3
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
while_body_1209381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_198_1209405_0:	?0
while_lstm_cell_198_1209407_0:	d?,
while_lstm_cell_198_1209409_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_198_1209405:	?.
while_lstm_cell_198_1209407:	d?*
while_lstm_cell_198_1209409:	???+while/lstm_cell_198/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_198/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_198_1209405_0while_lstm_cell_198_1209407_0while_lstm_cell_198_1209409_0*
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
J__inference_lstm_cell_198_layer_call_and_return_conditional_losses_1209367?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_198/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_198/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_198/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_198/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_198_1209405while_lstm_cell_198_1209405_0"<
while_lstm_cell_198_1209407while_lstm_cell_198_1209407_0"<
while_lstm_cell_198_1209409while_lstm_cell_198_1209409_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_198/StatefulPartitionedCall+while/lstm_cell_198/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_115_while_body_1212239.
*lstm_115_while_lstm_115_while_loop_counter4
0lstm_115_while_lstm_115_while_maximum_iterations
lstm_115_while_placeholder 
lstm_115_while_placeholder_1 
lstm_115_while_placeholder_2 
lstm_115_while_placeholder_3-
)lstm_115_while_lstm_115_strided_slice_1_0i
elstm_115_while_tensorarrayv2read_tensorlistgetitem_lstm_115_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_115_while_lstm_cell_199_matmul_readvariableop_resource_0:	d?R
?lstm_115_while_lstm_cell_199_matmul_1_readvariableop_resource_0:	2?M
>lstm_115_while_lstm_cell_199_biasadd_readvariableop_resource_0:	?
lstm_115_while_identity
lstm_115_while_identity_1
lstm_115_while_identity_2
lstm_115_while_identity_3
lstm_115_while_identity_4
lstm_115_while_identity_5+
'lstm_115_while_lstm_115_strided_slice_1g
clstm_115_while_tensorarrayv2read_tensorlistgetitem_lstm_115_tensorarrayunstack_tensorlistfromtensorN
;lstm_115_while_lstm_cell_199_matmul_readvariableop_resource:	d?P
=lstm_115_while_lstm_cell_199_matmul_1_readvariableop_resource:	2?K
<lstm_115_while_lstm_cell_199_biasadd_readvariableop_resource:	???3lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOp?2lstm_115/while/lstm_cell_199/MatMul/ReadVariableOp?4lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOp?
@lstm_115/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_115/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_115_while_tensorarrayv2read_tensorlistgetitem_lstm_115_tensorarrayunstack_tensorlistfromtensor_0lstm_115_while_placeholderIlstm_115/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_115/while/lstm_cell_199/MatMul/ReadVariableOpReadVariableOp=lstm_115_while_lstm_cell_199_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_115/while/lstm_cell_199/MatMulMatMul9lstm_115/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_115/while/lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOp?lstm_115_while_lstm_cell_199_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_115/while/lstm_cell_199/MatMul_1MatMullstm_115_while_placeholder_2<lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_115/while/lstm_cell_199/addAddV2-lstm_115/while/lstm_cell_199/MatMul:product:0/lstm_115/while/lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOp>lstm_115_while_lstm_cell_199_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_115/while/lstm_cell_199/BiasAddBiasAdd$lstm_115/while/lstm_cell_199/add:z:0;lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_115/while/lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_115/while/lstm_cell_199/splitSplit5lstm_115/while/lstm_cell_199/split/split_dim:output:0-lstm_115/while/lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_115/while/lstm_cell_199/SigmoidSigmoid+lstm_115/while/lstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_115/while/lstm_cell_199/Sigmoid_1Sigmoid+lstm_115/while/lstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_115/while/lstm_cell_199/mulMul*lstm_115/while/lstm_cell_199/Sigmoid_1:y:0lstm_115_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_115/while/lstm_cell_199/ReluRelu+lstm_115/while/lstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_115/while/lstm_cell_199/mul_1Mul(lstm_115/while/lstm_cell_199/Sigmoid:y:0/lstm_115/while/lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_115/while/lstm_cell_199/add_1AddV2$lstm_115/while/lstm_cell_199/mul:z:0&lstm_115/while/lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_115/while/lstm_cell_199/Sigmoid_2Sigmoid+lstm_115/while/lstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_115/while/lstm_cell_199/Relu_1Relu&lstm_115/while/lstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_115/while/lstm_cell_199/mul_2Mul*lstm_115/while/lstm_cell_199/Sigmoid_2:y:01lstm_115/while/lstm_cell_199/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_115/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_115_while_placeholder_1lstm_115_while_placeholder&lstm_115/while/lstm_cell_199/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_115/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_115/while/addAddV2lstm_115_while_placeholderlstm_115/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_115/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_115/while/add_1AddV2*lstm_115_while_lstm_115_while_loop_counterlstm_115/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_115/while/IdentityIdentitylstm_115/while/add_1:z:0^lstm_115/while/NoOp*
T0*
_output_shapes
: ?
lstm_115/while/Identity_1Identity0lstm_115_while_lstm_115_while_maximum_iterations^lstm_115/while/NoOp*
T0*
_output_shapes
: t
lstm_115/while/Identity_2Identitylstm_115/while/add:z:0^lstm_115/while/NoOp*
T0*
_output_shapes
: ?
lstm_115/while/Identity_3IdentityClstm_115/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_115/while/NoOp*
T0*
_output_shapes
: ?
lstm_115/while/Identity_4Identity&lstm_115/while/lstm_cell_199/mul_2:z:0^lstm_115/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_115/while/Identity_5Identity&lstm_115/while/lstm_cell_199/add_1:z:0^lstm_115/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_115/while/NoOpNoOp4^lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOp3^lstm_115/while/lstm_cell_199/MatMul/ReadVariableOp5^lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_115_while_identity lstm_115/while/Identity:output:0"?
lstm_115_while_identity_1"lstm_115/while/Identity_1:output:0"?
lstm_115_while_identity_2"lstm_115/while/Identity_2:output:0"?
lstm_115_while_identity_3"lstm_115/while/Identity_3:output:0"?
lstm_115_while_identity_4"lstm_115/while/Identity_4:output:0"?
lstm_115_while_identity_5"lstm_115/while/Identity_5:output:0"T
'lstm_115_while_lstm_115_strided_slice_1)lstm_115_while_lstm_115_strided_slice_1_0"~
<lstm_115_while_lstm_cell_199_biasadd_readvariableop_resource>lstm_115_while_lstm_cell_199_biasadd_readvariableop_resource_0"?
=lstm_115_while_lstm_cell_199_matmul_1_readvariableop_resource?lstm_115_while_lstm_cell_199_matmul_1_readvariableop_resource_0"|
;lstm_115_while_lstm_cell_199_matmul_readvariableop_resource=lstm_115_while_lstm_cell_199_matmul_readvariableop_resource_0"?
clstm_115_while_tensorarrayv2read_tensorlistgetitem_lstm_115_tensorarrayunstack_tensorlistfromtensorelstm_115_while_tensorarrayv2read_tensorlistgetitem_lstm_115_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOp3lstm_115/while/lstm_cell_199/BiasAdd/ReadVariableOp2h
2lstm_115/while/lstm_cell_199/MatMul/ReadVariableOp2lstm_115/while/lstm_cell_199/MatMul/ReadVariableOp2l
4lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOp4lstm_115/while/lstm_cell_199/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_199_layer_call_and_return_conditional_losses_1209863

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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1210799

inputs>
,lstm_cell_200_matmul_readvariableop_resource:2(@
.lstm_cell_200_matmul_1_readvariableop_resource:
(;
-lstm_cell_200_biasadd_readvariableop_resource:(
identity??$lstm_cell_200/BiasAdd/ReadVariableOp?#lstm_cell_200/MatMul/ReadVariableOp?%lstm_cell_200/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_200/MatMul/ReadVariableOpReadVariableOp,lstm_cell_200_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_200/MatMulMatMulstrided_slice_2:output:0+lstm_cell_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_200/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_200_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_200/MatMul_1MatMulzeros:output:0-lstm_cell_200/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_200/addAddV2lstm_cell_200/MatMul:product:0 lstm_cell_200/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_200/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_200_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_200/BiasAddBiasAddlstm_cell_200/add:z:0,lstm_cell_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_200/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_200/splitSplit&lstm_cell_200/split/split_dim:output:0lstm_cell_200/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_200/SigmoidSigmoidlstm_cell_200/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_200/Sigmoid_1Sigmoidlstm_cell_200/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_200/mulMullstm_cell_200/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_200/ReluRelulstm_cell_200/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_200/mul_1Mullstm_cell_200/Sigmoid:y:0 lstm_cell_200/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_200/add_1AddV2lstm_cell_200/mul:z:0lstm_cell_200/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_200/Sigmoid_2Sigmoidlstm_cell_200/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_200/Relu_1Relulstm_cell_200/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_200/mul_2Mullstm_cell_200/Sigmoid_2:y:0"lstm_cell_200/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_200_matmul_readvariableop_resource.lstm_cell_200_matmul_1_readvariableop_resource-lstm_cell_200_biasadd_readvariableop_resource*
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
while_body_1210715*
condR
while_cond_1210714*K
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
NoOpNoOp%^lstm_cell_200/BiasAdd/ReadVariableOp$^lstm_cell_200/MatMul/ReadVariableOp&^lstm_cell_200/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_200/BiasAdd/ReadVariableOp$lstm_cell_200/BiasAdd/ReadVariableOp2J
#lstm_cell_200/MatMul/ReadVariableOp#lstm_cell_200/MatMul/ReadVariableOp2N
%lstm_cell_200/MatMul_1/ReadVariableOp%lstm_cell_200/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_199_layer_call_fn_1214450

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
J__inference_lstm_cell_199_layer_call_and_return_conditional_losses_1209717o
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
while_body_1210565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_199_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_199_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_199_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_199_matmul_readvariableop_resource:	d?G
4while_lstm_cell_199_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_199_biasadd_readvariableop_resource:	???*while/lstm_cell_199/BiasAdd/ReadVariableOp?)while/lstm_cell_199/MatMul/ReadVariableOp?+while/lstm_cell_199/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_199/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_199_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_199/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_199/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_199/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_199_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_199/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_199/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_199/addAddV2$while/lstm_cell_199/MatMul:product:0&while/lstm_cell_199/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_199/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_199_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_199/BiasAddBiasAddwhile/lstm_cell_199/add:z:02while/lstm_cell_199/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_199/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_199/splitSplit,while/lstm_cell_199/split/split_dim:output:0$while/lstm_cell_199/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_199/SigmoidSigmoid"while/lstm_cell_199/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_199/Sigmoid_1Sigmoid"while/lstm_cell_199/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mulMul!while/lstm_cell_199/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_199/ReluRelu"while/lstm_cell_199/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mul_1Mulwhile/lstm_cell_199/Sigmoid:y:0&while/lstm_cell_199/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/add_1AddV2while/lstm_cell_199/mul:z:0while/lstm_cell_199/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_199/Sigmoid_2Sigmoid"while/lstm_cell_199/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_199/Relu_1Reluwhile/lstm_cell_199/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_199/mul_2Mul!while/lstm_cell_199/Sigmoid_2:y:0(while/lstm_cell_199/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_199/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_199/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_199/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_199/BiasAdd/ReadVariableOp*^while/lstm_cell_199/MatMul/ReadVariableOp,^while/lstm_cell_199/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_199_biasadd_readvariableop_resource5while_lstm_cell_199_biasadd_readvariableop_resource_0"n
4while_lstm_cell_199_matmul_1_readvariableop_resource6while_lstm_cell_199_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_199_matmul_readvariableop_resource4while_lstm_cell_199_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_199/BiasAdd/ReadVariableOp*while/lstm_cell_199/BiasAdd/ReadVariableOp2V
)while/lstm_cell_199/MatMul/ReadVariableOp)while/lstm_cell_199/MatMul/ReadVariableOp2Z
+while/lstm_cell_199/MatMul_1/ReadVariableOp+while/lstm_cell_199/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_114_input;
 serving_default_lstm_114_input:0?????????<
dense_380
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
2dense_38/kernel
:2dense_38/bias
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
0:.	?2lstm_114/lstm_cell_114/kernel
::8	d?2'lstm_114/lstm_cell_114/recurrent_kernel
*:(?2lstm_114/lstm_cell_114/bias
0:.	d?2lstm_115/lstm_cell_115/kernel
::8	2?2'lstm_115/lstm_cell_115/recurrent_kernel
*:(?2lstm_115/lstm_cell_115/bias
/:-2(2lstm_116/lstm_cell_116/kernel
9:7
(2'lstm_116/lstm_cell_116/recurrent_kernel
):'(2lstm_116/lstm_cell_116/bias
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
2Adam/dense_38/kernel/m
 :2Adam/dense_38/bias/m
5:3	?2$Adam/lstm_114/lstm_cell_114/kernel/m
?:=	d?2.Adam/lstm_114/lstm_cell_114/recurrent_kernel/m
/:-?2"Adam/lstm_114/lstm_cell_114/bias/m
5:3	d?2$Adam/lstm_115/lstm_cell_115/kernel/m
?:=	2?2.Adam/lstm_115/lstm_cell_115/recurrent_kernel/m
/:-?2"Adam/lstm_115/lstm_cell_115/bias/m
4:22(2$Adam/lstm_116/lstm_cell_116/kernel/m
>:<
(2.Adam/lstm_116/lstm_cell_116/recurrent_kernel/m
.:,(2"Adam/lstm_116/lstm_cell_116/bias/m
&:$
2Adam/dense_38/kernel/v
 :2Adam/dense_38/bias/v
5:3	?2$Adam/lstm_114/lstm_cell_114/kernel/v
?:=	d?2.Adam/lstm_114/lstm_cell_114/recurrent_kernel/v
/:-?2"Adam/lstm_114/lstm_cell_114/bias/v
5:3	d?2$Adam/lstm_115/lstm_cell_115/kernel/v
?:=	2?2.Adam/lstm_115/lstm_cell_115/recurrent_kernel/v
/:-?2"Adam/lstm_115/lstm_cell_115/bias/v
4:22(2$Adam/lstm_116/lstm_cell_116/kernel/v
>:<
(2.Adam/lstm_116/lstm_cell_116/recurrent_kernel/v
.:,(2"Adam/lstm_116/lstm_cell_116/bias/v
?2?
/__inference_sequential_38_layer_call_fn_1210849
/__inference_sequential_38_layer_call_fn_1211587
/__inference_sequential_38_layer_call_fn_1211614
/__inference_sequential_38_layer_call_fn_1211465?
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
J__inference_sequential_38_layer_call_and_return_conditional_losses_1212041
J__inference_sequential_38_layer_call_and_return_conditional_losses_1212468
J__inference_sequential_38_layer_call_and_return_conditional_losses_1211495
J__inference_sequential_38_layer_call_and_return_conditional_losses_1211525?
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
"__inference__wrapped_model_1209300lstm_114_input"?
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
*__inference_lstm_114_layer_call_fn_1212479
*__inference_lstm_114_layer_call_fn_1212490
*__inference_lstm_114_layer_call_fn_1212501
*__inference_lstm_114_layer_call_fn_1212512?
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
E__inference_lstm_114_layer_call_and_return_conditional_losses_1212655
E__inference_lstm_114_layer_call_and_return_conditional_losses_1212798
E__inference_lstm_114_layer_call_and_return_conditional_losses_1212941
E__inference_lstm_114_layer_call_and_return_conditional_losses_1213084?
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
*__inference_lstm_115_layer_call_fn_1213095
*__inference_lstm_115_layer_call_fn_1213106
*__inference_lstm_115_layer_call_fn_1213117
*__inference_lstm_115_layer_call_fn_1213128?
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
E__inference_lstm_115_layer_call_and_return_conditional_losses_1213271
E__inference_lstm_115_layer_call_and_return_conditional_losses_1213414
E__inference_lstm_115_layer_call_and_return_conditional_losses_1213557
E__inference_lstm_115_layer_call_and_return_conditional_losses_1213700?
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
*__inference_lstm_116_layer_call_fn_1213711
*__inference_lstm_116_layer_call_fn_1213722
*__inference_lstm_116_layer_call_fn_1213733
*__inference_lstm_116_layer_call_fn_1213744?
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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1213887
E__inference_lstm_116_layer_call_and_return_conditional_losses_1214030
E__inference_lstm_116_layer_call_and_return_conditional_losses_1214173
E__inference_lstm_116_layer_call_and_return_conditional_losses_1214316?
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
*__inference_dense_38_layer_call_fn_1214325?
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
E__inference_dense_38_layer_call_and_return_conditional_losses_1214335?
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
%__inference_signature_wrapper_1211560lstm_114_input"?
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
/__inference_lstm_cell_198_layer_call_fn_1214352
/__inference_lstm_cell_198_layer_call_fn_1214369?
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
J__inference_lstm_cell_198_layer_call_and_return_conditional_losses_1214401
J__inference_lstm_cell_198_layer_call_and_return_conditional_losses_1214433?
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
/__inference_lstm_cell_199_layer_call_fn_1214450
/__inference_lstm_cell_199_layer_call_fn_1214467?
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
J__inference_lstm_cell_199_layer_call_and_return_conditional_losses_1214499
J__inference_lstm_cell_199_layer_call_and_return_conditional_losses_1214531?
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
/__inference_lstm_cell_200_layer_call_fn_1214548
/__inference_lstm_cell_200_layer_call_fn_1214565?
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
J__inference_lstm_cell_200_layer_call_and_return_conditional_losses_1214597
J__inference_lstm_cell_200_layer_call_and_return_conditional_losses_1214629?
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
"__inference__wrapped_model_1209300-./012345!";?8
1?.
,?)
lstm_114_input?????????
? "3?0
.
dense_38"?
dense_38??????????
E__inference_dense_38_layer_call_and_return_conditional_losses_1214335\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_38_layer_call_fn_1214325O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_114_layer_call_and_return_conditional_losses_1212655?-./O?L
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
E__inference_lstm_114_layer_call_and_return_conditional_losses_1212798?-./O?L
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
E__inference_lstm_114_layer_call_and_return_conditional_losses_1212941q-./??<
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
E__inference_lstm_114_layer_call_and_return_conditional_losses_1213084q-./??<
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
*__inference_lstm_114_layer_call_fn_1212479}-./O?L
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
*__inference_lstm_114_layer_call_fn_1212490}-./O?L
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
*__inference_lstm_114_layer_call_fn_1212501d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_114_layer_call_fn_1212512d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_115_layer_call_and_return_conditional_losses_1213271?012O?L
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
E__inference_lstm_115_layer_call_and_return_conditional_losses_1213414?012O?L
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
E__inference_lstm_115_layer_call_and_return_conditional_losses_1213557q012??<
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
E__inference_lstm_115_layer_call_and_return_conditional_losses_1213700q012??<
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
*__inference_lstm_115_layer_call_fn_1213095}012O?L
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
*__inference_lstm_115_layer_call_fn_1213106}012O?L
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
*__inference_lstm_115_layer_call_fn_1213117d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_115_layer_call_fn_1213128d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_116_layer_call_and_return_conditional_losses_1213887}345O?L
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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1214030}345O?L
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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1214173m345??<
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
E__inference_lstm_116_layer_call_and_return_conditional_losses_1214316m345??<
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
*__inference_lstm_116_layer_call_fn_1213711p345O?L
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
*__inference_lstm_116_layer_call_fn_1213722p345O?L
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
*__inference_lstm_116_layer_call_fn_1213733`345??<
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
*__inference_lstm_116_layer_call_fn_1213744`345??<
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
J__inference_lstm_cell_198_layer_call_and_return_conditional_losses_1214401?-./??}
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
J__inference_lstm_cell_198_layer_call_and_return_conditional_losses_1214433?-./??}
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
/__inference_lstm_cell_198_layer_call_fn_1214352?-./??}
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
/__inference_lstm_cell_198_layer_call_fn_1214369?-./??}
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
J__inference_lstm_cell_199_layer_call_and_return_conditional_losses_1214499?012??}
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
J__inference_lstm_cell_199_layer_call_and_return_conditional_losses_1214531?012??}
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
/__inference_lstm_cell_199_layer_call_fn_1214450?012??}
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
/__inference_lstm_cell_199_layer_call_fn_1214467?012??}
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
J__inference_lstm_cell_200_layer_call_and_return_conditional_losses_1214597?345??}
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
J__inference_lstm_cell_200_layer_call_and_return_conditional_losses_1214629?345??}
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
/__inference_lstm_cell_200_layer_call_fn_1214548?345??}
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
/__inference_lstm_cell_200_layer_call_fn_1214565?345??}
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
J__inference_sequential_38_layer_call_and_return_conditional_losses_1211495y-./012345!"C?@
9?6
,?)
lstm_114_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_38_layer_call_and_return_conditional_losses_1211525y-./012345!"C?@
9?6
,?)
lstm_114_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_38_layer_call_and_return_conditional_losses_1212041q-./012345!";?8
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
J__inference_sequential_38_layer_call_and_return_conditional_losses_1212468q-./012345!";?8
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
/__inference_sequential_38_layer_call_fn_1210849l-./012345!"C?@
9?6
,?)
lstm_114_input?????????
p 

 
? "???????????
/__inference_sequential_38_layer_call_fn_1211465l-./012345!"C?@
9?6
,?)
lstm_114_input?????????
p

 
? "???????????
/__inference_sequential_38_layer_call_fn_1211587d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_38_layer_call_fn_1211614d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1211560?-./012345!"M?J
? 
C?@
>
lstm_114_input,?)
lstm_114_input?????????"3?0
.
dense_38"?
dense_38?????????