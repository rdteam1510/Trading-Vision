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
dense_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_63/kernel
s
#dense_63/kernel/Read/ReadVariableOpReadVariableOpdense_63/kernel*
_output_shapes

:
*
dtype0
r
dense_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_63/bias
k
!dense_63/bias/Read/ReadVariableOpReadVariableOpdense_63/bias*
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
lstm_189/lstm_cell_189/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_189/lstm_cell_189/kernel
?
1lstm_189/lstm_cell_189/kernel/Read/ReadVariableOpReadVariableOplstm_189/lstm_cell_189/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_189/lstm_cell_189/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_189/lstm_cell_189/recurrent_kernel
?
;lstm_189/lstm_cell_189/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_189/lstm_cell_189/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_189/lstm_cell_189/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_189/lstm_cell_189/bias
?
/lstm_189/lstm_cell_189/bias/Read/ReadVariableOpReadVariableOplstm_189/lstm_cell_189/bias*
_output_shapes	
:?*
dtype0
?
lstm_190/lstm_cell_190/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_190/lstm_cell_190/kernel
?
1lstm_190/lstm_cell_190/kernel/Read/ReadVariableOpReadVariableOplstm_190/lstm_cell_190/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_190/lstm_cell_190/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_190/lstm_cell_190/recurrent_kernel
?
;lstm_190/lstm_cell_190/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_190/lstm_cell_190/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_190/lstm_cell_190/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_190/lstm_cell_190/bias
?
/lstm_190/lstm_cell_190/bias/Read/ReadVariableOpReadVariableOplstm_190/lstm_cell_190/bias*
_output_shapes	
:?*
dtype0
?
lstm_191/lstm_cell_191/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_191/lstm_cell_191/kernel
?
1lstm_191/lstm_cell_191/kernel/Read/ReadVariableOpReadVariableOplstm_191/lstm_cell_191/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_191/lstm_cell_191/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_191/lstm_cell_191/recurrent_kernel
?
;lstm_191/lstm_cell_191/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_191/lstm_cell_191/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_191/lstm_cell_191/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_191/lstm_cell_191/bias
?
/lstm_191/lstm_cell_191/bias/Read/ReadVariableOpReadVariableOplstm_191/lstm_cell_191/bias*
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
Adam/dense_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_63/kernel/m
?
*Adam/dense_63/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_63/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_63/bias/m
y
(Adam/dense_63/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_63/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_189/lstm_cell_189/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_189/lstm_cell_189/kernel/m
?
8Adam/lstm_189/lstm_cell_189/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_189/lstm_cell_189/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_189/lstm_cell_189/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_189/lstm_cell_189/recurrent_kernel/m
?
BAdam/lstm_189/lstm_cell_189/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_189/lstm_cell_189/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_189/lstm_cell_189/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_189/lstm_cell_189/bias/m
?
6Adam/lstm_189/lstm_cell_189/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_189/lstm_cell_189/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_190/lstm_cell_190/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_190/lstm_cell_190/kernel/m
?
8Adam/lstm_190/lstm_cell_190/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_190/lstm_cell_190/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_190/lstm_cell_190/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_190/lstm_cell_190/recurrent_kernel/m
?
BAdam/lstm_190/lstm_cell_190/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_190/lstm_cell_190/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_190/lstm_cell_190/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_190/lstm_cell_190/bias/m
?
6Adam/lstm_190/lstm_cell_190/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_190/lstm_cell_190/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_191/lstm_cell_191/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_191/lstm_cell_191/kernel/m
?
8Adam/lstm_191/lstm_cell_191/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_191/lstm_cell_191/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_191/lstm_cell_191/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_191/lstm_cell_191/recurrent_kernel/m
?
BAdam/lstm_191/lstm_cell_191/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_191/lstm_cell_191/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_191/lstm_cell_191/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_191/lstm_cell_191/bias/m
?
6Adam/lstm_191/lstm_cell_191/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_191/lstm_cell_191/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_63/kernel/v
?
*Adam/dense_63/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_63/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_63/bias/v
y
(Adam/dense_63/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_63/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_189/lstm_cell_189/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_189/lstm_cell_189/kernel/v
?
8Adam/lstm_189/lstm_cell_189/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_189/lstm_cell_189/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_189/lstm_cell_189/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_189/lstm_cell_189/recurrent_kernel/v
?
BAdam/lstm_189/lstm_cell_189/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_189/lstm_cell_189/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_189/lstm_cell_189/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_189/lstm_cell_189/bias/v
?
6Adam/lstm_189/lstm_cell_189/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_189/lstm_cell_189/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_190/lstm_cell_190/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_190/lstm_cell_190/kernel/v
?
8Adam/lstm_190/lstm_cell_190/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_190/lstm_cell_190/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_190/lstm_cell_190/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_190/lstm_cell_190/recurrent_kernel/v
?
BAdam/lstm_190/lstm_cell_190/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_190/lstm_cell_190/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_190/lstm_cell_190/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_190/lstm_cell_190/bias/v
?
6Adam/lstm_190/lstm_cell_190/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_190/lstm_cell_190/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_191/lstm_cell_191/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_191/lstm_cell_191/kernel/v
?
8Adam/lstm_191/lstm_cell_191/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_191/lstm_cell_191/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_191/lstm_cell_191/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_191/lstm_cell_191/recurrent_kernel/v
?
BAdam/lstm_191/lstm_cell_191/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_191/lstm_cell_191/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_191/lstm_cell_191/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_191/lstm_cell_191/bias/v
?
6Adam/lstm_191/lstm_cell_191/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_191/lstm_cell_191/bias/v*
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
VARIABLE_VALUEdense_63/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_63/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_189/lstm_cell_189/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_189/lstm_cell_189/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_189/lstm_cell_189/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_190/lstm_cell_190/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_190/lstm_cell_190/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_190/lstm_cell_190/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_191/lstm_cell_191/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_191/lstm_cell_191/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_191/lstm_cell_191/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_63/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_63/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_189/lstm_cell_189/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_189/lstm_cell_189/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_189/lstm_cell_189/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_190/lstm_cell_190/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_190/lstm_cell_190/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_190/lstm_cell_190/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_191/lstm_cell_191/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_191/lstm_cell_191/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_191/lstm_cell_191/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_63/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_63/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_189/lstm_cell_189/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_189/lstm_cell_189/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_189/lstm_cell_189/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_190/lstm_cell_190/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_190/lstm_cell_190/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_190/lstm_cell_190/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_191/lstm_cell_191/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_191/lstm_cell_191/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_191/lstm_cell_191/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_189_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_189_inputlstm_189/lstm_cell_189/kernel'lstm_189/lstm_cell_189/recurrent_kernellstm_189/lstm_cell_189/biaslstm_190/lstm_cell_190/kernel'lstm_190/lstm_cell_190/recurrent_kernellstm_190/lstm_cell_190/biaslstm_191/lstm_cell_191/kernel'lstm_191/lstm_cell_191/recurrent_kernellstm_191/lstm_cell_191/biasdense_63/kerneldense_63/bias*
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
%__inference_signature_wrapper_1321310
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_63/kernel/Read/ReadVariableOp!dense_63/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_189/lstm_cell_189/kernel/Read/ReadVariableOp;lstm_189/lstm_cell_189/recurrent_kernel/Read/ReadVariableOp/lstm_189/lstm_cell_189/bias/Read/ReadVariableOp1lstm_190/lstm_cell_190/kernel/Read/ReadVariableOp;lstm_190/lstm_cell_190/recurrent_kernel/Read/ReadVariableOp/lstm_190/lstm_cell_190/bias/Read/ReadVariableOp1lstm_191/lstm_cell_191/kernel/Read/ReadVariableOp;lstm_191/lstm_cell_191/recurrent_kernel/Read/ReadVariableOp/lstm_191/lstm_cell_191/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_63/kernel/m/Read/ReadVariableOp(Adam/dense_63/bias/m/Read/ReadVariableOp8Adam/lstm_189/lstm_cell_189/kernel/m/Read/ReadVariableOpBAdam/lstm_189/lstm_cell_189/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_189/lstm_cell_189/bias/m/Read/ReadVariableOp8Adam/lstm_190/lstm_cell_190/kernel/m/Read/ReadVariableOpBAdam/lstm_190/lstm_cell_190/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_190/lstm_cell_190/bias/m/Read/ReadVariableOp8Adam/lstm_191/lstm_cell_191/kernel/m/Read/ReadVariableOpBAdam/lstm_191/lstm_cell_191/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_191/lstm_cell_191/bias/m/Read/ReadVariableOp*Adam/dense_63/kernel/v/Read/ReadVariableOp(Adam/dense_63/bias/v/Read/ReadVariableOp8Adam/lstm_189/lstm_cell_189/kernel/v/Read/ReadVariableOpBAdam/lstm_189/lstm_cell_189/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_189/lstm_cell_189/bias/v/Read/ReadVariableOp8Adam/lstm_190/lstm_cell_190/kernel/v/Read/ReadVariableOpBAdam/lstm_190/lstm_cell_190/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_190/lstm_cell_190/bias/v/Read/ReadVariableOp8Adam/lstm_191/lstm_cell_191/kernel/v/Read/ReadVariableOpBAdam/lstm_191/lstm_cell_191/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_191/lstm_cell_191/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1324522
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_63/kerneldense_63/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_189/lstm_cell_189/kernel'lstm_189/lstm_cell_189/recurrent_kernellstm_189/lstm_cell_189/biaslstm_190/lstm_cell_190/kernel'lstm_190/lstm_cell_190/recurrent_kernellstm_190/lstm_cell_190/biaslstm_191/lstm_cell_191/kernel'lstm_191/lstm_cell_191/recurrent_kernellstm_191/lstm_cell_191/biastotalcountAdam/dense_63/kernel/mAdam/dense_63/bias/m$Adam/lstm_189/lstm_cell_189/kernel/m.Adam/lstm_189/lstm_cell_189/recurrent_kernel/m"Adam/lstm_189/lstm_cell_189/bias/m$Adam/lstm_190/lstm_cell_190/kernel/m.Adam/lstm_190/lstm_cell_190/recurrent_kernel/m"Adam/lstm_190/lstm_cell_190/bias/m$Adam/lstm_191/lstm_cell_191/kernel/m.Adam/lstm_191/lstm_cell_191/recurrent_kernel/m"Adam/lstm_191/lstm_cell_191/bias/mAdam/dense_63/kernel/vAdam/dense_63/bias/v$Adam/lstm_189/lstm_cell_189/kernel/v.Adam/lstm_189/lstm_cell_189/recurrent_kernel/v"Adam/lstm_189/lstm_cell_189/bias/v$Adam/lstm_190/lstm_cell_190/kernel/v.Adam/lstm_190/lstm_cell_190/recurrent_kernel/v"Adam/lstm_190/lstm_cell_190/bias/v$Adam/lstm_191/lstm_cell_191/kernel/v.Adam/lstm_191/lstm_cell_191/recurrent_kernel/v"Adam/lstm_191/lstm_cell_191/bias/v*4
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
#__inference__traced_restore_1324652??+
?8
?
while_body_1322937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_217_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_217_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_217_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_217_matmul_readvariableop_resource:	d?G
4while_lstm_cell_217_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_217_biasadd_readvariableop_resource:	???*while/lstm_cell_217/BiasAdd/ReadVariableOp?)while/lstm_cell_217/MatMul/ReadVariableOp?+while/lstm_cell_217/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_217/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_217_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_217/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_217_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_217/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_217/addAddV2$while/lstm_cell_217/MatMul:product:0&while/lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_217_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_217/BiasAddBiasAddwhile/lstm_cell_217/add:z:02while/lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_217/splitSplit,while/lstm_cell_217/split/split_dim:output:0$while/lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_217/SigmoidSigmoid"while/lstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_217/Sigmoid_1Sigmoid"while/lstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mulMul!while/lstm_cell_217/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_217/ReluRelu"while/lstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mul_1Mulwhile/lstm_cell_217/Sigmoid:y:0&while/lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/add_1AddV2while/lstm_cell_217/mul:z:0while/lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_217/Sigmoid_2Sigmoid"while/lstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_217/Relu_1Reluwhile/lstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mul_2Mul!while/lstm_cell_217/Sigmoid_2:y:0(while/lstm_cell_217/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_217/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_217/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_217/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_217/BiasAdd/ReadVariableOp*^while/lstm_cell_217/MatMul/ReadVariableOp,^while/lstm_cell_217/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_217_biasadd_readvariableop_resource5while_lstm_cell_217_biasadd_readvariableop_resource_0"n
4while_lstm_cell_217_matmul_1_readvariableop_resource6while_lstm_cell_217_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_217_matmul_readvariableop_resource4while_lstm_cell_217_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_217/BiasAdd/ReadVariableOp*while/lstm_cell_217/BiasAdd/ReadVariableOp2V
)while/lstm_cell_217/MatMul/ReadVariableOp)while/lstm_cell_217/MatMul/ReadVariableOp2Z
+while/lstm_cell_217/MatMul_1/ReadVariableOp+while/lstm_cell_217/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_1321310
lstm_189_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_189_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1319050o
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
_user_specified_namelstm_189_input
?S
?
)sequential_63_lstm_190_while_body_1318821J
Fsequential_63_lstm_190_while_sequential_63_lstm_190_while_loop_counterP
Lsequential_63_lstm_190_while_sequential_63_lstm_190_while_maximum_iterations,
(sequential_63_lstm_190_while_placeholder.
*sequential_63_lstm_190_while_placeholder_1.
*sequential_63_lstm_190_while_placeholder_2.
*sequential_63_lstm_190_while_placeholder_3I
Esequential_63_lstm_190_while_sequential_63_lstm_190_strided_slice_1_0?
?sequential_63_lstm_190_while_tensorarrayv2read_tensorlistgetitem_sequential_63_lstm_190_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_63_lstm_190_while_lstm_cell_217_matmul_readvariableop_resource_0:	d?`
Msequential_63_lstm_190_while_lstm_cell_217_matmul_1_readvariableop_resource_0:	2?[
Lsequential_63_lstm_190_while_lstm_cell_217_biasadd_readvariableop_resource_0:	?)
%sequential_63_lstm_190_while_identity+
'sequential_63_lstm_190_while_identity_1+
'sequential_63_lstm_190_while_identity_2+
'sequential_63_lstm_190_while_identity_3+
'sequential_63_lstm_190_while_identity_4+
'sequential_63_lstm_190_while_identity_5G
Csequential_63_lstm_190_while_sequential_63_lstm_190_strided_slice_1?
sequential_63_lstm_190_while_tensorarrayv2read_tensorlistgetitem_sequential_63_lstm_190_tensorarrayunstack_tensorlistfromtensor\
Isequential_63_lstm_190_while_lstm_cell_217_matmul_readvariableop_resource:	d?^
Ksequential_63_lstm_190_while_lstm_cell_217_matmul_1_readvariableop_resource:	2?Y
Jsequential_63_lstm_190_while_lstm_cell_217_biasadd_readvariableop_resource:	???Asequential_63/lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOp?@sequential_63/lstm_190/while/lstm_cell_217/MatMul/ReadVariableOp?Bsequential_63/lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOp?
Nsequential_63/lstm_190/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_63/lstm_190/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_63_lstm_190_while_tensorarrayv2read_tensorlistgetitem_sequential_63_lstm_190_tensorarrayunstack_tensorlistfromtensor_0(sequential_63_lstm_190_while_placeholderWsequential_63/lstm_190/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_63/lstm_190/while/lstm_cell_217/MatMul/ReadVariableOpReadVariableOpKsequential_63_lstm_190_while_lstm_cell_217_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_63/lstm_190/while/lstm_cell_217/MatMulMatMulGsequential_63/lstm_190/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_63/lstm_190/while/lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_63/lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOpMsequential_63_lstm_190_while_lstm_cell_217_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_63/lstm_190/while/lstm_cell_217/MatMul_1MatMul*sequential_63_lstm_190_while_placeholder_2Jsequential_63/lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_63/lstm_190/while/lstm_cell_217/addAddV2;sequential_63/lstm_190/while/lstm_cell_217/MatMul:product:0=sequential_63/lstm_190/while/lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_63/lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOpLsequential_63_lstm_190_while_lstm_cell_217_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_63/lstm_190/while/lstm_cell_217/BiasAddBiasAdd2sequential_63/lstm_190/while/lstm_cell_217/add:z:0Isequential_63/lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_63/lstm_190/while/lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_63/lstm_190/while/lstm_cell_217/splitSplitCsequential_63/lstm_190/while/lstm_cell_217/split/split_dim:output:0;sequential_63/lstm_190/while/lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_63/lstm_190/while/lstm_cell_217/SigmoidSigmoid9sequential_63/lstm_190/while/lstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_63/lstm_190/while/lstm_cell_217/Sigmoid_1Sigmoid9sequential_63/lstm_190/while/lstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_63/lstm_190/while/lstm_cell_217/mulMul8sequential_63/lstm_190/while/lstm_cell_217/Sigmoid_1:y:0*sequential_63_lstm_190_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_63/lstm_190/while/lstm_cell_217/ReluRelu9sequential_63/lstm_190/while/lstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_63/lstm_190/while/lstm_cell_217/mul_1Mul6sequential_63/lstm_190/while/lstm_cell_217/Sigmoid:y:0=sequential_63/lstm_190/while/lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_63/lstm_190/while/lstm_cell_217/add_1AddV22sequential_63/lstm_190/while/lstm_cell_217/mul:z:04sequential_63/lstm_190/while/lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_63/lstm_190/while/lstm_cell_217/Sigmoid_2Sigmoid9sequential_63/lstm_190/while/lstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_63/lstm_190/while/lstm_cell_217/Relu_1Relu4sequential_63/lstm_190/while/lstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_63/lstm_190/while/lstm_cell_217/mul_2Mul8sequential_63/lstm_190/while/lstm_cell_217/Sigmoid_2:y:0?sequential_63/lstm_190/while/lstm_cell_217/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_63/lstm_190/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_63_lstm_190_while_placeholder_1(sequential_63_lstm_190_while_placeholder4sequential_63/lstm_190/while/lstm_cell_217/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_63/lstm_190/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_63/lstm_190/while/addAddV2(sequential_63_lstm_190_while_placeholder+sequential_63/lstm_190/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_63/lstm_190/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_63/lstm_190/while/add_1AddV2Fsequential_63_lstm_190_while_sequential_63_lstm_190_while_loop_counter-sequential_63/lstm_190/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_63/lstm_190/while/IdentityIdentity&sequential_63/lstm_190/while/add_1:z:0"^sequential_63/lstm_190/while/NoOp*
T0*
_output_shapes
: ?
'sequential_63/lstm_190/while/Identity_1IdentityLsequential_63_lstm_190_while_sequential_63_lstm_190_while_maximum_iterations"^sequential_63/lstm_190/while/NoOp*
T0*
_output_shapes
: ?
'sequential_63/lstm_190/while/Identity_2Identity$sequential_63/lstm_190/while/add:z:0"^sequential_63/lstm_190/while/NoOp*
T0*
_output_shapes
: ?
'sequential_63/lstm_190/while/Identity_3IdentityQsequential_63/lstm_190/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_63/lstm_190/while/NoOp*
T0*
_output_shapes
: ?
'sequential_63/lstm_190/while/Identity_4Identity4sequential_63/lstm_190/while/lstm_cell_217/mul_2:z:0"^sequential_63/lstm_190/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_63/lstm_190/while/Identity_5Identity4sequential_63/lstm_190/while/lstm_cell_217/add_1:z:0"^sequential_63/lstm_190/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_63/lstm_190/while/NoOpNoOpB^sequential_63/lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOpA^sequential_63/lstm_190/while/lstm_cell_217/MatMul/ReadVariableOpC^sequential_63/lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_63_lstm_190_while_identity.sequential_63/lstm_190/while/Identity:output:0"[
'sequential_63_lstm_190_while_identity_10sequential_63/lstm_190/while/Identity_1:output:0"[
'sequential_63_lstm_190_while_identity_20sequential_63/lstm_190/while/Identity_2:output:0"[
'sequential_63_lstm_190_while_identity_30sequential_63/lstm_190/while/Identity_3:output:0"[
'sequential_63_lstm_190_while_identity_40sequential_63/lstm_190/while/Identity_4:output:0"[
'sequential_63_lstm_190_while_identity_50sequential_63/lstm_190/while/Identity_5:output:0"?
Jsequential_63_lstm_190_while_lstm_cell_217_biasadd_readvariableop_resourceLsequential_63_lstm_190_while_lstm_cell_217_biasadd_readvariableop_resource_0"?
Ksequential_63_lstm_190_while_lstm_cell_217_matmul_1_readvariableop_resourceMsequential_63_lstm_190_while_lstm_cell_217_matmul_1_readvariableop_resource_0"?
Isequential_63_lstm_190_while_lstm_cell_217_matmul_readvariableop_resourceKsequential_63_lstm_190_while_lstm_cell_217_matmul_readvariableop_resource_0"?
Csequential_63_lstm_190_while_sequential_63_lstm_190_strided_slice_1Esequential_63_lstm_190_while_sequential_63_lstm_190_strided_slice_1_0"?
sequential_63_lstm_190_while_tensorarrayv2read_tensorlistgetitem_sequential_63_lstm_190_tensorarrayunstack_tensorlistfromtensor?sequential_63_lstm_190_while_tensorarrayv2read_tensorlistgetitem_sequential_63_lstm_190_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_63/lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOpAsequential_63/lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOp2?
@sequential_63/lstm_190/while/lstm_cell_217/MatMul/ReadVariableOp@sequential_63/lstm_190/while/lstm_cell_217/MatMul/ReadVariableOp2?
Bsequential_63/lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOpBsequential_63/lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_191_while_cond_1322127.
*lstm_191_while_lstm_191_while_loop_counter4
0lstm_191_while_lstm_191_while_maximum_iterations
lstm_191_while_placeholder 
lstm_191_while_placeholder_1 
lstm_191_while_placeholder_2 
lstm_191_while_placeholder_30
,lstm_191_while_less_lstm_191_strided_slice_1G
Clstm_191_while_lstm_191_while_cond_1322127___redundant_placeholder0G
Clstm_191_while_lstm_191_while_cond_1322127___redundant_placeholder1G
Clstm_191_while_lstm_191_while_cond_1322127___redundant_placeholder2G
Clstm_191_while_lstm_191_while_cond_1322127___redundant_placeholder3
lstm_191_while_identity
?
lstm_191/while/LessLesslstm_191_while_placeholder,lstm_191_while_less_lstm_191_strided_slice_1*
T0*
_output_shapes
: ]
lstm_191/while/IdentityIdentitylstm_191/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_191_while_identity lstm_191/while/Identity:output:0*(
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
/__inference_lstm_cell_217_layer_call_fn_1324217

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
J__inference_lstm_cell_217_layer_call_and_return_conditional_losses_1319613o
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
?
?
J__inference_sequential_63_layer_call_and_return_conditional_losses_1321275
lstm_189_input#
lstm_189_1321248:	?#
lstm_189_1321250:	d?
lstm_189_1321252:	?#
lstm_190_1321255:	d?#
lstm_190_1321257:	2?
lstm_190_1321259:	?"
lstm_191_1321262:2("
lstm_191_1321264:
(
lstm_191_1321266:("
dense_63_1321269:

dense_63_1321271:
identity?? dense_63/StatefulPartitionedCall? lstm_189/StatefulPartitionedCall? lstm_190/StatefulPartitionedCall? lstm_191/StatefulPartitionedCall?
 lstm_189/StatefulPartitionedCallStatefulPartitionedCalllstm_189_inputlstm_189_1321248lstm_189_1321250lstm_189_1321252*
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
E__inference_lstm_189_layer_call_and_return_conditional_losses_1321095?
 lstm_190/StatefulPartitionedCallStatefulPartitionedCall)lstm_189/StatefulPartitionedCall:output:0lstm_190_1321255lstm_190_1321257lstm_190_1321259*
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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1320930?
 lstm_191/StatefulPartitionedCallStatefulPartitionedCall)lstm_190/StatefulPartitionedCall:output:0lstm_191_1321262lstm_191_1321264lstm_191_1321266*
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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1320765?
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)lstm_191/StatefulPartitionedCall:output:0dense_63_1321269dense_63_1321271*
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
E__inference_dense_63_layer_call_and_return_conditional_losses_1320567x
IdentityIdentity)dense_63/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_63/StatefulPartitionedCall!^lstm_189/StatefulPartitionedCall!^lstm_190/StatefulPartitionedCall!^lstm_191/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2D
 lstm_189/StatefulPartitionedCall lstm_189/StatefulPartitionedCall2D
 lstm_190/StatefulPartitionedCall lstm_190/StatefulPartitionedCall2D
 lstm_191/StatefulPartitionedCall lstm_191/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_189_input
?8
?
while_body_1323839
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_218_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_218_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_218_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_218_matmul_readvariableop_resource:2(F
4while_lstm_cell_218_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_218_biasadd_readvariableop_resource:(??*while/lstm_cell_218/BiasAdd/ReadVariableOp?)while/lstm_cell_218/MatMul/ReadVariableOp?+while/lstm_cell_218/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_218/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_218_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_218/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_218_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_218/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_218/addAddV2$while/lstm_cell_218/MatMul:product:0&while/lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_218_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_218/BiasAddBiasAddwhile/lstm_cell_218/add:z:02while/lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_218/splitSplit,while/lstm_cell_218/split/split_dim:output:0$while/lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_218/SigmoidSigmoid"while/lstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_218/Sigmoid_1Sigmoid"while/lstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mulMul!while/lstm_cell_218/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_218/ReluRelu"while/lstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mul_1Mulwhile/lstm_cell_218/Sigmoid:y:0&while/lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/add_1AddV2while/lstm_cell_218/mul:z:0while/lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_218/Sigmoid_2Sigmoid"while/lstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_218/Relu_1Reluwhile/lstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mul_2Mul!while/lstm_cell_218/Sigmoid_2:y:0(while/lstm_cell_218/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_218/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_218/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_218/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_218/BiasAdd/ReadVariableOp*^while/lstm_cell_218/MatMul/ReadVariableOp,^while/lstm_cell_218/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_218_biasadd_readvariableop_resource5while_lstm_cell_218_biasadd_readvariableop_resource_0"n
4while_lstm_cell_218_matmul_1_readvariableop_resource6while_lstm_cell_218_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_218_matmul_readvariableop_resource4while_lstm_cell_218_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_218/BiasAdd/ReadVariableOp*while/lstm_cell_218/BiasAdd/ReadVariableOp2V
)while/lstm_cell_218/MatMul/ReadVariableOp)while/lstm_cell_218/MatMul/ReadVariableOp2Z
+while/lstm_cell_218/MatMul_1/ReadVariableOp+while/lstm_cell_218/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_217_layer_call_fn_1324200

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
J__inference_lstm_cell_217_layer_call_and_return_conditional_losses_1319467o
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
??
?
"__inference__wrapped_model_1319050
lstm_189_inputV
Csequential_63_lstm_189_lstm_cell_216_matmul_readvariableop_resource:	?X
Esequential_63_lstm_189_lstm_cell_216_matmul_1_readvariableop_resource:	d?S
Dsequential_63_lstm_189_lstm_cell_216_biasadd_readvariableop_resource:	?V
Csequential_63_lstm_190_lstm_cell_217_matmul_readvariableop_resource:	d?X
Esequential_63_lstm_190_lstm_cell_217_matmul_1_readvariableop_resource:	2?S
Dsequential_63_lstm_190_lstm_cell_217_biasadd_readvariableop_resource:	?U
Csequential_63_lstm_191_lstm_cell_218_matmul_readvariableop_resource:2(W
Esequential_63_lstm_191_lstm_cell_218_matmul_1_readvariableop_resource:
(R
Dsequential_63_lstm_191_lstm_cell_218_biasadd_readvariableop_resource:(G
5sequential_63_dense_63_matmul_readvariableop_resource:
D
6sequential_63_dense_63_biasadd_readvariableop_resource:
identity??-sequential_63/dense_63/BiasAdd/ReadVariableOp?,sequential_63/dense_63/MatMul/ReadVariableOp?;sequential_63/lstm_189/lstm_cell_216/BiasAdd/ReadVariableOp?:sequential_63/lstm_189/lstm_cell_216/MatMul/ReadVariableOp?<sequential_63/lstm_189/lstm_cell_216/MatMul_1/ReadVariableOp?sequential_63/lstm_189/while?;sequential_63/lstm_190/lstm_cell_217/BiasAdd/ReadVariableOp?:sequential_63/lstm_190/lstm_cell_217/MatMul/ReadVariableOp?<sequential_63/lstm_190/lstm_cell_217/MatMul_1/ReadVariableOp?sequential_63/lstm_190/while?;sequential_63/lstm_191/lstm_cell_218/BiasAdd/ReadVariableOp?:sequential_63/lstm_191/lstm_cell_218/MatMul/ReadVariableOp?<sequential_63/lstm_191/lstm_cell_218/MatMul_1/ReadVariableOp?sequential_63/lstm_191/whileZ
sequential_63/lstm_189/ShapeShapelstm_189_input*
T0*
_output_shapes
:t
*sequential_63/lstm_189/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_63/lstm_189/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_63/lstm_189/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_63/lstm_189/strided_sliceStridedSlice%sequential_63/lstm_189/Shape:output:03sequential_63/lstm_189/strided_slice/stack:output:05sequential_63/lstm_189/strided_slice/stack_1:output:05sequential_63/lstm_189/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_63/lstm_189/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_63/lstm_189/zeros/packedPack-sequential_63/lstm_189/strided_slice:output:0.sequential_63/lstm_189/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_63/lstm_189/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_63/lstm_189/zerosFill,sequential_63/lstm_189/zeros/packed:output:0+sequential_63/lstm_189/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_63/lstm_189/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_63/lstm_189/zeros_1/packedPack-sequential_63/lstm_189/strided_slice:output:00sequential_63/lstm_189/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_63/lstm_189/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_63/lstm_189/zeros_1Fill.sequential_63/lstm_189/zeros_1/packed:output:0-sequential_63/lstm_189/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_63/lstm_189/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_63/lstm_189/transpose	Transposelstm_189_input.sequential_63/lstm_189/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_63/lstm_189/Shape_1Shape$sequential_63/lstm_189/transpose:y:0*
T0*
_output_shapes
:v
,sequential_63/lstm_189/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_63/lstm_189/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_63/lstm_189/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_63/lstm_189/strided_slice_1StridedSlice'sequential_63/lstm_189/Shape_1:output:05sequential_63/lstm_189/strided_slice_1/stack:output:07sequential_63/lstm_189/strided_slice_1/stack_1:output:07sequential_63/lstm_189/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_63/lstm_189/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_63/lstm_189/TensorArrayV2TensorListReserve;sequential_63/lstm_189/TensorArrayV2/element_shape:output:0/sequential_63/lstm_189/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_63/lstm_189/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_63/lstm_189/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_63/lstm_189/transpose:y:0Usequential_63/lstm_189/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_63/lstm_189/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_63/lstm_189/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_63/lstm_189/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_63/lstm_189/strided_slice_2StridedSlice$sequential_63/lstm_189/transpose:y:05sequential_63/lstm_189/strided_slice_2/stack:output:07sequential_63/lstm_189/strided_slice_2/stack_1:output:07sequential_63/lstm_189/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_63/lstm_189/lstm_cell_216/MatMul/ReadVariableOpReadVariableOpCsequential_63_lstm_189_lstm_cell_216_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_63/lstm_189/lstm_cell_216/MatMulMatMul/sequential_63/lstm_189/strided_slice_2:output:0Bsequential_63/lstm_189/lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_63/lstm_189/lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOpEsequential_63_lstm_189_lstm_cell_216_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_63/lstm_189/lstm_cell_216/MatMul_1MatMul%sequential_63/lstm_189/zeros:output:0Dsequential_63/lstm_189/lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_63/lstm_189/lstm_cell_216/addAddV25sequential_63/lstm_189/lstm_cell_216/MatMul:product:07sequential_63/lstm_189/lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_63/lstm_189/lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOpDsequential_63_lstm_189_lstm_cell_216_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_63/lstm_189/lstm_cell_216/BiasAddBiasAdd,sequential_63/lstm_189/lstm_cell_216/add:z:0Csequential_63/lstm_189/lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_63/lstm_189/lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_63/lstm_189/lstm_cell_216/splitSplit=sequential_63/lstm_189/lstm_cell_216/split/split_dim:output:05sequential_63/lstm_189/lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_63/lstm_189/lstm_cell_216/SigmoidSigmoid3sequential_63/lstm_189/lstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_63/lstm_189/lstm_cell_216/Sigmoid_1Sigmoid3sequential_63/lstm_189/lstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_63/lstm_189/lstm_cell_216/mulMul2sequential_63/lstm_189/lstm_cell_216/Sigmoid_1:y:0'sequential_63/lstm_189/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_63/lstm_189/lstm_cell_216/ReluRelu3sequential_63/lstm_189/lstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_63/lstm_189/lstm_cell_216/mul_1Mul0sequential_63/lstm_189/lstm_cell_216/Sigmoid:y:07sequential_63/lstm_189/lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_63/lstm_189/lstm_cell_216/add_1AddV2,sequential_63/lstm_189/lstm_cell_216/mul:z:0.sequential_63/lstm_189/lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_63/lstm_189/lstm_cell_216/Sigmoid_2Sigmoid3sequential_63/lstm_189/lstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_63/lstm_189/lstm_cell_216/Relu_1Relu.sequential_63/lstm_189/lstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_63/lstm_189/lstm_cell_216/mul_2Mul2sequential_63/lstm_189/lstm_cell_216/Sigmoid_2:y:09sequential_63/lstm_189/lstm_cell_216/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_63/lstm_189/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_63/lstm_189/TensorArrayV2_1TensorListReserve=sequential_63/lstm_189/TensorArrayV2_1/element_shape:output:0/sequential_63/lstm_189/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_63/lstm_189/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_63/lstm_189/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_63/lstm_189/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_63/lstm_189/whileWhile2sequential_63/lstm_189/while/loop_counter:output:08sequential_63/lstm_189/while/maximum_iterations:output:0$sequential_63/lstm_189/time:output:0/sequential_63/lstm_189/TensorArrayV2_1:handle:0%sequential_63/lstm_189/zeros:output:0'sequential_63/lstm_189/zeros_1:output:0/sequential_63/lstm_189/strided_slice_1:output:0Nsequential_63/lstm_189/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_63_lstm_189_lstm_cell_216_matmul_readvariableop_resourceEsequential_63_lstm_189_lstm_cell_216_matmul_1_readvariableop_resourceDsequential_63_lstm_189_lstm_cell_216_biasadd_readvariableop_resource*
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
)sequential_63_lstm_189_while_body_1318682*5
cond-R+
)sequential_63_lstm_189_while_cond_1318681*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_63/lstm_189/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_63/lstm_189/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_63/lstm_189/while:output:3Psequential_63/lstm_189/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_63/lstm_189/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_63/lstm_189/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_63/lstm_189/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_63/lstm_189/strided_slice_3StridedSliceBsequential_63/lstm_189/TensorArrayV2Stack/TensorListStack:tensor:05sequential_63/lstm_189/strided_slice_3/stack:output:07sequential_63/lstm_189/strided_slice_3/stack_1:output:07sequential_63/lstm_189/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_63/lstm_189/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_63/lstm_189/transpose_1	TransposeBsequential_63/lstm_189/TensorArrayV2Stack/TensorListStack:tensor:00sequential_63/lstm_189/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_63/lstm_189/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_63/lstm_190/ShapeShape&sequential_63/lstm_189/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_63/lstm_190/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_63/lstm_190/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_63/lstm_190/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_63/lstm_190/strided_sliceStridedSlice%sequential_63/lstm_190/Shape:output:03sequential_63/lstm_190/strided_slice/stack:output:05sequential_63/lstm_190/strided_slice/stack_1:output:05sequential_63/lstm_190/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_63/lstm_190/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_63/lstm_190/zeros/packedPack-sequential_63/lstm_190/strided_slice:output:0.sequential_63/lstm_190/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_63/lstm_190/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_63/lstm_190/zerosFill,sequential_63/lstm_190/zeros/packed:output:0+sequential_63/lstm_190/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_63/lstm_190/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_63/lstm_190/zeros_1/packedPack-sequential_63/lstm_190/strided_slice:output:00sequential_63/lstm_190/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_63/lstm_190/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_63/lstm_190/zeros_1Fill.sequential_63/lstm_190/zeros_1/packed:output:0-sequential_63/lstm_190/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_63/lstm_190/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_63/lstm_190/transpose	Transpose&sequential_63/lstm_189/transpose_1:y:0.sequential_63/lstm_190/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_63/lstm_190/Shape_1Shape$sequential_63/lstm_190/transpose:y:0*
T0*
_output_shapes
:v
,sequential_63/lstm_190/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_63/lstm_190/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_63/lstm_190/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_63/lstm_190/strided_slice_1StridedSlice'sequential_63/lstm_190/Shape_1:output:05sequential_63/lstm_190/strided_slice_1/stack:output:07sequential_63/lstm_190/strided_slice_1/stack_1:output:07sequential_63/lstm_190/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_63/lstm_190/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_63/lstm_190/TensorArrayV2TensorListReserve;sequential_63/lstm_190/TensorArrayV2/element_shape:output:0/sequential_63/lstm_190/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_63/lstm_190/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_63/lstm_190/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_63/lstm_190/transpose:y:0Usequential_63/lstm_190/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_63/lstm_190/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_63/lstm_190/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_63/lstm_190/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_63/lstm_190/strided_slice_2StridedSlice$sequential_63/lstm_190/transpose:y:05sequential_63/lstm_190/strided_slice_2/stack:output:07sequential_63/lstm_190/strided_slice_2/stack_1:output:07sequential_63/lstm_190/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_63/lstm_190/lstm_cell_217/MatMul/ReadVariableOpReadVariableOpCsequential_63_lstm_190_lstm_cell_217_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_63/lstm_190/lstm_cell_217/MatMulMatMul/sequential_63/lstm_190/strided_slice_2:output:0Bsequential_63/lstm_190/lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_63/lstm_190/lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOpEsequential_63_lstm_190_lstm_cell_217_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_63/lstm_190/lstm_cell_217/MatMul_1MatMul%sequential_63/lstm_190/zeros:output:0Dsequential_63/lstm_190/lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_63/lstm_190/lstm_cell_217/addAddV25sequential_63/lstm_190/lstm_cell_217/MatMul:product:07sequential_63/lstm_190/lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_63/lstm_190/lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOpDsequential_63_lstm_190_lstm_cell_217_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_63/lstm_190/lstm_cell_217/BiasAddBiasAdd,sequential_63/lstm_190/lstm_cell_217/add:z:0Csequential_63/lstm_190/lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_63/lstm_190/lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_63/lstm_190/lstm_cell_217/splitSplit=sequential_63/lstm_190/lstm_cell_217/split/split_dim:output:05sequential_63/lstm_190/lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_63/lstm_190/lstm_cell_217/SigmoidSigmoid3sequential_63/lstm_190/lstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_63/lstm_190/lstm_cell_217/Sigmoid_1Sigmoid3sequential_63/lstm_190/lstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_63/lstm_190/lstm_cell_217/mulMul2sequential_63/lstm_190/lstm_cell_217/Sigmoid_1:y:0'sequential_63/lstm_190/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_63/lstm_190/lstm_cell_217/ReluRelu3sequential_63/lstm_190/lstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_63/lstm_190/lstm_cell_217/mul_1Mul0sequential_63/lstm_190/lstm_cell_217/Sigmoid:y:07sequential_63/lstm_190/lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_63/lstm_190/lstm_cell_217/add_1AddV2,sequential_63/lstm_190/lstm_cell_217/mul:z:0.sequential_63/lstm_190/lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_63/lstm_190/lstm_cell_217/Sigmoid_2Sigmoid3sequential_63/lstm_190/lstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_63/lstm_190/lstm_cell_217/Relu_1Relu.sequential_63/lstm_190/lstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_63/lstm_190/lstm_cell_217/mul_2Mul2sequential_63/lstm_190/lstm_cell_217/Sigmoid_2:y:09sequential_63/lstm_190/lstm_cell_217/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_63/lstm_190/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_63/lstm_190/TensorArrayV2_1TensorListReserve=sequential_63/lstm_190/TensorArrayV2_1/element_shape:output:0/sequential_63/lstm_190/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_63/lstm_190/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_63/lstm_190/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_63/lstm_190/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_63/lstm_190/whileWhile2sequential_63/lstm_190/while/loop_counter:output:08sequential_63/lstm_190/while/maximum_iterations:output:0$sequential_63/lstm_190/time:output:0/sequential_63/lstm_190/TensorArrayV2_1:handle:0%sequential_63/lstm_190/zeros:output:0'sequential_63/lstm_190/zeros_1:output:0/sequential_63/lstm_190/strided_slice_1:output:0Nsequential_63/lstm_190/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_63_lstm_190_lstm_cell_217_matmul_readvariableop_resourceEsequential_63_lstm_190_lstm_cell_217_matmul_1_readvariableop_resourceDsequential_63_lstm_190_lstm_cell_217_biasadd_readvariableop_resource*
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
)sequential_63_lstm_190_while_body_1318821*5
cond-R+
)sequential_63_lstm_190_while_cond_1318820*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_63/lstm_190/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_63/lstm_190/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_63/lstm_190/while:output:3Psequential_63/lstm_190/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_63/lstm_190/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_63/lstm_190/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_63/lstm_190/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_63/lstm_190/strided_slice_3StridedSliceBsequential_63/lstm_190/TensorArrayV2Stack/TensorListStack:tensor:05sequential_63/lstm_190/strided_slice_3/stack:output:07sequential_63/lstm_190/strided_slice_3/stack_1:output:07sequential_63/lstm_190/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_63/lstm_190/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_63/lstm_190/transpose_1	TransposeBsequential_63/lstm_190/TensorArrayV2Stack/TensorListStack:tensor:00sequential_63/lstm_190/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_63/lstm_190/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_63/lstm_191/ShapeShape&sequential_63/lstm_190/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_63/lstm_191/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_63/lstm_191/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_63/lstm_191/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_63/lstm_191/strided_sliceStridedSlice%sequential_63/lstm_191/Shape:output:03sequential_63/lstm_191/strided_slice/stack:output:05sequential_63/lstm_191/strided_slice/stack_1:output:05sequential_63/lstm_191/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_63/lstm_191/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_63/lstm_191/zeros/packedPack-sequential_63/lstm_191/strided_slice:output:0.sequential_63/lstm_191/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_63/lstm_191/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_63/lstm_191/zerosFill,sequential_63/lstm_191/zeros/packed:output:0+sequential_63/lstm_191/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_63/lstm_191/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_63/lstm_191/zeros_1/packedPack-sequential_63/lstm_191/strided_slice:output:00sequential_63/lstm_191/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_63/lstm_191/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_63/lstm_191/zeros_1Fill.sequential_63/lstm_191/zeros_1/packed:output:0-sequential_63/lstm_191/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_63/lstm_191/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_63/lstm_191/transpose	Transpose&sequential_63/lstm_190/transpose_1:y:0.sequential_63/lstm_191/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_63/lstm_191/Shape_1Shape$sequential_63/lstm_191/transpose:y:0*
T0*
_output_shapes
:v
,sequential_63/lstm_191/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_63/lstm_191/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_63/lstm_191/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_63/lstm_191/strided_slice_1StridedSlice'sequential_63/lstm_191/Shape_1:output:05sequential_63/lstm_191/strided_slice_1/stack:output:07sequential_63/lstm_191/strided_slice_1/stack_1:output:07sequential_63/lstm_191/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_63/lstm_191/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_63/lstm_191/TensorArrayV2TensorListReserve;sequential_63/lstm_191/TensorArrayV2/element_shape:output:0/sequential_63/lstm_191/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_63/lstm_191/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_63/lstm_191/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_63/lstm_191/transpose:y:0Usequential_63/lstm_191/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_63/lstm_191/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_63/lstm_191/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_63/lstm_191/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_63/lstm_191/strided_slice_2StridedSlice$sequential_63/lstm_191/transpose:y:05sequential_63/lstm_191/strided_slice_2/stack:output:07sequential_63/lstm_191/strided_slice_2/stack_1:output:07sequential_63/lstm_191/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_63/lstm_191/lstm_cell_218/MatMul/ReadVariableOpReadVariableOpCsequential_63_lstm_191_lstm_cell_218_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_63/lstm_191/lstm_cell_218/MatMulMatMul/sequential_63/lstm_191/strided_slice_2:output:0Bsequential_63/lstm_191/lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_63/lstm_191/lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOpEsequential_63_lstm_191_lstm_cell_218_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_63/lstm_191/lstm_cell_218/MatMul_1MatMul%sequential_63/lstm_191/zeros:output:0Dsequential_63/lstm_191/lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_63/lstm_191/lstm_cell_218/addAddV25sequential_63/lstm_191/lstm_cell_218/MatMul:product:07sequential_63/lstm_191/lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_63/lstm_191/lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOpDsequential_63_lstm_191_lstm_cell_218_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_63/lstm_191/lstm_cell_218/BiasAddBiasAdd,sequential_63/lstm_191/lstm_cell_218/add:z:0Csequential_63/lstm_191/lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_63/lstm_191/lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_63/lstm_191/lstm_cell_218/splitSplit=sequential_63/lstm_191/lstm_cell_218/split/split_dim:output:05sequential_63/lstm_191/lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_63/lstm_191/lstm_cell_218/SigmoidSigmoid3sequential_63/lstm_191/lstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_63/lstm_191/lstm_cell_218/Sigmoid_1Sigmoid3sequential_63/lstm_191/lstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_63/lstm_191/lstm_cell_218/mulMul2sequential_63/lstm_191/lstm_cell_218/Sigmoid_1:y:0'sequential_63/lstm_191/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_63/lstm_191/lstm_cell_218/ReluRelu3sequential_63/lstm_191/lstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_63/lstm_191/lstm_cell_218/mul_1Mul0sequential_63/lstm_191/lstm_cell_218/Sigmoid:y:07sequential_63/lstm_191/lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_63/lstm_191/lstm_cell_218/add_1AddV2,sequential_63/lstm_191/lstm_cell_218/mul:z:0.sequential_63/lstm_191/lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_63/lstm_191/lstm_cell_218/Sigmoid_2Sigmoid3sequential_63/lstm_191/lstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_63/lstm_191/lstm_cell_218/Relu_1Relu.sequential_63/lstm_191/lstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_63/lstm_191/lstm_cell_218/mul_2Mul2sequential_63/lstm_191/lstm_cell_218/Sigmoid_2:y:09sequential_63/lstm_191/lstm_cell_218/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_63/lstm_191/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_63/lstm_191/TensorArrayV2_1TensorListReserve=sequential_63/lstm_191/TensorArrayV2_1/element_shape:output:0/sequential_63/lstm_191/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_63/lstm_191/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_63/lstm_191/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_63/lstm_191/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_63/lstm_191/whileWhile2sequential_63/lstm_191/while/loop_counter:output:08sequential_63/lstm_191/while/maximum_iterations:output:0$sequential_63/lstm_191/time:output:0/sequential_63/lstm_191/TensorArrayV2_1:handle:0%sequential_63/lstm_191/zeros:output:0'sequential_63/lstm_191/zeros_1:output:0/sequential_63/lstm_191/strided_slice_1:output:0Nsequential_63/lstm_191/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_63_lstm_191_lstm_cell_218_matmul_readvariableop_resourceEsequential_63_lstm_191_lstm_cell_218_matmul_1_readvariableop_resourceDsequential_63_lstm_191_lstm_cell_218_biasadd_readvariableop_resource*
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
)sequential_63_lstm_191_while_body_1318960*5
cond-R+
)sequential_63_lstm_191_while_cond_1318959*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_63/lstm_191/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_63/lstm_191/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_63/lstm_191/while:output:3Psequential_63/lstm_191/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_63/lstm_191/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_63/lstm_191/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_63/lstm_191/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_63/lstm_191/strided_slice_3StridedSliceBsequential_63/lstm_191/TensorArrayV2Stack/TensorListStack:tensor:05sequential_63/lstm_191/strided_slice_3/stack:output:07sequential_63/lstm_191/strided_slice_3/stack_1:output:07sequential_63/lstm_191/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_63/lstm_191/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_63/lstm_191/transpose_1	TransposeBsequential_63/lstm_191/TensorArrayV2Stack/TensorListStack:tensor:00sequential_63/lstm_191/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_63/lstm_191/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_63/dense_63/MatMul/ReadVariableOpReadVariableOp5sequential_63_dense_63_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_63/dense_63/MatMulMatMul/sequential_63/lstm_191/strided_slice_3:output:04sequential_63/dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_63/dense_63/BiasAdd/ReadVariableOpReadVariableOp6sequential_63_dense_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_63/dense_63/BiasAddBiasAdd'sequential_63/dense_63/MatMul:product:05sequential_63/dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_63/dense_63/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_63/dense_63/BiasAdd/ReadVariableOp-^sequential_63/dense_63/MatMul/ReadVariableOp<^sequential_63/lstm_189/lstm_cell_216/BiasAdd/ReadVariableOp;^sequential_63/lstm_189/lstm_cell_216/MatMul/ReadVariableOp=^sequential_63/lstm_189/lstm_cell_216/MatMul_1/ReadVariableOp^sequential_63/lstm_189/while<^sequential_63/lstm_190/lstm_cell_217/BiasAdd/ReadVariableOp;^sequential_63/lstm_190/lstm_cell_217/MatMul/ReadVariableOp=^sequential_63/lstm_190/lstm_cell_217/MatMul_1/ReadVariableOp^sequential_63/lstm_190/while<^sequential_63/lstm_191/lstm_cell_218/BiasAdd/ReadVariableOp;^sequential_63/lstm_191/lstm_cell_218/MatMul/ReadVariableOp=^sequential_63/lstm_191/lstm_cell_218/MatMul_1/ReadVariableOp^sequential_63/lstm_191/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_63/dense_63/BiasAdd/ReadVariableOp-sequential_63/dense_63/BiasAdd/ReadVariableOp2\
,sequential_63/dense_63/MatMul/ReadVariableOp,sequential_63/dense_63/MatMul/ReadVariableOp2z
;sequential_63/lstm_189/lstm_cell_216/BiasAdd/ReadVariableOp;sequential_63/lstm_189/lstm_cell_216/BiasAdd/ReadVariableOp2x
:sequential_63/lstm_189/lstm_cell_216/MatMul/ReadVariableOp:sequential_63/lstm_189/lstm_cell_216/MatMul/ReadVariableOp2|
<sequential_63/lstm_189/lstm_cell_216/MatMul_1/ReadVariableOp<sequential_63/lstm_189/lstm_cell_216/MatMul_1/ReadVariableOp2<
sequential_63/lstm_189/whilesequential_63/lstm_189/while2z
;sequential_63/lstm_190/lstm_cell_217/BiasAdd/ReadVariableOp;sequential_63/lstm_190/lstm_cell_217/BiasAdd/ReadVariableOp2x
:sequential_63/lstm_190/lstm_cell_217/MatMul/ReadVariableOp:sequential_63/lstm_190/lstm_cell_217/MatMul/ReadVariableOp2|
<sequential_63/lstm_190/lstm_cell_217/MatMul_1/ReadVariableOp<sequential_63/lstm_190/lstm_cell_217/MatMul_1/ReadVariableOp2<
sequential_63/lstm_190/whilesequential_63/lstm_190/while2z
;sequential_63/lstm_191/lstm_cell_218/BiasAdd/ReadVariableOp;sequential_63/lstm_191/lstm_cell_218/BiasAdd/ReadVariableOp2x
:sequential_63/lstm_191/lstm_cell_218/MatMul/ReadVariableOp:sequential_63/lstm_191/lstm_cell_218/MatMul/ReadVariableOp2|
<sequential_63/lstm_191/lstm_cell_218/MatMul_1/ReadVariableOp<sequential_63/lstm_191/lstm_cell_218/MatMul_1/ReadVariableOp2<
sequential_63/lstm_191/whilesequential_63/lstm_191/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_189_input
?
?
J__inference_lstm_cell_217_layer_call_and_return_conditional_losses_1324281

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
E__inference_dense_63_layer_call_and_return_conditional_losses_1324085

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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1323307

inputs?
,lstm_cell_217_matmul_readvariableop_resource:	d?A
.lstm_cell_217_matmul_1_readvariableop_resource:	2?<
-lstm_cell_217_biasadd_readvariableop_resource:	?
identity??$lstm_cell_217/BiasAdd/ReadVariableOp?#lstm_cell_217/MatMul/ReadVariableOp?%lstm_cell_217/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_217/MatMul/ReadVariableOpReadVariableOp,lstm_cell_217_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_217/MatMulMatMulstrided_slice_2:output:0+lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_217_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_217/MatMul_1MatMulzeros:output:0-lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_217/addAddV2lstm_cell_217/MatMul:product:0 lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_217_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_217/BiasAddBiasAddlstm_cell_217/add:z:0,lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_217/splitSplit&lstm_cell_217/split/split_dim:output:0lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_217/SigmoidSigmoidlstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_217/Sigmoid_1Sigmoidlstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_217/mulMullstm_cell_217/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_217/ReluRelulstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_217/mul_1Mullstm_cell_217/Sigmoid:y:0 lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_217/add_1AddV2lstm_cell_217/mul:z:0lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_217/Sigmoid_2Sigmoidlstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_217/Relu_1Relulstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_217/mul_2Mullstm_cell_217/Sigmoid_2:y:0"lstm_cell_217/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_217_matmul_readvariableop_resource.lstm_cell_217_matmul_1_readvariableop_resource-lstm_cell_217_biasadd_readvariableop_resource*
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
while_body_1323223*
condR
while_cond_1323222*K
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
NoOpNoOp%^lstm_cell_217/BiasAdd/ReadVariableOp$^lstm_cell_217/MatMul/ReadVariableOp&^lstm_cell_217/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_217/BiasAdd/ReadVariableOp$lstm_cell_217/BiasAdd/ReadVariableOp2J
#lstm_cell_217/MatMul/ReadVariableOp#lstm_cell_217/MatMul/ReadVariableOp2N
%lstm_cell_217/MatMul_1/ReadVariableOp%lstm_cell_217/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_216_layer_call_and_return_conditional_losses_1324151

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
while_body_1322321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_216_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_216_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_216_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_216_matmul_readvariableop_resource:	?G
4while_lstm_cell_216_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_216_biasadd_readvariableop_resource:	???*while/lstm_cell_216/BiasAdd/ReadVariableOp?)while/lstm_cell_216/MatMul/ReadVariableOp?+while/lstm_cell_216/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_216/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_216_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_216/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_216_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_216/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_216/addAddV2$while/lstm_cell_216/MatMul:product:0&while/lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_216_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_216/BiasAddBiasAddwhile/lstm_cell_216/add:z:02while/lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_216/splitSplit,while/lstm_cell_216/split/split_dim:output:0$while/lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_216/SigmoidSigmoid"while/lstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_216/Sigmoid_1Sigmoid"while/lstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mulMul!while/lstm_cell_216/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_216/ReluRelu"while/lstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mul_1Mulwhile/lstm_cell_216/Sigmoid:y:0&while/lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/add_1AddV2while/lstm_cell_216/mul:z:0while/lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_216/Sigmoid_2Sigmoid"while/lstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_216/Relu_1Reluwhile/lstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mul_2Mul!while/lstm_cell_216/Sigmoid_2:y:0(while/lstm_cell_216/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_216/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_216/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_216/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_216/BiasAdd/ReadVariableOp*^while/lstm_cell_216/MatMul/ReadVariableOp,^while/lstm_cell_216/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_216_biasadd_readvariableop_resource5while_lstm_cell_216_biasadd_readvariableop_resource_0"n
4while_lstm_cell_216_matmul_1_readvariableop_resource6while_lstm_cell_216_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_216_matmul_readvariableop_resource4while_lstm_cell_216_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_216/BiasAdd/ReadVariableOp*while/lstm_cell_216/BiasAdd/ReadVariableOp2V
)while/lstm_cell_216/MatMul/ReadVariableOp)while/lstm_cell_216/MatMul/ReadVariableOp2Z
+while/lstm_cell_216/MatMul_1/ReadVariableOp+while/lstm_cell_216/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_190_layer_call_fn_1322845
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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1319550|
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
*__inference_dense_63_layer_call_fn_1324075

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
E__inference_dense_63_layer_call_and_return_conditional_losses_1320567o
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
?J
?
E__inference_lstm_190_layer_call_and_return_conditional_losses_1320399

inputs?
,lstm_cell_217_matmul_readvariableop_resource:	d?A
.lstm_cell_217_matmul_1_readvariableop_resource:	2?<
-lstm_cell_217_biasadd_readvariableop_resource:	?
identity??$lstm_cell_217/BiasAdd/ReadVariableOp?#lstm_cell_217/MatMul/ReadVariableOp?%lstm_cell_217/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_217/MatMul/ReadVariableOpReadVariableOp,lstm_cell_217_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_217/MatMulMatMulstrided_slice_2:output:0+lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_217_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_217/MatMul_1MatMulzeros:output:0-lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_217/addAddV2lstm_cell_217/MatMul:product:0 lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_217_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_217/BiasAddBiasAddlstm_cell_217/add:z:0,lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_217/splitSplit&lstm_cell_217/split/split_dim:output:0lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_217/SigmoidSigmoidlstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_217/Sigmoid_1Sigmoidlstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_217/mulMullstm_cell_217/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_217/ReluRelulstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_217/mul_1Mullstm_cell_217/Sigmoid:y:0 lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_217/add_1AddV2lstm_cell_217/mul:z:0lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_217/Sigmoid_2Sigmoidlstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_217/Relu_1Relulstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_217/mul_2Mullstm_cell_217/Sigmoid_2:y:0"lstm_cell_217/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_217_matmul_readvariableop_resource.lstm_cell_217_matmul_1_readvariableop_resource-lstm_cell_217_biasadd_readvariableop_resource*
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
while_body_1320315*
condR
while_cond_1320314*K
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
NoOpNoOp%^lstm_cell_217/BiasAdd/ReadVariableOp$^lstm_cell_217/MatMul/ReadVariableOp&^lstm_cell_217/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_217/BiasAdd/ReadVariableOp$lstm_cell_217/BiasAdd/ReadVariableOp2J
#lstm_cell_217/MatMul/ReadVariableOp#lstm_cell_217/MatMul/ReadVariableOp2N
%lstm_cell_217/MatMul_1/ReadVariableOp%lstm_cell_217/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_218_layer_call_fn_1324315

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
J__inference_lstm_cell_218_layer_call_and_return_conditional_losses_1319963o
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
?#
?
while_body_1319831
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_218_1319855_0:2(/
while_lstm_cell_218_1319857_0:
(+
while_lstm_cell_218_1319859_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_218_1319855:2(-
while_lstm_cell_218_1319857:
()
while_lstm_cell_218_1319859:(??+while/lstm_cell_218/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_218/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_218_1319855_0while_lstm_cell_218_1319857_0while_lstm_cell_218_1319859_0*
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
J__inference_lstm_cell_218_layer_call_and_return_conditional_losses_1319817?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_218/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_218/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_218/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_218/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_218_1319855while_lstm_cell_218_1319855_0"<
while_lstm_cell_218_1319857while_lstm_cell_218_1319857_0"<
while_lstm_cell_218_1319859while_lstm_cell_218_1319859_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_218/StatefulPartitionedCall+while/lstm_cell_218/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_191_while_body_1321701.
*lstm_191_while_lstm_191_while_loop_counter4
0lstm_191_while_lstm_191_while_maximum_iterations
lstm_191_while_placeholder 
lstm_191_while_placeholder_1 
lstm_191_while_placeholder_2 
lstm_191_while_placeholder_3-
)lstm_191_while_lstm_191_strided_slice_1_0i
elstm_191_while_tensorarrayv2read_tensorlistgetitem_lstm_191_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_191_while_lstm_cell_218_matmul_readvariableop_resource_0:2(Q
?lstm_191_while_lstm_cell_218_matmul_1_readvariableop_resource_0:
(L
>lstm_191_while_lstm_cell_218_biasadd_readvariableop_resource_0:(
lstm_191_while_identity
lstm_191_while_identity_1
lstm_191_while_identity_2
lstm_191_while_identity_3
lstm_191_while_identity_4
lstm_191_while_identity_5+
'lstm_191_while_lstm_191_strided_slice_1g
clstm_191_while_tensorarrayv2read_tensorlistgetitem_lstm_191_tensorarrayunstack_tensorlistfromtensorM
;lstm_191_while_lstm_cell_218_matmul_readvariableop_resource:2(O
=lstm_191_while_lstm_cell_218_matmul_1_readvariableop_resource:
(J
<lstm_191_while_lstm_cell_218_biasadd_readvariableop_resource:(??3lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOp?2lstm_191/while/lstm_cell_218/MatMul/ReadVariableOp?4lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOp?
@lstm_191/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_191/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_191_while_tensorarrayv2read_tensorlistgetitem_lstm_191_tensorarrayunstack_tensorlistfromtensor_0lstm_191_while_placeholderIlstm_191/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_191/while/lstm_cell_218/MatMul/ReadVariableOpReadVariableOp=lstm_191_while_lstm_cell_218_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_191/while/lstm_cell_218/MatMulMatMul9lstm_191/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_191/while/lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOp?lstm_191_while_lstm_cell_218_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_191/while/lstm_cell_218/MatMul_1MatMullstm_191_while_placeholder_2<lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_191/while/lstm_cell_218/addAddV2-lstm_191/while/lstm_cell_218/MatMul:product:0/lstm_191/while/lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOp>lstm_191_while_lstm_cell_218_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_191/while/lstm_cell_218/BiasAddBiasAdd$lstm_191/while/lstm_cell_218/add:z:0;lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_191/while/lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_191/while/lstm_cell_218/splitSplit5lstm_191/while/lstm_cell_218/split/split_dim:output:0-lstm_191/while/lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_191/while/lstm_cell_218/SigmoidSigmoid+lstm_191/while/lstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_191/while/lstm_cell_218/Sigmoid_1Sigmoid+lstm_191/while/lstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_191/while/lstm_cell_218/mulMul*lstm_191/while/lstm_cell_218/Sigmoid_1:y:0lstm_191_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_191/while/lstm_cell_218/ReluRelu+lstm_191/while/lstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_191/while/lstm_cell_218/mul_1Mul(lstm_191/while/lstm_cell_218/Sigmoid:y:0/lstm_191/while/lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_191/while/lstm_cell_218/add_1AddV2$lstm_191/while/lstm_cell_218/mul:z:0&lstm_191/while/lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_191/while/lstm_cell_218/Sigmoid_2Sigmoid+lstm_191/while/lstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_191/while/lstm_cell_218/Relu_1Relu&lstm_191/while/lstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_191/while/lstm_cell_218/mul_2Mul*lstm_191/while/lstm_cell_218/Sigmoid_2:y:01lstm_191/while/lstm_cell_218/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_191/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_191_while_placeholder_1lstm_191_while_placeholder&lstm_191/while/lstm_cell_218/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_191/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_191/while/addAddV2lstm_191_while_placeholderlstm_191/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_191/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_191/while/add_1AddV2*lstm_191_while_lstm_191_while_loop_counterlstm_191/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_191/while/IdentityIdentitylstm_191/while/add_1:z:0^lstm_191/while/NoOp*
T0*
_output_shapes
: ?
lstm_191/while/Identity_1Identity0lstm_191_while_lstm_191_while_maximum_iterations^lstm_191/while/NoOp*
T0*
_output_shapes
: t
lstm_191/while/Identity_2Identitylstm_191/while/add:z:0^lstm_191/while/NoOp*
T0*
_output_shapes
: ?
lstm_191/while/Identity_3IdentityClstm_191/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_191/while/NoOp*
T0*
_output_shapes
: ?
lstm_191/while/Identity_4Identity&lstm_191/while/lstm_cell_218/mul_2:z:0^lstm_191/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_191/while/Identity_5Identity&lstm_191/while/lstm_cell_218/add_1:z:0^lstm_191/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_191/while/NoOpNoOp4^lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOp3^lstm_191/while/lstm_cell_218/MatMul/ReadVariableOp5^lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_191_while_identity lstm_191/while/Identity:output:0"?
lstm_191_while_identity_1"lstm_191/while/Identity_1:output:0"?
lstm_191_while_identity_2"lstm_191/while/Identity_2:output:0"?
lstm_191_while_identity_3"lstm_191/while/Identity_3:output:0"?
lstm_191_while_identity_4"lstm_191/while/Identity_4:output:0"?
lstm_191_while_identity_5"lstm_191/while/Identity_5:output:0"T
'lstm_191_while_lstm_191_strided_slice_1)lstm_191_while_lstm_191_strided_slice_1_0"~
<lstm_191_while_lstm_cell_218_biasadd_readvariableop_resource>lstm_191_while_lstm_cell_218_biasadd_readvariableop_resource_0"?
=lstm_191_while_lstm_cell_218_matmul_1_readvariableop_resource?lstm_191_while_lstm_cell_218_matmul_1_readvariableop_resource_0"|
;lstm_191_while_lstm_cell_218_matmul_readvariableop_resource=lstm_191_while_lstm_cell_218_matmul_readvariableop_resource_0"?
clstm_191_while_tensorarrayv2read_tensorlistgetitem_lstm_191_tensorarrayunstack_tensorlistfromtensorelstm_191_while_tensorarrayv2read_tensorlistgetitem_lstm_191_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOp3lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOp2h
2lstm_191/while/lstm_cell_218/MatMul/ReadVariableOp2lstm_191/while/lstm_cell_218/MatMul/ReadVariableOp2l
4lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOp4lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_63_layer_call_fn_1320599
lstm_189_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_189_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_63_layer_call_and_return_conditional_losses_1320574o
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
_user_specified_namelstm_189_input
?J
?
E__inference_lstm_189_layer_call_and_return_conditional_losses_1320249

inputs?
,lstm_cell_216_matmul_readvariableop_resource:	?A
.lstm_cell_216_matmul_1_readvariableop_resource:	d?<
-lstm_cell_216_biasadd_readvariableop_resource:	?
identity??$lstm_cell_216/BiasAdd/ReadVariableOp?#lstm_cell_216/MatMul/ReadVariableOp?%lstm_cell_216/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_216/MatMul/ReadVariableOpReadVariableOp,lstm_cell_216_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_216/MatMulMatMulstrided_slice_2:output:0+lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_216_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_216/MatMul_1MatMulzeros:output:0-lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_216/addAddV2lstm_cell_216/MatMul:product:0 lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_216_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_216/BiasAddBiasAddlstm_cell_216/add:z:0,lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_216/splitSplit&lstm_cell_216/split/split_dim:output:0lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_216/SigmoidSigmoidlstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_216/Sigmoid_1Sigmoidlstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_216/mulMullstm_cell_216/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_216/ReluRelulstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_216/mul_1Mullstm_cell_216/Sigmoid:y:0 lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_216/add_1AddV2lstm_cell_216/mul:z:0lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_216/Sigmoid_2Sigmoidlstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_216/Relu_1Relulstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_216/mul_2Mullstm_cell_216/Sigmoid_2:y:0"lstm_cell_216/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_216_matmul_readvariableop_resource.lstm_cell_216_matmul_1_readvariableop_resource-lstm_cell_216_biasadd_readvariableop_resource*
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
while_body_1320165*
condR
while_cond_1320164*K
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
NoOpNoOp%^lstm_cell_216/BiasAdd/ReadVariableOp$^lstm_cell_216/MatMul/ReadVariableOp&^lstm_cell_216/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_216/BiasAdd/ReadVariableOp$lstm_cell_216/BiasAdd/ReadVariableOp2J
#lstm_cell_216/MatMul/ReadVariableOp#lstm_cell_216/MatMul/ReadVariableOp2N
%lstm_cell_216/MatMul_1/ReadVariableOp%lstm_cell_216/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1320680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1320680___redundant_placeholder05
1while_while_cond_1320680___redundant_placeholder15
1while_while_cond_1320680___redundant_placeholder25
1while_while_cond_1320680___redundant_placeholder3
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
)sequential_63_lstm_191_while_cond_1318959J
Fsequential_63_lstm_191_while_sequential_63_lstm_191_while_loop_counterP
Lsequential_63_lstm_191_while_sequential_63_lstm_191_while_maximum_iterations,
(sequential_63_lstm_191_while_placeholder.
*sequential_63_lstm_191_while_placeholder_1.
*sequential_63_lstm_191_while_placeholder_2.
*sequential_63_lstm_191_while_placeholder_3L
Hsequential_63_lstm_191_while_less_sequential_63_lstm_191_strided_slice_1c
_sequential_63_lstm_191_while_sequential_63_lstm_191_while_cond_1318959___redundant_placeholder0c
_sequential_63_lstm_191_while_sequential_63_lstm_191_while_cond_1318959___redundant_placeholder1c
_sequential_63_lstm_191_while_sequential_63_lstm_191_while_cond_1318959___redundant_placeholder2c
_sequential_63_lstm_191_while_sequential_63_lstm_191_while_cond_1318959___redundant_placeholder3)
%sequential_63_lstm_191_while_identity
?
!sequential_63/lstm_191/while/LessLess(sequential_63_lstm_191_while_placeholderHsequential_63_lstm_191_while_less_sequential_63_lstm_191_strided_slice_1*
T0*
_output_shapes
: y
%sequential_63/lstm_191/while/IdentityIdentity%sequential_63/lstm_191/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_63_lstm_191_while_identity.sequential_63/lstm_191/while/Identity:output:0*(
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
*__inference_lstm_189_layer_call_fn_1322240
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
E__inference_lstm_189_layer_call_and_return_conditional_losses_1319391|
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
?
?
J__inference_sequential_63_layer_call_and_return_conditional_losses_1321245
lstm_189_input#
lstm_189_1321218:	?#
lstm_189_1321220:	d?
lstm_189_1321222:	?#
lstm_190_1321225:	d?#
lstm_190_1321227:	2?
lstm_190_1321229:	?"
lstm_191_1321232:2("
lstm_191_1321234:
(
lstm_191_1321236:("
dense_63_1321239:

dense_63_1321241:
identity?? dense_63/StatefulPartitionedCall? lstm_189/StatefulPartitionedCall? lstm_190/StatefulPartitionedCall? lstm_191/StatefulPartitionedCall?
 lstm_189/StatefulPartitionedCallStatefulPartitionedCalllstm_189_inputlstm_189_1321218lstm_189_1321220lstm_189_1321222*
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
E__inference_lstm_189_layer_call_and_return_conditional_losses_1320249?
 lstm_190/StatefulPartitionedCallStatefulPartitionedCall)lstm_189/StatefulPartitionedCall:output:0lstm_190_1321225lstm_190_1321227lstm_190_1321229*
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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1320399?
 lstm_191/StatefulPartitionedCallStatefulPartitionedCall)lstm_190/StatefulPartitionedCall:output:0lstm_191_1321232lstm_191_1321234lstm_191_1321236*
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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1320549?
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)lstm_191/StatefulPartitionedCall:output:0dense_63_1321239dense_63_1321241*
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
E__inference_dense_63_layer_call_and_return_conditional_losses_1320567x
IdentityIdentity)dense_63/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_63/StatefulPartitionedCall!^lstm_189/StatefulPartitionedCall!^lstm_190/StatefulPartitionedCall!^lstm_191/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2D
 lstm_189/StatefulPartitionedCall lstm_189/StatefulPartitionedCall2D
 lstm_190/StatefulPartitionedCall lstm_190/StatefulPartitionedCall2D
 lstm_191/StatefulPartitionedCall lstm_191/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_189_input
?
?
while_cond_1320021
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1320021___redundant_placeholder05
1while_while_cond_1320021___redundant_placeholder15
1while_while_cond_1320021___redundant_placeholder25
1while_while_cond_1320021___redundant_placeholder3
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
/__inference_sequential_63_layer_call_fn_1321364

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
J__inference_sequential_63_layer_call_and_return_conditional_losses_1321163o
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
?
while_body_1323223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_217_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_217_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_217_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_217_matmul_readvariableop_resource:	d?G
4while_lstm_cell_217_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_217_biasadd_readvariableop_resource:	???*while/lstm_cell_217/BiasAdd/ReadVariableOp?)while/lstm_cell_217/MatMul/ReadVariableOp?+while/lstm_cell_217/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_217/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_217_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_217/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_217_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_217/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_217/addAddV2$while/lstm_cell_217/MatMul:product:0&while/lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_217_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_217/BiasAddBiasAddwhile/lstm_cell_217/add:z:02while/lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_217/splitSplit,while/lstm_cell_217/split/split_dim:output:0$while/lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_217/SigmoidSigmoid"while/lstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_217/Sigmoid_1Sigmoid"while/lstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mulMul!while/lstm_cell_217/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_217/ReluRelu"while/lstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mul_1Mulwhile/lstm_cell_217/Sigmoid:y:0&while/lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/add_1AddV2while/lstm_cell_217/mul:z:0while/lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_217/Sigmoid_2Sigmoid"while/lstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_217/Relu_1Reluwhile/lstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mul_2Mul!while/lstm_cell_217/Sigmoid_2:y:0(while/lstm_cell_217/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_217/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_217/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_217/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_217/BiasAdd/ReadVariableOp*^while/lstm_cell_217/MatMul/ReadVariableOp,^while/lstm_cell_217/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_217_biasadd_readvariableop_resource5while_lstm_cell_217_biasadd_readvariableop_resource_0"n
4while_lstm_cell_217_matmul_1_readvariableop_resource6while_lstm_cell_217_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_217_matmul_readvariableop_resource4while_lstm_cell_217_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_217/BiasAdd/ReadVariableOp*while/lstm_cell_217/BiasAdd/ReadVariableOp2V
)while/lstm_cell_217/MatMul/ReadVariableOp)while/lstm_cell_217/MatMul/ReadVariableOp2Z
+while/lstm_cell_217/MatMul_1/ReadVariableOp+while/lstm_cell_217/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1320846
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_217_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_217_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_217_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_217_matmul_readvariableop_resource:	d?G
4while_lstm_cell_217_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_217_biasadd_readvariableop_resource:	???*while/lstm_cell_217/BiasAdd/ReadVariableOp?)while/lstm_cell_217/MatMul/ReadVariableOp?+while/lstm_cell_217/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_217/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_217_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_217/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_217_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_217/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_217/addAddV2$while/lstm_cell_217/MatMul:product:0&while/lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_217_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_217/BiasAddBiasAddwhile/lstm_cell_217/add:z:02while/lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_217/splitSplit,while/lstm_cell_217/split/split_dim:output:0$while/lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_217/SigmoidSigmoid"while/lstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_217/Sigmoid_1Sigmoid"while/lstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mulMul!while/lstm_cell_217/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_217/ReluRelu"while/lstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mul_1Mulwhile/lstm_cell_217/Sigmoid:y:0&while/lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/add_1AddV2while/lstm_cell_217/mul:z:0while/lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_217/Sigmoid_2Sigmoid"while/lstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_217/Relu_1Reluwhile/lstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mul_2Mul!while/lstm_cell_217/Sigmoid_2:y:0(while/lstm_cell_217/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_217/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_217/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_217/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_217/BiasAdd/ReadVariableOp*^while/lstm_cell_217/MatMul/ReadVariableOp,^while/lstm_cell_217/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_217_biasadd_readvariableop_resource5while_lstm_cell_217_biasadd_readvariableop_resource_0"n
4while_lstm_cell_217_matmul_1_readvariableop_resource6while_lstm_cell_217_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_217_matmul_readvariableop_resource4while_lstm_cell_217_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_217/BiasAdd/ReadVariableOp*while/lstm_cell_217/BiasAdd/ReadVariableOp2V
)while/lstm_cell_217/MatMul/ReadVariableOp)while/lstm_cell_217/MatMul/ReadVariableOp2Z
+while/lstm_cell_217/MatMul_1/ReadVariableOp+while/lstm_cell_217/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1319830
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1319830___redundant_placeholder05
1while_while_cond_1319830___redundant_placeholder15
1while_while_cond_1319830___redundant_placeholder25
1while_while_cond_1319830___redundant_placeholder3
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
while_body_1323553
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_218_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_218_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_218_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_218_matmul_readvariableop_resource:2(F
4while_lstm_cell_218_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_218_biasadd_readvariableop_resource:(??*while/lstm_cell_218/BiasAdd/ReadVariableOp?)while/lstm_cell_218/MatMul/ReadVariableOp?+while/lstm_cell_218/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_218/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_218_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_218/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_218_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_218/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_218/addAddV2$while/lstm_cell_218/MatMul:product:0&while/lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_218_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_218/BiasAddBiasAddwhile/lstm_cell_218/add:z:02while/lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_218/splitSplit,while/lstm_cell_218/split/split_dim:output:0$while/lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_218/SigmoidSigmoid"while/lstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_218/Sigmoid_1Sigmoid"while/lstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mulMul!while/lstm_cell_218/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_218/ReluRelu"while/lstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mul_1Mulwhile/lstm_cell_218/Sigmoid:y:0&while/lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/add_1AddV2while/lstm_cell_218/mul:z:0while/lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_218/Sigmoid_2Sigmoid"while/lstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_218/Relu_1Reluwhile/lstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mul_2Mul!while/lstm_cell_218/Sigmoid_2:y:0(while/lstm_cell_218/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_218/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_218/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_218/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_218/BiasAdd/ReadVariableOp*^while/lstm_cell_218/MatMul/ReadVariableOp,^while/lstm_cell_218/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_218_biasadd_readvariableop_resource5while_lstm_cell_218_biasadd_readvariableop_resource_0"n
4while_lstm_cell_218_matmul_1_readvariableop_resource6while_lstm_cell_218_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_218_matmul_readvariableop_resource4while_lstm_cell_218_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_218/BiasAdd/ReadVariableOp*while/lstm_cell_218/BiasAdd/ReadVariableOp2V
)while/lstm_cell_218/MatMul/ReadVariableOp)while/lstm_cell_218/MatMul/ReadVariableOp2Z
+while/lstm_cell_218/MatMul_1/ReadVariableOp+while/lstm_cell_218/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1320165
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_216_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_216_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_216_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_216_matmul_readvariableop_resource:	?G
4while_lstm_cell_216_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_216_biasadd_readvariableop_resource:	???*while/lstm_cell_216/BiasAdd/ReadVariableOp?)while/lstm_cell_216/MatMul/ReadVariableOp?+while/lstm_cell_216/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_216/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_216_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_216/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_216_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_216/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_216/addAddV2$while/lstm_cell_216/MatMul:product:0&while/lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_216_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_216/BiasAddBiasAddwhile/lstm_cell_216/add:z:02while/lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_216/splitSplit,while/lstm_cell_216/split/split_dim:output:0$while/lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_216/SigmoidSigmoid"while/lstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_216/Sigmoid_1Sigmoid"while/lstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mulMul!while/lstm_cell_216/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_216/ReluRelu"while/lstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mul_1Mulwhile/lstm_cell_216/Sigmoid:y:0&while/lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/add_1AddV2while/lstm_cell_216/mul:z:0while/lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_216/Sigmoid_2Sigmoid"while/lstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_216/Relu_1Reluwhile/lstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mul_2Mul!while/lstm_cell_216/Sigmoid_2:y:0(while/lstm_cell_216/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_216/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_216/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_216/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_216/BiasAdd/ReadVariableOp*^while/lstm_cell_216/MatMul/ReadVariableOp,^while/lstm_cell_216/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_216_biasadd_readvariableop_resource5while_lstm_cell_216_biasadd_readvariableop_resource_0"n
4while_lstm_cell_216_matmul_1_readvariableop_resource6while_lstm_cell_216_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_216_matmul_readvariableop_resource4while_lstm_cell_216_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_216/BiasAdd/ReadVariableOp*while/lstm_cell_216/BiasAdd/ReadVariableOp2V
)while/lstm_cell_216/MatMul/ReadVariableOp)while/lstm_cell_216/MatMul/ReadVariableOp2Z
+while/lstm_cell_216/MatMul_1/ReadVariableOp+while/lstm_cell_216/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1320549

inputs>
,lstm_cell_218_matmul_readvariableop_resource:2(@
.lstm_cell_218_matmul_1_readvariableop_resource:
(;
-lstm_cell_218_biasadd_readvariableop_resource:(
identity??$lstm_cell_218/BiasAdd/ReadVariableOp?#lstm_cell_218/MatMul/ReadVariableOp?%lstm_cell_218/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_218/MatMul/ReadVariableOpReadVariableOp,lstm_cell_218_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_218/MatMulMatMulstrided_slice_2:output:0+lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_218_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_218/MatMul_1MatMulzeros:output:0-lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_218/addAddV2lstm_cell_218/MatMul:product:0 lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_218_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_218/BiasAddBiasAddlstm_cell_218/add:z:0,lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_218/splitSplit&lstm_cell_218/split/split_dim:output:0lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_218/SigmoidSigmoidlstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_218/Sigmoid_1Sigmoidlstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_218/mulMullstm_cell_218/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_218/ReluRelulstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_218/mul_1Mullstm_cell_218/Sigmoid:y:0 lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_218/add_1AddV2lstm_cell_218/mul:z:0lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_218/Sigmoid_2Sigmoidlstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_218/Relu_1Relulstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_218/mul_2Mullstm_cell_218/Sigmoid_2:y:0"lstm_cell_218/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_218_matmul_readvariableop_resource.lstm_cell_218_matmul_1_readvariableop_resource-lstm_cell_218_biasadd_readvariableop_resource*
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
while_body_1320465*
condR
while_cond_1320464*K
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
NoOpNoOp%^lstm_cell_218/BiasAdd/ReadVariableOp$^lstm_cell_218/MatMul/ReadVariableOp&^lstm_cell_218/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_218/BiasAdd/ReadVariableOp$lstm_cell_218/BiasAdd/ReadVariableOp2J
#lstm_cell_218/MatMul/ReadVariableOp#lstm_cell_218/MatMul/ReadVariableOp2N
%lstm_cell_218/MatMul_1/ReadVariableOp%lstm_cell_218/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
lstm_189_while_cond_1321422.
*lstm_189_while_lstm_189_while_loop_counter4
0lstm_189_while_lstm_189_while_maximum_iterations
lstm_189_while_placeholder 
lstm_189_while_placeholder_1 
lstm_189_while_placeholder_2 
lstm_189_while_placeholder_30
,lstm_189_while_less_lstm_189_strided_slice_1G
Clstm_189_while_lstm_189_while_cond_1321422___redundant_placeholder0G
Clstm_189_while_lstm_189_while_cond_1321422___redundant_placeholder1G
Clstm_189_while_lstm_189_while_cond_1321422___redundant_placeholder2G
Clstm_189_while_lstm_189_while_cond_1321422___redundant_placeholder3
lstm_189_while_identity
?
lstm_189/while/LessLesslstm_189_while_placeholder,lstm_189_while_less_lstm_189_strided_slice_1*
T0*
_output_shapes
: ]
lstm_189/while/IdentityIdentitylstm_189/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_189_while_identity lstm_189/while/Identity:output:0*(
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
while_cond_1319130
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1319130___redundant_placeholder05
1while_while_cond_1319130___redundant_placeholder15
1while_while_cond_1319130___redundant_placeholder25
1while_while_cond_1319130___redundant_placeholder3
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
while_cond_1319480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1319480___redundant_placeholder05
1while_while_cond_1319480___redundant_placeholder15
1while_while_cond_1319480___redundant_placeholder25
1while_while_cond_1319480___redundant_placeholder3
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
while_cond_1323838
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1323838___redundant_placeholder05
1while_while_cond_1323838___redundant_placeholder15
1while_while_cond_1323838___redundant_placeholder25
1while_while_cond_1323838___redundant_placeholder3
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
J__inference_lstm_cell_216_layer_call_and_return_conditional_losses_1319117

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
?J
?
E__inference_lstm_189_layer_call_and_return_conditional_losses_1322691

inputs?
,lstm_cell_216_matmul_readvariableop_resource:	?A
.lstm_cell_216_matmul_1_readvariableop_resource:	d?<
-lstm_cell_216_biasadd_readvariableop_resource:	?
identity??$lstm_cell_216/BiasAdd/ReadVariableOp?#lstm_cell_216/MatMul/ReadVariableOp?%lstm_cell_216/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_216/MatMul/ReadVariableOpReadVariableOp,lstm_cell_216_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_216/MatMulMatMulstrided_slice_2:output:0+lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_216_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_216/MatMul_1MatMulzeros:output:0-lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_216/addAddV2lstm_cell_216/MatMul:product:0 lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_216_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_216/BiasAddBiasAddlstm_cell_216/add:z:0,lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_216/splitSplit&lstm_cell_216/split/split_dim:output:0lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_216/SigmoidSigmoidlstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_216/Sigmoid_1Sigmoidlstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_216/mulMullstm_cell_216/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_216/ReluRelulstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_216/mul_1Mullstm_cell_216/Sigmoid:y:0 lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_216/add_1AddV2lstm_cell_216/mul:z:0lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_216/Sigmoid_2Sigmoidlstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_216/Relu_1Relulstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_216/mul_2Mullstm_cell_216/Sigmoid_2:y:0"lstm_cell_216/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_216_matmul_readvariableop_resource.lstm_cell_216_matmul_1_readvariableop_resource-lstm_cell_216_biasadd_readvariableop_resource*
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
while_body_1322607*
condR
while_cond_1322606*K
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
NoOpNoOp%^lstm_cell_216/BiasAdd/ReadVariableOp$^lstm_cell_216/MatMul/ReadVariableOp&^lstm_cell_216/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_216/BiasAdd/ReadVariableOp$lstm_cell_216/BiasAdd/ReadVariableOp2J
#lstm_cell_216/MatMul/ReadVariableOp#lstm_cell_216/MatMul/ReadVariableOp2N
%lstm_cell_216/MatMul_1/ReadVariableOp%lstm_cell_216/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_190_layer_call_fn_1322867

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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1320399s
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
?J
?
E__inference_lstm_191_layer_call_and_return_conditional_losses_1323923

inputs>
,lstm_cell_218_matmul_readvariableop_resource:2(@
.lstm_cell_218_matmul_1_readvariableop_resource:
(;
-lstm_cell_218_biasadd_readvariableop_resource:(
identity??$lstm_cell_218/BiasAdd/ReadVariableOp?#lstm_cell_218/MatMul/ReadVariableOp?%lstm_cell_218/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_218/MatMul/ReadVariableOpReadVariableOp,lstm_cell_218_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_218/MatMulMatMulstrided_slice_2:output:0+lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_218_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_218/MatMul_1MatMulzeros:output:0-lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_218/addAddV2lstm_cell_218/MatMul:product:0 lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_218_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_218/BiasAddBiasAddlstm_cell_218/add:z:0,lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_218/splitSplit&lstm_cell_218/split/split_dim:output:0lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_218/SigmoidSigmoidlstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_218/Sigmoid_1Sigmoidlstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_218/mulMullstm_cell_218/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_218/ReluRelulstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_218/mul_1Mullstm_cell_218/Sigmoid:y:0 lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_218/add_1AddV2lstm_cell_218/mul:z:0lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_218/Sigmoid_2Sigmoidlstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_218/Relu_1Relulstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_218/mul_2Mullstm_cell_218/Sigmoid_2:y:0"lstm_cell_218/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_218_matmul_readvariableop_resource.lstm_cell_218_matmul_1_readvariableop_resource-lstm_cell_218_biasadd_readvariableop_resource*
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
while_body_1323839*
condR
while_cond_1323838*K
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
NoOpNoOp%^lstm_cell_218/BiasAdd/ReadVariableOp$^lstm_cell_218/MatMul/ReadVariableOp&^lstm_cell_218/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_218/BiasAdd/ReadVariableOp$lstm_cell_218/BiasAdd/ReadVariableOp2J
#lstm_cell_218/MatMul/ReadVariableOp#lstm_cell_218/MatMul/ReadVariableOp2N
%lstm_cell_218/MatMul_1/ReadVariableOp%lstm_cell_218/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_191_layer_call_and_return_conditional_losses_1320091

inputs'
lstm_cell_218_1320009:2('
lstm_cell_218_1320011:
(#
lstm_cell_218_1320013:(
identity??%lstm_cell_218/StatefulPartitionedCall?while;
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
%lstm_cell_218/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_218_1320009lstm_cell_218_1320011lstm_cell_218_1320013*
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
J__inference_lstm_cell_218_layer_call_and_return_conditional_losses_1319963n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_218_1320009lstm_cell_218_1320011lstm_cell_218_1320013*
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
while_body_1320022*
condR
while_cond_1320021*K
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
NoOpNoOp&^lstm_cell_218/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_218/StatefulPartitionedCall%lstm_cell_218/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?C
?

lstm_189_while_body_1321423.
*lstm_189_while_lstm_189_while_loop_counter4
0lstm_189_while_lstm_189_while_maximum_iterations
lstm_189_while_placeholder 
lstm_189_while_placeholder_1 
lstm_189_while_placeholder_2 
lstm_189_while_placeholder_3-
)lstm_189_while_lstm_189_strided_slice_1_0i
elstm_189_while_tensorarrayv2read_tensorlistgetitem_lstm_189_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_189_while_lstm_cell_216_matmul_readvariableop_resource_0:	?R
?lstm_189_while_lstm_cell_216_matmul_1_readvariableop_resource_0:	d?M
>lstm_189_while_lstm_cell_216_biasadd_readvariableop_resource_0:	?
lstm_189_while_identity
lstm_189_while_identity_1
lstm_189_while_identity_2
lstm_189_while_identity_3
lstm_189_while_identity_4
lstm_189_while_identity_5+
'lstm_189_while_lstm_189_strided_slice_1g
clstm_189_while_tensorarrayv2read_tensorlistgetitem_lstm_189_tensorarrayunstack_tensorlistfromtensorN
;lstm_189_while_lstm_cell_216_matmul_readvariableop_resource:	?P
=lstm_189_while_lstm_cell_216_matmul_1_readvariableop_resource:	d?K
<lstm_189_while_lstm_cell_216_biasadd_readvariableop_resource:	???3lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOp?2lstm_189/while/lstm_cell_216/MatMul/ReadVariableOp?4lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOp?
@lstm_189/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_189/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_189_while_tensorarrayv2read_tensorlistgetitem_lstm_189_tensorarrayunstack_tensorlistfromtensor_0lstm_189_while_placeholderIlstm_189/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_189/while/lstm_cell_216/MatMul/ReadVariableOpReadVariableOp=lstm_189_while_lstm_cell_216_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_189/while/lstm_cell_216/MatMulMatMul9lstm_189/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_189/while/lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOp?lstm_189_while_lstm_cell_216_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_189/while/lstm_cell_216/MatMul_1MatMullstm_189_while_placeholder_2<lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_189/while/lstm_cell_216/addAddV2-lstm_189/while/lstm_cell_216/MatMul:product:0/lstm_189/while/lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOp>lstm_189_while_lstm_cell_216_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_189/while/lstm_cell_216/BiasAddBiasAdd$lstm_189/while/lstm_cell_216/add:z:0;lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_189/while/lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_189/while/lstm_cell_216/splitSplit5lstm_189/while/lstm_cell_216/split/split_dim:output:0-lstm_189/while/lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_189/while/lstm_cell_216/SigmoidSigmoid+lstm_189/while/lstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_189/while/lstm_cell_216/Sigmoid_1Sigmoid+lstm_189/while/lstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_189/while/lstm_cell_216/mulMul*lstm_189/while/lstm_cell_216/Sigmoid_1:y:0lstm_189_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_189/while/lstm_cell_216/ReluRelu+lstm_189/while/lstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_189/while/lstm_cell_216/mul_1Mul(lstm_189/while/lstm_cell_216/Sigmoid:y:0/lstm_189/while/lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_189/while/lstm_cell_216/add_1AddV2$lstm_189/while/lstm_cell_216/mul:z:0&lstm_189/while/lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_189/while/lstm_cell_216/Sigmoid_2Sigmoid+lstm_189/while/lstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_189/while/lstm_cell_216/Relu_1Relu&lstm_189/while/lstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_189/while/lstm_cell_216/mul_2Mul*lstm_189/while/lstm_cell_216/Sigmoid_2:y:01lstm_189/while/lstm_cell_216/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_189/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_189_while_placeholder_1lstm_189_while_placeholder&lstm_189/while/lstm_cell_216/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_189/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_189/while/addAddV2lstm_189_while_placeholderlstm_189/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_189/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_189/while/add_1AddV2*lstm_189_while_lstm_189_while_loop_counterlstm_189/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_189/while/IdentityIdentitylstm_189/while/add_1:z:0^lstm_189/while/NoOp*
T0*
_output_shapes
: ?
lstm_189/while/Identity_1Identity0lstm_189_while_lstm_189_while_maximum_iterations^lstm_189/while/NoOp*
T0*
_output_shapes
: t
lstm_189/while/Identity_2Identitylstm_189/while/add:z:0^lstm_189/while/NoOp*
T0*
_output_shapes
: ?
lstm_189/while/Identity_3IdentityClstm_189/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_189/while/NoOp*
T0*
_output_shapes
: ?
lstm_189/while/Identity_4Identity&lstm_189/while/lstm_cell_216/mul_2:z:0^lstm_189/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_189/while/Identity_5Identity&lstm_189/while/lstm_cell_216/add_1:z:0^lstm_189/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_189/while/NoOpNoOp4^lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOp3^lstm_189/while/lstm_cell_216/MatMul/ReadVariableOp5^lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_189_while_identity lstm_189/while/Identity:output:0"?
lstm_189_while_identity_1"lstm_189/while/Identity_1:output:0"?
lstm_189_while_identity_2"lstm_189/while/Identity_2:output:0"?
lstm_189_while_identity_3"lstm_189/while/Identity_3:output:0"?
lstm_189_while_identity_4"lstm_189/while/Identity_4:output:0"?
lstm_189_while_identity_5"lstm_189/while/Identity_5:output:0"T
'lstm_189_while_lstm_189_strided_slice_1)lstm_189_while_lstm_189_strided_slice_1_0"~
<lstm_189_while_lstm_cell_216_biasadd_readvariableop_resource>lstm_189_while_lstm_cell_216_biasadd_readvariableop_resource_0"?
=lstm_189_while_lstm_cell_216_matmul_1_readvariableop_resource?lstm_189_while_lstm_cell_216_matmul_1_readvariableop_resource_0"|
;lstm_189_while_lstm_cell_216_matmul_readvariableop_resource=lstm_189_while_lstm_cell_216_matmul_readvariableop_resource_0"?
clstm_189_while_tensorarrayv2read_tensorlistgetitem_lstm_189_tensorarrayunstack_tensorlistfromtensorelstm_189_while_tensorarrayv2read_tensorlistgetitem_lstm_189_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOp3lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOp2h
2lstm_189/while/lstm_cell_216/MatMul/ReadVariableOp2lstm_189/while/lstm_cell_216/MatMul/ReadVariableOp2l
4lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOp4lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1323365
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1323365___redundant_placeholder05
1while_while_cond_1323365___redundant_placeholder15
1while_while_cond_1323365___redundant_placeholder25
1while_while_cond_1323365___redundant_placeholder3
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
J__inference_lstm_cell_218_layer_call_and_return_conditional_losses_1324347

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
*__inference_lstm_191_layer_call_fn_1323472
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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1320091o
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

?
/__inference_sequential_63_layer_call_fn_1321337

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
J__inference_sequential_63_layer_call_and_return_conditional_losses_1320574o
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
while_cond_1323552
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1323552___redundant_placeholder05
1while_while_cond_1323552___redundant_placeholder15
1while_while_cond_1323552___redundant_placeholder25
1while_while_cond_1323552___redundant_placeholder3
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
J__inference_lstm_cell_216_layer_call_and_return_conditional_losses_1319263

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
while_cond_1319671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1319671___redundant_placeholder05
1while_while_cond_1319671___redundant_placeholder15
1while_while_cond_1319671___redundant_placeholder25
1while_while_cond_1319671___redundant_placeholder3
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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1323021
inputs_0?
,lstm_cell_217_matmul_readvariableop_resource:	d?A
.lstm_cell_217_matmul_1_readvariableop_resource:	2?<
-lstm_cell_217_biasadd_readvariableop_resource:	?
identity??$lstm_cell_217/BiasAdd/ReadVariableOp?#lstm_cell_217/MatMul/ReadVariableOp?%lstm_cell_217/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_217/MatMul/ReadVariableOpReadVariableOp,lstm_cell_217_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_217/MatMulMatMulstrided_slice_2:output:0+lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_217_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_217/MatMul_1MatMulzeros:output:0-lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_217/addAddV2lstm_cell_217/MatMul:product:0 lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_217_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_217/BiasAddBiasAddlstm_cell_217/add:z:0,lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_217/splitSplit&lstm_cell_217/split/split_dim:output:0lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_217/SigmoidSigmoidlstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_217/Sigmoid_1Sigmoidlstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_217/mulMullstm_cell_217/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_217/ReluRelulstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_217/mul_1Mullstm_cell_217/Sigmoid:y:0 lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_217/add_1AddV2lstm_cell_217/mul:z:0lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_217/Sigmoid_2Sigmoidlstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_217/Relu_1Relulstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_217/mul_2Mullstm_cell_217/Sigmoid_2:y:0"lstm_cell_217/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_217_matmul_readvariableop_resource.lstm_cell_217_matmul_1_readvariableop_resource-lstm_cell_217_biasadd_readvariableop_resource*
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
while_body_1322937*
condR
while_cond_1322936*K
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
NoOpNoOp%^lstm_cell_217/BiasAdd/ReadVariableOp$^lstm_cell_217/MatMul/ReadVariableOp&^lstm_cell_217/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_217/BiasAdd/ReadVariableOp$lstm_cell_217/BiasAdd/ReadVariableOp2J
#lstm_cell_217/MatMul/ReadVariableOp#lstm_cell_217/MatMul/ReadVariableOp2N
%lstm_cell_217/MatMul_1/ReadVariableOp%lstm_cell_217/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_190_layer_call_and_return_conditional_losses_1323450

inputs?
,lstm_cell_217_matmul_readvariableop_resource:	d?A
.lstm_cell_217_matmul_1_readvariableop_resource:	2?<
-lstm_cell_217_biasadd_readvariableop_resource:	?
identity??$lstm_cell_217/BiasAdd/ReadVariableOp?#lstm_cell_217/MatMul/ReadVariableOp?%lstm_cell_217/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_217/MatMul/ReadVariableOpReadVariableOp,lstm_cell_217_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_217/MatMulMatMulstrided_slice_2:output:0+lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_217_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_217/MatMul_1MatMulzeros:output:0-lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_217/addAddV2lstm_cell_217/MatMul:product:0 lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_217_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_217/BiasAddBiasAddlstm_cell_217/add:z:0,lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_217/splitSplit&lstm_cell_217/split/split_dim:output:0lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_217/SigmoidSigmoidlstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_217/Sigmoid_1Sigmoidlstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_217/mulMullstm_cell_217/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_217/ReluRelulstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_217/mul_1Mullstm_cell_217/Sigmoid:y:0 lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_217/add_1AddV2lstm_cell_217/mul:z:0lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_217/Sigmoid_2Sigmoidlstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_217/Relu_1Relulstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_217/mul_2Mullstm_cell_217/Sigmoid_2:y:0"lstm_cell_217/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_217_matmul_readvariableop_resource.lstm_cell_217_matmul_1_readvariableop_resource-lstm_cell_217_biasadd_readvariableop_resource*
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
while_body_1323366*
condR
while_cond_1323365*K
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
NoOpNoOp%^lstm_cell_217/BiasAdd/ReadVariableOp$^lstm_cell_217/MatMul/ReadVariableOp&^lstm_cell_217/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_217/BiasAdd/ReadVariableOp$lstm_cell_217/BiasAdd/ReadVariableOp2J
#lstm_cell_217/MatMul/ReadVariableOp#lstm_cell_217/MatMul/ReadVariableOp2N
%lstm_cell_217/MatMul_1/ReadVariableOp%lstm_cell_217/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_sequential_63_layer_call_and_return_conditional_losses_1321163

inputs#
lstm_189_1321136:	?#
lstm_189_1321138:	d?
lstm_189_1321140:	?#
lstm_190_1321143:	d?#
lstm_190_1321145:	2?
lstm_190_1321147:	?"
lstm_191_1321150:2("
lstm_191_1321152:
(
lstm_191_1321154:("
dense_63_1321157:

dense_63_1321159:
identity?? dense_63/StatefulPartitionedCall? lstm_189/StatefulPartitionedCall? lstm_190/StatefulPartitionedCall? lstm_191/StatefulPartitionedCall?
 lstm_189/StatefulPartitionedCallStatefulPartitionedCallinputslstm_189_1321136lstm_189_1321138lstm_189_1321140*
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
E__inference_lstm_189_layer_call_and_return_conditional_losses_1321095?
 lstm_190/StatefulPartitionedCallStatefulPartitionedCall)lstm_189/StatefulPartitionedCall:output:0lstm_190_1321143lstm_190_1321145lstm_190_1321147*
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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1320930?
 lstm_191/StatefulPartitionedCallStatefulPartitionedCall)lstm_190/StatefulPartitionedCall:output:0lstm_191_1321150lstm_191_1321152lstm_191_1321154*
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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1320765?
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)lstm_191/StatefulPartitionedCall:output:0dense_63_1321157dense_63_1321159*
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
E__inference_dense_63_layer_call_and_return_conditional_losses_1320567x
IdentityIdentity)dense_63/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_63/StatefulPartitionedCall!^lstm_189/StatefulPartitionedCall!^lstm_190/StatefulPartitionedCall!^lstm_191/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2D
 lstm_189/StatefulPartitionedCall lstm_189/StatefulPartitionedCall2D
 lstm_190/StatefulPartitionedCall lstm_190/StatefulPartitionedCall2D
 lstm_191/StatefulPartitionedCall lstm_191/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_189_layer_call_and_return_conditional_losses_1322834

inputs?
,lstm_cell_216_matmul_readvariableop_resource:	?A
.lstm_cell_216_matmul_1_readvariableop_resource:	d?<
-lstm_cell_216_biasadd_readvariableop_resource:	?
identity??$lstm_cell_216/BiasAdd/ReadVariableOp?#lstm_cell_216/MatMul/ReadVariableOp?%lstm_cell_216/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_216/MatMul/ReadVariableOpReadVariableOp,lstm_cell_216_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_216/MatMulMatMulstrided_slice_2:output:0+lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_216_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_216/MatMul_1MatMulzeros:output:0-lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_216/addAddV2lstm_cell_216/MatMul:product:0 lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_216_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_216/BiasAddBiasAddlstm_cell_216/add:z:0,lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_216/splitSplit&lstm_cell_216/split/split_dim:output:0lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_216/SigmoidSigmoidlstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_216/Sigmoid_1Sigmoidlstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_216/mulMullstm_cell_216/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_216/ReluRelulstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_216/mul_1Mullstm_cell_216/Sigmoid:y:0 lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_216/add_1AddV2lstm_cell_216/mul:z:0lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_216/Sigmoid_2Sigmoidlstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_216/Relu_1Relulstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_216/mul_2Mullstm_cell_216/Sigmoid_2:y:0"lstm_cell_216/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_216_matmul_readvariableop_resource.lstm_cell_216_matmul_1_readvariableop_resource-lstm_cell_216_biasadd_readvariableop_resource*
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
while_body_1322750*
condR
while_cond_1322749*K
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
NoOpNoOp%^lstm_cell_216/BiasAdd/ReadVariableOp$^lstm_cell_216/MatMul/ReadVariableOp&^lstm_cell_216/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_216/BiasAdd/ReadVariableOp$lstm_cell_216/BiasAdd/ReadVariableOp2J
#lstm_cell_216/MatMul/ReadVariableOp#lstm_cell_216/MatMul/ReadVariableOp2N
%lstm_cell_216/MatMul_1/ReadVariableOp%lstm_cell_216/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1320164
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1320164___redundant_placeholder05
1while_while_cond_1320164___redundant_placeholder15
1while_while_cond_1320164___redundant_placeholder25
1while_while_cond_1320164___redundant_placeholder3
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
*__inference_lstm_189_layer_call_fn_1322229
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
E__inference_lstm_189_layer_call_and_return_conditional_losses_1319200|
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
J__inference_lstm_cell_218_layer_call_and_return_conditional_losses_1319817

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
?
?
*__inference_lstm_191_layer_call_fn_1323483

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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1320549o
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
J__inference_lstm_cell_217_layer_call_and_return_conditional_losses_1319467

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
*__inference_lstm_190_layer_call_fn_1322878

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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1320930s
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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1323164
inputs_0?
,lstm_cell_217_matmul_readvariableop_resource:	d?A
.lstm_cell_217_matmul_1_readvariableop_resource:	2?<
-lstm_cell_217_biasadd_readvariableop_resource:	?
identity??$lstm_cell_217/BiasAdd/ReadVariableOp?#lstm_cell_217/MatMul/ReadVariableOp?%lstm_cell_217/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_217/MatMul/ReadVariableOpReadVariableOp,lstm_cell_217_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_217/MatMulMatMulstrided_slice_2:output:0+lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_217_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_217/MatMul_1MatMulzeros:output:0-lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_217/addAddV2lstm_cell_217/MatMul:product:0 lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_217_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_217/BiasAddBiasAddlstm_cell_217/add:z:0,lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_217/splitSplit&lstm_cell_217/split/split_dim:output:0lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_217/SigmoidSigmoidlstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_217/Sigmoid_1Sigmoidlstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_217/mulMullstm_cell_217/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_217/ReluRelulstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_217/mul_1Mullstm_cell_217/Sigmoid:y:0 lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_217/add_1AddV2lstm_cell_217/mul:z:0lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_217/Sigmoid_2Sigmoidlstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_217/Relu_1Relulstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_217/mul_2Mullstm_cell_217/Sigmoid_2:y:0"lstm_cell_217/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_217_matmul_readvariableop_resource.lstm_cell_217_matmul_1_readvariableop_resource-lstm_cell_217_biasadd_readvariableop_resource*
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
while_body_1323080*
condR
while_cond_1323079*K
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
NoOpNoOp%^lstm_cell_217/BiasAdd/ReadVariableOp$^lstm_cell_217/MatMul/ReadVariableOp&^lstm_cell_217/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_217/BiasAdd/ReadVariableOp$lstm_cell_217/BiasAdd/ReadVariableOp2J
#lstm_cell_217/MatMul/ReadVariableOp#lstm_cell_217/MatMul/ReadVariableOp2N
%lstm_cell_217/MatMul_1/ReadVariableOp%lstm_cell_217/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?S
?
)sequential_63_lstm_189_while_body_1318682J
Fsequential_63_lstm_189_while_sequential_63_lstm_189_while_loop_counterP
Lsequential_63_lstm_189_while_sequential_63_lstm_189_while_maximum_iterations,
(sequential_63_lstm_189_while_placeholder.
*sequential_63_lstm_189_while_placeholder_1.
*sequential_63_lstm_189_while_placeholder_2.
*sequential_63_lstm_189_while_placeholder_3I
Esequential_63_lstm_189_while_sequential_63_lstm_189_strided_slice_1_0?
?sequential_63_lstm_189_while_tensorarrayv2read_tensorlistgetitem_sequential_63_lstm_189_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_63_lstm_189_while_lstm_cell_216_matmul_readvariableop_resource_0:	?`
Msequential_63_lstm_189_while_lstm_cell_216_matmul_1_readvariableop_resource_0:	d?[
Lsequential_63_lstm_189_while_lstm_cell_216_biasadd_readvariableop_resource_0:	?)
%sequential_63_lstm_189_while_identity+
'sequential_63_lstm_189_while_identity_1+
'sequential_63_lstm_189_while_identity_2+
'sequential_63_lstm_189_while_identity_3+
'sequential_63_lstm_189_while_identity_4+
'sequential_63_lstm_189_while_identity_5G
Csequential_63_lstm_189_while_sequential_63_lstm_189_strided_slice_1?
sequential_63_lstm_189_while_tensorarrayv2read_tensorlistgetitem_sequential_63_lstm_189_tensorarrayunstack_tensorlistfromtensor\
Isequential_63_lstm_189_while_lstm_cell_216_matmul_readvariableop_resource:	?^
Ksequential_63_lstm_189_while_lstm_cell_216_matmul_1_readvariableop_resource:	d?Y
Jsequential_63_lstm_189_while_lstm_cell_216_biasadd_readvariableop_resource:	???Asequential_63/lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOp?@sequential_63/lstm_189/while/lstm_cell_216/MatMul/ReadVariableOp?Bsequential_63/lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOp?
Nsequential_63/lstm_189/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_63/lstm_189/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_63_lstm_189_while_tensorarrayv2read_tensorlistgetitem_sequential_63_lstm_189_tensorarrayunstack_tensorlistfromtensor_0(sequential_63_lstm_189_while_placeholderWsequential_63/lstm_189/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_63/lstm_189/while/lstm_cell_216/MatMul/ReadVariableOpReadVariableOpKsequential_63_lstm_189_while_lstm_cell_216_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_63/lstm_189/while/lstm_cell_216/MatMulMatMulGsequential_63/lstm_189/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_63/lstm_189/while/lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_63/lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOpMsequential_63_lstm_189_while_lstm_cell_216_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_63/lstm_189/while/lstm_cell_216/MatMul_1MatMul*sequential_63_lstm_189_while_placeholder_2Jsequential_63/lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_63/lstm_189/while/lstm_cell_216/addAddV2;sequential_63/lstm_189/while/lstm_cell_216/MatMul:product:0=sequential_63/lstm_189/while/lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_63/lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOpLsequential_63_lstm_189_while_lstm_cell_216_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_63/lstm_189/while/lstm_cell_216/BiasAddBiasAdd2sequential_63/lstm_189/while/lstm_cell_216/add:z:0Isequential_63/lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_63/lstm_189/while/lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_63/lstm_189/while/lstm_cell_216/splitSplitCsequential_63/lstm_189/while/lstm_cell_216/split/split_dim:output:0;sequential_63/lstm_189/while/lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_63/lstm_189/while/lstm_cell_216/SigmoidSigmoid9sequential_63/lstm_189/while/lstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_63/lstm_189/while/lstm_cell_216/Sigmoid_1Sigmoid9sequential_63/lstm_189/while/lstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_63/lstm_189/while/lstm_cell_216/mulMul8sequential_63/lstm_189/while/lstm_cell_216/Sigmoid_1:y:0*sequential_63_lstm_189_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_63/lstm_189/while/lstm_cell_216/ReluRelu9sequential_63/lstm_189/while/lstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_63/lstm_189/while/lstm_cell_216/mul_1Mul6sequential_63/lstm_189/while/lstm_cell_216/Sigmoid:y:0=sequential_63/lstm_189/while/lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_63/lstm_189/while/lstm_cell_216/add_1AddV22sequential_63/lstm_189/while/lstm_cell_216/mul:z:04sequential_63/lstm_189/while/lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_63/lstm_189/while/lstm_cell_216/Sigmoid_2Sigmoid9sequential_63/lstm_189/while/lstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_63/lstm_189/while/lstm_cell_216/Relu_1Relu4sequential_63/lstm_189/while/lstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_63/lstm_189/while/lstm_cell_216/mul_2Mul8sequential_63/lstm_189/while/lstm_cell_216/Sigmoid_2:y:0?sequential_63/lstm_189/while/lstm_cell_216/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_63/lstm_189/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_63_lstm_189_while_placeholder_1(sequential_63_lstm_189_while_placeholder4sequential_63/lstm_189/while/lstm_cell_216/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_63/lstm_189/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_63/lstm_189/while/addAddV2(sequential_63_lstm_189_while_placeholder+sequential_63/lstm_189/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_63/lstm_189/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_63/lstm_189/while/add_1AddV2Fsequential_63_lstm_189_while_sequential_63_lstm_189_while_loop_counter-sequential_63/lstm_189/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_63/lstm_189/while/IdentityIdentity&sequential_63/lstm_189/while/add_1:z:0"^sequential_63/lstm_189/while/NoOp*
T0*
_output_shapes
: ?
'sequential_63/lstm_189/while/Identity_1IdentityLsequential_63_lstm_189_while_sequential_63_lstm_189_while_maximum_iterations"^sequential_63/lstm_189/while/NoOp*
T0*
_output_shapes
: ?
'sequential_63/lstm_189/while/Identity_2Identity$sequential_63/lstm_189/while/add:z:0"^sequential_63/lstm_189/while/NoOp*
T0*
_output_shapes
: ?
'sequential_63/lstm_189/while/Identity_3IdentityQsequential_63/lstm_189/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_63/lstm_189/while/NoOp*
T0*
_output_shapes
: ?
'sequential_63/lstm_189/while/Identity_4Identity4sequential_63/lstm_189/while/lstm_cell_216/mul_2:z:0"^sequential_63/lstm_189/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_63/lstm_189/while/Identity_5Identity4sequential_63/lstm_189/while/lstm_cell_216/add_1:z:0"^sequential_63/lstm_189/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_63/lstm_189/while/NoOpNoOpB^sequential_63/lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOpA^sequential_63/lstm_189/while/lstm_cell_216/MatMul/ReadVariableOpC^sequential_63/lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_63_lstm_189_while_identity.sequential_63/lstm_189/while/Identity:output:0"[
'sequential_63_lstm_189_while_identity_10sequential_63/lstm_189/while/Identity_1:output:0"[
'sequential_63_lstm_189_while_identity_20sequential_63/lstm_189/while/Identity_2:output:0"[
'sequential_63_lstm_189_while_identity_30sequential_63/lstm_189/while/Identity_3:output:0"[
'sequential_63_lstm_189_while_identity_40sequential_63/lstm_189/while/Identity_4:output:0"[
'sequential_63_lstm_189_while_identity_50sequential_63/lstm_189/while/Identity_5:output:0"?
Jsequential_63_lstm_189_while_lstm_cell_216_biasadd_readvariableop_resourceLsequential_63_lstm_189_while_lstm_cell_216_biasadd_readvariableop_resource_0"?
Ksequential_63_lstm_189_while_lstm_cell_216_matmul_1_readvariableop_resourceMsequential_63_lstm_189_while_lstm_cell_216_matmul_1_readvariableop_resource_0"?
Isequential_63_lstm_189_while_lstm_cell_216_matmul_readvariableop_resourceKsequential_63_lstm_189_while_lstm_cell_216_matmul_readvariableop_resource_0"?
Csequential_63_lstm_189_while_sequential_63_lstm_189_strided_slice_1Esequential_63_lstm_189_while_sequential_63_lstm_189_strided_slice_1_0"?
sequential_63_lstm_189_while_tensorarrayv2read_tensorlistgetitem_sequential_63_lstm_189_tensorarrayunstack_tensorlistfromtensor?sequential_63_lstm_189_while_tensorarrayv2read_tensorlistgetitem_sequential_63_lstm_189_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_63/lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOpAsequential_63/lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOp2?
@sequential_63/lstm_189/while/lstm_cell_216/MatMul/ReadVariableOp@sequential_63/lstm_189/while/lstm_cell_216/MatMul/ReadVariableOp2?
Bsequential_63/lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOpBsequential_63/lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_189_layer_call_fn_1322262

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
E__inference_lstm_189_layer_call_and_return_conditional_losses_1321095s
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
while_body_1319672
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_217_1319696_0:	d?0
while_lstm_cell_217_1319698_0:	2?,
while_lstm_cell_217_1319700_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_217_1319696:	d?.
while_lstm_cell_217_1319698:	2?*
while_lstm_cell_217_1319700:	???+while/lstm_cell_217/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_217/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_217_1319696_0while_lstm_cell_217_1319698_0while_lstm_cell_217_1319700_0*
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
J__inference_lstm_cell_217_layer_call_and_return_conditional_losses_1319613?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_217/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_217/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_217/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_217/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_217_1319696while_lstm_cell_217_1319696_0"<
while_lstm_cell_217_1319698while_lstm_cell_217_1319698_0"<
while_lstm_cell_217_1319700while_lstm_cell_217_1319700_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_217/StatefulPartitionedCall+while/lstm_cell_217/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_189_layer_call_and_return_conditional_losses_1321095

inputs?
,lstm_cell_216_matmul_readvariableop_resource:	?A
.lstm_cell_216_matmul_1_readvariableop_resource:	d?<
-lstm_cell_216_biasadd_readvariableop_resource:	?
identity??$lstm_cell_216/BiasAdd/ReadVariableOp?#lstm_cell_216/MatMul/ReadVariableOp?%lstm_cell_216/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_216/MatMul/ReadVariableOpReadVariableOp,lstm_cell_216_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_216/MatMulMatMulstrided_slice_2:output:0+lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_216_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_216/MatMul_1MatMulzeros:output:0-lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_216/addAddV2lstm_cell_216/MatMul:product:0 lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_216_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_216/BiasAddBiasAddlstm_cell_216/add:z:0,lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_216/splitSplit&lstm_cell_216/split/split_dim:output:0lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_216/SigmoidSigmoidlstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_216/Sigmoid_1Sigmoidlstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_216/mulMullstm_cell_216/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_216/ReluRelulstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_216/mul_1Mullstm_cell_216/Sigmoid:y:0 lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_216/add_1AddV2lstm_cell_216/mul:z:0lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_216/Sigmoid_2Sigmoidlstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_216/Relu_1Relulstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_216/mul_2Mullstm_cell_216/Sigmoid_2:y:0"lstm_cell_216/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_216_matmul_readvariableop_resource.lstm_cell_216_matmul_1_readvariableop_resource-lstm_cell_216_biasadd_readvariableop_resource*
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
while_body_1321011*
condR
while_cond_1321010*K
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
NoOpNoOp%^lstm_cell_216/BiasAdd/ReadVariableOp$^lstm_cell_216/MatMul/ReadVariableOp&^lstm_cell_216/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_216/BiasAdd/ReadVariableOp$lstm_cell_216/BiasAdd/ReadVariableOp2J
#lstm_cell_216/MatMul/ReadVariableOp#lstm_cell_216/MatMul/ReadVariableOp2N
%lstm_cell_216/MatMul_1/ReadVariableOp%lstm_cell_216/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1321010
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1321010___redundant_placeholder05
1while_while_cond_1321010___redundant_placeholder15
1while_while_cond_1321010___redundant_placeholder25
1while_while_cond_1321010___redundant_placeholder3
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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1320765

inputs>
,lstm_cell_218_matmul_readvariableop_resource:2(@
.lstm_cell_218_matmul_1_readvariableop_resource:
(;
-lstm_cell_218_biasadd_readvariableop_resource:(
identity??$lstm_cell_218/BiasAdd/ReadVariableOp?#lstm_cell_218/MatMul/ReadVariableOp?%lstm_cell_218/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_218/MatMul/ReadVariableOpReadVariableOp,lstm_cell_218_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_218/MatMulMatMulstrided_slice_2:output:0+lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_218_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_218/MatMul_1MatMulzeros:output:0-lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_218/addAddV2lstm_cell_218/MatMul:product:0 lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_218_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_218/BiasAddBiasAddlstm_cell_218/add:z:0,lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_218/splitSplit&lstm_cell_218/split/split_dim:output:0lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_218/SigmoidSigmoidlstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_218/Sigmoid_1Sigmoidlstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_218/mulMullstm_cell_218/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_218/ReluRelulstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_218/mul_1Mullstm_cell_218/Sigmoid:y:0 lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_218/add_1AddV2lstm_cell_218/mul:z:0lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_218/Sigmoid_2Sigmoidlstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_218/Relu_1Relulstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_218/mul_2Mullstm_cell_218/Sigmoid_2:y:0"lstm_cell_218/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_218_matmul_readvariableop_resource.lstm_cell_218_matmul_1_readvariableop_resource-lstm_cell_218_biasadd_readvariableop_resource*
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
while_body_1320681*
condR
while_cond_1320680*K
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
NoOpNoOp%^lstm_cell_218/BiasAdd/ReadVariableOp$^lstm_cell_218/MatMul/ReadVariableOp&^lstm_cell_218/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_218/BiasAdd/ReadVariableOp$lstm_cell_218/BiasAdd/ReadVariableOp2J
#lstm_cell_218/MatMul/ReadVariableOp#lstm_cell_218/MatMul/ReadVariableOp2N
%lstm_cell_218/MatMul_1/ReadVariableOp%lstm_cell_218/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_189_layer_call_and_return_conditional_losses_1319391

inputs(
lstm_cell_216_1319309:	?(
lstm_cell_216_1319311:	d?$
lstm_cell_216_1319313:	?
identity??%lstm_cell_216/StatefulPartitionedCall?while;
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
%lstm_cell_216/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_216_1319309lstm_cell_216_1319311lstm_cell_216_1319313*
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
J__inference_lstm_cell_216_layer_call_and_return_conditional_losses_1319263n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_216_1319309lstm_cell_216_1319311lstm_cell_216_1319313*
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
while_body_1319322*
condR
while_cond_1319321*K
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
NoOpNoOp&^lstm_cell_216/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_216/StatefulPartitionedCall%lstm_cell_216/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_1319321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1319321___redundant_placeholder05
1while_while_cond_1319321___redundant_placeholder15
1while_while_cond_1319321___redundant_placeholder25
1while_while_cond_1319321___redundant_placeholder3
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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1324066

inputs>
,lstm_cell_218_matmul_readvariableop_resource:2(@
.lstm_cell_218_matmul_1_readvariableop_resource:
(;
-lstm_cell_218_biasadd_readvariableop_resource:(
identity??$lstm_cell_218/BiasAdd/ReadVariableOp?#lstm_cell_218/MatMul/ReadVariableOp?%lstm_cell_218/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_218/MatMul/ReadVariableOpReadVariableOp,lstm_cell_218_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_218/MatMulMatMulstrided_slice_2:output:0+lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_218_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_218/MatMul_1MatMulzeros:output:0-lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_218/addAddV2lstm_cell_218/MatMul:product:0 lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_218_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_218/BiasAddBiasAddlstm_cell_218/add:z:0,lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_218/splitSplit&lstm_cell_218/split/split_dim:output:0lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_218/SigmoidSigmoidlstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_218/Sigmoid_1Sigmoidlstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_218/mulMullstm_cell_218/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_218/ReluRelulstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_218/mul_1Mullstm_cell_218/Sigmoid:y:0 lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_218/add_1AddV2lstm_cell_218/mul:z:0lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_218/Sigmoid_2Sigmoidlstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_218/Relu_1Relulstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_218/mul_2Mullstm_cell_218/Sigmoid_2:y:0"lstm_cell_218/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_218_matmul_readvariableop_resource.lstm_cell_218_matmul_1_readvariableop_resource-lstm_cell_218_biasadd_readvariableop_resource*
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
while_body_1323982*
condR
while_cond_1323981*K
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
NoOpNoOp%^lstm_cell_218/BiasAdd/ReadVariableOp$^lstm_cell_218/MatMul/ReadVariableOp&^lstm_cell_218/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_218/BiasAdd/ReadVariableOp$lstm_cell_218/BiasAdd/ReadVariableOp2J
#lstm_cell_218/MatMul/ReadVariableOp#lstm_cell_218/MatMul/ReadVariableOp2N
%lstm_cell_218/MatMul_1/ReadVariableOp%lstm_cell_218/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_216_layer_call_fn_1324119

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
J__inference_lstm_cell_216_layer_call_and_return_conditional_losses_1319263o
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
?
)sequential_63_lstm_190_while_cond_1318820J
Fsequential_63_lstm_190_while_sequential_63_lstm_190_while_loop_counterP
Lsequential_63_lstm_190_while_sequential_63_lstm_190_while_maximum_iterations,
(sequential_63_lstm_190_while_placeholder.
*sequential_63_lstm_190_while_placeholder_1.
*sequential_63_lstm_190_while_placeholder_2.
*sequential_63_lstm_190_while_placeholder_3L
Hsequential_63_lstm_190_while_less_sequential_63_lstm_190_strided_slice_1c
_sequential_63_lstm_190_while_sequential_63_lstm_190_while_cond_1318820___redundant_placeholder0c
_sequential_63_lstm_190_while_sequential_63_lstm_190_while_cond_1318820___redundant_placeholder1c
_sequential_63_lstm_190_while_sequential_63_lstm_190_while_cond_1318820___redundant_placeholder2c
_sequential_63_lstm_190_while_sequential_63_lstm_190_while_cond_1318820___redundant_placeholder3)
%sequential_63_lstm_190_while_identity
?
!sequential_63/lstm_190/while/LessLess(sequential_63_lstm_190_while_placeholderHsequential_63_lstm_190_while_less_sequential_63_lstm_190_strided_slice_1*
T0*
_output_shapes
: y
%sequential_63/lstm_190/while/IdentityIdentity%sequential_63/lstm_190/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_63_lstm_190_while_identity.sequential_63/lstm_190/while/Identity:output:0*(
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
J__inference_sequential_63_layer_call_and_return_conditional_losses_1322218

inputsH
5lstm_189_lstm_cell_216_matmul_readvariableop_resource:	?J
7lstm_189_lstm_cell_216_matmul_1_readvariableop_resource:	d?E
6lstm_189_lstm_cell_216_biasadd_readvariableop_resource:	?H
5lstm_190_lstm_cell_217_matmul_readvariableop_resource:	d?J
7lstm_190_lstm_cell_217_matmul_1_readvariableop_resource:	2?E
6lstm_190_lstm_cell_217_biasadd_readvariableop_resource:	?G
5lstm_191_lstm_cell_218_matmul_readvariableop_resource:2(I
7lstm_191_lstm_cell_218_matmul_1_readvariableop_resource:
(D
6lstm_191_lstm_cell_218_biasadd_readvariableop_resource:(9
'dense_63_matmul_readvariableop_resource:
6
(dense_63_biasadd_readvariableop_resource:
identity??dense_63/BiasAdd/ReadVariableOp?dense_63/MatMul/ReadVariableOp?-lstm_189/lstm_cell_216/BiasAdd/ReadVariableOp?,lstm_189/lstm_cell_216/MatMul/ReadVariableOp?.lstm_189/lstm_cell_216/MatMul_1/ReadVariableOp?lstm_189/while?-lstm_190/lstm_cell_217/BiasAdd/ReadVariableOp?,lstm_190/lstm_cell_217/MatMul/ReadVariableOp?.lstm_190/lstm_cell_217/MatMul_1/ReadVariableOp?lstm_190/while?-lstm_191/lstm_cell_218/BiasAdd/ReadVariableOp?,lstm_191/lstm_cell_218/MatMul/ReadVariableOp?.lstm_191/lstm_cell_218/MatMul_1/ReadVariableOp?lstm_191/whileD
lstm_189/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_189/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_189/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_189/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_189/strided_sliceStridedSlicelstm_189/Shape:output:0%lstm_189/strided_slice/stack:output:0'lstm_189/strided_slice/stack_1:output:0'lstm_189/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_189/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_189/zeros/packedPacklstm_189/strided_slice:output:0 lstm_189/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_189/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_189/zerosFilllstm_189/zeros/packed:output:0lstm_189/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_189/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_189/zeros_1/packedPacklstm_189/strided_slice:output:0"lstm_189/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_189/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_189/zeros_1Fill lstm_189/zeros_1/packed:output:0lstm_189/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_189/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_189/transpose	Transposeinputs lstm_189/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_189/Shape_1Shapelstm_189/transpose:y:0*
T0*
_output_shapes
:h
lstm_189/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_189/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_189/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_189/strided_slice_1StridedSlicelstm_189/Shape_1:output:0'lstm_189/strided_slice_1/stack:output:0)lstm_189/strided_slice_1/stack_1:output:0)lstm_189/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_189/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_189/TensorArrayV2TensorListReserve-lstm_189/TensorArrayV2/element_shape:output:0!lstm_189/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_189/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_189/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_189/transpose:y:0Glstm_189/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_189/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_189/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_189/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_189/strided_slice_2StridedSlicelstm_189/transpose:y:0'lstm_189/strided_slice_2/stack:output:0)lstm_189/strided_slice_2/stack_1:output:0)lstm_189/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_189/lstm_cell_216/MatMul/ReadVariableOpReadVariableOp5lstm_189_lstm_cell_216_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_189/lstm_cell_216/MatMulMatMul!lstm_189/strided_slice_2:output:04lstm_189/lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_189/lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOp7lstm_189_lstm_cell_216_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_189/lstm_cell_216/MatMul_1MatMullstm_189/zeros:output:06lstm_189/lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_189/lstm_cell_216/addAddV2'lstm_189/lstm_cell_216/MatMul:product:0)lstm_189/lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_189/lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOp6lstm_189_lstm_cell_216_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_189/lstm_cell_216/BiasAddBiasAddlstm_189/lstm_cell_216/add:z:05lstm_189/lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_189/lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_189/lstm_cell_216/splitSplit/lstm_189/lstm_cell_216/split/split_dim:output:0'lstm_189/lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_189/lstm_cell_216/SigmoidSigmoid%lstm_189/lstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_189/lstm_cell_216/Sigmoid_1Sigmoid%lstm_189/lstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_189/lstm_cell_216/mulMul$lstm_189/lstm_cell_216/Sigmoid_1:y:0lstm_189/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_189/lstm_cell_216/ReluRelu%lstm_189/lstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_189/lstm_cell_216/mul_1Mul"lstm_189/lstm_cell_216/Sigmoid:y:0)lstm_189/lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_189/lstm_cell_216/add_1AddV2lstm_189/lstm_cell_216/mul:z:0 lstm_189/lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_189/lstm_cell_216/Sigmoid_2Sigmoid%lstm_189/lstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_189/lstm_cell_216/Relu_1Relu lstm_189/lstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_189/lstm_cell_216/mul_2Mul$lstm_189/lstm_cell_216/Sigmoid_2:y:0+lstm_189/lstm_cell_216/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_189/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_189/TensorArrayV2_1TensorListReserve/lstm_189/TensorArrayV2_1/element_shape:output:0!lstm_189/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_189/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_189/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_189/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_189/whileWhile$lstm_189/while/loop_counter:output:0*lstm_189/while/maximum_iterations:output:0lstm_189/time:output:0!lstm_189/TensorArrayV2_1:handle:0lstm_189/zeros:output:0lstm_189/zeros_1:output:0!lstm_189/strided_slice_1:output:0@lstm_189/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_189_lstm_cell_216_matmul_readvariableop_resource7lstm_189_lstm_cell_216_matmul_1_readvariableop_resource6lstm_189_lstm_cell_216_biasadd_readvariableop_resource*
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
lstm_189_while_body_1321850*'
condR
lstm_189_while_cond_1321849*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_189/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_189/TensorArrayV2Stack/TensorListStackTensorListStacklstm_189/while:output:3Blstm_189/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_189/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_189/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_189/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_189/strided_slice_3StridedSlice4lstm_189/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_189/strided_slice_3/stack:output:0)lstm_189/strided_slice_3/stack_1:output:0)lstm_189/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_189/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_189/transpose_1	Transpose4lstm_189/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_189/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_189/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_190/ShapeShapelstm_189/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_190/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_190/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_190/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_190/strided_sliceStridedSlicelstm_190/Shape:output:0%lstm_190/strided_slice/stack:output:0'lstm_190/strided_slice/stack_1:output:0'lstm_190/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_190/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_190/zeros/packedPacklstm_190/strided_slice:output:0 lstm_190/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_190/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_190/zerosFilllstm_190/zeros/packed:output:0lstm_190/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_190/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_190/zeros_1/packedPacklstm_190/strided_slice:output:0"lstm_190/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_190/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_190/zeros_1Fill lstm_190/zeros_1/packed:output:0lstm_190/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_190/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_190/transpose	Transposelstm_189/transpose_1:y:0 lstm_190/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_190/Shape_1Shapelstm_190/transpose:y:0*
T0*
_output_shapes
:h
lstm_190/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_190/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_190/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_190/strided_slice_1StridedSlicelstm_190/Shape_1:output:0'lstm_190/strided_slice_1/stack:output:0)lstm_190/strided_slice_1/stack_1:output:0)lstm_190/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_190/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_190/TensorArrayV2TensorListReserve-lstm_190/TensorArrayV2/element_shape:output:0!lstm_190/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_190/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_190/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_190/transpose:y:0Glstm_190/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_190/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_190/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_190/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_190/strided_slice_2StridedSlicelstm_190/transpose:y:0'lstm_190/strided_slice_2/stack:output:0)lstm_190/strided_slice_2/stack_1:output:0)lstm_190/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_190/lstm_cell_217/MatMul/ReadVariableOpReadVariableOp5lstm_190_lstm_cell_217_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_190/lstm_cell_217/MatMulMatMul!lstm_190/strided_slice_2:output:04lstm_190/lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_190/lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOp7lstm_190_lstm_cell_217_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_190/lstm_cell_217/MatMul_1MatMullstm_190/zeros:output:06lstm_190/lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_190/lstm_cell_217/addAddV2'lstm_190/lstm_cell_217/MatMul:product:0)lstm_190/lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_190/lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOp6lstm_190_lstm_cell_217_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_190/lstm_cell_217/BiasAddBiasAddlstm_190/lstm_cell_217/add:z:05lstm_190/lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_190/lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_190/lstm_cell_217/splitSplit/lstm_190/lstm_cell_217/split/split_dim:output:0'lstm_190/lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_190/lstm_cell_217/SigmoidSigmoid%lstm_190/lstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_190/lstm_cell_217/Sigmoid_1Sigmoid%lstm_190/lstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_190/lstm_cell_217/mulMul$lstm_190/lstm_cell_217/Sigmoid_1:y:0lstm_190/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_190/lstm_cell_217/ReluRelu%lstm_190/lstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_190/lstm_cell_217/mul_1Mul"lstm_190/lstm_cell_217/Sigmoid:y:0)lstm_190/lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_190/lstm_cell_217/add_1AddV2lstm_190/lstm_cell_217/mul:z:0 lstm_190/lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_190/lstm_cell_217/Sigmoid_2Sigmoid%lstm_190/lstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_190/lstm_cell_217/Relu_1Relu lstm_190/lstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_190/lstm_cell_217/mul_2Mul$lstm_190/lstm_cell_217/Sigmoid_2:y:0+lstm_190/lstm_cell_217/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_190/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_190/TensorArrayV2_1TensorListReserve/lstm_190/TensorArrayV2_1/element_shape:output:0!lstm_190/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_190/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_190/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_190/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_190/whileWhile$lstm_190/while/loop_counter:output:0*lstm_190/while/maximum_iterations:output:0lstm_190/time:output:0!lstm_190/TensorArrayV2_1:handle:0lstm_190/zeros:output:0lstm_190/zeros_1:output:0!lstm_190/strided_slice_1:output:0@lstm_190/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_190_lstm_cell_217_matmul_readvariableop_resource7lstm_190_lstm_cell_217_matmul_1_readvariableop_resource6lstm_190_lstm_cell_217_biasadd_readvariableop_resource*
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
lstm_190_while_body_1321989*'
condR
lstm_190_while_cond_1321988*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_190/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_190/TensorArrayV2Stack/TensorListStackTensorListStacklstm_190/while:output:3Blstm_190/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_190/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_190/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_190/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_190/strided_slice_3StridedSlice4lstm_190/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_190/strided_slice_3/stack:output:0)lstm_190/strided_slice_3/stack_1:output:0)lstm_190/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_190/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_190/transpose_1	Transpose4lstm_190/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_190/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_190/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_191/ShapeShapelstm_190/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_191/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_191/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_191/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_191/strided_sliceStridedSlicelstm_191/Shape:output:0%lstm_191/strided_slice/stack:output:0'lstm_191/strided_slice/stack_1:output:0'lstm_191/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_191/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_191/zeros/packedPacklstm_191/strided_slice:output:0 lstm_191/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_191/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_191/zerosFilllstm_191/zeros/packed:output:0lstm_191/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_191/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_191/zeros_1/packedPacklstm_191/strided_slice:output:0"lstm_191/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_191/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_191/zeros_1Fill lstm_191/zeros_1/packed:output:0lstm_191/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_191/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_191/transpose	Transposelstm_190/transpose_1:y:0 lstm_191/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_191/Shape_1Shapelstm_191/transpose:y:0*
T0*
_output_shapes
:h
lstm_191/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_191/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_191/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_191/strided_slice_1StridedSlicelstm_191/Shape_1:output:0'lstm_191/strided_slice_1/stack:output:0)lstm_191/strided_slice_1/stack_1:output:0)lstm_191/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_191/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_191/TensorArrayV2TensorListReserve-lstm_191/TensorArrayV2/element_shape:output:0!lstm_191/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_191/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_191/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_191/transpose:y:0Glstm_191/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_191/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_191/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_191/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_191/strided_slice_2StridedSlicelstm_191/transpose:y:0'lstm_191/strided_slice_2/stack:output:0)lstm_191/strided_slice_2/stack_1:output:0)lstm_191/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_191/lstm_cell_218/MatMul/ReadVariableOpReadVariableOp5lstm_191_lstm_cell_218_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_191/lstm_cell_218/MatMulMatMul!lstm_191/strided_slice_2:output:04lstm_191/lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_191/lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOp7lstm_191_lstm_cell_218_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_191/lstm_cell_218/MatMul_1MatMullstm_191/zeros:output:06lstm_191/lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_191/lstm_cell_218/addAddV2'lstm_191/lstm_cell_218/MatMul:product:0)lstm_191/lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_191/lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOp6lstm_191_lstm_cell_218_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_191/lstm_cell_218/BiasAddBiasAddlstm_191/lstm_cell_218/add:z:05lstm_191/lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_191/lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_191/lstm_cell_218/splitSplit/lstm_191/lstm_cell_218/split/split_dim:output:0'lstm_191/lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_191/lstm_cell_218/SigmoidSigmoid%lstm_191/lstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_191/lstm_cell_218/Sigmoid_1Sigmoid%lstm_191/lstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_191/lstm_cell_218/mulMul$lstm_191/lstm_cell_218/Sigmoid_1:y:0lstm_191/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_191/lstm_cell_218/ReluRelu%lstm_191/lstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_191/lstm_cell_218/mul_1Mul"lstm_191/lstm_cell_218/Sigmoid:y:0)lstm_191/lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_191/lstm_cell_218/add_1AddV2lstm_191/lstm_cell_218/mul:z:0 lstm_191/lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_191/lstm_cell_218/Sigmoid_2Sigmoid%lstm_191/lstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_191/lstm_cell_218/Relu_1Relu lstm_191/lstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_191/lstm_cell_218/mul_2Mul$lstm_191/lstm_cell_218/Sigmoid_2:y:0+lstm_191/lstm_cell_218/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_191/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_191/TensorArrayV2_1TensorListReserve/lstm_191/TensorArrayV2_1/element_shape:output:0!lstm_191/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_191/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_191/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_191/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_191/whileWhile$lstm_191/while/loop_counter:output:0*lstm_191/while/maximum_iterations:output:0lstm_191/time:output:0!lstm_191/TensorArrayV2_1:handle:0lstm_191/zeros:output:0lstm_191/zeros_1:output:0!lstm_191/strided_slice_1:output:0@lstm_191/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_191_lstm_cell_218_matmul_readvariableop_resource7lstm_191_lstm_cell_218_matmul_1_readvariableop_resource6lstm_191_lstm_cell_218_biasadd_readvariableop_resource*
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
lstm_191_while_body_1322128*'
condR
lstm_191_while_cond_1322127*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_191/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_191/TensorArrayV2Stack/TensorListStackTensorListStacklstm_191/while:output:3Blstm_191/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_191/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_191/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_191/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_191/strided_slice_3StridedSlice4lstm_191/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_191/strided_slice_3/stack:output:0)lstm_191/strided_slice_3/stack_1:output:0)lstm_191/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_191/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_191/transpose_1	Transpose4lstm_191/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_191/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_191/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_63/MatMul/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_63/MatMulMatMul!lstm_191/strided_slice_3:output:0&dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_63/BiasAdd/ReadVariableOpReadVariableOp(dense_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_63/BiasAddBiasAdddense_63/MatMul:product:0'dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_63/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_63/BiasAdd/ReadVariableOp^dense_63/MatMul/ReadVariableOp.^lstm_189/lstm_cell_216/BiasAdd/ReadVariableOp-^lstm_189/lstm_cell_216/MatMul/ReadVariableOp/^lstm_189/lstm_cell_216/MatMul_1/ReadVariableOp^lstm_189/while.^lstm_190/lstm_cell_217/BiasAdd/ReadVariableOp-^lstm_190/lstm_cell_217/MatMul/ReadVariableOp/^lstm_190/lstm_cell_217/MatMul_1/ReadVariableOp^lstm_190/while.^lstm_191/lstm_cell_218/BiasAdd/ReadVariableOp-^lstm_191/lstm_cell_218/MatMul/ReadVariableOp/^lstm_191/lstm_cell_218/MatMul_1/ReadVariableOp^lstm_191/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_63/BiasAdd/ReadVariableOpdense_63/BiasAdd/ReadVariableOp2@
dense_63/MatMul/ReadVariableOpdense_63/MatMul/ReadVariableOp2^
-lstm_189/lstm_cell_216/BiasAdd/ReadVariableOp-lstm_189/lstm_cell_216/BiasAdd/ReadVariableOp2\
,lstm_189/lstm_cell_216/MatMul/ReadVariableOp,lstm_189/lstm_cell_216/MatMul/ReadVariableOp2`
.lstm_189/lstm_cell_216/MatMul_1/ReadVariableOp.lstm_189/lstm_cell_216/MatMul_1/ReadVariableOp2 
lstm_189/whilelstm_189/while2^
-lstm_190/lstm_cell_217/BiasAdd/ReadVariableOp-lstm_190/lstm_cell_217/BiasAdd/ReadVariableOp2\
,lstm_190/lstm_cell_217/MatMul/ReadVariableOp,lstm_190/lstm_cell_217/MatMul/ReadVariableOp2`
.lstm_190/lstm_cell_217/MatMul_1/ReadVariableOp.lstm_190/lstm_cell_217/MatMul_1/ReadVariableOp2 
lstm_190/whilelstm_190/while2^
-lstm_191/lstm_cell_218/BiasAdd/ReadVariableOp-lstm_191/lstm_cell_218/BiasAdd/ReadVariableOp2\
,lstm_191/lstm_cell_218/MatMul/ReadVariableOp,lstm_191/lstm_cell_218/MatMul/ReadVariableOp2`
.lstm_191/lstm_cell_218/MatMul_1/ReadVariableOp.lstm_191/lstm_cell_218/MatMul_1/ReadVariableOp2 
lstm_191/whilelstm_191/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1322606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1322606___redundant_placeholder05
1while_while_cond_1322606___redundant_placeholder15
1while_while_cond_1322606___redundant_placeholder25
1while_while_cond_1322606___redundant_placeholder3
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

lstm_190_while_body_1321562.
*lstm_190_while_lstm_190_while_loop_counter4
0lstm_190_while_lstm_190_while_maximum_iterations
lstm_190_while_placeholder 
lstm_190_while_placeholder_1 
lstm_190_while_placeholder_2 
lstm_190_while_placeholder_3-
)lstm_190_while_lstm_190_strided_slice_1_0i
elstm_190_while_tensorarrayv2read_tensorlistgetitem_lstm_190_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_190_while_lstm_cell_217_matmul_readvariableop_resource_0:	d?R
?lstm_190_while_lstm_cell_217_matmul_1_readvariableop_resource_0:	2?M
>lstm_190_while_lstm_cell_217_biasadd_readvariableop_resource_0:	?
lstm_190_while_identity
lstm_190_while_identity_1
lstm_190_while_identity_2
lstm_190_while_identity_3
lstm_190_while_identity_4
lstm_190_while_identity_5+
'lstm_190_while_lstm_190_strided_slice_1g
clstm_190_while_tensorarrayv2read_tensorlistgetitem_lstm_190_tensorarrayunstack_tensorlistfromtensorN
;lstm_190_while_lstm_cell_217_matmul_readvariableop_resource:	d?P
=lstm_190_while_lstm_cell_217_matmul_1_readvariableop_resource:	2?K
<lstm_190_while_lstm_cell_217_biasadd_readvariableop_resource:	???3lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOp?2lstm_190/while/lstm_cell_217/MatMul/ReadVariableOp?4lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOp?
@lstm_190/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_190/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_190_while_tensorarrayv2read_tensorlistgetitem_lstm_190_tensorarrayunstack_tensorlistfromtensor_0lstm_190_while_placeholderIlstm_190/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_190/while/lstm_cell_217/MatMul/ReadVariableOpReadVariableOp=lstm_190_while_lstm_cell_217_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_190/while/lstm_cell_217/MatMulMatMul9lstm_190/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_190/while/lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOp?lstm_190_while_lstm_cell_217_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_190/while/lstm_cell_217/MatMul_1MatMullstm_190_while_placeholder_2<lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_190/while/lstm_cell_217/addAddV2-lstm_190/while/lstm_cell_217/MatMul:product:0/lstm_190/while/lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOp>lstm_190_while_lstm_cell_217_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_190/while/lstm_cell_217/BiasAddBiasAdd$lstm_190/while/lstm_cell_217/add:z:0;lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_190/while/lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_190/while/lstm_cell_217/splitSplit5lstm_190/while/lstm_cell_217/split/split_dim:output:0-lstm_190/while/lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_190/while/lstm_cell_217/SigmoidSigmoid+lstm_190/while/lstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_190/while/lstm_cell_217/Sigmoid_1Sigmoid+lstm_190/while/lstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_190/while/lstm_cell_217/mulMul*lstm_190/while/lstm_cell_217/Sigmoid_1:y:0lstm_190_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_190/while/lstm_cell_217/ReluRelu+lstm_190/while/lstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_190/while/lstm_cell_217/mul_1Mul(lstm_190/while/lstm_cell_217/Sigmoid:y:0/lstm_190/while/lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_190/while/lstm_cell_217/add_1AddV2$lstm_190/while/lstm_cell_217/mul:z:0&lstm_190/while/lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_190/while/lstm_cell_217/Sigmoid_2Sigmoid+lstm_190/while/lstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_190/while/lstm_cell_217/Relu_1Relu&lstm_190/while/lstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_190/while/lstm_cell_217/mul_2Mul*lstm_190/while/lstm_cell_217/Sigmoid_2:y:01lstm_190/while/lstm_cell_217/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_190/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_190_while_placeholder_1lstm_190_while_placeholder&lstm_190/while/lstm_cell_217/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_190/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_190/while/addAddV2lstm_190_while_placeholderlstm_190/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_190/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_190/while/add_1AddV2*lstm_190_while_lstm_190_while_loop_counterlstm_190/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_190/while/IdentityIdentitylstm_190/while/add_1:z:0^lstm_190/while/NoOp*
T0*
_output_shapes
: ?
lstm_190/while/Identity_1Identity0lstm_190_while_lstm_190_while_maximum_iterations^lstm_190/while/NoOp*
T0*
_output_shapes
: t
lstm_190/while/Identity_2Identitylstm_190/while/add:z:0^lstm_190/while/NoOp*
T0*
_output_shapes
: ?
lstm_190/while/Identity_3IdentityClstm_190/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_190/while/NoOp*
T0*
_output_shapes
: ?
lstm_190/while/Identity_4Identity&lstm_190/while/lstm_cell_217/mul_2:z:0^lstm_190/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_190/while/Identity_5Identity&lstm_190/while/lstm_cell_217/add_1:z:0^lstm_190/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_190/while/NoOpNoOp4^lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOp3^lstm_190/while/lstm_cell_217/MatMul/ReadVariableOp5^lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_190_while_identity lstm_190/while/Identity:output:0"?
lstm_190_while_identity_1"lstm_190/while/Identity_1:output:0"?
lstm_190_while_identity_2"lstm_190/while/Identity_2:output:0"?
lstm_190_while_identity_3"lstm_190/while/Identity_3:output:0"?
lstm_190_while_identity_4"lstm_190/while/Identity_4:output:0"?
lstm_190_while_identity_5"lstm_190/while/Identity_5:output:0"T
'lstm_190_while_lstm_190_strided_slice_1)lstm_190_while_lstm_190_strided_slice_1_0"~
<lstm_190_while_lstm_cell_217_biasadd_readvariableop_resource>lstm_190_while_lstm_cell_217_biasadd_readvariableop_resource_0"?
=lstm_190_while_lstm_cell_217_matmul_1_readvariableop_resource?lstm_190_while_lstm_cell_217_matmul_1_readvariableop_resource_0"|
;lstm_190_while_lstm_cell_217_matmul_readvariableop_resource=lstm_190_while_lstm_cell_217_matmul_readvariableop_resource_0"?
clstm_190_while_tensorarrayv2read_tensorlistgetitem_lstm_190_tensorarrayunstack_tensorlistfromtensorelstm_190_while_tensorarrayv2read_tensorlistgetitem_lstm_190_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOp3lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOp2h
2lstm_190/while/lstm_cell_217/MatMul/ReadVariableOp2lstm_190/while/lstm_cell_217/MatMul/ReadVariableOp2l
4lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOp4lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1319481
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_217_1319505_0:	d?0
while_lstm_cell_217_1319507_0:	2?,
while_lstm_cell_217_1319509_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_217_1319505:	d?.
while_lstm_cell_217_1319507:	2?*
while_lstm_cell_217_1319509:	???+while/lstm_cell_217/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_217/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_217_1319505_0while_lstm_cell_217_1319507_0while_lstm_cell_217_1319509_0*
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
J__inference_lstm_cell_217_layer_call_and_return_conditional_losses_1319467?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_217/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_217/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_217/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_217/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_217_1319505while_lstm_cell_217_1319505_0"<
while_lstm_cell_217_1319507while_lstm_cell_217_1319507_0"<
while_lstm_cell_217_1319509while_lstm_cell_217_1319509_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_217/StatefulPartitionedCall+while/lstm_cell_217/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1322749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1322749___redundant_placeholder05
1while_while_cond_1322749___redundant_placeholder15
1while_while_cond_1322749___redundant_placeholder25
1while_while_cond_1322749___redundant_placeholder3
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
lstm_190_while_cond_1321988.
*lstm_190_while_lstm_190_while_loop_counter4
0lstm_190_while_lstm_190_while_maximum_iterations
lstm_190_while_placeholder 
lstm_190_while_placeholder_1 
lstm_190_while_placeholder_2 
lstm_190_while_placeholder_30
,lstm_190_while_less_lstm_190_strided_slice_1G
Clstm_190_while_lstm_190_while_cond_1321988___redundant_placeholder0G
Clstm_190_while_lstm_190_while_cond_1321988___redundant_placeholder1G
Clstm_190_while_lstm_190_while_cond_1321988___redundant_placeholder2G
Clstm_190_while_lstm_190_while_cond_1321988___redundant_placeholder3
lstm_190_while_identity
?
lstm_190/while/LessLesslstm_190_while_placeholder,lstm_190_while_less_lstm_190_strided_slice_1*
T0*
_output_shapes
: ]
lstm_190/while/IdentityIdentitylstm_190/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_190_while_identity lstm_190/while/Identity:output:0*(
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
while_cond_1320314
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1320314___redundant_placeholder05
1while_while_cond_1320314___redundant_placeholder15
1while_while_cond_1320314___redundant_placeholder25
1while_while_cond_1320314___redundant_placeholder3
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
/__inference_sequential_63_layer_call_fn_1321215
lstm_189_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_189_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_63_layer_call_and_return_conditional_losses_1321163o
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
_user_specified_namelstm_189_input
?	
?
E__inference_dense_63_layer_call_and_return_conditional_losses_1320567

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
*__inference_lstm_189_layer_call_fn_1322251

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
E__inference_lstm_189_layer_call_and_return_conditional_losses_1320249s
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
while_body_1320022
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_218_1320046_0:2(/
while_lstm_cell_218_1320048_0:
(+
while_lstm_cell_218_1320050_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_218_1320046:2(-
while_lstm_cell_218_1320048:
()
while_lstm_cell_218_1320050:(??+while/lstm_cell_218/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_218/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_218_1320046_0while_lstm_cell_218_1320048_0while_lstm_cell_218_1320050_0*
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
J__inference_lstm_cell_218_layer_call_and_return_conditional_losses_1319963?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_218/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_218/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_218/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_218/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_218_1320046while_lstm_cell_218_1320046_0"<
while_lstm_cell_218_1320048while_lstm_cell_218_1320048_0"<
while_lstm_cell_218_1320050while_lstm_cell_218_1320050_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_218/StatefulPartitionedCall+while/lstm_cell_218/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1322463
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1322463___redundant_placeholder05
1while_while_cond_1322463___redundant_placeholder15
1while_while_cond_1322463___redundant_placeholder25
1while_while_cond_1322463___redundant_placeholder3
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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1323637
inputs_0>
,lstm_cell_218_matmul_readvariableop_resource:2(@
.lstm_cell_218_matmul_1_readvariableop_resource:
(;
-lstm_cell_218_biasadd_readvariableop_resource:(
identity??$lstm_cell_218/BiasAdd/ReadVariableOp?#lstm_cell_218/MatMul/ReadVariableOp?%lstm_cell_218/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_218/MatMul/ReadVariableOpReadVariableOp,lstm_cell_218_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_218/MatMulMatMulstrided_slice_2:output:0+lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_218_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_218/MatMul_1MatMulzeros:output:0-lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_218/addAddV2lstm_cell_218/MatMul:product:0 lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_218_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_218/BiasAddBiasAddlstm_cell_218/add:z:0,lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_218/splitSplit&lstm_cell_218/split/split_dim:output:0lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_218/SigmoidSigmoidlstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_218/Sigmoid_1Sigmoidlstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_218/mulMullstm_cell_218/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_218/ReluRelulstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_218/mul_1Mullstm_cell_218/Sigmoid:y:0 lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_218/add_1AddV2lstm_cell_218/mul:z:0lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_218/Sigmoid_2Sigmoidlstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_218/Relu_1Relulstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_218/mul_2Mullstm_cell_218/Sigmoid_2:y:0"lstm_cell_218/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_218_matmul_readvariableop_resource.lstm_cell_218_matmul_1_readvariableop_resource-lstm_cell_218_biasadd_readvariableop_resource*
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
while_body_1323553*
condR
while_cond_1323552*K
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
NoOpNoOp%^lstm_cell_218/BiasAdd/ReadVariableOp$^lstm_cell_218/MatMul/ReadVariableOp&^lstm_cell_218/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_218/BiasAdd/ReadVariableOp$lstm_cell_218/BiasAdd/ReadVariableOp2J
#lstm_cell_218/MatMul/ReadVariableOp#lstm_cell_218/MatMul/ReadVariableOp2N
%lstm_cell_218/MatMul_1/ReadVariableOp%lstm_cell_218/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_1323079
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1323079___redundant_placeholder05
1while_while_cond_1323079___redundant_placeholder15
1while_while_cond_1323079___redundant_placeholder25
1while_while_cond_1323079___redundant_placeholder3
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
/__inference_lstm_cell_218_layer_call_fn_1324298

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
J__inference_lstm_cell_218_layer_call_and_return_conditional_losses_1319817o
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
J__inference_lstm_cell_218_layer_call_and_return_conditional_losses_1324379

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
?
?
J__inference_lstm_cell_217_layer_call_and_return_conditional_losses_1319613

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
while_body_1323080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_217_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_217_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_217_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_217_matmul_readvariableop_resource:	d?G
4while_lstm_cell_217_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_217_biasadd_readvariableop_resource:	???*while/lstm_cell_217/BiasAdd/ReadVariableOp?)while/lstm_cell_217/MatMul/ReadVariableOp?+while/lstm_cell_217/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_217/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_217_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_217/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_217_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_217/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_217/addAddV2$while/lstm_cell_217/MatMul:product:0&while/lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_217_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_217/BiasAddBiasAddwhile/lstm_cell_217/add:z:02while/lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_217/splitSplit,while/lstm_cell_217/split/split_dim:output:0$while/lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_217/SigmoidSigmoid"while/lstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_217/Sigmoid_1Sigmoid"while/lstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mulMul!while/lstm_cell_217/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_217/ReluRelu"while/lstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mul_1Mulwhile/lstm_cell_217/Sigmoid:y:0&while/lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/add_1AddV2while/lstm_cell_217/mul:z:0while/lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_217/Sigmoid_2Sigmoid"while/lstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_217/Relu_1Reluwhile/lstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mul_2Mul!while/lstm_cell_217/Sigmoid_2:y:0(while/lstm_cell_217/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_217/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_217/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_217/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_217/BiasAdd/ReadVariableOp*^while/lstm_cell_217/MatMul/ReadVariableOp,^while/lstm_cell_217/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_217_biasadd_readvariableop_resource5while_lstm_cell_217_biasadd_readvariableop_resource_0"n
4while_lstm_cell_217_matmul_1_readvariableop_resource6while_lstm_cell_217_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_217_matmul_readvariableop_resource4while_lstm_cell_217_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_217/BiasAdd/ReadVariableOp*while/lstm_cell_217/BiasAdd/ReadVariableOp2V
)while/lstm_cell_217/MatMul/ReadVariableOp)while/lstm_cell_217/MatMul/ReadVariableOp2Z
+while/lstm_cell_217/MatMul_1/ReadVariableOp+while/lstm_cell_217/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1319900

inputs'
lstm_cell_218_1319818:2('
lstm_cell_218_1319820:
(#
lstm_cell_218_1319822:(
identity??%lstm_cell_218/StatefulPartitionedCall?while;
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
%lstm_cell_218/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_218_1319818lstm_cell_218_1319820lstm_cell_218_1319822*
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
J__inference_lstm_cell_218_layer_call_and_return_conditional_losses_1319817n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_218_1319818lstm_cell_218_1319820lstm_cell_218_1319822*
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
while_body_1319831*
condR
while_cond_1319830*K
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
NoOpNoOp&^lstm_cell_218/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_218/StatefulPartitionedCall%lstm_cell_218/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_1322607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_216_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_216_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_216_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_216_matmul_readvariableop_resource:	?G
4while_lstm_cell_216_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_216_biasadd_readvariableop_resource:	???*while/lstm_cell_216/BiasAdd/ReadVariableOp?)while/lstm_cell_216/MatMul/ReadVariableOp?+while/lstm_cell_216/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_216/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_216_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_216/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_216_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_216/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_216/addAddV2$while/lstm_cell_216/MatMul:product:0&while/lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_216_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_216/BiasAddBiasAddwhile/lstm_cell_216/add:z:02while/lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_216/splitSplit,while/lstm_cell_216/split/split_dim:output:0$while/lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_216/SigmoidSigmoid"while/lstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_216/Sigmoid_1Sigmoid"while/lstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mulMul!while/lstm_cell_216/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_216/ReluRelu"while/lstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mul_1Mulwhile/lstm_cell_216/Sigmoid:y:0&while/lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/add_1AddV2while/lstm_cell_216/mul:z:0while/lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_216/Sigmoid_2Sigmoid"while/lstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_216/Relu_1Reluwhile/lstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mul_2Mul!while/lstm_cell_216/Sigmoid_2:y:0(while/lstm_cell_216/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_216/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_216/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_216/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_216/BiasAdd/ReadVariableOp*^while/lstm_cell_216/MatMul/ReadVariableOp,^while/lstm_cell_216/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_216_biasadd_readvariableop_resource5while_lstm_cell_216_biasadd_readvariableop_resource_0"n
4while_lstm_cell_216_matmul_1_readvariableop_resource6while_lstm_cell_216_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_216_matmul_readvariableop_resource4while_lstm_cell_216_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_216/BiasAdd/ReadVariableOp*while/lstm_cell_216/BiasAdd/ReadVariableOp2V
)while/lstm_cell_216/MatMul/ReadVariableOp)while/lstm_cell_216/MatMul/ReadVariableOp2Z
+while/lstm_cell_216/MatMul_1/ReadVariableOp+while/lstm_cell_216/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1319741

inputs(
lstm_cell_217_1319659:	d?(
lstm_cell_217_1319661:	2?$
lstm_cell_217_1319663:	?
identity??%lstm_cell_217/StatefulPartitionedCall?while;
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
%lstm_cell_217/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_217_1319659lstm_cell_217_1319661lstm_cell_217_1319663*
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
J__inference_lstm_cell_217_layer_call_and_return_conditional_losses_1319613n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_217_1319659lstm_cell_217_1319661lstm_cell_217_1319663*
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
while_body_1319672*
condR
while_cond_1319671*K
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
NoOpNoOp&^lstm_cell_217/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_217/StatefulPartitionedCall%lstm_cell_217/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?W
?
 __inference__traced_save_1324522
file_prefix.
*savev2_dense_63_kernel_read_readvariableop,
(savev2_dense_63_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_189_lstm_cell_189_kernel_read_readvariableopF
Bsavev2_lstm_189_lstm_cell_189_recurrent_kernel_read_readvariableop:
6savev2_lstm_189_lstm_cell_189_bias_read_readvariableop<
8savev2_lstm_190_lstm_cell_190_kernel_read_readvariableopF
Bsavev2_lstm_190_lstm_cell_190_recurrent_kernel_read_readvariableop:
6savev2_lstm_190_lstm_cell_190_bias_read_readvariableop<
8savev2_lstm_191_lstm_cell_191_kernel_read_readvariableopF
Bsavev2_lstm_191_lstm_cell_191_recurrent_kernel_read_readvariableop:
6savev2_lstm_191_lstm_cell_191_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_63_kernel_m_read_readvariableop3
/savev2_adam_dense_63_bias_m_read_readvariableopC
?savev2_adam_lstm_189_lstm_cell_189_kernel_m_read_readvariableopM
Isavev2_adam_lstm_189_lstm_cell_189_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_189_lstm_cell_189_bias_m_read_readvariableopC
?savev2_adam_lstm_190_lstm_cell_190_kernel_m_read_readvariableopM
Isavev2_adam_lstm_190_lstm_cell_190_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_190_lstm_cell_190_bias_m_read_readvariableopC
?savev2_adam_lstm_191_lstm_cell_191_kernel_m_read_readvariableopM
Isavev2_adam_lstm_191_lstm_cell_191_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_191_lstm_cell_191_bias_m_read_readvariableop5
1savev2_adam_dense_63_kernel_v_read_readvariableop3
/savev2_adam_dense_63_bias_v_read_readvariableopC
?savev2_adam_lstm_189_lstm_cell_189_kernel_v_read_readvariableopM
Isavev2_adam_lstm_189_lstm_cell_189_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_189_lstm_cell_189_bias_v_read_readvariableopC
?savev2_adam_lstm_190_lstm_cell_190_kernel_v_read_readvariableopM
Isavev2_adam_lstm_190_lstm_cell_190_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_190_lstm_cell_190_bias_v_read_readvariableopC
?savev2_adam_lstm_191_lstm_cell_191_kernel_v_read_readvariableopM
Isavev2_adam_lstm_191_lstm_cell_191_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_191_lstm_cell_191_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_63_kernel_read_readvariableop(savev2_dense_63_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_189_lstm_cell_189_kernel_read_readvariableopBsavev2_lstm_189_lstm_cell_189_recurrent_kernel_read_readvariableop6savev2_lstm_189_lstm_cell_189_bias_read_readvariableop8savev2_lstm_190_lstm_cell_190_kernel_read_readvariableopBsavev2_lstm_190_lstm_cell_190_recurrent_kernel_read_readvariableop6savev2_lstm_190_lstm_cell_190_bias_read_readvariableop8savev2_lstm_191_lstm_cell_191_kernel_read_readvariableopBsavev2_lstm_191_lstm_cell_191_recurrent_kernel_read_readvariableop6savev2_lstm_191_lstm_cell_191_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_63_kernel_m_read_readvariableop/savev2_adam_dense_63_bias_m_read_readvariableop?savev2_adam_lstm_189_lstm_cell_189_kernel_m_read_readvariableopIsavev2_adam_lstm_189_lstm_cell_189_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_189_lstm_cell_189_bias_m_read_readvariableop?savev2_adam_lstm_190_lstm_cell_190_kernel_m_read_readvariableopIsavev2_adam_lstm_190_lstm_cell_190_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_190_lstm_cell_190_bias_m_read_readvariableop?savev2_adam_lstm_191_lstm_cell_191_kernel_m_read_readvariableopIsavev2_adam_lstm_191_lstm_cell_191_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_191_lstm_cell_191_bias_m_read_readvariableop1savev2_adam_dense_63_kernel_v_read_readvariableop/savev2_adam_dense_63_bias_v_read_readvariableop?savev2_adam_lstm_189_lstm_cell_189_kernel_v_read_readvariableopIsavev2_adam_lstm_189_lstm_cell_189_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_189_lstm_cell_189_bias_v_read_readvariableop?savev2_adam_lstm_190_lstm_cell_190_kernel_v_read_readvariableopIsavev2_adam_lstm_190_lstm_cell_190_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_190_lstm_cell_190_bias_v_read_readvariableop?savev2_adam_lstm_191_lstm_cell_191_kernel_v_read_readvariableopIsavev2_adam_lstm_191_lstm_cell_191_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_191_lstm_cell_191_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_1320315
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_217_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_217_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_217_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_217_matmul_readvariableop_resource:	d?G
4while_lstm_cell_217_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_217_biasadd_readvariableop_resource:	???*while/lstm_cell_217/BiasAdd/ReadVariableOp?)while/lstm_cell_217/MatMul/ReadVariableOp?+while/lstm_cell_217/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_217/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_217_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_217/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_217_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_217/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_217/addAddV2$while/lstm_cell_217/MatMul:product:0&while/lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_217_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_217/BiasAddBiasAddwhile/lstm_cell_217/add:z:02while/lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_217/splitSplit,while/lstm_cell_217/split/split_dim:output:0$while/lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_217/SigmoidSigmoid"while/lstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_217/Sigmoid_1Sigmoid"while/lstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mulMul!while/lstm_cell_217/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_217/ReluRelu"while/lstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mul_1Mulwhile/lstm_cell_217/Sigmoid:y:0&while/lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/add_1AddV2while/lstm_cell_217/mul:z:0while/lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_217/Sigmoid_2Sigmoid"while/lstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_217/Relu_1Reluwhile/lstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mul_2Mul!while/lstm_cell_217/Sigmoid_2:y:0(while/lstm_cell_217/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_217/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_217/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_217/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_217/BiasAdd/ReadVariableOp*^while/lstm_cell_217/MatMul/ReadVariableOp,^while/lstm_cell_217/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_217_biasadd_readvariableop_resource5while_lstm_cell_217_biasadd_readvariableop_resource_0"n
4while_lstm_cell_217_matmul_1_readvariableop_resource6while_lstm_cell_217_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_217_matmul_readvariableop_resource4while_lstm_cell_217_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_217/BiasAdd/ReadVariableOp*while/lstm_cell_217/BiasAdd/ReadVariableOp2V
)while/lstm_cell_217/MatMul/ReadVariableOp)while/lstm_cell_217/MatMul/ReadVariableOp2Z
+while/lstm_cell_217/MatMul_1/ReadVariableOp+while/lstm_cell_217/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_189_while_body_1321850.
*lstm_189_while_lstm_189_while_loop_counter4
0lstm_189_while_lstm_189_while_maximum_iterations
lstm_189_while_placeholder 
lstm_189_while_placeholder_1 
lstm_189_while_placeholder_2 
lstm_189_while_placeholder_3-
)lstm_189_while_lstm_189_strided_slice_1_0i
elstm_189_while_tensorarrayv2read_tensorlistgetitem_lstm_189_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_189_while_lstm_cell_216_matmul_readvariableop_resource_0:	?R
?lstm_189_while_lstm_cell_216_matmul_1_readvariableop_resource_0:	d?M
>lstm_189_while_lstm_cell_216_biasadd_readvariableop_resource_0:	?
lstm_189_while_identity
lstm_189_while_identity_1
lstm_189_while_identity_2
lstm_189_while_identity_3
lstm_189_while_identity_4
lstm_189_while_identity_5+
'lstm_189_while_lstm_189_strided_slice_1g
clstm_189_while_tensorarrayv2read_tensorlistgetitem_lstm_189_tensorarrayunstack_tensorlistfromtensorN
;lstm_189_while_lstm_cell_216_matmul_readvariableop_resource:	?P
=lstm_189_while_lstm_cell_216_matmul_1_readvariableop_resource:	d?K
<lstm_189_while_lstm_cell_216_biasadd_readvariableop_resource:	???3lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOp?2lstm_189/while/lstm_cell_216/MatMul/ReadVariableOp?4lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOp?
@lstm_189/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_189/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_189_while_tensorarrayv2read_tensorlistgetitem_lstm_189_tensorarrayunstack_tensorlistfromtensor_0lstm_189_while_placeholderIlstm_189/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_189/while/lstm_cell_216/MatMul/ReadVariableOpReadVariableOp=lstm_189_while_lstm_cell_216_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_189/while/lstm_cell_216/MatMulMatMul9lstm_189/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_189/while/lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOp?lstm_189_while_lstm_cell_216_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_189/while/lstm_cell_216/MatMul_1MatMullstm_189_while_placeholder_2<lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_189/while/lstm_cell_216/addAddV2-lstm_189/while/lstm_cell_216/MatMul:product:0/lstm_189/while/lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOp>lstm_189_while_lstm_cell_216_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_189/while/lstm_cell_216/BiasAddBiasAdd$lstm_189/while/lstm_cell_216/add:z:0;lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_189/while/lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_189/while/lstm_cell_216/splitSplit5lstm_189/while/lstm_cell_216/split/split_dim:output:0-lstm_189/while/lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_189/while/lstm_cell_216/SigmoidSigmoid+lstm_189/while/lstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_189/while/lstm_cell_216/Sigmoid_1Sigmoid+lstm_189/while/lstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_189/while/lstm_cell_216/mulMul*lstm_189/while/lstm_cell_216/Sigmoid_1:y:0lstm_189_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_189/while/lstm_cell_216/ReluRelu+lstm_189/while/lstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_189/while/lstm_cell_216/mul_1Mul(lstm_189/while/lstm_cell_216/Sigmoid:y:0/lstm_189/while/lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_189/while/lstm_cell_216/add_1AddV2$lstm_189/while/lstm_cell_216/mul:z:0&lstm_189/while/lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_189/while/lstm_cell_216/Sigmoid_2Sigmoid+lstm_189/while/lstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_189/while/lstm_cell_216/Relu_1Relu&lstm_189/while/lstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_189/while/lstm_cell_216/mul_2Mul*lstm_189/while/lstm_cell_216/Sigmoid_2:y:01lstm_189/while/lstm_cell_216/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_189/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_189_while_placeholder_1lstm_189_while_placeholder&lstm_189/while/lstm_cell_216/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_189/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_189/while/addAddV2lstm_189_while_placeholderlstm_189/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_189/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_189/while/add_1AddV2*lstm_189_while_lstm_189_while_loop_counterlstm_189/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_189/while/IdentityIdentitylstm_189/while/add_1:z:0^lstm_189/while/NoOp*
T0*
_output_shapes
: ?
lstm_189/while/Identity_1Identity0lstm_189_while_lstm_189_while_maximum_iterations^lstm_189/while/NoOp*
T0*
_output_shapes
: t
lstm_189/while/Identity_2Identitylstm_189/while/add:z:0^lstm_189/while/NoOp*
T0*
_output_shapes
: ?
lstm_189/while/Identity_3IdentityClstm_189/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_189/while/NoOp*
T0*
_output_shapes
: ?
lstm_189/while/Identity_4Identity&lstm_189/while/lstm_cell_216/mul_2:z:0^lstm_189/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_189/while/Identity_5Identity&lstm_189/while/lstm_cell_216/add_1:z:0^lstm_189/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_189/while/NoOpNoOp4^lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOp3^lstm_189/while/lstm_cell_216/MatMul/ReadVariableOp5^lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_189_while_identity lstm_189/while/Identity:output:0"?
lstm_189_while_identity_1"lstm_189/while/Identity_1:output:0"?
lstm_189_while_identity_2"lstm_189/while/Identity_2:output:0"?
lstm_189_while_identity_3"lstm_189/while/Identity_3:output:0"?
lstm_189_while_identity_4"lstm_189/while/Identity_4:output:0"?
lstm_189_while_identity_5"lstm_189/while/Identity_5:output:0"T
'lstm_189_while_lstm_189_strided_slice_1)lstm_189_while_lstm_189_strided_slice_1_0"~
<lstm_189_while_lstm_cell_216_biasadd_readvariableop_resource>lstm_189_while_lstm_cell_216_biasadd_readvariableop_resource_0"?
=lstm_189_while_lstm_cell_216_matmul_1_readvariableop_resource?lstm_189_while_lstm_cell_216_matmul_1_readvariableop_resource_0"|
;lstm_189_while_lstm_cell_216_matmul_readvariableop_resource=lstm_189_while_lstm_cell_216_matmul_readvariableop_resource_0"?
clstm_189_while_tensorarrayv2read_tensorlistgetitem_lstm_189_tensorarrayunstack_tensorlistfromtensorelstm_189_while_tensorarrayv2read_tensorlistgetitem_lstm_189_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOp3lstm_189/while/lstm_cell_216/BiasAdd/ReadVariableOp2h
2lstm_189/while/lstm_cell_216/MatMul/ReadVariableOp2lstm_189/while/lstm_cell_216/MatMul/ReadVariableOp2l
4lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOp4lstm_189/while/lstm_cell_216/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_190_while_cond_1321561.
*lstm_190_while_lstm_190_while_loop_counter4
0lstm_190_while_lstm_190_while_maximum_iterations
lstm_190_while_placeholder 
lstm_190_while_placeholder_1 
lstm_190_while_placeholder_2 
lstm_190_while_placeholder_30
,lstm_190_while_less_lstm_190_strided_slice_1G
Clstm_190_while_lstm_190_while_cond_1321561___redundant_placeholder0G
Clstm_190_while_lstm_190_while_cond_1321561___redundant_placeholder1G
Clstm_190_while_lstm_190_while_cond_1321561___redundant_placeholder2G
Clstm_190_while_lstm_190_while_cond_1321561___redundant_placeholder3
lstm_190_while_identity
?
lstm_190/while/LessLesslstm_190_while_placeholder,lstm_190_while_less_lstm_190_strided_slice_1*
T0*
_output_shapes
: ]
lstm_190/while/IdentityIdentitylstm_190/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_190_while_identity lstm_190/while/Identity:output:0*(
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
while_body_1319322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_216_1319346_0:	?0
while_lstm_cell_216_1319348_0:	d?,
while_lstm_cell_216_1319350_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_216_1319346:	?.
while_lstm_cell_216_1319348:	d?*
while_lstm_cell_216_1319350:	???+while/lstm_cell_216/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_216/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_216_1319346_0while_lstm_cell_216_1319348_0while_lstm_cell_216_1319350_0*
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
J__inference_lstm_cell_216_layer_call_and_return_conditional_losses_1319263?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_216/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_216/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_216/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_216/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_216_1319346while_lstm_cell_216_1319346_0"<
while_lstm_cell_216_1319348while_lstm_cell_216_1319348_0"<
while_lstm_cell_216_1319350while_lstm_cell_216_1319350_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_216/StatefulPartitionedCall+while/lstm_cell_216/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_190_layer_call_fn_1322856
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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1319741|
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
??
?
J__inference_sequential_63_layer_call_and_return_conditional_losses_1321791

inputsH
5lstm_189_lstm_cell_216_matmul_readvariableop_resource:	?J
7lstm_189_lstm_cell_216_matmul_1_readvariableop_resource:	d?E
6lstm_189_lstm_cell_216_biasadd_readvariableop_resource:	?H
5lstm_190_lstm_cell_217_matmul_readvariableop_resource:	d?J
7lstm_190_lstm_cell_217_matmul_1_readvariableop_resource:	2?E
6lstm_190_lstm_cell_217_biasadd_readvariableop_resource:	?G
5lstm_191_lstm_cell_218_matmul_readvariableop_resource:2(I
7lstm_191_lstm_cell_218_matmul_1_readvariableop_resource:
(D
6lstm_191_lstm_cell_218_biasadd_readvariableop_resource:(9
'dense_63_matmul_readvariableop_resource:
6
(dense_63_biasadd_readvariableop_resource:
identity??dense_63/BiasAdd/ReadVariableOp?dense_63/MatMul/ReadVariableOp?-lstm_189/lstm_cell_216/BiasAdd/ReadVariableOp?,lstm_189/lstm_cell_216/MatMul/ReadVariableOp?.lstm_189/lstm_cell_216/MatMul_1/ReadVariableOp?lstm_189/while?-lstm_190/lstm_cell_217/BiasAdd/ReadVariableOp?,lstm_190/lstm_cell_217/MatMul/ReadVariableOp?.lstm_190/lstm_cell_217/MatMul_1/ReadVariableOp?lstm_190/while?-lstm_191/lstm_cell_218/BiasAdd/ReadVariableOp?,lstm_191/lstm_cell_218/MatMul/ReadVariableOp?.lstm_191/lstm_cell_218/MatMul_1/ReadVariableOp?lstm_191/whileD
lstm_189/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_189/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_189/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_189/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_189/strided_sliceStridedSlicelstm_189/Shape:output:0%lstm_189/strided_slice/stack:output:0'lstm_189/strided_slice/stack_1:output:0'lstm_189/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_189/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_189/zeros/packedPacklstm_189/strided_slice:output:0 lstm_189/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_189/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_189/zerosFilllstm_189/zeros/packed:output:0lstm_189/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_189/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_189/zeros_1/packedPacklstm_189/strided_slice:output:0"lstm_189/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_189/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_189/zeros_1Fill lstm_189/zeros_1/packed:output:0lstm_189/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_189/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_189/transpose	Transposeinputs lstm_189/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_189/Shape_1Shapelstm_189/transpose:y:0*
T0*
_output_shapes
:h
lstm_189/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_189/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_189/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_189/strided_slice_1StridedSlicelstm_189/Shape_1:output:0'lstm_189/strided_slice_1/stack:output:0)lstm_189/strided_slice_1/stack_1:output:0)lstm_189/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_189/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_189/TensorArrayV2TensorListReserve-lstm_189/TensorArrayV2/element_shape:output:0!lstm_189/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_189/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_189/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_189/transpose:y:0Glstm_189/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_189/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_189/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_189/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_189/strided_slice_2StridedSlicelstm_189/transpose:y:0'lstm_189/strided_slice_2/stack:output:0)lstm_189/strided_slice_2/stack_1:output:0)lstm_189/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_189/lstm_cell_216/MatMul/ReadVariableOpReadVariableOp5lstm_189_lstm_cell_216_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_189/lstm_cell_216/MatMulMatMul!lstm_189/strided_slice_2:output:04lstm_189/lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_189/lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOp7lstm_189_lstm_cell_216_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_189/lstm_cell_216/MatMul_1MatMullstm_189/zeros:output:06lstm_189/lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_189/lstm_cell_216/addAddV2'lstm_189/lstm_cell_216/MatMul:product:0)lstm_189/lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_189/lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOp6lstm_189_lstm_cell_216_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_189/lstm_cell_216/BiasAddBiasAddlstm_189/lstm_cell_216/add:z:05lstm_189/lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_189/lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_189/lstm_cell_216/splitSplit/lstm_189/lstm_cell_216/split/split_dim:output:0'lstm_189/lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_189/lstm_cell_216/SigmoidSigmoid%lstm_189/lstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_189/lstm_cell_216/Sigmoid_1Sigmoid%lstm_189/lstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_189/lstm_cell_216/mulMul$lstm_189/lstm_cell_216/Sigmoid_1:y:0lstm_189/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_189/lstm_cell_216/ReluRelu%lstm_189/lstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_189/lstm_cell_216/mul_1Mul"lstm_189/lstm_cell_216/Sigmoid:y:0)lstm_189/lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_189/lstm_cell_216/add_1AddV2lstm_189/lstm_cell_216/mul:z:0 lstm_189/lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_189/lstm_cell_216/Sigmoid_2Sigmoid%lstm_189/lstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_189/lstm_cell_216/Relu_1Relu lstm_189/lstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_189/lstm_cell_216/mul_2Mul$lstm_189/lstm_cell_216/Sigmoid_2:y:0+lstm_189/lstm_cell_216/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_189/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_189/TensorArrayV2_1TensorListReserve/lstm_189/TensorArrayV2_1/element_shape:output:0!lstm_189/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_189/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_189/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_189/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_189/whileWhile$lstm_189/while/loop_counter:output:0*lstm_189/while/maximum_iterations:output:0lstm_189/time:output:0!lstm_189/TensorArrayV2_1:handle:0lstm_189/zeros:output:0lstm_189/zeros_1:output:0!lstm_189/strided_slice_1:output:0@lstm_189/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_189_lstm_cell_216_matmul_readvariableop_resource7lstm_189_lstm_cell_216_matmul_1_readvariableop_resource6lstm_189_lstm_cell_216_biasadd_readvariableop_resource*
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
lstm_189_while_body_1321423*'
condR
lstm_189_while_cond_1321422*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_189/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_189/TensorArrayV2Stack/TensorListStackTensorListStacklstm_189/while:output:3Blstm_189/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_189/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_189/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_189/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_189/strided_slice_3StridedSlice4lstm_189/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_189/strided_slice_3/stack:output:0)lstm_189/strided_slice_3/stack_1:output:0)lstm_189/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_189/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_189/transpose_1	Transpose4lstm_189/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_189/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_189/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_190/ShapeShapelstm_189/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_190/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_190/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_190/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_190/strided_sliceStridedSlicelstm_190/Shape:output:0%lstm_190/strided_slice/stack:output:0'lstm_190/strided_slice/stack_1:output:0'lstm_190/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_190/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_190/zeros/packedPacklstm_190/strided_slice:output:0 lstm_190/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_190/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_190/zerosFilllstm_190/zeros/packed:output:0lstm_190/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_190/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_190/zeros_1/packedPacklstm_190/strided_slice:output:0"lstm_190/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_190/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_190/zeros_1Fill lstm_190/zeros_1/packed:output:0lstm_190/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_190/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_190/transpose	Transposelstm_189/transpose_1:y:0 lstm_190/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_190/Shape_1Shapelstm_190/transpose:y:0*
T0*
_output_shapes
:h
lstm_190/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_190/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_190/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_190/strided_slice_1StridedSlicelstm_190/Shape_1:output:0'lstm_190/strided_slice_1/stack:output:0)lstm_190/strided_slice_1/stack_1:output:0)lstm_190/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_190/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_190/TensorArrayV2TensorListReserve-lstm_190/TensorArrayV2/element_shape:output:0!lstm_190/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_190/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_190/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_190/transpose:y:0Glstm_190/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_190/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_190/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_190/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_190/strided_slice_2StridedSlicelstm_190/transpose:y:0'lstm_190/strided_slice_2/stack:output:0)lstm_190/strided_slice_2/stack_1:output:0)lstm_190/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_190/lstm_cell_217/MatMul/ReadVariableOpReadVariableOp5lstm_190_lstm_cell_217_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_190/lstm_cell_217/MatMulMatMul!lstm_190/strided_slice_2:output:04lstm_190/lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_190/lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOp7lstm_190_lstm_cell_217_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_190/lstm_cell_217/MatMul_1MatMullstm_190/zeros:output:06lstm_190/lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_190/lstm_cell_217/addAddV2'lstm_190/lstm_cell_217/MatMul:product:0)lstm_190/lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_190/lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOp6lstm_190_lstm_cell_217_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_190/lstm_cell_217/BiasAddBiasAddlstm_190/lstm_cell_217/add:z:05lstm_190/lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_190/lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_190/lstm_cell_217/splitSplit/lstm_190/lstm_cell_217/split/split_dim:output:0'lstm_190/lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_190/lstm_cell_217/SigmoidSigmoid%lstm_190/lstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_190/lstm_cell_217/Sigmoid_1Sigmoid%lstm_190/lstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_190/lstm_cell_217/mulMul$lstm_190/lstm_cell_217/Sigmoid_1:y:0lstm_190/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_190/lstm_cell_217/ReluRelu%lstm_190/lstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_190/lstm_cell_217/mul_1Mul"lstm_190/lstm_cell_217/Sigmoid:y:0)lstm_190/lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_190/lstm_cell_217/add_1AddV2lstm_190/lstm_cell_217/mul:z:0 lstm_190/lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_190/lstm_cell_217/Sigmoid_2Sigmoid%lstm_190/lstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_190/lstm_cell_217/Relu_1Relu lstm_190/lstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_190/lstm_cell_217/mul_2Mul$lstm_190/lstm_cell_217/Sigmoid_2:y:0+lstm_190/lstm_cell_217/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_190/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_190/TensorArrayV2_1TensorListReserve/lstm_190/TensorArrayV2_1/element_shape:output:0!lstm_190/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_190/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_190/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_190/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_190/whileWhile$lstm_190/while/loop_counter:output:0*lstm_190/while/maximum_iterations:output:0lstm_190/time:output:0!lstm_190/TensorArrayV2_1:handle:0lstm_190/zeros:output:0lstm_190/zeros_1:output:0!lstm_190/strided_slice_1:output:0@lstm_190/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_190_lstm_cell_217_matmul_readvariableop_resource7lstm_190_lstm_cell_217_matmul_1_readvariableop_resource6lstm_190_lstm_cell_217_biasadd_readvariableop_resource*
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
lstm_190_while_body_1321562*'
condR
lstm_190_while_cond_1321561*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_190/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_190/TensorArrayV2Stack/TensorListStackTensorListStacklstm_190/while:output:3Blstm_190/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_190/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_190/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_190/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_190/strided_slice_3StridedSlice4lstm_190/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_190/strided_slice_3/stack:output:0)lstm_190/strided_slice_3/stack_1:output:0)lstm_190/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_190/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_190/transpose_1	Transpose4lstm_190/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_190/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_190/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_191/ShapeShapelstm_190/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_191/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_191/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_191/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_191/strided_sliceStridedSlicelstm_191/Shape:output:0%lstm_191/strided_slice/stack:output:0'lstm_191/strided_slice/stack_1:output:0'lstm_191/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_191/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_191/zeros/packedPacklstm_191/strided_slice:output:0 lstm_191/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_191/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_191/zerosFilllstm_191/zeros/packed:output:0lstm_191/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_191/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_191/zeros_1/packedPacklstm_191/strided_slice:output:0"lstm_191/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_191/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_191/zeros_1Fill lstm_191/zeros_1/packed:output:0lstm_191/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_191/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_191/transpose	Transposelstm_190/transpose_1:y:0 lstm_191/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_191/Shape_1Shapelstm_191/transpose:y:0*
T0*
_output_shapes
:h
lstm_191/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_191/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_191/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_191/strided_slice_1StridedSlicelstm_191/Shape_1:output:0'lstm_191/strided_slice_1/stack:output:0)lstm_191/strided_slice_1/stack_1:output:0)lstm_191/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_191/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_191/TensorArrayV2TensorListReserve-lstm_191/TensorArrayV2/element_shape:output:0!lstm_191/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_191/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_191/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_191/transpose:y:0Glstm_191/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_191/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_191/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_191/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_191/strided_slice_2StridedSlicelstm_191/transpose:y:0'lstm_191/strided_slice_2/stack:output:0)lstm_191/strided_slice_2/stack_1:output:0)lstm_191/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_191/lstm_cell_218/MatMul/ReadVariableOpReadVariableOp5lstm_191_lstm_cell_218_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_191/lstm_cell_218/MatMulMatMul!lstm_191/strided_slice_2:output:04lstm_191/lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_191/lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOp7lstm_191_lstm_cell_218_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_191/lstm_cell_218/MatMul_1MatMullstm_191/zeros:output:06lstm_191/lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_191/lstm_cell_218/addAddV2'lstm_191/lstm_cell_218/MatMul:product:0)lstm_191/lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_191/lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOp6lstm_191_lstm_cell_218_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_191/lstm_cell_218/BiasAddBiasAddlstm_191/lstm_cell_218/add:z:05lstm_191/lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_191/lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_191/lstm_cell_218/splitSplit/lstm_191/lstm_cell_218/split/split_dim:output:0'lstm_191/lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_191/lstm_cell_218/SigmoidSigmoid%lstm_191/lstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_191/lstm_cell_218/Sigmoid_1Sigmoid%lstm_191/lstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_191/lstm_cell_218/mulMul$lstm_191/lstm_cell_218/Sigmoid_1:y:0lstm_191/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_191/lstm_cell_218/ReluRelu%lstm_191/lstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_191/lstm_cell_218/mul_1Mul"lstm_191/lstm_cell_218/Sigmoid:y:0)lstm_191/lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_191/lstm_cell_218/add_1AddV2lstm_191/lstm_cell_218/mul:z:0 lstm_191/lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_191/lstm_cell_218/Sigmoid_2Sigmoid%lstm_191/lstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_191/lstm_cell_218/Relu_1Relu lstm_191/lstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_191/lstm_cell_218/mul_2Mul$lstm_191/lstm_cell_218/Sigmoid_2:y:0+lstm_191/lstm_cell_218/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_191/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_191/TensorArrayV2_1TensorListReserve/lstm_191/TensorArrayV2_1/element_shape:output:0!lstm_191/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_191/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_191/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_191/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_191/whileWhile$lstm_191/while/loop_counter:output:0*lstm_191/while/maximum_iterations:output:0lstm_191/time:output:0!lstm_191/TensorArrayV2_1:handle:0lstm_191/zeros:output:0lstm_191/zeros_1:output:0!lstm_191/strided_slice_1:output:0@lstm_191/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_191_lstm_cell_218_matmul_readvariableop_resource7lstm_191_lstm_cell_218_matmul_1_readvariableop_resource6lstm_191_lstm_cell_218_biasadd_readvariableop_resource*
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
lstm_191_while_body_1321701*'
condR
lstm_191_while_cond_1321700*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_191/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_191/TensorArrayV2Stack/TensorListStackTensorListStacklstm_191/while:output:3Blstm_191/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_191/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_191/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_191/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_191/strided_slice_3StridedSlice4lstm_191/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_191/strided_slice_3/stack:output:0)lstm_191/strided_slice_3/stack_1:output:0)lstm_191/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_191/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_191/transpose_1	Transpose4lstm_191/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_191/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_191/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_63/MatMul/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_63/MatMulMatMul!lstm_191/strided_slice_3:output:0&dense_63/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_63/BiasAdd/ReadVariableOpReadVariableOp(dense_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_63/BiasAddBiasAdddense_63/MatMul:product:0'dense_63/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_63/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_63/BiasAdd/ReadVariableOp^dense_63/MatMul/ReadVariableOp.^lstm_189/lstm_cell_216/BiasAdd/ReadVariableOp-^lstm_189/lstm_cell_216/MatMul/ReadVariableOp/^lstm_189/lstm_cell_216/MatMul_1/ReadVariableOp^lstm_189/while.^lstm_190/lstm_cell_217/BiasAdd/ReadVariableOp-^lstm_190/lstm_cell_217/MatMul/ReadVariableOp/^lstm_190/lstm_cell_217/MatMul_1/ReadVariableOp^lstm_190/while.^lstm_191/lstm_cell_218/BiasAdd/ReadVariableOp-^lstm_191/lstm_cell_218/MatMul/ReadVariableOp/^lstm_191/lstm_cell_218/MatMul_1/ReadVariableOp^lstm_191/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_63/BiasAdd/ReadVariableOpdense_63/BiasAdd/ReadVariableOp2@
dense_63/MatMul/ReadVariableOpdense_63/MatMul/ReadVariableOp2^
-lstm_189/lstm_cell_216/BiasAdd/ReadVariableOp-lstm_189/lstm_cell_216/BiasAdd/ReadVariableOp2\
,lstm_189/lstm_cell_216/MatMul/ReadVariableOp,lstm_189/lstm_cell_216/MatMul/ReadVariableOp2`
.lstm_189/lstm_cell_216/MatMul_1/ReadVariableOp.lstm_189/lstm_cell_216/MatMul_1/ReadVariableOp2 
lstm_189/whilelstm_189/while2^
-lstm_190/lstm_cell_217/BiasAdd/ReadVariableOp-lstm_190/lstm_cell_217/BiasAdd/ReadVariableOp2\
,lstm_190/lstm_cell_217/MatMul/ReadVariableOp,lstm_190/lstm_cell_217/MatMul/ReadVariableOp2`
.lstm_190/lstm_cell_217/MatMul_1/ReadVariableOp.lstm_190/lstm_cell_217/MatMul_1/ReadVariableOp2 
lstm_190/whilelstm_190/while2^
-lstm_191/lstm_cell_218/BiasAdd/ReadVariableOp-lstm_191/lstm_cell_218/BiasAdd/ReadVariableOp2\
,lstm_191/lstm_cell_218/MatMul/ReadVariableOp,lstm_191/lstm_cell_218/MatMul/ReadVariableOp2`
.lstm_191/lstm_cell_218/MatMul_1/ReadVariableOp.lstm_191/lstm_cell_218/MatMul_1/ReadVariableOp2 
lstm_191/whilelstm_191/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_189_layer_call_and_return_conditional_losses_1322548
inputs_0?
,lstm_cell_216_matmul_readvariableop_resource:	?A
.lstm_cell_216_matmul_1_readvariableop_resource:	d?<
-lstm_cell_216_biasadd_readvariableop_resource:	?
identity??$lstm_cell_216/BiasAdd/ReadVariableOp?#lstm_cell_216/MatMul/ReadVariableOp?%lstm_cell_216/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_216/MatMul/ReadVariableOpReadVariableOp,lstm_cell_216_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_216/MatMulMatMulstrided_slice_2:output:0+lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_216_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_216/MatMul_1MatMulzeros:output:0-lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_216/addAddV2lstm_cell_216/MatMul:product:0 lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_216_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_216/BiasAddBiasAddlstm_cell_216/add:z:0,lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_216/splitSplit&lstm_cell_216/split/split_dim:output:0lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_216/SigmoidSigmoidlstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_216/Sigmoid_1Sigmoidlstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_216/mulMullstm_cell_216/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_216/ReluRelulstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_216/mul_1Mullstm_cell_216/Sigmoid:y:0 lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_216/add_1AddV2lstm_cell_216/mul:z:0lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_216/Sigmoid_2Sigmoidlstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_216/Relu_1Relulstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_216/mul_2Mullstm_cell_216/Sigmoid_2:y:0"lstm_cell_216/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_216_matmul_readvariableop_resource.lstm_cell_216_matmul_1_readvariableop_resource-lstm_cell_216_biasadd_readvariableop_resource*
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
while_body_1322464*
condR
while_cond_1322463*K
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
NoOpNoOp%^lstm_cell_216/BiasAdd/ReadVariableOp$^lstm_cell_216/MatMul/ReadVariableOp&^lstm_cell_216/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_216/BiasAdd/ReadVariableOp$lstm_cell_216/BiasAdd/ReadVariableOp2J
#lstm_cell_216/MatMul/ReadVariableOp#lstm_cell_216/MatMul/ReadVariableOp2N
%lstm_cell_216/MatMul_1/ReadVariableOp%lstm_cell_216/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_216_layer_call_and_return_conditional_losses_1324183

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
while_cond_1323222
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1323222___redundant_placeholder05
1while_while_cond_1323222___redundant_placeholder15
1while_while_cond_1323222___redundant_placeholder25
1while_while_cond_1323222___redundant_placeholder3
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
while_cond_1320464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1320464___redundant_placeholder05
1while_while_cond_1320464___redundant_placeholder15
1while_while_cond_1320464___redundant_placeholder25
1while_while_cond_1320464___redundant_placeholder3
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
while_cond_1322320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1322320___redundant_placeholder05
1while_while_cond_1322320___redundant_placeholder15
1while_while_cond_1322320___redundant_placeholder25
1while_while_cond_1322320___redundant_placeholder3
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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1320930

inputs?
,lstm_cell_217_matmul_readvariableop_resource:	d?A
.lstm_cell_217_matmul_1_readvariableop_resource:	2?<
-lstm_cell_217_biasadd_readvariableop_resource:	?
identity??$lstm_cell_217/BiasAdd/ReadVariableOp?#lstm_cell_217/MatMul/ReadVariableOp?%lstm_cell_217/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_217/MatMul/ReadVariableOpReadVariableOp,lstm_cell_217_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_217/MatMulMatMulstrided_slice_2:output:0+lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_217_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_217/MatMul_1MatMulzeros:output:0-lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_217/addAddV2lstm_cell_217/MatMul:product:0 lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_217_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_217/BiasAddBiasAddlstm_cell_217/add:z:0,lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_217/splitSplit&lstm_cell_217/split/split_dim:output:0lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_217/SigmoidSigmoidlstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_217/Sigmoid_1Sigmoidlstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_217/mulMullstm_cell_217/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_217/ReluRelulstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_217/mul_1Mullstm_cell_217/Sigmoid:y:0 lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_217/add_1AddV2lstm_cell_217/mul:z:0lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_217/Sigmoid_2Sigmoidlstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_217/Relu_1Relulstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_217/mul_2Mullstm_cell_217/Sigmoid_2:y:0"lstm_cell_217/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_217_matmul_readvariableop_resource.lstm_cell_217_matmul_1_readvariableop_resource-lstm_cell_217_biasadd_readvariableop_resource*
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
while_body_1320846*
condR
while_cond_1320845*K
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
NoOpNoOp%^lstm_cell_217/BiasAdd/ReadVariableOp$^lstm_cell_217/MatMul/ReadVariableOp&^lstm_cell_217/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_217/BiasAdd/ReadVariableOp$lstm_cell_217/BiasAdd/ReadVariableOp2J
#lstm_cell_217/MatMul/ReadVariableOp#lstm_cell_217/MatMul/ReadVariableOp2N
%lstm_cell_217/MatMul_1/ReadVariableOp%lstm_cell_217/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?S
?
)sequential_63_lstm_191_while_body_1318960J
Fsequential_63_lstm_191_while_sequential_63_lstm_191_while_loop_counterP
Lsequential_63_lstm_191_while_sequential_63_lstm_191_while_maximum_iterations,
(sequential_63_lstm_191_while_placeholder.
*sequential_63_lstm_191_while_placeholder_1.
*sequential_63_lstm_191_while_placeholder_2.
*sequential_63_lstm_191_while_placeholder_3I
Esequential_63_lstm_191_while_sequential_63_lstm_191_strided_slice_1_0?
?sequential_63_lstm_191_while_tensorarrayv2read_tensorlistgetitem_sequential_63_lstm_191_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_63_lstm_191_while_lstm_cell_218_matmul_readvariableop_resource_0:2(_
Msequential_63_lstm_191_while_lstm_cell_218_matmul_1_readvariableop_resource_0:
(Z
Lsequential_63_lstm_191_while_lstm_cell_218_biasadd_readvariableop_resource_0:()
%sequential_63_lstm_191_while_identity+
'sequential_63_lstm_191_while_identity_1+
'sequential_63_lstm_191_while_identity_2+
'sequential_63_lstm_191_while_identity_3+
'sequential_63_lstm_191_while_identity_4+
'sequential_63_lstm_191_while_identity_5G
Csequential_63_lstm_191_while_sequential_63_lstm_191_strided_slice_1?
sequential_63_lstm_191_while_tensorarrayv2read_tensorlistgetitem_sequential_63_lstm_191_tensorarrayunstack_tensorlistfromtensor[
Isequential_63_lstm_191_while_lstm_cell_218_matmul_readvariableop_resource:2(]
Ksequential_63_lstm_191_while_lstm_cell_218_matmul_1_readvariableop_resource:
(X
Jsequential_63_lstm_191_while_lstm_cell_218_biasadd_readvariableop_resource:(??Asequential_63/lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOp?@sequential_63/lstm_191/while/lstm_cell_218/MatMul/ReadVariableOp?Bsequential_63/lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOp?
Nsequential_63/lstm_191/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_63/lstm_191/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_63_lstm_191_while_tensorarrayv2read_tensorlistgetitem_sequential_63_lstm_191_tensorarrayunstack_tensorlistfromtensor_0(sequential_63_lstm_191_while_placeholderWsequential_63/lstm_191/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_63/lstm_191/while/lstm_cell_218/MatMul/ReadVariableOpReadVariableOpKsequential_63_lstm_191_while_lstm_cell_218_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_63/lstm_191/while/lstm_cell_218/MatMulMatMulGsequential_63/lstm_191/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_63/lstm_191/while/lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_63/lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOpMsequential_63_lstm_191_while_lstm_cell_218_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_63/lstm_191/while/lstm_cell_218/MatMul_1MatMul*sequential_63_lstm_191_while_placeholder_2Jsequential_63/lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_63/lstm_191/while/lstm_cell_218/addAddV2;sequential_63/lstm_191/while/lstm_cell_218/MatMul:product:0=sequential_63/lstm_191/while/lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_63/lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOpLsequential_63_lstm_191_while_lstm_cell_218_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_63/lstm_191/while/lstm_cell_218/BiasAddBiasAdd2sequential_63/lstm_191/while/lstm_cell_218/add:z:0Isequential_63/lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_63/lstm_191/while/lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_63/lstm_191/while/lstm_cell_218/splitSplitCsequential_63/lstm_191/while/lstm_cell_218/split/split_dim:output:0;sequential_63/lstm_191/while/lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_63/lstm_191/while/lstm_cell_218/SigmoidSigmoid9sequential_63/lstm_191/while/lstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_63/lstm_191/while/lstm_cell_218/Sigmoid_1Sigmoid9sequential_63/lstm_191/while/lstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_63/lstm_191/while/lstm_cell_218/mulMul8sequential_63/lstm_191/while/lstm_cell_218/Sigmoid_1:y:0*sequential_63_lstm_191_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_63/lstm_191/while/lstm_cell_218/ReluRelu9sequential_63/lstm_191/while/lstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_63/lstm_191/while/lstm_cell_218/mul_1Mul6sequential_63/lstm_191/while/lstm_cell_218/Sigmoid:y:0=sequential_63/lstm_191/while/lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_63/lstm_191/while/lstm_cell_218/add_1AddV22sequential_63/lstm_191/while/lstm_cell_218/mul:z:04sequential_63/lstm_191/while/lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_63/lstm_191/while/lstm_cell_218/Sigmoid_2Sigmoid9sequential_63/lstm_191/while/lstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_63/lstm_191/while/lstm_cell_218/Relu_1Relu4sequential_63/lstm_191/while/lstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_63/lstm_191/while/lstm_cell_218/mul_2Mul8sequential_63/lstm_191/while/lstm_cell_218/Sigmoid_2:y:0?sequential_63/lstm_191/while/lstm_cell_218/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_63/lstm_191/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_63_lstm_191_while_placeholder_1(sequential_63_lstm_191_while_placeholder4sequential_63/lstm_191/while/lstm_cell_218/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_63/lstm_191/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_63/lstm_191/while/addAddV2(sequential_63_lstm_191_while_placeholder+sequential_63/lstm_191/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_63/lstm_191/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_63/lstm_191/while/add_1AddV2Fsequential_63_lstm_191_while_sequential_63_lstm_191_while_loop_counter-sequential_63/lstm_191/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_63/lstm_191/while/IdentityIdentity&sequential_63/lstm_191/while/add_1:z:0"^sequential_63/lstm_191/while/NoOp*
T0*
_output_shapes
: ?
'sequential_63/lstm_191/while/Identity_1IdentityLsequential_63_lstm_191_while_sequential_63_lstm_191_while_maximum_iterations"^sequential_63/lstm_191/while/NoOp*
T0*
_output_shapes
: ?
'sequential_63/lstm_191/while/Identity_2Identity$sequential_63/lstm_191/while/add:z:0"^sequential_63/lstm_191/while/NoOp*
T0*
_output_shapes
: ?
'sequential_63/lstm_191/while/Identity_3IdentityQsequential_63/lstm_191/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_63/lstm_191/while/NoOp*
T0*
_output_shapes
: ?
'sequential_63/lstm_191/while/Identity_4Identity4sequential_63/lstm_191/while/lstm_cell_218/mul_2:z:0"^sequential_63/lstm_191/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_63/lstm_191/while/Identity_5Identity4sequential_63/lstm_191/while/lstm_cell_218/add_1:z:0"^sequential_63/lstm_191/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_63/lstm_191/while/NoOpNoOpB^sequential_63/lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOpA^sequential_63/lstm_191/while/lstm_cell_218/MatMul/ReadVariableOpC^sequential_63/lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_63_lstm_191_while_identity.sequential_63/lstm_191/while/Identity:output:0"[
'sequential_63_lstm_191_while_identity_10sequential_63/lstm_191/while/Identity_1:output:0"[
'sequential_63_lstm_191_while_identity_20sequential_63/lstm_191/while/Identity_2:output:0"[
'sequential_63_lstm_191_while_identity_30sequential_63/lstm_191/while/Identity_3:output:0"[
'sequential_63_lstm_191_while_identity_40sequential_63/lstm_191/while/Identity_4:output:0"[
'sequential_63_lstm_191_while_identity_50sequential_63/lstm_191/while/Identity_5:output:0"?
Jsequential_63_lstm_191_while_lstm_cell_218_biasadd_readvariableop_resourceLsequential_63_lstm_191_while_lstm_cell_218_biasadd_readvariableop_resource_0"?
Ksequential_63_lstm_191_while_lstm_cell_218_matmul_1_readvariableop_resourceMsequential_63_lstm_191_while_lstm_cell_218_matmul_1_readvariableop_resource_0"?
Isequential_63_lstm_191_while_lstm_cell_218_matmul_readvariableop_resourceKsequential_63_lstm_191_while_lstm_cell_218_matmul_readvariableop_resource_0"?
Csequential_63_lstm_191_while_sequential_63_lstm_191_strided_slice_1Esequential_63_lstm_191_while_sequential_63_lstm_191_strided_slice_1_0"?
sequential_63_lstm_191_while_tensorarrayv2read_tensorlistgetitem_sequential_63_lstm_191_tensorarrayunstack_tensorlistfromtensor?sequential_63_lstm_191_while_tensorarrayv2read_tensorlistgetitem_sequential_63_lstm_191_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_63/lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOpAsequential_63/lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOp2?
@sequential_63/lstm_191/while/lstm_cell_218/MatMul/ReadVariableOp@sequential_63/lstm_191/while/lstm_cell_218/MatMul/ReadVariableOp2?
Bsequential_63/lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOpBsequential_63/lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1320845
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1320845___redundant_placeholder05
1while_while_cond_1320845___redundant_placeholder15
1while_while_cond_1320845___redundant_placeholder25
1while_while_cond_1320845___redundant_placeholder3
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
J__inference_lstm_cell_218_layer_call_and_return_conditional_losses_1319963

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
while_cond_1323981
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1323981___redundant_placeholder05
1while_while_cond_1323981___redundant_placeholder15
1while_while_cond_1323981___redundant_placeholder25
1while_while_cond_1323981___redundant_placeholder3
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
while_cond_1323695
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1323695___redundant_placeholder05
1while_while_cond_1323695___redundant_placeholder15
1while_while_cond_1323695___redundant_placeholder25
1while_while_cond_1323695___redundant_placeholder3
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
while_body_1323982
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_218_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_218_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_218_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_218_matmul_readvariableop_resource:2(F
4while_lstm_cell_218_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_218_biasadd_readvariableop_resource:(??*while/lstm_cell_218/BiasAdd/ReadVariableOp?)while/lstm_cell_218/MatMul/ReadVariableOp?+while/lstm_cell_218/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_218/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_218_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_218/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_218_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_218/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_218/addAddV2$while/lstm_cell_218/MatMul:product:0&while/lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_218_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_218/BiasAddBiasAddwhile/lstm_cell_218/add:z:02while/lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_218/splitSplit,while/lstm_cell_218/split/split_dim:output:0$while/lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_218/SigmoidSigmoid"while/lstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_218/Sigmoid_1Sigmoid"while/lstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mulMul!while/lstm_cell_218/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_218/ReluRelu"while/lstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mul_1Mulwhile/lstm_cell_218/Sigmoid:y:0&while/lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/add_1AddV2while/lstm_cell_218/mul:z:0while/lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_218/Sigmoid_2Sigmoid"while/lstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_218/Relu_1Reluwhile/lstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mul_2Mul!while/lstm_cell_218/Sigmoid_2:y:0(while/lstm_cell_218/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_218/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_218/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_218/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_218/BiasAdd/ReadVariableOp*^while/lstm_cell_218/MatMul/ReadVariableOp,^while/lstm_cell_218/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_218_biasadd_readvariableop_resource5while_lstm_cell_218_biasadd_readvariableop_resource_0"n
4while_lstm_cell_218_matmul_1_readvariableop_resource6while_lstm_cell_218_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_218_matmul_readvariableop_resource4while_lstm_cell_218_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_218/BiasAdd/ReadVariableOp*while/lstm_cell_218/BiasAdd/ReadVariableOp2V
)while/lstm_cell_218/MatMul/ReadVariableOp)while/lstm_cell_218/MatMul/ReadVariableOp2Z
+while/lstm_cell_218/MatMul_1/ReadVariableOp+while/lstm_cell_218/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_216_layer_call_fn_1324102

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
J__inference_lstm_cell_216_layer_call_and_return_conditional_losses_1319117o
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
#__inference__traced_restore_1324652
file_prefix2
 assignvariableop_dense_63_kernel:
.
 assignvariableop_1_dense_63_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_189_lstm_cell_189_kernel:	?M
:assignvariableop_8_lstm_189_lstm_cell_189_recurrent_kernel:	d?=
.assignvariableop_9_lstm_189_lstm_cell_189_bias:	?D
1assignvariableop_10_lstm_190_lstm_cell_190_kernel:	d?N
;assignvariableop_11_lstm_190_lstm_cell_190_recurrent_kernel:	2?>
/assignvariableop_12_lstm_190_lstm_cell_190_bias:	?C
1assignvariableop_13_lstm_191_lstm_cell_191_kernel:2(M
;assignvariableop_14_lstm_191_lstm_cell_191_recurrent_kernel:
(=
/assignvariableop_15_lstm_191_lstm_cell_191_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_63_kernel_m:
6
(assignvariableop_19_adam_dense_63_bias_m:K
8assignvariableop_20_adam_lstm_189_lstm_cell_189_kernel_m:	?U
Bassignvariableop_21_adam_lstm_189_lstm_cell_189_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_189_lstm_cell_189_bias_m:	?K
8assignvariableop_23_adam_lstm_190_lstm_cell_190_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_190_lstm_cell_190_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_190_lstm_cell_190_bias_m:	?J
8assignvariableop_26_adam_lstm_191_lstm_cell_191_kernel_m:2(T
Bassignvariableop_27_adam_lstm_191_lstm_cell_191_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_191_lstm_cell_191_bias_m:(<
*assignvariableop_29_adam_dense_63_kernel_v:
6
(assignvariableop_30_adam_dense_63_bias_v:K
8assignvariableop_31_adam_lstm_189_lstm_cell_189_kernel_v:	?U
Bassignvariableop_32_adam_lstm_189_lstm_cell_189_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_189_lstm_cell_189_bias_v:	?K
8assignvariableop_34_adam_lstm_190_lstm_cell_190_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_190_lstm_cell_190_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_190_lstm_cell_190_bias_v:	?J
8assignvariableop_37_adam_lstm_191_lstm_cell_191_kernel_v:2(T
Bassignvariableop_38_adam_lstm_191_lstm_cell_191_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_191_lstm_cell_191_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_63_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_63_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_189_lstm_cell_189_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_189_lstm_cell_189_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_189_lstm_cell_189_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_190_lstm_cell_190_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_190_lstm_cell_190_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_190_lstm_cell_190_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_191_lstm_cell_191_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_191_lstm_cell_191_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_191_lstm_cell_191_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_63_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_63_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_189_lstm_cell_189_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_189_lstm_cell_189_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_189_lstm_cell_189_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_190_lstm_cell_190_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_190_lstm_cell_190_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_190_lstm_cell_190_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_191_lstm_cell_191_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_191_lstm_cell_191_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_191_lstm_cell_191_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_63_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_63_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_189_lstm_cell_189_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_189_lstm_cell_189_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_189_lstm_cell_189_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_190_lstm_cell_190_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_190_lstm_cell_190_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_190_lstm_cell_190_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_191_lstm_cell_191_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_191_lstm_cell_191_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_191_lstm_cell_191_bias_vIdentity_39:output:0"/device:CPU:0*
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
?
?
J__inference_lstm_cell_217_layer_call_and_return_conditional_losses_1324249

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
while_body_1321011
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_216_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_216_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_216_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_216_matmul_readvariableop_resource:	?G
4while_lstm_cell_216_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_216_biasadd_readvariableop_resource:	???*while/lstm_cell_216/BiasAdd/ReadVariableOp?)while/lstm_cell_216/MatMul/ReadVariableOp?+while/lstm_cell_216/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_216/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_216_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_216/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_216_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_216/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_216/addAddV2$while/lstm_cell_216/MatMul:product:0&while/lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_216_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_216/BiasAddBiasAddwhile/lstm_cell_216/add:z:02while/lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_216/splitSplit,while/lstm_cell_216/split/split_dim:output:0$while/lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_216/SigmoidSigmoid"while/lstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_216/Sigmoid_1Sigmoid"while/lstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mulMul!while/lstm_cell_216/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_216/ReluRelu"while/lstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mul_1Mulwhile/lstm_cell_216/Sigmoid:y:0&while/lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/add_1AddV2while/lstm_cell_216/mul:z:0while/lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_216/Sigmoid_2Sigmoid"while/lstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_216/Relu_1Reluwhile/lstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mul_2Mul!while/lstm_cell_216/Sigmoid_2:y:0(while/lstm_cell_216/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_216/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_216/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_216/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_216/BiasAdd/ReadVariableOp*^while/lstm_cell_216/MatMul/ReadVariableOp,^while/lstm_cell_216/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_216_biasadd_readvariableop_resource5while_lstm_cell_216_biasadd_readvariableop_resource_0"n
4while_lstm_cell_216_matmul_1_readvariableop_resource6while_lstm_cell_216_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_216_matmul_readvariableop_resource4while_lstm_cell_216_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_216/BiasAdd/ReadVariableOp*while/lstm_cell_216/BiasAdd/ReadVariableOp2V
)while/lstm_cell_216/MatMul/ReadVariableOp)while/lstm_cell_216/MatMul/ReadVariableOp2Z
+while/lstm_cell_216/MatMul_1/ReadVariableOp+while/lstm_cell_216/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1319550

inputs(
lstm_cell_217_1319468:	d?(
lstm_cell_217_1319470:	2?$
lstm_cell_217_1319472:	?
identity??%lstm_cell_217/StatefulPartitionedCall?while;
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
%lstm_cell_217/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_217_1319468lstm_cell_217_1319470lstm_cell_217_1319472*
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
J__inference_lstm_cell_217_layer_call_and_return_conditional_losses_1319467n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_217_1319468lstm_cell_217_1319470lstm_cell_217_1319472*
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
while_body_1319481*
condR
while_cond_1319480*K
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
NoOpNoOp&^lstm_cell_217/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_217/StatefulPartitionedCall%lstm_cell_217/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?

?
lstm_189_while_cond_1321849.
*lstm_189_while_lstm_189_while_loop_counter4
0lstm_189_while_lstm_189_while_maximum_iterations
lstm_189_while_placeholder 
lstm_189_while_placeholder_1 
lstm_189_while_placeholder_2 
lstm_189_while_placeholder_30
,lstm_189_while_less_lstm_189_strided_slice_1G
Clstm_189_while_lstm_189_while_cond_1321849___redundant_placeholder0G
Clstm_189_while_lstm_189_while_cond_1321849___redundant_placeholder1G
Clstm_189_while_lstm_189_while_cond_1321849___redundant_placeholder2G
Clstm_189_while_lstm_189_while_cond_1321849___redundant_placeholder3
lstm_189_while_identity
?
lstm_189/while/LessLesslstm_189_while_placeholder,lstm_189_while_less_lstm_189_strided_slice_1*
T0*
_output_shapes
: ]
lstm_189/while/IdentityIdentitylstm_189/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_189_while_identity lstm_189/while/Identity:output:0*(
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
E__inference_lstm_189_layer_call_and_return_conditional_losses_1319200

inputs(
lstm_cell_216_1319118:	?(
lstm_cell_216_1319120:	d?$
lstm_cell_216_1319122:	?
identity??%lstm_cell_216/StatefulPartitionedCall?while;
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
%lstm_cell_216/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_216_1319118lstm_cell_216_1319120lstm_cell_216_1319122*
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
J__inference_lstm_cell_216_layer_call_and_return_conditional_losses_1319117n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_216_1319118lstm_cell_216_1319120lstm_cell_216_1319122*
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
while_body_1319131*
condR
while_cond_1319130*K
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
NoOpNoOp&^lstm_cell_216/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_216/StatefulPartitionedCall%lstm_cell_216/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?C
?

lstm_190_while_body_1321989.
*lstm_190_while_lstm_190_while_loop_counter4
0lstm_190_while_lstm_190_while_maximum_iterations
lstm_190_while_placeholder 
lstm_190_while_placeholder_1 
lstm_190_while_placeholder_2 
lstm_190_while_placeholder_3-
)lstm_190_while_lstm_190_strided_slice_1_0i
elstm_190_while_tensorarrayv2read_tensorlistgetitem_lstm_190_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_190_while_lstm_cell_217_matmul_readvariableop_resource_0:	d?R
?lstm_190_while_lstm_cell_217_matmul_1_readvariableop_resource_0:	2?M
>lstm_190_while_lstm_cell_217_biasadd_readvariableop_resource_0:	?
lstm_190_while_identity
lstm_190_while_identity_1
lstm_190_while_identity_2
lstm_190_while_identity_3
lstm_190_while_identity_4
lstm_190_while_identity_5+
'lstm_190_while_lstm_190_strided_slice_1g
clstm_190_while_tensorarrayv2read_tensorlistgetitem_lstm_190_tensorarrayunstack_tensorlistfromtensorN
;lstm_190_while_lstm_cell_217_matmul_readvariableop_resource:	d?P
=lstm_190_while_lstm_cell_217_matmul_1_readvariableop_resource:	2?K
<lstm_190_while_lstm_cell_217_biasadd_readvariableop_resource:	???3lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOp?2lstm_190/while/lstm_cell_217/MatMul/ReadVariableOp?4lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOp?
@lstm_190/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_190/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_190_while_tensorarrayv2read_tensorlistgetitem_lstm_190_tensorarrayunstack_tensorlistfromtensor_0lstm_190_while_placeholderIlstm_190/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_190/while/lstm_cell_217/MatMul/ReadVariableOpReadVariableOp=lstm_190_while_lstm_cell_217_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_190/while/lstm_cell_217/MatMulMatMul9lstm_190/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_190/while/lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOp?lstm_190_while_lstm_cell_217_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_190/while/lstm_cell_217/MatMul_1MatMullstm_190_while_placeholder_2<lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_190/while/lstm_cell_217/addAddV2-lstm_190/while/lstm_cell_217/MatMul:product:0/lstm_190/while/lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOp>lstm_190_while_lstm_cell_217_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_190/while/lstm_cell_217/BiasAddBiasAdd$lstm_190/while/lstm_cell_217/add:z:0;lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_190/while/lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_190/while/lstm_cell_217/splitSplit5lstm_190/while/lstm_cell_217/split/split_dim:output:0-lstm_190/while/lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_190/while/lstm_cell_217/SigmoidSigmoid+lstm_190/while/lstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_190/while/lstm_cell_217/Sigmoid_1Sigmoid+lstm_190/while/lstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_190/while/lstm_cell_217/mulMul*lstm_190/while/lstm_cell_217/Sigmoid_1:y:0lstm_190_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_190/while/lstm_cell_217/ReluRelu+lstm_190/while/lstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_190/while/lstm_cell_217/mul_1Mul(lstm_190/while/lstm_cell_217/Sigmoid:y:0/lstm_190/while/lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_190/while/lstm_cell_217/add_1AddV2$lstm_190/while/lstm_cell_217/mul:z:0&lstm_190/while/lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_190/while/lstm_cell_217/Sigmoid_2Sigmoid+lstm_190/while/lstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_190/while/lstm_cell_217/Relu_1Relu&lstm_190/while/lstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_190/while/lstm_cell_217/mul_2Mul*lstm_190/while/lstm_cell_217/Sigmoid_2:y:01lstm_190/while/lstm_cell_217/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_190/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_190_while_placeholder_1lstm_190_while_placeholder&lstm_190/while/lstm_cell_217/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_190/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_190/while/addAddV2lstm_190_while_placeholderlstm_190/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_190/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_190/while/add_1AddV2*lstm_190_while_lstm_190_while_loop_counterlstm_190/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_190/while/IdentityIdentitylstm_190/while/add_1:z:0^lstm_190/while/NoOp*
T0*
_output_shapes
: ?
lstm_190/while/Identity_1Identity0lstm_190_while_lstm_190_while_maximum_iterations^lstm_190/while/NoOp*
T0*
_output_shapes
: t
lstm_190/while/Identity_2Identitylstm_190/while/add:z:0^lstm_190/while/NoOp*
T0*
_output_shapes
: ?
lstm_190/while/Identity_3IdentityClstm_190/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_190/while/NoOp*
T0*
_output_shapes
: ?
lstm_190/while/Identity_4Identity&lstm_190/while/lstm_cell_217/mul_2:z:0^lstm_190/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_190/while/Identity_5Identity&lstm_190/while/lstm_cell_217/add_1:z:0^lstm_190/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_190/while/NoOpNoOp4^lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOp3^lstm_190/while/lstm_cell_217/MatMul/ReadVariableOp5^lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_190_while_identity lstm_190/while/Identity:output:0"?
lstm_190_while_identity_1"lstm_190/while/Identity_1:output:0"?
lstm_190_while_identity_2"lstm_190/while/Identity_2:output:0"?
lstm_190_while_identity_3"lstm_190/while/Identity_3:output:0"?
lstm_190_while_identity_4"lstm_190/while/Identity_4:output:0"?
lstm_190_while_identity_5"lstm_190/while/Identity_5:output:0"T
'lstm_190_while_lstm_190_strided_slice_1)lstm_190_while_lstm_190_strided_slice_1_0"~
<lstm_190_while_lstm_cell_217_biasadd_readvariableop_resource>lstm_190_while_lstm_cell_217_biasadd_readvariableop_resource_0"?
=lstm_190_while_lstm_cell_217_matmul_1_readvariableop_resource?lstm_190_while_lstm_cell_217_matmul_1_readvariableop_resource_0"|
;lstm_190_while_lstm_cell_217_matmul_readvariableop_resource=lstm_190_while_lstm_cell_217_matmul_readvariableop_resource_0"?
clstm_190_while_tensorarrayv2read_tensorlistgetitem_lstm_190_tensorarrayunstack_tensorlistfromtensorelstm_190_while_tensorarrayv2read_tensorlistgetitem_lstm_190_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOp3lstm_190/while/lstm_cell_217/BiasAdd/ReadVariableOp2h
2lstm_190/while/lstm_cell_217/MatMul/ReadVariableOp2lstm_190/while/lstm_cell_217/MatMul/ReadVariableOp2l
4lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOp4lstm_190/while/lstm_cell_217/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_191_while_cond_1321700.
*lstm_191_while_lstm_191_while_loop_counter4
0lstm_191_while_lstm_191_while_maximum_iterations
lstm_191_while_placeholder 
lstm_191_while_placeholder_1 
lstm_191_while_placeholder_2 
lstm_191_while_placeholder_30
,lstm_191_while_less_lstm_191_strided_slice_1G
Clstm_191_while_lstm_191_while_cond_1321700___redundant_placeholder0G
Clstm_191_while_lstm_191_while_cond_1321700___redundant_placeholder1G
Clstm_191_while_lstm_191_while_cond_1321700___redundant_placeholder2G
Clstm_191_while_lstm_191_while_cond_1321700___redundant_placeholder3
lstm_191_while_identity
?
lstm_191/while/LessLesslstm_191_while_placeholder,lstm_191_while_less_lstm_191_strided_slice_1*
T0*
_output_shapes
: ]
lstm_191/while/IdentityIdentitylstm_191/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_191_while_identity lstm_191/while/Identity:output:0*(
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

lstm_191_while_body_1322128.
*lstm_191_while_lstm_191_while_loop_counter4
0lstm_191_while_lstm_191_while_maximum_iterations
lstm_191_while_placeholder 
lstm_191_while_placeholder_1 
lstm_191_while_placeholder_2 
lstm_191_while_placeholder_3-
)lstm_191_while_lstm_191_strided_slice_1_0i
elstm_191_while_tensorarrayv2read_tensorlistgetitem_lstm_191_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_191_while_lstm_cell_218_matmul_readvariableop_resource_0:2(Q
?lstm_191_while_lstm_cell_218_matmul_1_readvariableop_resource_0:
(L
>lstm_191_while_lstm_cell_218_biasadd_readvariableop_resource_0:(
lstm_191_while_identity
lstm_191_while_identity_1
lstm_191_while_identity_2
lstm_191_while_identity_3
lstm_191_while_identity_4
lstm_191_while_identity_5+
'lstm_191_while_lstm_191_strided_slice_1g
clstm_191_while_tensorarrayv2read_tensorlistgetitem_lstm_191_tensorarrayunstack_tensorlistfromtensorM
;lstm_191_while_lstm_cell_218_matmul_readvariableop_resource:2(O
=lstm_191_while_lstm_cell_218_matmul_1_readvariableop_resource:
(J
<lstm_191_while_lstm_cell_218_biasadd_readvariableop_resource:(??3lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOp?2lstm_191/while/lstm_cell_218/MatMul/ReadVariableOp?4lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOp?
@lstm_191/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_191/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_191_while_tensorarrayv2read_tensorlistgetitem_lstm_191_tensorarrayunstack_tensorlistfromtensor_0lstm_191_while_placeholderIlstm_191/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_191/while/lstm_cell_218/MatMul/ReadVariableOpReadVariableOp=lstm_191_while_lstm_cell_218_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_191/while/lstm_cell_218/MatMulMatMul9lstm_191/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_191/while/lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOp?lstm_191_while_lstm_cell_218_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_191/while/lstm_cell_218/MatMul_1MatMullstm_191_while_placeholder_2<lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_191/while/lstm_cell_218/addAddV2-lstm_191/while/lstm_cell_218/MatMul:product:0/lstm_191/while/lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOp>lstm_191_while_lstm_cell_218_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_191/while/lstm_cell_218/BiasAddBiasAdd$lstm_191/while/lstm_cell_218/add:z:0;lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_191/while/lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_191/while/lstm_cell_218/splitSplit5lstm_191/while/lstm_cell_218/split/split_dim:output:0-lstm_191/while/lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_191/while/lstm_cell_218/SigmoidSigmoid+lstm_191/while/lstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_191/while/lstm_cell_218/Sigmoid_1Sigmoid+lstm_191/while/lstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_191/while/lstm_cell_218/mulMul*lstm_191/while/lstm_cell_218/Sigmoid_1:y:0lstm_191_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_191/while/lstm_cell_218/ReluRelu+lstm_191/while/lstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_191/while/lstm_cell_218/mul_1Mul(lstm_191/while/lstm_cell_218/Sigmoid:y:0/lstm_191/while/lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_191/while/lstm_cell_218/add_1AddV2$lstm_191/while/lstm_cell_218/mul:z:0&lstm_191/while/lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_191/while/lstm_cell_218/Sigmoid_2Sigmoid+lstm_191/while/lstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_191/while/lstm_cell_218/Relu_1Relu&lstm_191/while/lstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_191/while/lstm_cell_218/mul_2Mul*lstm_191/while/lstm_cell_218/Sigmoid_2:y:01lstm_191/while/lstm_cell_218/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_191/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_191_while_placeholder_1lstm_191_while_placeholder&lstm_191/while/lstm_cell_218/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_191/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_191/while/addAddV2lstm_191_while_placeholderlstm_191/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_191/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_191/while/add_1AddV2*lstm_191_while_lstm_191_while_loop_counterlstm_191/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_191/while/IdentityIdentitylstm_191/while/add_1:z:0^lstm_191/while/NoOp*
T0*
_output_shapes
: ?
lstm_191/while/Identity_1Identity0lstm_191_while_lstm_191_while_maximum_iterations^lstm_191/while/NoOp*
T0*
_output_shapes
: t
lstm_191/while/Identity_2Identitylstm_191/while/add:z:0^lstm_191/while/NoOp*
T0*
_output_shapes
: ?
lstm_191/while/Identity_3IdentityClstm_191/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_191/while/NoOp*
T0*
_output_shapes
: ?
lstm_191/while/Identity_4Identity&lstm_191/while/lstm_cell_218/mul_2:z:0^lstm_191/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_191/while/Identity_5Identity&lstm_191/while/lstm_cell_218/add_1:z:0^lstm_191/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_191/while/NoOpNoOp4^lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOp3^lstm_191/while/lstm_cell_218/MatMul/ReadVariableOp5^lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_191_while_identity lstm_191/while/Identity:output:0"?
lstm_191_while_identity_1"lstm_191/while/Identity_1:output:0"?
lstm_191_while_identity_2"lstm_191/while/Identity_2:output:0"?
lstm_191_while_identity_3"lstm_191/while/Identity_3:output:0"?
lstm_191_while_identity_4"lstm_191/while/Identity_4:output:0"?
lstm_191_while_identity_5"lstm_191/while/Identity_5:output:0"T
'lstm_191_while_lstm_191_strided_slice_1)lstm_191_while_lstm_191_strided_slice_1_0"~
<lstm_191_while_lstm_cell_218_biasadd_readvariableop_resource>lstm_191_while_lstm_cell_218_biasadd_readvariableop_resource_0"?
=lstm_191_while_lstm_cell_218_matmul_1_readvariableop_resource?lstm_191_while_lstm_cell_218_matmul_1_readvariableop_resource_0"|
;lstm_191_while_lstm_cell_218_matmul_readvariableop_resource=lstm_191_while_lstm_cell_218_matmul_readvariableop_resource_0"?
clstm_191_while_tensorarrayv2read_tensorlistgetitem_lstm_191_tensorarrayunstack_tensorlistfromtensorelstm_191_while_tensorarrayv2read_tensorlistgetitem_lstm_191_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOp3lstm_191/while/lstm_cell_218/BiasAdd/ReadVariableOp2h
2lstm_191/while/lstm_cell_218/MatMul/ReadVariableOp2lstm_191/while/lstm_cell_218/MatMul/ReadVariableOp2l
4lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOp4lstm_191/while/lstm_cell_218/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_191_layer_call_fn_1323461
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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1319900o
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
?#
?
while_body_1319131
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_216_1319155_0:	?0
while_lstm_cell_216_1319157_0:	d?,
while_lstm_cell_216_1319159_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_216_1319155:	?.
while_lstm_cell_216_1319157:	d?*
while_lstm_cell_216_1319159:	???+while/lstm_cell_216/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_216/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_216_1319155_0while_lstm_cell_216_1319157_0while_lstm_cell_216_1319159_0*
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
J__inference_lstm_cell_216_layer_call_and_return_conditional_losses_1319117?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_216/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_216/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_216/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_216/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_216_1319155while_lstm_cell_216_1319155_0"<
while_lstm_cell_216_1319157while_lstm_cell_216_1319157_0"<
while_lstm_cell_216_1319159while_lstm_cell_216_1319159_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_216/StatefulPartitionedCall+while/lstm_cell_216/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1323780
inputs_0>
,lstm_cell_218_matmul_readvariableop_resource:2(@
.lstm_cell_218_matmul_1_readvariableop_resource:
(;
-lstm_cell_218_biasadd_readvariableop_resource:(
identity??$lstm_cell_218/BiasAdd/ReadVariableOp?#lstm_cell_218/MatMul/ReadVariableOp?%lstm_cell_218/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_218/MatMul/ReadVariableOpReadVariableOp,lstm_cell_218_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_218/MatMulMatMulstrided_slice_2:output:0+lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_218_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_218/MatMul_1MatMulzeros:output:0-lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_218/addAddV2lstm_cell_218/MatMul:product:0 lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_218_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_218/BiasAddBiasAddlstm_cell_218/add:z:0,lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_218/splitSplit&lstm_cell_218/split/split_dim:output:0lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_218/SigmoidSigmoidlstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_218/Sigmoid_1Sigmoidlstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_218/mulMullstm_cell_218/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_218/ReluRelulstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_218/mul_1Mullstm_cell_218/Sigmoid:y:0 lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_218/add_1AddV2lstm_cell_218/mul:z:0lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_218/Sigmoid_2Sigmoidlstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_218/Relu_1Relulstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_218/mul_2Mullstm_cell_218/Sigmoid_2:y:0"lstm_cell_218/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_218_matmul_readvariableop_resource.lstm_cell_218_matmul_1_readvariableop_resource-lstm_cell_218_biasadd_readvariableop_resource*
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
while_body_1323696*
condR
while_cond_1323695*K
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
NoOpNoOp%^lstm_cell_218/BiasAdd/ReadVariableOp$^lstm_cell_218/MatMul/ReadVariableOp&^lstm_cell_218/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_218/BiasAdd/ReadVariableOp$lstm_cell_218/BiasAdd/ReadVariableOp2J
#lstm_cell_218/MatMul/ReadVariableOp#lstm_cell_218/MatMul/ReadVariableOp2N
%lstm_cell_218/MatMul_1/ReadVariableOp%lstm_cell_218/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_1322750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_216_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_216_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_216_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_216_matmul_readvariableop_resource:	?G
4while_lstm_cell_216_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_216_biasadd_readvariableop_resource:	???*while/lstm_cell_216/BiasAdd/ReadVariableOp?)while/lstm_cell_216/MatMul/ReadVariableOp?+while/lstm_cell_216/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_216/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_216_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_216/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_216_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_216/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_216/addAddV2$while/lstm_cell_216/MatMul:product:0&while/lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_216_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_216/BiasAddBiasAddwhile/lstm_cell_216/add:z:02while/lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_216/splitSplit,while/lstm_cell_216/split/split_dim:output:0$while/lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_216/SigmoidSigmoid"while/lstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_216/Sigmoid_1Sigmoid"while/lstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mulMul!while/lstm_cell_216/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_216/ReluRelu"while/lstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mul_1Mulwhile/lstm_cell_216/Sigmoid:y:0&while/lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/add_1AddV2while/lstm_cell_216/mul:z:0while/lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_216/Sigmoid_2Sigmoid"while/lstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_216/Relu_1Reluwhile/lstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mul_2Mul!while/lstm_cell_216/Sigmoid_2:y:0(while/lstm_cell_216/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_216/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_216/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_216/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_216/BiasAdd/ReadVariableOp*^while/lstm_cell_216/MatMul/ReadVariableOp,^while/lstm_cell_216/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_216_biasadd_readvariableop_resource5while_lstm_cell_216_biasadd_readvariableop_resource_0"n
4while_lstm_cell_216_matmul_1_readvariableop_resource6while_lstm_cell_216_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_216_matmul_readvariableop_resource4while_lstm_cell_216_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_216/BiasAdd/ReadVariableOp*while/lstm_cell_216/BiasAdd/ReadVariableOp2V
)while/lstm_cell_216/MatMul/ReadVariableOp)while/lstm_cell_216/MatMul/ReadVariableOp2Z
+while/lstm_cell_216/MatMul_1/ReadVariableOp+while/lstm_cell_216/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1323366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_217_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_217_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_217_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_217_matmul_readvariableop_resource:	d?G
4while_lstm_cell_217_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_217_biasadd_readvariableop_resource:	???*while/lstm_cell_217/BiasAdd/ReadVariableOp?)while/lstm_cell_217/MatMul/ReadVariableOp?+while/lstm_cell_217/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_217/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_217_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_217/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_217/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_217_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_217/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_217/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_217/addAddV2$while/lstm_cell_217/MatMul:product:0&while/lstm_cell_217/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_217/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_217_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_217/BiasAddBiasAddwhile/lstm_cell_217/add:z:02while/lstm_cell_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_217/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_217/splitSplit,while/lstm_cell_217/split/split_dim:output:0$while/lstm_cell_217/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_217/SigmoidSigmoid"while/lstm_cell_217/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_217/Sigmoid_1Sigmoid"while/lstm_cell_217/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mulMul!while/lstm_cell_217/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_217/ReluRelu"while/lstm_cell_217/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mul_1Mulwhile/lstm_cell_217/Sigmoid:y:0&while/lstm_cell_217/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/add_1AddV2while/lstm_cell_217/mul:z:0while/lstm_cell_217/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_217/Sigmoid_2Sigmoid"while/lstm_cell_217/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_217/Relu_1Reluwhile/lstm_cell_217/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_217/mul_2Mul!while/lstm_cell_217/Sigmoid_2:y:0(while/lstm_cell_217/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_217/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_217/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_217/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_217/BiasAdd/ReadVariableOp*^while/lstm_cell_217/MatMul/ReadVariableOp,^while/lstm_cell_217/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_217_biasadd_readvariableop_resource5while_lstm_cell_217_biasadd_readvariableop_resource_0"n
4while_lstm_cell_217_matmul_1_readvariableop_resource6while_lstm_cell_217_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_217_matmul_readvariableop_resource4while_lstm_cell_217_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_217/BiasAdd/ReadVariableOp*while/lstm_cell_217/BiasAdd/ReadVariableOp2V
)while/lstm_cell_217/MatMul/ReadVariableOp)while/lstm_cell_217/MatMul/ReadVariableOp2Z
+while/lstm_cell_217/MatMul_1/ReadVariableOp+while/lstm_cell_217/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_191_layer_call_fn_1323494

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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1320765o
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
while_body_1320465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_218_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_218_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_218_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_218_matmul_readvariableop_resource:2(F
4while_lstm_cell_218_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_218_biasadd_readvariableop_resource:(??*while/lstm_cell_218/BiasAdd/ReadVariableOp?)while/lstm_cell_218/MatMul/ReadVariableOp?+while/lstm_cell_218/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_218/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_218_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_218/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_218_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_218/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_218/addAddV2$while/lstm_cell_218/MatMul:product:0&while/lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_218_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_218/BiasAddBiasAddwhile/lstm_cell_218/add:z:02while/lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_218/splitSplit,while/lstm_cell_218/split/split_dim:output:0$while/lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_218/SigmoidSigmoid"while/lstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_218/Sigmoid_1Sigmoid"while/lstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mulMul!while/lstm_cell_218/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_218/ReluRelu"while/lstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mul_1Mulwhile/lstm_cell_218/Sigmoid:y:0&while/lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/add_1AddV2while/lstm_cell_218/mul:z:0while/lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_218/Sigmoid_2Sigmoid"while/lstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_218/Relu_1Reluwhile/lstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mul_2Mul!while/lstm_cell_218/Sigmoid_2:y:0(while/lstm_cell_218/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_218/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_218/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_218/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_218/BiasAdd/ReadVariableOp*^while/lstm_cell_218/MatMul/ReadVariableOp,^while/lstm_cell_218/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_218_biasadd_readvariableop_resource5while_lstm_cell_218_biasadd_readvariableop_resource_0"n
4while_lstm_cell_218_matmul_1_readvariableop_resource6while_lstm_cell_218_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_218_matmul_readvariableop_resource4while_lstm_cell_218_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_218/BiasAdd/ReadVariableOp*while/lstm_cell_218/BiasAdd/ReadVariableOp2V
)while/lstm_cell_218/MatMul/ReadVariableOp)while/lstm_cell_218/MatMul/ReadVariableOp2Z
+while/lstm_cell_218/MatMul_1/ReadVariableOp+while/lstm_cell_218/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_63_layer_call_and_return_conditional_losses_1320574

inputs#
lstm_189_1320250:	?#
lstm_189_1320252:	d?
lstm_189_1320254:	?#
lstm_190_1320400:	d?#
lstm_190_1320402:	2?
lstm_190_1320404:	?"
lstm_191_1320550:2("
lstm_191_1320552:
(
lstm_191_1320554:("
dense_63_1320568:

dense_63_1320570:
identity?? dense_63/StatefulPartitionedCall? lstm_189/StatefulPartitionedCall? lstm_190/StatefulPartitionedCall? lstm_191/StatefulPartitionedCall?
 lstm_189/StatefulPartitionedCallStatefulPartitionedCallinputslstm_189_1320250lstm_189_1320252lstm_189_1320254*
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
E__inference_lstm_189_layer_call_and_return_conditional_losses_1320249?
 lstm_190/StatefulPartitionedCallStatefulPartitionedCall)lstm_189/StatefulPartitionedCall:output:0lstm_190_1320400lstm_190_1320402lstm_190_1320404*
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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1320399?
 lstm_191/StatefulPartitionedCallStatefulPartitionedCall)lstm_190/StatefulPartitionedCall:output:0lstm_191_1320550lstm_191_1320552lstm_191_1320554*
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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1320549?
 dense_63/StatefulPartitionedCallStatefulPartitionedCall)lstm_191/StatefulPartitionedCall:output:0dense_63_1320568dense_63_1320570*
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
E__inference_dense_63_layer_call_and_return_conditional_losses_1320567x
IdentityIdentity)dense_63/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_63/StatefulPartitionedCall!^lstm_189/StatefulPartitionedCall!^lstm_190/StatefulPartitionedCall!^lstm_191/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2D
 lstm_189/StatefulPartitionedCall lstm_189/StatefulPartitionedCall2D
 lstm_190/StatefulPartitionedCall lstm_190/StatefulPartitionedCall2D
 lstm_191/StatefulPartitionedCall lstm_191/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1323696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_218_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_218_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_218_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_218_matmul_readvariableop_resource:2(F
4while_lstm_cell_218_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_218_biasadd_readvariableop_resource:(??*while/lstm_cell_218/BiasAdd/ReadVariableOp?)while/lstm_cell_218/MatMul/ReadVariableOp?+while/lstm_cell_218/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_218/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_218_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_218/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_218_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_218/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_218/addAddV2$while/lstm_cell_218/MatMul:product:0&while/lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_218_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_218/BiasAddBiasAddwhile/lstm_cell_218/add:z:02while/lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_218/splitSplit,while/lstm_cell_218/split/split_dim:output:0$while/lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_218/SigmoidSigmoid"while/lstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_218/Sigmoid_1Sigmoid"while/lstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mulMul!while/lstm_cell_218/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_218/ReluRelu"while/lstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mul_1Mulwhile/lstm_cell_218/Sigmoid:y:0&while/lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/add_1AddV2while/lstm_cell_218/mul:z:0while/lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_218/Sigmoid_2Sigmoid"while/lstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_218/Relu_1Reluwhile/lstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mul_2Mul!while/lstm_cell_218/Sigmoid_2:y:0(while/lstm_cell_218/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_218/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_218/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_218/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_218/BiasAdd/ReadVariableOp*^while/lstm_cell_218/MatMul/ReadVariableOp,^while/lstm_cell_218/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_218_biasadd_readvariableop_resource5while_lstm_cell_218_biasadd_readvariableop_resource_0"n
4while_lstm_cell_218_matmul_1_readvariableop_resource6while_lstm_cell_218_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_218_matmul_readvariableop_resource4while_lstm_cell_218_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_218/BiasAdd/ReadVariableOp*while/lstm_cell_218/BiasAdd/ReadVariableOp2V
)while/lstm_cell_218/MatMul/ReadVariableOp)while/lstm_cell_218/MatMul/ReadVariableOp2Z
+while/lstm_cell_218/MatMul_1/ReadVariableOp+while/lstm_cell_218/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_63_lstm_189_while_cond_1318681J
Fsequential_63_lstm_189_while_sequential_63_lstm_189_while_loop_counterP
Lsequential_63_lstm_189_while_sequential_63_lstm_189_while_maximum_iterations,
(sequential_63_lstm_189_while_placeholder.
*sequential_63_lstm_189_while_placeholder_1.
*sequential_63_lstm_189_while_placeholder_2.
*sequential_63_lstm_189_while_placeholder_3L
Hsequential_63_lstm_189_while_less_sequential_63_lstm_189_strided_slice_1c
_sequential_63_lstm_189_while_sequential_63_lstm_189_while_cond_1318681___redundant_placeholder0c
_sequential_63_lstm_189_while_sequential_63_lstm_189_while_cond_1318681___redundant_placeholder1c
_sequential_63_lstm_189_while_sequential_63_lstm_189_while_cond_1318681___redundant_placeholder2c
_sequential_63_lstm_189_while_sequential_63_lstm_189_while_cond_1318681___redundant_placeholder3)
%sequential_63_lstm_189_while_identity
?
!sequential_63/lstm_189/while/LessLess(sequential_63_lstm_189_while_placeholderHsequential_63_lstm_189_while_less_sequential_63_lstm_189_strided_slice_1*
T0*
_output_shapes
: y
%sequential_63/lstm_189/while/IdentityIdentity%sequential_63/lstm_189/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_63_lstm_189_while_identity.sequential_63/lstm_189/while/Identity:output:0*(
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
while_cond_1322936
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1322936___redundant_placeholder05
1while_while_cond_1322936___redundant_placeholder15
1while_while_cond_1322936___redundant_placeholder25
1while_while_cond_1322936___redundant_placeholder3
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
while_body_1322464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_216_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_216_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_216_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_216_matmul_readvariableop_resource:	?G
4while_lstm_cell_216_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_216_biasadd_readvariableop_resource:	???*while/lstm_cell_216/BiasAdd/ReadVariableOp?)while/lstm_cell_216/MatMul/ReadVariableOp?+while/lstm_cell_216/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_216/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_216_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_216/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_216_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_216/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_216/addAddV2$while/lstm_cell_216/MatMul:product:0&while/lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_216_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_216/BiasAddBiasAddwhile/lstm_cell_216/add:z:02while/lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_216/splitSplit,while/lstm_cell_216/split/split_dim:output:0$while/lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_216/SigmoidSigmoid"while/lstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_216/Sigmoid_1Sigmoid"while/lstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mulMul!while/lstm_cell_216/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_216/ReluRelu"while/lstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mul_1Mulwhile/lstm_cell_216/Sigmoid:y:0&while/lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/add_1AddV2while/lstm_cell_216/mul:z:0while/lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_216/Sigmoid_2Sigmoid"while/lstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_216/Relu_1Reluwhile/lstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_216/mul_2Mul!while/lstm_cell_216/Sigmoid_2:y:0(while/lstm_cell_216/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_216/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_216/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_216/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_216/BiasAdd/ReadVariableOp*^while/lstm_cell_216/MatMul/ReadVariableOp,^while/lstm_cell_216/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_216_biasadd_readvariableop_resource5while_lstm_cell_216_biasadd_readvariableop_resource_0"n
4while_lstm_cell_216_matmul_1_readvariableop_resource6while_lstm_cell_216_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_216_matmul_readvariableop_resource4while_lstm_cell_216_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_216/BiasAdd/ReadVariableOp*while/lstm_cell_216/BiasAdd/ReadVariableOp2V
)while/lstm_cell_216/MatMul/ReadVariableOp)while/lstm_cell_216/MatMul/ReadVariableOp2Z
+while/lstm_cell_216/MatMul_1/ReadVariableOp+while/lstm_cell_216/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_189_layer_call_and_return_conditional_losses_1322405
inputs_0?
,lstm_cell_216_matmul_readvariableop_resource:	?A
.lstm_cell_216_matmul_1_readvariableop_resource:	d?<
-lstm_cell_216_biasadd_readvariableop_resource:	?
identity??$lstm_cell_216/BiasAdd/ReadVariableOp?#lstm_cell_216/MatMul/ReadVariableOp?%lstm_cell_216/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_216/MatMul/ReadVariableOpReadVariableOp,lstm_cell_216_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_216/MatMulMatMulstrided_slice_2:output:0+lstm_cell_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_216/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_216_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_216/MatMul_1MatMulzeros:output:0-lstm_cell_216/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_216/addAddV2lstm_cell_216/MatMul:product:0 lstm_cell_216/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_216/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_216_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_216/BiasAddBiasAddlstm_cell_216/add:z:0,lstm_cell_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_216/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_216/splitSplit&lstm_cell_216/split/split_dim:output:0lstm_cell_216/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_216/SigmoidSigmoidlstm_cell_216/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_216/Sigmoid_1Sigmoidlstm_cell_216/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_216/mulMullstm_cell_216/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_216/ReluRelulstm_cell_216/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_216/mul_1Mullstm_cell_216/Sigmoid:y:0 lstm_cell_216/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_216/add_1AddV2lstm_cell_216/mul:z:0lstm_cell_216/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_216/Sigmoid_2Sigmoidlstm_cell_216/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_216/Relu_1Relulstm_cell_216/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_216/mul_2Mullstm_cell_216/Sigmoid_2:y:0"lstm_cell_216/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_216_matmul_readvariableop_resource.lstm_cell_216_matmul_1_readvariableop_resource-lstm_cell_216_biasadd_readvariableop_resource*
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
while_body_1322321*
condR
while_cond_1322320*K
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
NoOpNoOp%^lstm_cell_216/BiasAdd/ReadVariableOp$^lstm_cell_216/MatMul/ReadVariableOp&^lstm_cell_216/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_216/BiasAdd/ReadVariableOp$lstm_cell_216/BiasAdd/ReadVariableOp2J
#lstm_cell_216/MatMul/ReadVariableOp#lstm_cell_216/MatMul/ReadVariableOp2N
%lstm_cell_216/MatMul_1/ReadVariableOp%lstm_cell_216/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?8
?
while_body_1320681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_218_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_218_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_218_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_218_matmul_readvariableop_resource:2(F
4while_lstm_cell_218_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_218_biasadd_readvariableop_resource:(??*while/lstm_cell_218/BiasAdd/ReadVariableOp?)while/lstm_cell_218/MatMul/ReadVariableOp?+while/lstm_cell_218/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_218/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_218_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_218/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_218/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_218/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_218_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_218/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_218/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_218/addAddV2$while/lstm_cell_218/MatMul:product:0&while/lstm_cell_218/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_218/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_218_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_218/BiasAddBiasAddwhile/lstm_cell_218/add:z:02while/lstm_cell_218/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_218/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_218/splitSplit,while/lstm_cell_218/split/split_dim:output:0$while/lstm_cell_218/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_218/SigmoidSigmoid"while/lstm_cell_218/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_218/Sigmoid_1Sigmoid"while/lstm_cell_218/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mulMul!while/lstm_cell_218/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_218/ReluRelu"while/lstm_cell_218/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mul_1Mulwhile/lstm_cell_218/Sigmoid:y:0&while/lstm_cell_218/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/add_1AddV2while/lstm_cell_218/mul:z:0while/lstm_cell_218/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_218/Sigmoid_2Sigmoid"while/lstm_cell_218/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_218/Relu_1Reluwhile/lstm_cell_218/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_218/mul_2Mul!while/lstm_cell_218/Sigmoid_2:y:0(while/lstm_cell_218/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_218/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_218/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_218/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_218/BiasAdd/ReadVariableOp*^while/lstm_cell_218/MatMul/ReadVariableOp,^while/lstm_cell_218/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_218_biasadd_readvariableop_resource5while_lstm_cell_218_biasadd_readvariableop_resource_0"n
4while_lstm_cell_218_matmul_1_readvariableop_resource6while_lstm_cell_218_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_218_matmul_readvariableop_resource4while_lstm_cell_218_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_218/BiasAdd/ReadVariableOp*while/lstm_cell_218/BiasAdd/ReadVariableOp2V
)while/lstm_cell_218/MatMul/ReadVariableOp)while/lstm_cell_218/MatMul/ReadVariableOp2Z
+while/lstm_cell_218/MatMul_1/ReadVariableOp+while/lstm_cell_218/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_189_input;
 serving_default_lstm_189_input:0?????????<
dense_630
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
2dense_63/kernel
:2dense_63/bias
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
0:.	?2lstm_189/lstm_cell_189/kernel
::8	d?2'lstm_189/lstm_cell_189/recurrent_kernel
*:(?2lstm_189/lstm_cell_189/bias
0:.	d?2lstm_190/lstm_cell_190/kernel
::8	2?2'lstm_190/lstm_cell_190/recurrent_kernel
*:(?2lstm_190/lstm_cell_190/bias
/:-2(2lstm_191/lstm_cell_191/kernel
9:7
(2'lstm_191/lstm_cell_191/recurrent_kernel
):'(2lstm_191/lstm_cell_191/bias
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
2Adam/dense_63/kernel/m
 :2Adam/dense_63/bias/m
5:3	?2$Adam/lstm_189/lstm_cell_189/kernel/m
?:=	d?2.Adam/lstm_189/lstm_cell_189/recurrent_kernel/m
/:-?2"Adam/lstm_189/lstm_cell_189/bias/m
5:3	d?2$Adam/lstm_190/lstm_cell_190/kernel/m
?:=	2?2.Adam/lstm_190/lstm_cell_190/recurrent_kernel/m
/:-?2"Adam/lstm_190/lstm_cell_190/bias/m
4:22(2$Adam/lstm_191/lstm_cell_191/kernel/m
>:<
(2.Adam/lstm_191/lstm_cell_191/recurrent_kernel/m
.:,(2"Adam/lstm_191/lstm_cell_191/bias/m
&:$
2Adam/dense_63/kernel/v
 :2Adam/dense_63/bias/v
5:3	?2$Adam/lstm_189/lstm_cell_189/kernel/v
?:=	d?2.Adam/lstm_189/lstm_cell_189/recurrent_kernel/v
/:-?2"Adam/lstm_189/lstm_cell_189/bias/v
5:3	d?2$Adam/lstm_190/lstm_cell_190/kernel/v
?:=	2?2.Adam/lstm_190/lstm_cell_190/recurrent_kernel/v
/:-?2"Adam/lstm_190/lstm_cell_190/bias/v
4:22(2$Adam/lstm_191/lstm_cell_191/kernel/v
>:<
(2.Adam/lstm_191/lstm_cell_191/recurrent_kernel/v
.:,(2"Adam/lstm_191/lstm_cell_191/bias/v
?2?
/__inference_sequential_63_layer_call_fn_1320599
/__inference_sequential_63_layer_call_fn_1321337
/__inference_sequential_63_layer_call_fn_1321364
/__inference_sequential_63_layer_call_fn_1321215?
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
J__inference_sequential_63_layer_call_and_return_conditional_losses_1321791
J__inference_sequential_63_layer_call_and_return_conditional_losses_1322218
J__inference_sequential_63_layer_call_and_return_conditional_losses_1321245
J__inference_sequential_63_layer_call_and_return_conditional_losses_1321275?
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
"__inference__wrapped_model_1319050lstm_189_input"?
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
*__inference_lstm_189_layer_call_fn_1322229
*__inference_lstm_189_layer_call_fn_1322240
*__inference_lstm_189_layer_call_fn_1322251
*__inference_lstm_189_layer_call_fn_1322262?
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
E__inference_lstm_189_layer_call_and_return_conditional_losses_1322405
E__inference_lstm_189_layer_call_and_return_conditional_losses_1322548
E__inference_lstm_189_layer_call_and_return_conditional_losses_1322691
E__inference_lstm_189_layer_call_and_return_conditional_losses_1322834?
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
*__inference_lstm_190_layer_call_fn_1322845
*__inference_lstm_190_layer_call_fn_1322856
*__inference_lstm_190_layer_call_fn_1322867
*__inference_lstm_190_layer_call_fn_1322878?
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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1323021
E__inference_lstm_190_layer_call_and_return_conditional_losses_1323164
E__inference_lstm_190_layer_call_and_return_conditional_losses_1323307
E__inference_lstm_190_layer_call_and_return_conditional_losses_1323450?
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
*__inference_lstm_191_layer_call_fn_1323461
*__inference_lstm_191_layer_call_fn_1323472
*__inference_lstm_191_layer_call_fn_1323483
*__inference_lstm_191_layer_call_fn_1323494?
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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1323637
E__inference_lstm_191_layer_call_and_return_conditional_losses_1323780
E__inference_lstm_191_layer_call_and_return_conditional_losses_1323923
E__inference_lstm_191_layer_call_and_return_conditional_losses_1324066?
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
*__inference_dense_63_layer_call_fn_1324075?
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
E__inference_dense_63_layer_call_and_return_conditional_losses_1324085?
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
%__inference_signature_wrapper_1321310lstm_189_input"?
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
/__inference_lstm_cell_216_layer_call_fn_1324102
/__inference_lstm_cell_216_layer_call_fn_1324119?
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
J__inference_lstm_cell_216_layer_call_and_return_conditional_losses_1324151
J__inference_lstm_cell_216_layer_call_and_return_conditional_losses_1324183?
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
/__inference_lstm_cell_217_layer_call_fn_1324200
/__inference_lstm_cell_217_layer_call_fn_1324217?
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
J__inference_lstm_cell_217_layer_call_and_return_conditional_losses_1324249
J__inference_lstm_cell_217_layer_call_and_return_conditional_losses_1324281?
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
/__inference_lstm_cell_218_layer_call_fn_1324298
/__inference_lstm_cell_218_layer_call_fn_1324315?
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
J__inference_lstm_cell_218_layer_call_and_return_conditional_losses_1324347
J__inference_lstm_cell_218_layer_call_and_return_conditional_losses_1324379?
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
"__inference__wrapped_model_1319050-./012345!";?8
1?.
,?)
lstm_189_input?????????
? "3?0
.
dense_63"?
dense_63??????????
E__inference_dense_63_layer_call_and_return_conditional_losses_1324085\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_63_layer_call_fn_1324075O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_189_layer_call_and_return_conditional_losses_1322405?-./O?L
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
E__inference_lstm_189_layer_call_and_return_conditional_losses_1322548?-./O?L
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
E__inference_lstm_189_layer_call_and_return_conditional_losses_1322691q-./??<
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
E__inference_lstm_189_layer_call_and_return_conditional_losses_1322834q-./??<
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
*__inference_lstm_189_layer_call_fn_1322229}-./O?L
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
*__inference_lstm_189_layer_call_fn_1322240}-./O?L
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
*__inference_lstm_189_layer_call_fn_1322251d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_189_layer_call_fn_1322262d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_190_layer_call_and_return_conditional_losses_1323021?012O?L
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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1323164?012O?L
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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1323307q012??<
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
E__inference_lstm_190_layer_call_and_return_conditional_losses_1323450q012??<
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
*__inference_lstm_190_layer_call_fn_1322845}012O?L
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
*__inference_lstm_190_layer_call_fn_1322856}012O?L
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
*__inference_lstm_190_layer_call_fn_1322867d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_190_layer_call_fn_1322878d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_191_layer_call_and_return_conditional_losses_1323637}345O?L
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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1323780}345O?L
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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1323923m345??<
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
E__inference_lstm_191_layer_call_and_return_conditional_losses_1324066m345??<
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
*__inference_lstm_191_layer_call_fn_1323461p345O?L
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
*__inference_lstm_191_layer_call_fn_1323472p345O?L
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
*__inference_lstm_191_layer_call_fn_1323483`345??<
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
*__inference_lstm_191_layer_call_fn_1323494`345??<
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
J__inference_lstm_cell_216_layer_call_and_return_conditional_losses_1324151?-./??}
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
J__inference_lstm_cell_216_layer_call_and_return_conditional_losses_1324183?-./??}
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
/__inference_lstm_cell_216_layer_call_fn_1324102?-./??}
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
/__inference_lstm_cell_216_layer_call_fn_1324119?-./??}
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
J__inference_lstm_cell_217_layer_call_and_return_conditional_losses_1324249?012??}
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
J__inference_lstm_cell_217_layer_call_and_return_conditional_losses_1324281?012??}
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
/__inference_lstm_cell_217_layer_call_fn_1324200?012??}
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
/__inference_lstm_cell_217_layer_call_fn_1324217?012??}
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
J__inference_lstm_cell_218_layer_call_and_return_conditional_losses_1324347?345??}
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
J__inference_lstm_cell_218_layer_call_and_return_conditional_losses_1324379?345??}
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
/__inference_lstm_cell_218_layer_call_fn_1324298?345??}
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
/__inference_lstm_cell_218_layer_call_fn_1324315?345??}
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
J__inference_sequential_63_layer_call_and_return_conditional_losses_1321245y-./012345!"C?@
9?6
,?)
lstm_189_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_63_layer_call_and_return_conditional_losses_1321275y-./012345!"C?@
9?6
,?)
lstm_189_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_63_layer_call_and_return_conditional_losses_1321791q-./012345!";?8
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
J__inference_sequential_63_layer_call_and_return_conditional_losses_1322218q-./012345!";?8
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
/__inference_sequential_63_layer_call_fn_1320599l-./012345!"C?@
9?6
,?)
lstm_189_input?????????
p 

 
? "???????????
/__inference_sequential_63_layer_call_fn_1321215l-./012345!"C?@
9?6
,?)
lstm_189_input?????????
p

 
? "???????????
/__inference_sequential_63_layer_call_fn_1321337d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_63_layer_call_fn_1321364d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1321310?-./012345!"M?J
? 
C?@
>
lstm_189_input,?)
lstm_189_input?????????"3?0
.
dense_63"?
dense_63?????????