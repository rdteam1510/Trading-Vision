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
dense_97/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_97/kernel
s
#dense_97/kernel/Read/ReadVariableOpReadVariableOpdense_97/kernel*
_output_shapes

:
*
dtype0
r
dense_97/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_97/bias
k
!dense_97/bias/Read/ReadVariableOpReadVariableOpdense_97/bias*
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
lstm_291/lstm_cell_291/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_291/lstm_cell_291/kernel
?
1lstm_291/lstm_cell_291/kernel/Read/ReadVariableOpReadVariableOplstm_291/lstm_cell_291/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_291/lstm_cell_291/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_291/lstm_cell_291/recurrent_kernel
?
;lstm_291/lstm_cell_291/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_291/lstm_cell_291/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_291/lstm_cell_291/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_291/lstm_cell_291/bias
?
/lstm_291/lstm_cell_291/bias/Read/ReadVariableOpReadVariableOplstm_291/lstm_cell_291/bias*
_output_shapes	
:?*
dtype0
?
lstm_292/lstm_cell_292/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_292/lstm_cell_292/kernel
?
1lstm_292/lstm_cell_292/kernel/Read/ReadVariableOpReadVariableOplstm_292/lstm_cell_292/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_292/lstm_cell_292/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_292/lstm_cell_292/recurrent_kernel
?
;lstm_292/lstm_cell_292/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_292/lstm_cell_292/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_292/lstm_cell_292/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_292/lstm_cell_292/bias
?
/lstm_292/lstm_cell_292/bias/Read/ReadVariableOpReadVariableOplstm_292/lstm_cell_292/bias*
_output_shapes	
:?*
dtype0
?
lstm_293/lstm_cell_293/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_293/lstm_cell_293/kernel
?
1lstm_293/lstm_cell_293/kernel/Read/ReadVariableOpReadVariableOplstm_293/lstm_cell_293/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_293/lstm_cell_293/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_293/lstm_cell_293/recurrent_kernel
?
;lstm_293/lstm_cell_293/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_293/lstm_cell_293/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_293/lstm_cell_293/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_293/lstm_cell_293/bias
?
/lstm_293/lstm_cell_293/bias/Read/ReadVariableOpReadVariableOplstm_293/lstm_cell_293/bias*
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
Adam/dense_97/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_97/kernel/m
?
*Adam/dense_97/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_97/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_97/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_97/bias/m
y
(Adam/dense_97/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_97/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_291/lstm_cell_291/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_291/lstm_cell_291/kernel/m
?
8Adam/lstm_291/lstm_cell_291/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_291/lstm_cell_291/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_291/lstm_cell_291/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_291/lstm_cell_291/recurrent_kernel/m
?
BAdam/lstm_291/lstm_cell_291/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_291/lstm_cell_291/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_291/lstm_cell_291/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_291/lstm_cell_291/bias/m
?
6Adam/lstm_291/lstm_cell_291/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_291/lstm_cell_291/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_292/lstm_cell_292/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_292/lstm_cell_292/kernel/m
?
8Adam/lstm_292/lstm_cell_292/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_292/lstm_cell_292/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_292/lstm_cell_292/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_292/lstm_cell_292/recurrent_kernel/m
?
BAdam/lstm_292/lstm_cell_292/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_292/lstm_cell_292/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_292/lstm_cell_292/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_292/lstm_cell_292/bias/m
?
6Adam/lstm_292/lstm_cell_292/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_292/lstm_cell_292/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_293/lstm_cell_293/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_293/lstm_cell_293/kernel/m
?
8Adam/lstm_293/lstm_cell_293/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_293/lstm_cell_293/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_293/lstm_cell_293/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_293/lstm_cell_293/recurrent_kernel/m
?
BAdam/lstm_293/lstm_cell_293/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_293/lstm_cell_293/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_293/lstm_cell_293/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_293/lstm_cell_293/bias/m
?
6Adam/lstm_293/lstm_cell_293/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_293/lstm_cell_293/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_97/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_97/kernel/v
?
*Adam/dense_97/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_97/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_97/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_97/bias/v
y
(Adam/dense_97/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_97/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_291/lstm_cell_291/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_291/lstm_cell_291/kernel/v
?
8Adam/lstm_291/lstm_cell_291/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_291/lstm_cell_291/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_291/lstm_cell_291/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_291/lstm_cell_291/recurrent_kernel/v
?
BAdam/lstm_291/lstm_cell_291/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_291/lstm_cell_291/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_291/lstm_cell_291/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_291/lstm_cell_291/bias/v
?
6Adam/lstm_291/lstm_cell_291/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_291/lstm_cell_291/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_292/lstm_cell_292/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_292/lstm_cell_292/kernel/v
?
8Adam/lstm_292/lstm_cell_292/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_292/lstm_cell_292/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_292/lstm_cell_292/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_292/lstm_cell_292/recurrent_kernel/v
?
BAdam/lstm_292/lstm_cell_292/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_292/lstm_cell_292/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_292/lstm_cell_292/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_292/lstm_cell_292/bias/v
?
6Adam/lstm_292/lstm_cell_292/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_292/lstm_cell_292/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_293/lstm_cell_293/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_293/lstm_cell_293/kernel/v
?
8Adam/lstm_293/lstm_cell_293/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_293/lstm_cell_293/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_293/lstm_cell_293/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_293/lstm_cell_293/recurrent_kernel/v
?
BAdam/lstm_293/lstm_cell_293/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_293/lstm_cell_293/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_293/lstm_cell_293/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_293/lstm_cell_293/bias/v
?
6Adam/lstm_293/lstm_cell_293/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_293/lstm_cell_293/bias/v*
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
VARIABLE_VALUEdense_97/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_97/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_291/lstm_cell_291/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_291/lstm_cell_291/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_291/lstm_cell_291/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_292/lstm_cell_292/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_292/lstm_cell_292/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_292/lstm_cell_292/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_293/lstm_cell_293/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_293/lstm_cell_293/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_293/lstm_cell_293/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_97/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_97/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_291/lstm_cell_291/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_291/lstm_cell_291/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_291/lstm_cell_291/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_292/lstm_cell_292/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_292/lstm_cell_292/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_292/lstm_cell_292/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_293/lstm_cell_293/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_293/lstm_cell_293/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_293/lstm_cell_293/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_97/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_97/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_291/lstm_cell_291/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_291/lstm_cell_291/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_291/lstm_cell_291/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_292/lstm_cell_292/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_292/lstm_cell_292/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_292/lstm_cell_292/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_293/lstm_cell_293/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_293/lstm_cell_293/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_293/lstm_cell_293/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_291_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_291_inputlstm_291/lstm_cell_291/kernel'lstm_291/lstm_cell_291/recurrent_kernellstm_291/lstm_cell_291/biaslstm_292/lstm_cell_292/kernel'lstm_292/lstm_cell_292/recurrent_kernellstm_292/lstm_cell_292/biaslstm_293/lstm_cell_293/kernel'lstm_293/lstm_cell_293/recurrent_kernellstm_293/lstm_cell_293/biasdense_97/kerneldense_97/bias*
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
%__inference_signature_wrapper_1484556
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_97/kernel/Read/ReadVariableOp!dense_97/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_291/lstm_cell_291/kernel/Read/ReadVariableOp;lstm_291/lstm_cell_291/recurrent_kernel/Read/ReadVariableOp/lstm_291/lstm_cell_291/bias/Read/ReadVariableOp1lstm_292/lstm_cell_292/kernel/Read/ReadVariableOp;lstm_292/lstm_cell_292/recurrent_kernel/Read/ReadVariableOp/lstm_292/lstm_cell_292/bias/Read/ReadVariableOp1lstm_293/lstm_cell_293/kernel/Read/ReadVariableOp;lstm_293/lstm_cell_293/recurrent_kernel/Read/ReadVariableOp/lstm_293/lstm_cell_293/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_97/kernel/m/Read/ReadVariableOp(Adam/dense_97/bias/m/Read/ReadVariableOp8Adam/lstm_291/lstm_cell_291/kernel/m/Read/ReadVariableOpBAdam/lstm_291/lstm_cell_291/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_291/lstm_cell_291/bias/m/Read/ReadVariableOp8Adam/lstm_292/lstm_cell_292/kernel/m/Read/ReadVariableOpBAdam/lstm_292/lstm_cell_292/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_292/lstm_cell_292/bias/m/Read/ReadVariableOp8Adam/lstm_293/lstm_cell_293/kernel/m/Read/ReadVariableOpBAdam/lstm_293/lstm_cell_293/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_293/lstm_cell_293/bias/m/Read/ReadVariableOp*Adam/dense_97/kernel/v/Read/ReadVariableOp(Adam/dense_97/bias/v/Read/ReadVariableOp8Adam/lstm_291/lstm_cell_291/kernel/v/Read/ReadVariableOpBAdam/lstm_291/lstm_cell_291/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_291/lstm_cell_291/bias/v/Read/ReadVariableOp8Adam/lstm_292/lstm_cell_292/kernel/v/Read/ReadVariableOpBAdam/lstm_292/lstm_cell_292/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_292/lstm_cell_292/bias/v/Read/ReadVariableOp8Adam/lstm_293/lstm_cell_293/kernel/v/Read/ReadVariableOpBAdam/lstm_293/lstm_cell_293/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_293/lstm_cell_293/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1487768
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_97/kerneldense_97/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_291/lstm_cell_291/kernel'lstm_291/lstm_cell_291/recurrent_kernellstm_291/lstm_cell_291/biaslstm_292/lstm_cell_292/kernel'lstm_292/lstm_cell_292/recurrent_kernellstm_292/lstm_cell_292/biaslstm_293/lstm_cell_293/kernel'lstm_293/lstm_cell_293/recurrent_kernellstm_293/lstm_cell_293/biastotalcountAdam/dense_97/kernel/mAdam/dense_97/bias/m$Adam/lstm_291/lstm_cell_291/kernel/m.Adam/lstm_291/lstm_cell_291/recurrent_kernel/m"Adam/lstm_291/lstm_cell_291/bias/m$Adam/lstm_292/lstm_cell_292/kernel/m.Adam/lstm_292/lstm_cell_292/recurrent_kernel/m"Adam/lstm_292/lstm_cell_292/bias/m$Adam/lstm_293/lstm_cell_293/kernel/m.Adam/lstm_293/lstm_cell_293/recurrent_kernel/m"Adam/lstm_293/lstm_cell_293/bias/mAdam/dense_97/kernel/vAdam/dense_97/bias/v$Adam/lstm_291/lstm_cell_291/kernel/v.Adam/lstm_291/lstm_cell_291/recurrent_kernel/v"Adam/lstm_291/lstm_cell_291/bias/v$Adam/lstm_292/lstm_cell_292/kernel/v.Adam/lstm_292/lstm_cell_292/recurrent_kernel/v"Adam/lstm_292/lstm_cell_292/bias/v$Adam/lstm_293/lstm_cell_293/kernel/v.Adam/lstm_293/lstm_cell_293/recurrent_kernel/v"Adam/lstm_293/lstm_cell_293/bias/v*4
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
#__inference__traced_restore_1487898??+
?
?
*__inference_lstm_293_layer_call_fn_1486718
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
E__inference_lstm_293_layer_call_and_return_conditional_losses_1483337o
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
while_cond_1486325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1486325___redundant_placeholder05
1while_while_cond_1486325___redundant_placeholder15
1while_while_cond_1486325___redundant_placeholder25
1while_while_cond_1486325___redundant_placeholder3
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
while_body_1485996
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_243_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_243_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_243_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_243_matmul_readvariableop_resource:	?G
4while_lstm_cell_243_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_243_biasadd_readvariableop_resource:	???*while/lstm_cell_243/BiasAdd/ReadVariableOp?)while/lstm_cell_243/MatMul/ReadVariableOp?+while/lstm_cell_243/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_243/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_243_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_243/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_243_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_243/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_243/addAddV2$while/lstm_cell_243/MatMul:product:0&while/lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_243_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_243/BiasAddBiasAddwhile/lstm_cell_243/add:z:02while/lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_243/splitSplit,while/lstm_cell_243/split/split_dim:output:0$while/lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_243/SigmoidSigmoid"while/lstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_243/Sigmoid_1Sigmoid"while/lstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mulMul!while/lstm_cell_243/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_243/ReluRelu"while/lstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mul_1Mulwhile/lstm_cell_243/Sigmoid:y:0&while/lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/add_1AddV2while/lstm_cell_243/mul:z:0while/lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_243/Sigmoid_2Sigmoid"while/lstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_243/Relu_1Reluwhile/lstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mul_2Mul!while/lstm_cell_243/Sigmoid_2:y:0(while/lstm_cell_243/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_243/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_243/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_243/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_243/BiasAdd/ReadVariableOp*^while/lstm_cell_243/MatMul/ReadVariableOp,^while/lstm_cell_243/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_243_biasadd_readvariableop_resource5while_lstm_cell_243_biasadd_readvariableop_resource_0"n
4while_lstm_cell_243_matmul_1_readvariableop_resource6while_lstm_cell_243_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_243_matmul_readvariableop_resource4while_lstm_cell_243_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_243/BiasAdd/ReadVariableOp*while/lstm_cell_243/BiasAdd/ReadVariableOp2V
)while/lstm_cell_243/MatMul/ReadVariableOp)while/lstm_cell_243/MatMul/ReadVariableOp2Z
+while/lstm_cell_243/MatMul_1/ReadVariableOp+while/lstm_cell_243/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_292_layer_call_fn_1486124

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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1484176s
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
while_cond_1483267
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1483267___redundant_placeholder05
1while_while_cond_1483267___redundant_placeholder15
1while_while_cond_1483267___redundant_placeholder25
1while_while_cond_1483267___redundant_placeholder3
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
J__inference_lstm_cell_245_layer_call_and_return_conditional_losses_1483209

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
E__inference_lstm_291_layer_call_and_return_conditional_losses_1483495

inputs?
,lstm_cell_243_matmul_readvariableop_resource:	?A
.lstm_cell_243_matmul_1_readvariableop_resource:	d?<
-lstm_cell_243_biasadd_readvariableop_resource:	?
identity??$lstm_cell_243/BiasAdd/ReadVariableOp?#lstm_cell_243/MatMul/ReadVariableOp?%lstm_cell_243/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_243/MatMul/ReadVariableOpReadVariableOp,lstm_cell_243_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_243/MatMulMatMulstrided_slice_2:output:0+lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_243_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_243/MatMul_1MatMulzeros:output:0-lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_243/addAddV2lstm_cell_243/MatMul:product:0 lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_243_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_243/BiasAddBiasAddlstm_cell_243/add:z:0,lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_243/splitSplit&lstm_cell_243/split/split_dim:output:0lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_243/SigmoidSigmoidlstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_243/Sigmoid_1Sigmoidlstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_243/mulMullstm_cell_243/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_243/ReluRelulstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_243/mul_1Mullstm_cell_243/Sigmoid:y:0 lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_243/add_1AddV2lstm_cell_243/mul:z:0lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_243/Sigmoid_2Sigmoidlstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_243/Relu_1Relulstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_243/mul_2Mullstm_cell_243/Sigmoid_2:y:0"lstm_cell_243/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_243_matmul_readvariableop_resource.lstm_cell_243_matmul_1_readvariableop_resource-lstm_cell_243_biasadd_readvariableop_resource*
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
while_body_1483411*
condR
while_cond_1483410*K
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
NoOpNoOp%^lstm_cell_243/BiasAdd/ReadVariableOp$^lstm_cell_243/MatMul/ReadVariableOp&^lstm_cell_243/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_243/BiasAdd/ReadVariableOp$lstm_cell_243/BiasAdd/ReadVariableOp2J
#lstm_cell_243/MatMul/ReadVariableOp#lstm_cell_243/MatMul/ReadVariableOp2N
%lstm_cell_243/MatMul_1/ReadVariableOp%lstm_cell_243/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
lstm_293_while_cond_1484946.
*lstm_293_while_lstm_293_while_loop_counter4
0lstm_293_while_lstm_293_while_maximum_iterations
lstm_293_while_placeholder 
lstm_293_while_placeholder_1 
lstm_293_while_placeholder_2 
lstm_293_while_placeholder_30
,lstm_293_while_less_lstm_293_strided_slice_1G
Clstm_293_while_lstm_293_while_cond_1484946___redundant_placeholder0G
Clstm_293_while_lstm_293_while_cond_1484946___redundant_placeholder1G
Clstm_293_while_lstm_293_while_cond_1484946___redundant_placeholder2G
Clstm_293_while_lstm_293_while_cond_1484946___redundant_placeholder3
lstm_293_while_identity
?
lstm_293/while/LessLesslstm_293_while_placeholder,lstm_293_while_less_lstm_293_strided_slice_1*
T0*
_output_shapes
: ]
lstm_293/while/IdentityIdentitylstm_293/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_293_while_identity lstm_293/while/Identity:output:0*(
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
while_body_1482727
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_244_1482751_0:	d?0
while_lstm_cell_244_1482753_0:	2?,
while_lstm_cell_244_1482755_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_244_1482751:	d?.
while_lstm_cell_244_1482753:	2?*
while_lstm_cell_244_1482755:	???+while/lstm_cell_244/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_244/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_244_1482751_0while_lstm_cell_244_1482753_0while_lstm_cell_244_1482755_0*
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
J__inference_lstm_cell_244_layer_call_and_return_conditional_losses_1482713?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_244/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_244/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_244/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_244/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_244_1482751while_lstm_cell_244_1482751_0"<
while_lstm_cell_244_1482753while_lstm_cell_244_1482753_0"<
while_lstm_cell_244_1482755while_lstm_cell_244_1482755_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_244/StatefulPartitionedCall+while/lstm_cell_244/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_243_layer_call_fn_1487365

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
J__inference_lstm_cell_243_layer_call_and_return_conditional_losses_1482509o
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
?S
?
)sequential_97_lstm_292_while_body_1482067J
Fsequential_97_lstm_292_while_sequential_97_lstm_292_while_loop_counterP
Lsequential_97_lstm_292_while_sequential_97_lstm_292_while_maximum_iterations,
(sequential_97_lstm_292_while_placeholder.
*sequential_97_lstm_292_while_placeholder_1.
*sequential_97_lstm_292_while_placeholder_2.
*sequential_97_lstm_292_while_placeholder_3I
Esequential_97_lstm_292_while_sequential_97_lstm_292_strided_slice_1_0?
?sequential_97_lstm_292_while_tensorarrayv2read_tensorlistgetitem_sequential_97_lstm_292_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_97_lstm_292_while_lstm_cell_244_matmul_readvariableop_resource_0:	d?`
Msequential_97_lstm_292_while_lstm_cell_244_matmul_1_readvariableop_resource_0:	2?[
Lsequential_97_lstm_292_while_lstm_cell_244_biasadd_readvariableop_resource_0:	?)
%sequential_97_lstm_292_while_identity+
'sequential_97_lstm_292_while_identity_1+
'sequential_97_lstm_292_while_identity_2+
'sequential_97_lstm_292_while_identity_3+
'sequential_97_lstm_292_while_identity_4+
'sequential_97_lstm_292_while_identity_5G
Csequential_97_lstm_292_while_sequential_97_lstm_292_strided_slice_1?
sequential_97_lstm_292_while_tensorarrayv2read_tensorlistgetitem_sequential_97_lstm_292_tensorarrayunstack_tensorlistfromtensor\
Isequential_97_lstm_292_while_lstm_cell_244_matmul_readvariableop_resource:	d?^
Ksequential_97_lstm_292_while_lstm_cell_244_matmul_1_readvariableop_resource:	2?Y
Jsequential_97_lstm_292_while_lstm_cell_244_biasadd_readvariableop_resource:	???Asequential_97/lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOp?@sequential_97/lstm_292/while/lstm_cell_244/MatMul/ReadVariableOp?Bsequential_97/lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOp?
Nsequential_97/lstm_292/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_97/lstm_292/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_97_lstm_292_while_tensorarrayv2read_tensorlistgetitem_sequential_97_lstm_292_tensorarrayunstack_tensorlistfromtensor_0(sequential_97_lstm_292_while_placeholderWsequential_97/lstm_292/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_97/lstm_292/while/lstm_cell_244/MatMul/ReadVariableOpReadVariableOpKsequential_97_lstm_292_while_lstm_cell_244_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_97/lstm_292/while/lstm_cell_244/MatMulMatMulGsequential_97/lstm_292/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_97/lstm_292/while/lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_97/lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOpMsequential_97_lstm_292_while_lstm_cell_244_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_97/lstm_292/while/lstm_cell_244/MatMul_1MatMul*sequential_97_lstm_292_while_placeholder_2Jsequential_97/lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_97/lstm_292/while/lstm_cell_244/addAddV2;sequential_97/lstm_292/while/lstm_cell_244/MatMul:product:0=sequential_97/lstm_292/while/lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_97/lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOpLsequential_97_lstm_292_while_lstm_cell_244_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_97/lstm_292/while/lstm_cell_244/BiasAddBiasAdd2sequential_97/lstm_292/while/lstm_cell_244/add:z:0Isequential_97/lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_97/lstm_292/while/lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_97/lstm_292/while/lstm_cell_244/splitSplitCsequential_97/lstm_292/while/lstm_cell_244/split/split_dim:output:0;sequential_97/lstm_292/while/lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_97/lstm_292/while/lstm_cell_244/SigmoidSigmoid9sequential_97/lstm_292/while/lstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_97/lstm_292/while/lstm_cell_244/Sigmoid_1Sigmoid9sequential_97/lstm_292/while/lstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_97/lstm_292/while/lstm_cell_244/mulMul8sequential_97/lstm_292/while/lstm_cell_244/Sigmoid_1:y:0*sequential_97_lstm_292_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_97/lstm_292/while/lstm_cell_244/ReluRelu9sequential_97/lstm_292/while/lstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_97/lstm_292/while/lstm_cell_244/mul_1Mul6sequential_97/lstm_292/while/lstm_cell_244/Sigmoid:y:0=sequential_97/lstm_292/while/lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_97/lstm_292/while/lstm_cell_244/add_1AddV22sequential_97/lstm_292/while/lstm_cell_244/mul:z:04sequential_97/lstm_292/while/lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_97/lstm_292/while/lstm_cell_244/Sigmoid_2Sigmoid9sequential_97/lstm_292/while/lstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_97/lstm_292/while/lstm_cell_244/Relu_1Relu4sequential_97/lstm_292/while/lstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_97/lstm_292/while/lstm_cell_244/mul_2Mul8sequential_97/lstm_292/while/lstm_cell_244/Sigmoid_2:y:0?sequential_97/lstm_292/while/lstm_cell_244/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_97/lstm_292/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_97_lstm_292_while_placeholder_1(sequential_97_lstm_292_while_placeholder4sequential_97/lstm_292/while/lstm_cell_244/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_97/lstm_292/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_97/lstm_292/while/addAddV2(sequential_97_lstm_292_while_placeholder+sequential_97/lstm_292/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_97/lstm_292/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_97/lstm_292/while/add_1AddV2Fsequential_97_lstm_292_while_sequential_97_lstm_292_while_loop_counter-sequential_97/lstm_292/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_97/lstm_292/while/IdentityIdentity&sequential_97/lstm_292/while/add_1:z:0"^sequential_97/lstm_292/while/NoOp*
T0*
_output_shapes
: ?
'sequential_97/lstm_292/while/Identity_1IdentityLsequential_97_lstm_292_while_sequential_97_lstm_292_while_maximum_iterations"^sequential_97/lstm_292/while/NoOp*
T0*
_output_shapes
: ?
'sequential_97/lstm_292/while/Identity_2Identity$sequential_97/lstm_292/while/add:z:0"^sequential_97/lstm_292/while/NoOp*
T0*
_output_shapes
: ?
'sequential_97/lstm_292/while/Identity_3IdentityQsequential_97/lstm_292/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_97/lstm_292/while/NoOp*
T0*
_output_shapes
: ?
'sequential_97/lstm_292/while/Identity_4Identity4sequential_97/lstm_292/while/lstm_cell_244/mul_2:z:0"^sequential_97/lstm_292/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_97/lstm_292/while/Identity_5Identity4sequential_97/lstm_292/while/lstm_cell_244/add_1:z:0"^sequential_97/lstm_292/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_97/lstm_292/while/NoOpNoOpB^sequential_97/lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOpA^sequential_97/lstm_292/while/lstm_cell_244/MatMul/ReadVariableOpC^sequential_97/lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_97_lstm_292_while_identity.sequential_97/lstm_292/while/Identity:output:0"[
'sequential_97_lstm_292_while_identity_10sequential_97/lstm_292/while/Identity_1:output:0"[
'sequential_97_lstm_292_while_identity_20sequential_97/lstm_292/while/Identity_2:output:0"[
'sequential_97_lstm_292_while_identity_30sequential_97/lstm_292/while/Identity_3:output:0"[
'sequential_97_lstm_292_while_identity_40sequential_97/lstm_292/while/Identity_4:output:0"[
'sequential_97_lstm_292_while_identity_50sequential_97/lstm_292/while/Identity_5:output:0"?
Jsequential_97_lstm_292_while_lstm_cell_244_biasadd_readvariableop_resourceLsequential_97_lstm_292_while_lstm_cell_244_biasadd_readvariableop_resource_0"?
Ksequential_97_lstm_292_while_lstm_cell_244_matmul_1_readvariableop_resourceMsequential_97_lstm_292_while_lstm_cell_244_matmul_1_readvariableop_resource_0"?
Isequential_97_lstm_292_while_lstm_cell_244_matmul_readvariableop_resourceKsequential_97_lstm_292_while_lstm_cell_244_matmul_readvariableop_resource_0"?
Csequential_97_lstm_292_while_sequential_97_lstm_292_strided_slice_1Esequential_97_lstm_292_while_sequential_97_lstm_292_strided_slice_1_0"?
sequential_97_lstm_292_while_tensorarrayv2read_tensorlistgetitem_sequential_97_lstm_292_tensorarrayunstack_tensorlistfromtensor?sequential_97_lstm_292_while_tensorarrayv2read_tensorlistgetitem_sequential_97_lstm_292_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_97/lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOpAsequential_97/lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOp2?
@sequential_97/lstm_292/while/lstm_cell_244/MatMul/ReadVariableOp@sequential_97/lstm_292/while/lstm_cell_244/MatMul/ReadVariableOp2?
Bsequential_97/lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOpBsequential_97/lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_244_layer_call_and_return_conditional_losses_1487495

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
/__inference_sequential_97_layer_call_fn_1484583

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
J__inference_sequential_97_layer_call_and_return_conditional_losses_1483820o
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
while_body_1485710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_243_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_243_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_243_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_243_matmul_readvariableop_resource:	?G
4while_lstm_cell_243_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_243_biasadd_readvariableop_resource:	???*while/lstm_cell_243/BiasAdd/ReadVariableOp?)while/lstm_cell_243/MatMul/ReadVariableOp?+while/lstm_cell_243/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_243/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_243_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_243/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_243_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_243/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_243/addAddV2$while/lstm_cell_243/MatMul:product:0&while/lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_243_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_243/BiasAddBiasAddwhile/lstm_cell_243/add:z:02while/lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_243/splitSplit,while/lstm_cell_243/split/split_dim:output:0$while/lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_243/SigmoidSigmoid"while/lstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_243/Sigmoid_1Sigmoid"while/lstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mulMul!while/lstm_cell_243/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_243/ReluRelu"while/lstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mul_1Mulwhile/lstm_cell_243/Sigmoid:y:0&while/lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/add_1AddV2while/lstm_cell_243/mul:z:0while/lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_243/Sigmoid_2Sigmoid"while/lstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_243/Relu_1Reluwhile/lstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mul_2Mul!while/lstm_cell_243/Sigmoid_2:y:0(while/lstm_cell_243/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_243/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_243/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_243/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_243/BiasAdd/ReadVariableOp*^while/lstm_cell_243/MatMul/ReadVariableOp,^while/lstm_cell_243/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_243_biasadd_readvariableop_resource5while_lstm_cell_243_biasadd_readvariableop_resource_0"n
4while_lstm_cell_243_matmul_1_readvariableop_resource6while_lstm_cell_243_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_243_matmul_readvariableop_resource4while_lstm_cell_243_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_243/BiasAdd/ReadVariableOp*while/lstm_cell_243/BiasAdd/ReadVariableOp2V
)while/lstm_cell_243/MatMul/ReadVariableOp)while/lstm_cell_243/MatMul/ReadVariableOp2Z
+while/lstm_cell_243/MatMul_1/ReadVariableOp+while/lstm_cell_243/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1482987

inputs(
lstm_cell_244_1482905:	d?(
lstm_cell_244_1482907:	2?$
lstm_cell_244_1482909:	?
identity??%lstm_cell_244/StatefulPartitionedCall?while;
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
%lstm_cell_244/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_244_1482905lstm_cell_244_1482907lstm_cell_244_1482909*
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
J__inference_lstm_cell_244_layer_call_and_return_conditional_losses_1482859n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_244_1482905lstm_cell_244_1482907lstm_cell_244_1482909*
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
while_body_1482918*
condR
while_cond_1482917*K
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
NoOpNoOp&^lstm_cell_244/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_244/StatefulPartitionedCall%lstm_cell_244/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?J
?
E__inference_lstm_291_layer_call_and_return_conditional_losses_1485937

inputs?
,lstm_cell_243_matmul_readvariableop_resource:	?A
.lstm_cell_243_matmul_1_readvariableop_resource:	d?<
-lstm_cell_243_biasadd_readvariableop_resource:	?
identity??$lstm_cell_243/BiasAdd/ReadVariableOp?#lstm_cell_243/MatMul/ReadVariableOp?%lstm_cell_243/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_243/MatMul/ReadVariableOpReadVariableOp,lstm_cell_243_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_243/MatMulMatMulstrided_slice_2:output:0+lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_243_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_243/MatMul_1MatMulzeros:output:0-lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_243/addAddV2lstm_cell_243/MatMul:product:0 lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_243_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_243/BiasAddBiasAddlstm_cell_243/add:z:0,lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_243/splitSplit&lstm_cell_243/split/split_dim:output:0lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_243/SigmoidSigmoidlstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_243/Sigmoid_1Sigmoidlstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_243/mulMullstm_cell_243/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_243/ReluRelulstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_243/mul_1Mullstm_cell_243/Sigmoid:y:0 lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_243/add_1AddV2lstm_cell_243/mul:z:0lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_243/Sigmoid_2Sigmoidlstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_243/Relu_1Relulstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_243/mul_2Mullstm_cell_243/Sigmoid_2:y:0"lstm_cell_243/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_243_matmul_readvariableop_resource.lstm_cell_243_matmul_1_readvariableop_resource-lstm_cell_243_biasadd_readvariableop_resource*
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
while_body_1485853*
condR
while_cond_1485852*K
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
NoOpNoOp%^lstm_cell_243/BiasAdd/ReadVariableOp$^lstm_cell_243/MatMul/ReadVariableOp&^lstm_cell_243/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_243/BiasAdd/ReadVariableOp$lstm_cell_243/BiasAdd/ReadVariableOp2J
#lstm_cell_243/MatMul/ReadVariableOp#lstm_cell_243/MatMul/ReadVariableOp2N
%lstm_cell_243/MatMul_1/ReadVariableOp%lstm_cell_243/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_1482296
lstm_291_inputV
Csequential_97_lstm_291_lstm_cell_243_matmul_readvariableop_resource:	?X
Esequential_97_lstm_291_lstm_cell_243_matmul_1_readvariableop_resource:	d?S
Dsequential_97_lstm_291_lstm_cell_243_biasadd_readvariableop_resource:	?V
Csequential_97_lstm_292_lstm_cell_244_matmul_readvariableop_resource:	d?X
Esequential_97_lstm_292_lstm_cell_244_matmul_1_readvariableop_resource:	2?S
Dsequential_97_lstm_292_lstm_cell_244_biasadd_readvariableop_resource:	?U
Csequential_97_lstm_293_lstm_cell_245_matmul_readvariableop_resource:2(W
Esequential_97_lstm_293_lstm_cell_245_matmul_1_readvariableop_resource:
(R
Dsequential_97_lstm_293_lstm_cell_245_biasadd_readvariableop_resource:(G
5sequential_97_dense_97_matmul_readvariableop_resource:
D
6sequential_97_dense_97_biasadd_readvariableop_resource:
identity??-sequential_97/dense_97/BiasAdd/ReadVariableOp?,sequential_97/dense_97/MatMul/ReadVariableOp?;sequential_97/lstm_291/lstm_cell_243/BiasAdd/ReadVariableOp?:sequential_97/lstm_291/lstm_cell_243/MatMul/ReadVariableOp?<sequential_97/lstm_291/lstm_cell_243/MatMul_1/ReadVariableOp?sequential_97/lstm_291/while?;sequential_97/lstm_292/lstm_cell_244/BiasAdd/ReadVariableOp?:sequential_97/lstm_292/lstm_cell_244/MatMul/ReadVariableOp?<sequential_97/lstm_292/lstm_cell_244/MatMul_1/ReadVariableOp?sequential_97/lstm_292/while?;sequential_97/lstm_293/lstm_cell_245/BiasAdd/ReadVariableOp?:sequential_97/lstm_293/lstm_cell_245/MatMul/ReadVariableOp?<sequential_97/lstm_293/lstm_cell_245/MatMul_1/ReadVariableOp?sequential_97/lstm_293/whileZ
sequential_97/lstm_291/ShapeShapelstm_291_input*
T0*
_output_shapes
:t
*sequential_97/lstm_291/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_97/lstm_291/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_97/lstm_291/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_97/lstm_291/strided_sliceStridedSlice%sequential_97/lstm_291/Shape:output:03sequential_97/lstm_291/strided_slice/stack:output:05sequential_97/lstm_291/strided_slice/stack_1:output:05sequential_97/lstm_291/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_97/lstm_291/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_97/lstm_291/zeros/packedPack-sequential_97/lstm_291/strided_slice:output:0.sequential_97/lstm_291/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_97/lstm_291/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_97/lstm_291/zerosFill,sequential_97/lstm_291/zeros/packed:output:0+sequential_97/lstm_291/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_97/lstm_291/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_97/lstm_291/zeros_1/packedPack-sequential_97/lstm_291/strided_slice:output:00sequential_97/lstm_291/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_97/lstm_291/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_97/lstm_291/zeros_1Fill.sequential_97/lstm_291/zeros_1/packed:output:0-sequential_97/lstm_291/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_97/lstm_291/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_97/lstm_291/transpose	Transposelstm_291_input.sequential_97/lstm_291/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_97/lstm_291/Shape_1Shape$sequential_97/lstm_291/transpose:y:0*
T0*
_output_shapes
:v
,sequential_97/lstm_291/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_97/lstm_291/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_97/lstm_291/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_97/lstm_291/strided_slice_1StridedSlice'sequential_97/lstm_291/Shape_1:output:05sequential_97/lstm_291/strided_slice_1/stack:output:07sequential_97/lstm_291/strided_slice_1/stack_1:output:07sequential_97/lstm_291/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_97/lstm_291/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_97/lstm_291/TensorArrayV2TensorListReserve;sequential_97/lstm_291/TensorArrayV2/element_shape:output:0/sequential_97/lstm_291/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_97/lstm_291/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_97/lstm_291/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_97/lstm_291/transpose:y:0Usequential_97/lstm_291/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_97/lstm_291/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_97/lstm_291/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_97/lstm_291/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_97/lstm_291/strided_slice_2StridedSlice$sequential_97/lstm_291/transpose:y:05sequential_97/lstm_291/strided_slice_2/stack:output:07sequential_97/lstm_291/strided_slice_2/stack_1:output:07sequential_97/lstm_291/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_97/lstm_291/lstm_cell_243/MatMul/ReadVariableOpReadVariableOpCsequential_97_lstm_291_lstm_cell_243_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_97/lstm_291/lstm_cell_243/MatMulMatMul/sequential_97/lstm_291/strided_slice_2:output:0Bsequential_97/lstm_291/lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_97/lstm_291/lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOpEsequential_97_lstm_291_lstm_cell_243_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_97/lstm_291/lstm_cell_243/MatMul_1MatMul%sequential_97/lstm_291/zeros:output:0Dsequential_97/lstm_291/lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_97/lstm_291/lstm_cell_243/addAddV25sequential_97/lstm_291/lstm_cell_243/MatMul:product:07sequential_97/lstm_291/lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_97/lstm_291/lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOpDsequential_97_lstm_291_lstm_cell_243_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_97/lstm_291/lstm_cell_243/BiasAddBiasAdd,sequential_97/lstm_291/lstm_cell_243/add:z:0Csequential_97/lstm_291/lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_97/lstm_291/lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_97/lstm_291/lstm_cell_243/splitSplit=sequential_97/lstm_291/lstm_cell_243/split/split_dim:output:05sequential_97/lstm_291/lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_97/lstm_291/lstm_cell_243/SigmoidSigmoid3sequential_97/lstm_291/lstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_97/lstm_291/lstm_cell_243/Sigmoid_1Sigmoid3sequential_97/lstm_291/lstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_97/lstm_291/lstm_cell_243/mulMul2sequential_97/lstm_291/lstm_cell_243/Sigmoid_1:y:0'sequential_97/lstm_291/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_97/lstm_291/lstm_cell_243/ReluRelu3sequential_97/lstm_291/lstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_97/lstm_291/lstm_cell_243/mul_1Mul0sequential_97/lstm_291/lstm_cell_243/Sigmoid:y:07sequential_97/lstm_291/lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_97/lstm_291/lstm_cell_243/add_1AddV2,sequential_97/lstm_291/lstm_cell_243/mul:z:0.sequential_97/lstm_291/lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_97/lstm_291/lstm_cell_243/Sigmoid_2Sigmoid3sequential_97/lstm_291/lstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_97/lstm_291/lstm_cell_243/Relu_1Relu.sequential_97/lstm_291/lstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_97/lstm_291/lstm_cell_243/mul_2Mul2sequential_97/lstm_291/lstm_cell_243/Sigmoid_2:y:09sequential_97/lstm_291/lstm_cell_243/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_97/lstm_291/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_97/lstm_291/TensorArrayV2_1TensorListReserve=sequential_97/lstm_291/TensorArrayV2_1/element_shape:output:0/sequential_97/lstm_291/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_97/lstm_291/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_97/lstm_291/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_97/lstm_291/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_97/lstm_291/whileWhile2sequential_97/lstm_291/while/loop_counter:output:08sequential_97/lstm_291/while/maximum_iterations:output:0$sequential_97/lstm_291/time:output:0/sequential_97/lstm_291/TensorArrayV2_1:handle:0%sequential_97/lstm_291/zeros:output:0'sequential_97/lstm_291/zeros_1:output:0/sequential_97/lstm_291/strided_slice_1:output:0Nsequential_97/lstm_291/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_97_lstm_291_lstm_cell_243_matmul_readvariableop_resourceEsequential_97_lstm_291_lstm_cell_243_matmul_1_readvariableop_resourceDsequential_97_lstm_291_lstm_cell_243_biasadd_readvariableop_resource*
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
)sequential_97_lstm_291_while_body_1481928*5
cond-R+
)sequential_97_lstm_291_while_cond_1481927*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_97/lstm_291/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_97/lstm_291/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_97/lstm_291/while:output:3Psequential_97/lstm_291/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_97/lstm_291/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_97/lstm_291/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_97/lstm_291/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_97/lstm_291/strided_slice_3StridedSliceBsequential_97/lstm_291/TensorArrayV2Stack/TensorListStack:tensor:05sequential_97/lstm_291/strided_slice_3/stack:output:07sequential_97/lstm_291/strided_slice_3/stack_1:output:07sequential_97/lstm_291/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_97/lstm_291/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_97/lstm_291/transpose_1	TransposeBsequential_97/lstm_291/TensorArrayV2Stack/TensorListStack:tensor:00sequential_97/lstm_291/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_97/lstm_291/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_97/lstm_292/ShapeShape&sequential_97/lstm_291/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_97/lstm_292/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_97/lstm_292/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_97/lstm_292/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_97/lstm_292/strided_sliceStridedSlice%sequential_97/lstm_292/Shape:output:03sequential_97/lstm_292/strided_slice/stack:output:05sequential_97/lstm_292/strided_slice/stack_1:output:05sequential_97/lstm_292/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_97/lstm_292/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_97/lstm_292/zeros/packedPack-sequential_97/lstm_292/strided_slice:output:0.sequential_97/lstm_292/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_97/lstm_292/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_97/lstm_292/zerosFill,sequential_97/lstm_292/zeros/packed:output:0+sequential_97/lstm_292/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_97/lstm_292/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_97/lstm_292/zeros_1/packedPack-sequential_97/lstm_292/strided_slice:output:00sequential_97/lstm_292/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_97/lstm_292/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_97/lstm_292/zeros_1Fill.sequential_97/lstm_292/zeros_1/packed:output:0-sequential_97/lstm_292/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_97/lstm_292/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_97/lstm_292/transpose	Transpose&sequential_97/lstm_291/transpose_1:y:0.sequential_97/lstm_292/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_97/lstm_292/Shape_1Shape$sequential_97/lstm_292/transpose:y:0*
T0*
_output_shapes
:v
,sequential_97/lstm_292/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_97/lstm_292/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_97/lstm_292/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_97/lstm_292/strided_slice_1StridedSlice'sequential_97/lstm_292/Shape_1:output:05sequential_97/lstm_292/strided_slice_1/stack:output:07sequential_97/lstm_292/strided_slice_1/stack_1:output:07sequential_97/lstm_292/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_97/lstm_292/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_97/lstm_292/TensorArrayV2TensorListReserve;sequential_97/lstm_292/TensorArrayV2/element_shape:output:0/sequential_97/lstm_292/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_97/lstm_292/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_97/lstm_292/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_97/lstm_292/transpose:y:0Usequential_97/lstm_292/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_97/lstm_292/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_97/lstm_292/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_97/lstm_292/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_97/lstm_292/strided_slice_2StridedSlice$sequential_97/lstm_292/transpose:y:05sequential_97/lstm_292/strided_slice_2/stack:output:07sequential_97/lstm_292/strided_slice_2/stack_1:output:07sequential_97/lstm_292/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_97/lstm_292/lstm_cell_244/MatMul/ReadVariableOpReadVariableOpCsequential_97_lstm_292_lstm_cell_244_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_97/lstm_292/lstm_cell_244/MatMulMatMul/sequential_97/lstm_292/strided_slice_2:output:0Bsequential_97/lstm_292/lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_97/lstm_292/lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOpEsequential_97_lstm_292_lstm_cell_244_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_97/lstm_292/lstm_cell_244/MatMul_1MatMul%sequential_97/lstm_292/zeros:output:0Dsequential_97/lstm_292/lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_97/lstm_292/lstm_cell_244/addAddV25sequential_97/lstm_292/lstm_cell_244/MatMul:product:07sequential_97/lstm_292/lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_97/lstm_292/lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOpDsequential_97_lstm_292_lstm_cell_244_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_97/lstm_292/lstm_cell_244/BiasAddBiasAdd,sequential_97/lstm_292/lstm_cell_244/add:z:0Csequential_97/lstm_292/lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_97/lstm_292/lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_97/lstm_292/lstm_cell_244/splitSplit=sequential_97/lstm_292/lstm_cell_244/split/split_dim:output:05sequential_97/lstm_292/lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_97/lstm_292/lstm_cell_244/SigmoidSigmoid3sequential_97/lstm_292/lstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_97/lstm_292/lstm_cell_244/Sigmoid_1Sigmoid3sequential_97/lstm_292/lstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_97/lstm_292/lstm_cell_244/mulMul2sequential_97/lstm_292/lstm_cell_244/Sigmoid_1:y:0'sequential_97/lstm_292/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_97/lstm_292/lstm_cell_244/ReluRelu3sequential_97/lstm_292/lstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_97/lstm_292/lstm_cell_244/mul_1Mul0sequential_97/lstm_292/lstm_cell_244/Sigmoid:y:07sequential_97/lstm_292/lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_97/lstm_292/lstm_cell_244/add_1AddV2,sequential_97/lstm_292/lstm_cell_244/mul:z:0.sequential_97/lstm_292/lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_97/lstm_292/lstm_cell_244/Sigmoid_2Sigmoid3sequential_97/lstm_292/lstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_97/lstm_292/lstm_cell_244/Relu_1Relu.sequential_97/lstm_292/lstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_97/lstm_292/lstm_cell_244/mul_2Mul2sequential_97/lstm_292/lstm_cell_244/Sigmoid_2:y:09sequential_97/lstm_292/lstm_cell_244/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_97/lstm_292/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_97/lstm_292/TensorArrayV2_1TensorListReserve=sequential_97/lstm_292/TensorArrayV2_1/element_shape:output:0/sequential_97/lstm_292/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_97/lstm_292/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_97/lstm_292/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_97/lstm_292/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_97/lstm_292/whileWhile2sequential_97/lstm_292/while/loop_counter:output:08sequential_97/lstm_292/while/maximum_iterations:output:0$sequential_97/lstm_292/time:output:0/sequential_97/lstm_292/TensorArrayV2_1:handle:0%sequential_97/lstm_292/zeros:output:0'sequential_97/lstm_292/zeros_1:output:0/sequential_97/lstm_292/strided_slice_1:output:0Nsequential_97/lstm_292/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_97_lstm_292_lstm_cell_244_matmul_readvariableop_resourceEsequential_97_lstm_292_lstm_cell_244_matmul_1_readvariableop_resourceDsequential_97_lstm_292_lstm_cell_244_biasadd_readvariableop_resource*
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
)sequential_97_lstm_292_while_body_1482067*5
cond-R+
)sequential_97_lstm_292_while_cond_1482066*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_97/lstm_292/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_97/lstm_292/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_97/lstm_292/while:output:3Psequential_97/lstm_292/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_97/lstm_292/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_97/lstm_292/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_97/lstm_292/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_97/lstm_292/strided_slice_3StridedSliceBsequential_97/lstm_292/TensorArrayV2Stack/TensorListStack:tensor:05sequential_97/lstm_292/strided_slice_3/stack:output:07sequential_97/lstm_292/strided_slice_3/stack_1:output:07sequential_97/lstm_292/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_97/lstm_292/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_97/lstm_292/transpose_1	TransposeBsequential_97/lstm_292/TensorArrayV2Stack/TensorListStack:tensor:00sequential_97/lstm_292/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_97/lstm_292/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_97/lstm_293/ShapeShape&sequential_97/lstm_292/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_97/lstm_293/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_97/lstm_293/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_97/lstm_293/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_97/lstm_293/strided_sliceStridedSlice%sequential_97/lstm_293/Shape:output:03sequential_97/lstm_293/strided_slice/stack:output:05sequential_97/lstm_293/strided_slice/stack_1:output:05sequential_97/lstm_293/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_97/lstm_293/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_97/lstm_293/zeros/packedPack-sequential_97/lstm_293/strided_slice:output:0.sequential_97/lstm_293/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_97/lstm_293/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_97/lstm_293/zerosFill,sequential_97/lstm_293/zeros/packed:output:0+sequential_97/lstm_293/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_97/lstm_293/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_97/lstm_293/zeros_1/packedPack-sequential_97/lstm_293/strided_slice:output:00sequential_97/lstm_293/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_97/lstm_293/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_97/lstm_293/zeros_1Fill.sequential_97/lstm_293/zeros_1/packed:output:0-sequential_97/lstm_293/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_97/lstm_293/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_97/lstm_293/transpose	Transpose&sequential_97/lstm_292/transpose_1:y:0.sequential_97/lstm_293/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_97/lstm_293/Shape_1Shape$sequential_97/lstm_293/transpose:y:0*
T0*
_output_shapes
:v
,sequential_97/lstm_293/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_97/lstm_293/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_97/lstm_293/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_97/lstm_293/strided_slice_1StridedSlice'sequential_97/lstm_293/Shape_1:output:05sequential_97/lstm_293/strided_slice_1/stack:output:07sequential_97/lstm_293/strided_slice_1/stack_1:output:07sequential_97/lstm_293/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_97/lstm_293/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_97/lstm_293/TensorArrayV2TensorListReserve;sequential_97/lstm_293/TensorArrayV2/element_shape:output:0/sequential_97/lstm_293/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_97/lstm_293/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_97/lstm_293/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_97/lstm_293/transpose:y:0Usequential_97/lstm_293/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_97/lstm_293/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_97/lstm_293/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_97/lstm_293/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_97/lstm_293/strided_slice_2StridedSlice$sequential_97/lstm_293/transpose:y:05sequential_97/lstm_293/strided_slice_2/stack:output:07sequential_97/lstm_293/strided_slice_2/stack_1:output:07sequential_97/lstm_293/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_97/lstm_293/lstm_cell_245/MatMul/ReadVariableOpReadVariableOpCsequential_97_lstm_293_lstm_cell_245_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_97/lstm_293/lstm_cell_245/MatMulMatMul/sequential_97/lstm_293/strided_slice_2:output:0Bsequential_97/lstm_293/lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_97/lstm_293/lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOpEsequential_97_lstm_293_lstm_cell_245_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_97/lstm_293/lstm_cell_245/MatMul_1MatMul%sequential_97/lstm_293/zeros:output:0Dsequential_97/lstm_293/lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_97/lstm_293/lstm_cell_245/addAddV25sequential_97/lstm_293/lstm_cell_245/MatMul:product:07sequential_97/lstm_293/lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_97/lstm_293/lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOpDsequential_97_lstm_293_lstm_cell_245_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_97/lstm_293/lstm_cell_245/BiasAddBiasAdd,sequential_97/lstm_293/lstm_cell_245/add:z:0Csequential_97/lstm_293/lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_97/lstm_293/lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_97/lstm_293/lstm_cell_245/splitSplit=sequential_97/lstm_293/lstm_cell_245/split/split_dim:output:05sequential_97/lstm_293/lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_97/lstm_293/lstm_cell_245/SigmoidSigmoid3sequential_97/lstm_293/lstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_97/lstm_293/lstm_cell_245/Sigmoid_1Sigmoid3sequential_97/lstm_293/lstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_97/lstm_293/lstm_cell_245/mulMul2sequential_97/lstm_293/lstm_cell_245/Sigmoid_1:y:0'sequential_97/lstm_293/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_97/lstm_293/lstm_cell_245/ReluRelu3sequential_97/lstm_293/lstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_97/lstm_293/lstm_cell_245/mul_1Mul0sequential_97/lstm_293/lstm_cell_245/Sigmoid:y:07sequential_97/lstm_293/lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_97/lstm_293/lstm_cell_245/add_1AddV2,sequential_97/lstm_293/lstm_cell_245/mul:z:0.sequential_97/lstm_293/lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_97/lstm_293/lstm_cell_245/Sigmoid_2Sigmoid3sequential_97/lstm_293/lstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_97/lstm_293/lstm_cell_245/Relu_1Relu.sequential_97/lstm_293/lstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_97/lstm_293/lstm_cell_245/mul_2Mul2sequential_97/lstm_293/lstm_cell_245/Sigmoid_2:y:09sequential_97/lstm_293/lstm_cell_245/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_97/lstm_293/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_97/lstm_293/TensorArrayV2_1TensorListReserve=sequential_97/lstm_293/TensorArrayV2_1/element_shape:output:0/sequential_97/lstm_293/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_97/lstm_293/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_97/lstm_293/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_97/lstm_293/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_97/lstm_293/whileWhile2sequential_97/lstm_293/while/loop_counter:output:08sequential_97/lstm_293/while/maximum_iterations:output:0$sequential_97/lstm_293/time:output:0/sequential_97/lstm_293/TensorArrayV2_1:handle:0%sequential_97/lstm_293/zeros:output:0'sequential_97/lstm_293/zeros_1:output:0/sequential_97/lstm_293/strided_slice_1:output:0Nsequential_97/lstm_293/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_97_lstm_293_lstm_cell_245_matmul_readvariableop_resourceEsequential_97_lstm_293_lstm_cell_245_matmul_1_readvariableop_resourceDsequential_97_lstm_293_lstm_cell_245_biasadd_readvariableop_resource*
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
)sequential_97_lstm_293_while_body_1482206*5
cond-R+
)sequential_97_lstm_293_while_cond_1482205*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_97/lstm_293/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_97/lstm_293/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_97/lstm_293/while:output:3Psequential_97/lstm_293/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_97/lstm_293/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_97/lstm_293/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_97/lstm_293/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_97/lstm_293/strided_slice_3StridedSliceBsequential_97/lstm_293/TensorArrayV2Stack/TensorListStack:tensor:05sequential_97/lstm_293/strided_slice_3/stack:output:07sequential_97/lstm_293/strided_slice_3/stack_1:output:07sequential_97/lstm_293/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_97/lstm_293/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_97/lstm_293/transpose_1	TransposeBsequential_97/lstm_293/TensorArrayV2Stack/TensorListStack:tensor:00sequential_97/lstm_293/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_97/lstm_293/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_97/dense_97/MatMul/ReadVariableOpReadVariableOp5sequential_97_dense_97_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_97/dense_97/MatMulMatMul/sequential_97/lstm_293/strided_slice_3:output:04sequential_97/dense_97/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_97/dense_97/BiasAdd/ReadVariableOpReadVariableOp6sequential_97_dense_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_97/dense_97/BiasAddBiasAdd'sequential_97/dense_97/MatMul:product:05sequential_97/dense_97/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_97/dense_97/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_97/dense_97/BiasAdd/ReadVariableOp-^sequential_97/dense_97/MatMul/ReadVariableOp<^sequential_97/lstm_291/lstm_cell_243/BiasAdd/ReadVariableOp;^sequential_97/lstm_291/lstm_cell_243/MatMul/ReadVariableOp=^sequential_97/lstm_291/lstm_cell_243/MatMul_1/ReadVariableOp^sequential_97/lstm_291/while<^sequential_97/lstm_292/lstm_cell_244/BiasAdd/ReadVariableOp;^sequential_97/lstm_292/lstm_cell_244/MatMul/ReadVariableOp=^sequential_97/lstm_292/lstm_cell_244/MatMul_1/ReadVariableOp^sequential_97/lstm_292/while<^sequential_97/lstm_293/lstm_cell_245/BiasAdd/ReadVariableOp;^sequential_97/lstm_293/lstm_cell_245/MatMul/ReadVariableOp=^sequential_97/lstm_293/lstm_cell_245/MatMul_1/ReadVariableOp^sequential_97/lstm_293/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_97/dense_97/BiasAdd/ReadVariableOp-sequential_97/dense_97/BiasAdd/ReadVariableOp2\
,sequential_97/dense_97/MatMul/ReadVariableOp,sequential_97/dense_97/MatMul/ReadVariableOp2z
;sequential_97/lstm_291/lstm_cell_243/BiasAdd/ReadVariableOp;sequential_97/lstm_291/lstm_cell_243/BiasAdd/ReadVariableOp2x
:sequential_97/lstm_291/lstm_cell_243/MatMul/ReadVariableOp:sequential_97/lstm_291/lstm_cell_243/MatMul/ReadVariableOp2|
<sequential_97/lstm_291/lstm_cell_243/MatMul_1/ReadVariableOp<sequential_97/lstm_291/lstm_cell_243/MatMul_1/ReadVariableOp2<
sequential_97/lstm_291/whilesequential_97/lstm_291/while2z
;sequential_97/lstm_292/lstm_cell_244/BiasAdd/ReadVariableOp;sequential_97/lstm_292/lstm_cell_244/BiasAdd/ReadVariableOp2x
:sequential_97/lstm_292/lstm_cell_244/MatMul/ReadVariableOp:sequential_97/lstm_292/lstm_cell_244/MatMul/ReadVariableOp2|
<sequential_97/lstm_292/lstm_cell_244/MatMul_1/ReadVariableOp<sequential_97/lstm_292/lstm_cell_244/MatMul_1/ReadVariableOp2<
sequential_97/lstm_292/whilesequential_97/lstm_292/while2z
;sequential_97/lstm_293/lstm_cell_245/BiasAdd/ReadVariableOp;sequential_97/lstm_293/lstm_cell_245/BiasAdd/ReadVariableOp2x
:sequential_97/lstm_293/lstm_cell_245/MatMul/ReadVariableOp:sequential_97/lstm_293/lstm_cell_245/MatMul/ReadVariableOp2|
<sequential_97/lstm_293/lstm_cell_245/MatMul_1/ReadVariableOp<sequential_97/lstm_293/lstm_cell_245/MatMul_1/ReadVariableOp2<
sequential_97/lstm_293/whilesequential_97/lstm_293/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_291_input
?
?
*__inference_lstm_291_layer_call_fn_1485497

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
E__inference_lstm_291_layer_call_and_return_conditional_losses_1483495s
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
*__inference_lstm_293_layer_call_fn_1486740

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
E__inference_lstm_293_layer_call_and_return_conditional_losses_1484011o
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
?#
?
while_body_1482568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_243_1482592_0:	?0
while_lstm_cell_243_1482594_0:	d?,
while_lstm_cell_243_1482596_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_243_1482592:	?.
while_lstm_cell_243_1482594:	d?*
while_lstm_cell_243_1482596:	???+while/lstm_cell_243/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_243/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_243_1482592_0while_lstm_cell_243_1482594_0while_lstm_cell_243_1482596_0*
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
J__inference_lstm_cell_243_layer_call_and_return_conditional_losses_1482509?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_243/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_243/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_243/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_243/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_243_1482592while_lstm_cell_243_1482592_0"<
while_lstm_cell_243_1482594while_lstm_cell_243_1482594_0"<
while_lstm_cell_243_1482596while_lstm_cell_243_1482596_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_243/StatefulPartitionedCall+while/lstm_cell_243/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1486469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_244_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_244_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_244_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_244_matmul_readvariableop_resource:	d?G
4while_lstm_cell_244_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_244_biasadd_readvariableop_resource:	???*while/lstm_cell_244/BiasAdd/ReadVariableOp?)while/lstm_cell_244/MatMul/ReadVariableOp?+while/lstm_cell_244/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_244/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_244_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_244/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_244_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_244/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_244/addAddV2$while/lstm_cell_244/MatMul:product:0&while/lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_244_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_244/BiasAddBiasAddwhile/lstm_cell_244/add:z:02while/lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_244/splitSplit,while/lstm_cell_244/split/split_dim:output:0$while/lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_244/SigmoidSigmoid"while/lstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_244/Sigmoid_1Sigmoid"while/lstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mulMul!while/lstm_cell_244/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_244/ReluRelu"while/lstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mul_1Mulwhile/lstm_cell_244/Sigmoid:y:0&while/lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/add_1AddV2while/lstm_cell_244/mul:z:0while/lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_244/Sigmoid_2Sigmoid"while/lstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_244/Relu_1Reluwhile/lstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mul_2Mul!while/lstm_cell_244/Sigmoid_2:y:0(while/lstm_cell_244/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_244/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_244/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_244/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_244/BiasAdd/ReadVariableOp*^while/lstm_cell_244/MatMul/ReadVariableOp,^while/lstm_cell_244/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_244_biasadd_readvariableop_resource5while_lstm_cell_244_biasadd_readvariableop_resource_0"n
4while_lstm_cell_244_matmul_1_readvariableop_resource6while_lstm_cell_244_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_244_matmul_readvariableop_resource4while_lstm_cell_244_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_244/BiasAdd/ReadVariableOp*while/lstm_cell_244/BiasAdd/ReadVariableOp2V
)while/lstm_cell_244/MatMul/ReadVariableOp)while/lstm_cell_244/MatMul/ReadVariableOp2Z
+while/lstm_cell_244/MatMul_1/ReadVariableOp+while/lstm_cell_244/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_97_lstm_291_while_body_1481928J
Fsequential_97_lstm_291_while_sequential_97_lstm_291_while_loop_counterP
Lsequential_97_lstm_291_while_sequential_97_lstm_291_while_maximum_iterations,
(sequential_97_lstm_291_while_placeholder.
*sequential_97_lstm_291_while_placeholder_1.
*sequential_97_lstm_291_while_placeholder_2.
*sequential_97_lstm_291_while_placeholder_3I
Esequential_97_lstm_291_while_sequential_97_lstm_291_strided_slice_1_0?
?sequential_97_lstm_291_while_tensorarrayv2read_tensorlistgetitem_sequential_97_lstm_291_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_97_lstm_291_while_lstm_cell_243_matmul_readvariableop_resource_0:	?`
Msequential_97_lstm_291_while_lstm_cell_243_matmul_1_readvariableop_resource_0:	d?[
Lsequential_97_lstm_291_while_lstm_cell_243_biasadd_readvariableop_resource_0:	?)
%sequential_97_lstm_291_while_identity+
'sequential_97_lstm_291_while_identity_1+
'sequential_97_lstm_291_while_identity_2+
'sequential_97_lstm_291_while_identity_3+
'sequential_97_lstm_291_while_identity_4+
'sequential_97_lstm_291_while_identity_5G
Csequential_97_lstm_291_while_sequential_97_lstm_291_strided_slice_1?
sequential_97_lstm_291_while_tensorarrayv2read_tensorlistgetitem_sequential_97_lstm_291_tensorarrayunstack_tensorlistfromtensor\
Isequential_97_lstm_291_while_lstm_cell_243_matmul_readvariableop_resource:	?^
Ksequential_97_lstm_291_while_lstm_cell_243_matmul_1_readvariableop_resource:	d?Y
Jsequential_97_lstm_291_while_lstm_cell_243_biasadd_readvariableop_resource:	???Asequential_97/lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOp?@sequential_97/lstm_291/while/lstm_cell_243/MatMul/ReadVariableOp?Bsequential_97/lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOp?
Nsequential_97/lstm_291/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_97/lstm_291/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_97_lstm_291_while_tensorarrayv2read_tensorlistgetitem_sequential_97_lstm_291_tensorarrayunstack_tensorlistfromtensor_0(sequential_97_lstm_291_while_placeholderWsequential_97/lstm_291/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_97/lstm_291/while/lstm_cell_243/MatMul/ReadVariableOpReadVariableOpKsequential_97_lstm_291_while_lstm_cell_243_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_97/lstm_291/while/lstm_cell_243/MatMulMatMulGsequential_97/lstm_291/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_97/lstm_291/while/lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_97/lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOpMsequential_97_lstm_291_while_lstm_cell_243_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_97/lstm_291/while/lstm_cell_243/MatMul_1MatMul*sequential_97_lstm_291_while_placeholder_2Jsequential_97/lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_97/lstm_291/while/lstm_cell_243/addAddV2;sequential_97/lstm_291/while/lstm_cell_243/MatMul:product:0=sequential_97/lstm_291/while/lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_97/lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOpLsequential_97_lstm_291_while_lstm_cell_243_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_97/lstm_291/while/lstm_cell_243/BiasAddBiasAdd2sequential_97/lstm_291/while/lstm_cell_243/add:z:0Isequential_97/lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_97/lstm_291/while/lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_97/lstm_291/while/lstm_cell_243/splitSplitCsequential_97/lstm_291/while/lstm_cell_243/split/split_dim:output:0;sequential_97/lstm_291/while/lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_97/lstm_291/while/lstm_cell_243/SigmoidSigmoid9sequential_97/lstm_291/while/lstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_97/lstm_291/while/lstm_cell_243/Sigmoid_1Sigmoid9sequential_97/lstm_291/while/lstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_97/lstm_291/while/lstm_cell_243/mulMul8sequential_97/lstm_291/while/lstm_cell_243/Sigmoid_1:y:0*sequential_97_lstm_291_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_97/lstm_291/while/lstm_cell_243/ReluRelu9sequential_97/lstm_291/while/lstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_97/lstm_291/while/lstm_cell_243/mul_1Mul6sequential_97/lstm_291/while/lstm_cell_243/Sigmoid:y:0=sequential_97/lstm_291/while/lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_97/lstm_291/while/lstm_cell_243/add_1AddV22sequential_97/lstm_291/while/lstm_cell_243/mul:z:04sequential_97/lstm_291/while/lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_97/lstm_291/while/lstm_cell_243/Sigmoid_2Sigmoid9sequential_97/lstm_291/while/lstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_97/lstm_291/while/lstm_cell_243/Relu_1Relu4sequential_97/lstm_291/while/lstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_97/lstm_291/while/lstm_cell_243/mul_2Mul8sequential_97/lstm_291/while/lstm_cell_243/Sigmoid_2:y:0?sequential_97/lstm_291/while/lstm_cell_243/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_97/lstm_291/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_97_lstm_291_while_placeholder_1(sequential_97_lstm_291_while_placeholder4sequential_97/lstm_291/while/lstm_cell_243/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_97/lstm_291/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_97/lstm_291/while/addAddV2(sequential_97_lstm_291_while_placeholder+sequential_97/lstm_291/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_97/lstm_291/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_97/lstm_291/while/add_1AddV2Fsequential_97_lstm_291_while_sequential_97_lstm_291_while_loop_counter-sequential_97/lstm_291/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_97/lstm_291/while/IdentityIdentity&sequential_97/lstm_291/while/add_1:z:0"^sequential_97/lstm_291/while/NoOp*
T0*
_output_shapes
: ?
'sequential_97/lstm_291/while/Identity_1IdentityLsequential_97_lstm_291_while_sequential_97_lstm_291_while_maximum_iterations"^sequential_97/lstm_291/while/NoOp*
T0*
_output_shapes
: ?
'sequential_97/lstm_291/while/Identity_2Identity$sequential_97/lstm_291/while/add:z:0"^sequential_97/lstm_291/while/NoOp*
T0*
_output_shapes
: ?
'sequential_97/lstm_291/while/Identity_3IdentityQsequential_97/lstm_291/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_97/lstm_291/while/NoOp*
T0*
_output_shapes
: ?
'sequential_97/lstm_291/while/Identity_4Identity4sequential_97/lstm_291/while/lstm_cell_243/mul_2:z:0"^sequential_97/lstm_291/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_97/lstm_291/while/Identity_5Identity4sequential_97/lstm_291/while/lstm_cell_243/add_1:z:0"^sequential_97/lstm_291/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_97/lstm_291/while/NoOpNoOpB^sequential_97/lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOpA^sequential_97/lstm_291/while/lstm_cell_243/MatMul/ReadVariableOpC^sequential_97/lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_97_lstm_291_while_identity.sequential_97/lstm_291/while/Identity:output:0"[
'sequential_97_lstm_291_while_identity_10sequential_97/lstm_291/while/Identity_1:output:0"[
'sequential_97_lstm_291_while_identity_20sequential_97/lstm_291/while/Identity_2:output:0"[
'sequential_97_lstm_291_while_identity_30sequential_97/lstm_291/while/Identity_3:output:0"[
'sequential_97_lstm_291_while_identity_40sequential_97/lstm_291/while/Identity_4:output:0"[
'sequential_97_lstm_291_while_identity_50sequential_97/lstm_291/while/Identity_5:output:0"?
Jsequential_97_lstm_291_while_lstm_cell_243_biasadd_readvariableop_resourceLsequential_97_lstm_291_while_lstm_cell_243_biasadd_readvariableop_resource_0"?
Ksequential_97_lstm_291_while_lstm_cell_243_matmul_1_readvariableop_resourceMsequential_97_lstm_291_while_lstm_cell_243_matmul_1_readvariableop_resource_0"?
Isequential_97_lstm_291_while_lstm_cell_243_matmul_readvariableop_resourceKsequential_97_lstm_291_while_lstm_cell_243_matmul_readvariableop_resource_0"?
Csequential_97_lstm_291_while_sequential_97_lstm_291_strided_slice_1Esequential_97_lstm_291_while_sequential_97_lstm_291_strided_slice_1_0"?
sequential_97_lstm_291_while_tensorarrayv2read_tensorlistgetitem_sequential_97_lstm_291_tensorarrayunstack_tensorlistfromtensor?sequential_97_lstm_291_while_tensorarrayv2read_tensorlistgetitem_sequential_97_lstm_291_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_97/lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOpAsequential_97/lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOp2?
@sequential_97/lstm_291/while/lstm_cell_243/MatMul/ReadVariableOp@sequential_97/lstm_291/while/lstm_cell_243/MatMul/ReadVariableOp2?
Bsequential_97/lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOpBsequential_97/lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1486468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1486468___redundant_placeholder05
1while_while_cond_1486468___redundant_placeholder15
1while_while_cond_1486468___redundant_placeholder25
1while_while_cond_1486468___redundant_placeholder3
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
lstm_292_while_cond_1484807.
*lstm_292_while_lstm_292_while_loop_counter4
0lstm_292_while_lstm_292_while_maximum_iterations
lstm_292_while_placeholder 
lstm_292_while_placeholder_1 
lstm_292_while_placeholder_2 
lstm_292_while_placeholder_30
,lstm_292_while_less_lstm_292_strided_slice_1G
Clstm_292_while_lstm_292_while_cond_1484807___redundant_placeholder0G
Clstm_292_while_lstm_292_while_cond_1484807___redundant_placeholder1G
Clstm_292_while_lstm_292_while_cond_1484807___redundant_placeholder2G
Clstm_292_while_lstm_292_while_cond_1484807___redundant_placeholder3
lstm_292_while_identity
?
lstm_292/while/LessLesslstm_292_while_placeholder,lstm_292_while_less_lstm_292_strided_slice_1*
T0*
_output_shapes
: ]
lstm_292/while/IdentityIdentitylstm_292/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_292_while_identity lstm_292/while/Identity:output:0*(
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
while_body_1485853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_243_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_243_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_243_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_243_matmul_readvariableop_resource:	?G
4while_lstm_cell_243_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_243_biasadd_readvariableop_resource:	???*while/lstm_cell_243/BiasAdd/ReadVariableOp?)while/lstm_cell_243/MatMul/ReadVariableOp?+while/lstm_cell_243/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_243/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_243_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_243/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_243_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_243/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_243/addAddV2$while/lstm_cell_243/MatMul:product:0&while/lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_243_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_243/BiasAddBiasAddwhile/lstm_cell_243/add:z:02while/lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_243/splitSplit,while/lstm_cell_243/split/split_dim:output:0$while/lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_243/SigmoidSigmoid"while/lstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_243/Sigmoid_1Sigmoid"while/lstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mulMul!while/lstm_cell_243/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_243/ReluRelu"while/lstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mul_1Mulwhile/lstm_cell_243/Sigmoid:y:0&while/lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/add_1AddV2while/lstm_cell_243/mul:z:0while/lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_243/Sigmoid_2Sigmoid"while/lstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_243/Relu_1Reluwhile/lstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mul_2Mul!while/lstm_cell_243/Sigmoid_2:y:0(while/lstm_cell_243/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_243/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_243/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_243/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_243/BiasAdd/ReadVariableOp*^while/lstm_cell_243/MatMul/ReadVariableOp,^while/lstm_cell_243/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_243_biasadd_readvariableop_resource5while_lstm_cell_243_biasadd_readvariableop_resource_0"n
4while_lstm_cell_243_matmul_1_readvariableop_resource6while_lstm_cell_243_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_243_matmul_readvariableop_resource4while_lstm_cell_243_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_243/BiasAdd/ReadVariableOp*while/lstm_cell_243/BiasAdd/ReadVariableOp2V
)while/lstm_cell_243/MatMul/ReadVariableOp)while/lstm_cell_243/MatMul/ReadVariableOp2Z
+while/lstm_cell_243/MatMul_1/ReadVariableOp+while/lstm_cell_243/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_293_while_cond_1485373.
*lstm_293_while_lstm_293_while_loop_counter4
0lstm_293_while_lstm_293_while_maximum_iterations
lstm_293_while_placeholder 
lstm_293_while_placeholder_1 
lstm_293_while_placeholder_2 
lstm_293_while_placeholder_30
,lstm_293_while_less_lstm_293_strided_slice_1G
Clstm_293_while_lstm_293_while_cond_1485373___redundant_placeholder0G
Clstm_293_while_lstm_293_while_cond_1485373___redundant_placeholder1G
Clstm_293_while_lstm_293_while_cond_1485373___redundant_placeholder2G
Clstm_293_while_lstm_293_while_cond_1485373___redundant_placeholder3
lstm_293_while_identity
?
lstm_293/while/LessLesslstm_293_while_placeholder,lstm_293_while_less_lstm_293_strided_slice_1*
T0*
_output_shapes
: ]
lstm_293/while/IdentityIdentitylstm_293/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_293_while_identity lstm_293/while/Identity:output:0*(
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
while_cond_1485852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1485852___redundant_placeholder05
1while_while_cond_1485852___redundant_placeholder15
1while_while_cond_1485852___redundant_placeholder25
1while_while_cond_1485852___redundant_placeholder3
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
E__inference_lstm_293_layer_call_and_return_conditional_losses_1487169

inputs>
,lstm_cell_245_matmul_readvariableop_resource:2(@
.lstm_cell_245_matmul_1_readvariableop_resource:
(;
-lstm_cell_245_biasadd_readvariableop_resource:(
identity??$lstm_cell_245/BiasAdd/ReadVariableOp?#lstm_cell_245/MatMul/ReadVariableOp?%lstm_cell_245/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_245/MatMul/ReadVariableOpReadVariableOp,lstm_cell_245_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_245/MatMulMatMulstrided_slice_2:output:0+lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_245_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_245/MatMul_1MatMulzeros:output:0-lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_245/addAddV2lstm_cell_245/MatMul:product:0 lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_245_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_245/BiasAddBiasAddlstm_cell_245/add:z:0,lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_245/splitSplit&lstm_cell_245/split/split_dim:output:0lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_245/SigmoidSigmoidlstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_245/Sigmoid_1Sigmoidlstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_245/mulMullstm_cell_245/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_245/ReluRelulstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_245/mul_1Mullstm_cell_245/Sigmoid:y:0 lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_245/add_1AddV2lstm_cell_245/mul:z:0lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_245/Sigmoid_2Sigmoidlstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_245/Relu_1Relulstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_245/mul_2Mullstm_cell_245/Sigmoid_2:y:0"lstm_cell_245/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_245_matmul_readvariableop_resource.lstm_cell_245_matmul_1_readvariableop_resource-lstm_cell_245_biasadd_readvariableop_resource*
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
while_body_1487085*
condR
while_cond_1487084*K
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
NoOpNoOp%^lstm_cell_245/BiasAdd/ReadVariableOp$^lstm_cell_245/MatMul/ReadVariableOp&^lstm_cell_245/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_245/BiasAdd/ReadVariableOp$lstm_cell_245/BiasAdd/ReadVariableOp2J
#lstm_cell_245/MatMul/ReadVariableOp#lstm_cell_245/MatMul/ReadVariableOp2N
%lstm_cell_245/MatMul_1/ReadVariableOp%lstm_cell_245/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_244_layer_call_fn_1487446

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
J__inference_lstm_cell_244_layer_call_and_return_conditional_losses_1482713o
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
while_cond_1487084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1487084___redundant_placeholder05
1while_while_cond_1487084___redundant_placeholder15
1while_while_cond_1487084___redundant_placeholder25
1while_while_cond_1487084___redundant_placeholder3
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
J__inference_lstm_cell_243_layer_call_and_return_conditional_losses_1487397

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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1486410
inputs_0?
,lstm_cell_244_matmul_readvariableop_resource:	d?A
.lstm_cell_244_matmul_1_readvariableop_resource:	2?<
-lstm_cell_244_biasadd_readvariableop_resource:	?
identity??$lstm_cell_244/BiasAdd/ReadVariableOp?#lstm_cell_244/MatMul/ReadVariableOp?%lstm_cell_244/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_244/MatMul/ReadVariableOpReadVariableOp,lstm_cell_244_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_244/MatMulMatMulstrided_slice_2:output:0+lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_244_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_244/MatMul_1MatMulzeros:output:0-lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_244/addAddV2lstm_cell_244/MatMul:product:0 lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_244_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_244/BiasAddBiasAddlstm_cell_244/add:z:0,lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_244/splitSplit&lstm_cell_244/split/split_dim:output:0lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_244/SigmoidSigmoidlstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_244/Sigmoid_1Sigmoidlstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_244/mulMullstm_cell_244/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_244/ReluRelulstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_244/mul_1Mullstm_cell_244/Sigmoid:y:0 lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_244/add_1AddV2lstm_cell_244/mul:z:0lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_244/Sigmoid_2Sigmoidlstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_244/Relu_1Relulstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_244/mul_2Mullstm_cell_244/Sigmoid_2:y:0"lstm_cell_244/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_244_matmul_readvariableop_resource.lstm_cell_244_matmul_1_readvariableop_resource-lstm_cell_244_biasadd_readvariableop_resource*
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
while_body_1486326*
condR
while_cond_1486325*K
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
NoOpNoOp%^lstm_cell_244/BiasAdd/ReadVariableOp$^lstm_cell_244/MatMul/ReadVariableOp&^lstm_cell_244/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_244/BiasAdd/ReadVariableOp$lstm_cell_244/BiasAdd/ReadVariableOp2J
#lstm_cell_244/MatMul/ReadVariableOp#lstm_cell_244/MatMul/ReadVariableOp2N
%lstm_cell_244/MatMul_1/ReadVariableOp%lstm_cell_244/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_291_layer_call_and_return_conditional_losses_1484341

inputs?
,lstm_cell_243_matmul_readvariableop_resource:	?A
.lstm_cell_243_matmul_1_readvariableop_resource:	d?<
-lstm_cell_243_biasadd_readvariableop_resource:	?
identity??$lstm_cell_243/BiasAdd/ReadVariableOp?#lstm_cell_243/MatMul/ReadVariableOp?%lstm_cell_243/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_243/MatMul/ReadVariableOpReadVariableOp,lstm_cell_243_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_243/MatMulMatMulstrided_slice_2:output:0+lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_243_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_243/MatMul_1MatMulzeros:output:0-lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_243/addAddV2lstm_cell_243/MatMul:product:0 lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_243_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_243/BiasAddBiasAddlstm_cell_243/add:z:0,lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_243/splitSplit&lstm_cell_243/split/split_dim:output:0lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_243/SigmoidSigmoidlstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_243/Sigmoid_1Sigmoidlstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_243/mulMullstm_cell_243/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_243/ReluRelulstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_243/mul_1Mullstm_cell_243/Sigmoid:y:0 lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_243/add_1AddV2lstm_cell_243/mul:z:0lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_243/Sigmoid_2Sigmoidlstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_243/Relu_1Relulstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_243/mul_2Mullstm_cell_243/Sigmoid_2:y:0"lstm_cell_243/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_243_matmul_readvariableop_resource.lstm_cell_243_matmul_1_readvariableop_resource-lstm_cell_243_biasadd_readvariableop_resource*
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
while_body_1484257*
condR
while_cond_1484256*K
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
NoOpNoOp%^lstm_cell_243/BiasAdd/ReadVariableOp$^lstm_cell_243/MatMul/ReadVariableOp&^lstm_cell_243/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_243/BiasAdd/ReadVariableOp$lstm_cell_243/BiasAdd/ReadVariableOp2J
#lstm_cell_243/MatMul/ReadVariableOp#lstm_cell_243/MatMul/ReadVariableOp2N
%lstm_cell_243/MatMul_1/ReadVariableOp%lstm_cell_243/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_97_layer_call_and_return_conditional_losses_1484409

inputs#
lstm_291_1484382:	?#
lstm_291_1484384:	d?
lstm_291_1484386:	?#
lstm_292_1484389:	d?#
lstm_292_1484391:	2?
lstm_292_1484393:	?"
lstm_293_1484396:2("
lstm_293_1484398:
(
lstm_293_1484400:("
dense_97_1484403:

dense_97_1484405:
identity?? dense_97/StatefulPartitionedCall? lstm_291/StatefulPartitionedCall? lstm_292/StatefulPartitionedCall? lstm_293/StatefulPartitionedCall?
 lstm_291/StatefulPartitionedCallStatefulPartitionedCallinputslstm_291_1484382lstm_291_1484384lstm_291_1484386*
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
E__inference_lstm_291_layer_call_and_return_conditional_losses_1484341?
 lstm_292/StatefulPartitionedCallStatefulPartitionedCall)lstm_291/StatefulPartitionedCall:output:0lstm_292_1484389lstm_292_1484391lstm_292_1484393*
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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1484176?
 lstm_293/StatefulPartitionedCallStatefulPartitionedCall)lstm_292/StatefulPartitionedCall:output:0lstm_293_1484396lstm_293_1484398lstm_293_1484400*
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
E__inference_lstm_293_layer_call_and_return_conditional_losses_1484011?
 dense_97/StatefulPartitionedCallStatefulPartitionedCall)lstm_293/StatefulPartitionedCall:output:0dense_97_1484403dense_97_1484405*
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
E__inference_dense_97_layer_call_and_return_conditional_losses_1483813x
IdentityIdentity)dense_97/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_97/StatefulPartitionedCall!^lstm_291/StatefulPartitionedCall!^lstm_292/StatefulPartitionedCall!^lstm_293/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall2D
 lstm_291/StatefulPartitionedCall lstm_291/StatefulPartitionedCall2D
 lstm_292/StatefulPartitionedCall lstm_292/StatefulPartitionedCall2D
 lstm_293/StatefulPartitionedCall lstm_293/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_292_layer_call_and_return_conditional_losses_1486267
inputs_0?
,lstm_cell_244_matmul_readvariableop_resource:	d?A
.lstm_cell_244_matmul_1_readvariableop_resource:	2?<
-lstm_cell_244_biasadd_readvariableop_resource:	?
identity??$lstm_cell_244/BiasAdd/ReadVariableOp?#lstm_cell_244/MatMul/ReadVariableOp?%lstm_cell_244/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_244/MatMul/ReadVariableOpReadVariableOp,lstm_cell_244_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_244/MatMulMatMulstrided_slice_2:output:0+lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_244_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_244/MatMul_1MatMulzeros:output:0-lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_244/addAddV2lstm_cell_244/MatMul:product:0 lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_244_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_244/BiasAddBiasAddlstm_cell_244/add:z:0,lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_244/splitSplit&lstm_cell_244/split/split_dim:output:0lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_244/SigmoidSigmoidlstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_244/Sigmoid_1Sigmoidlstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_244/mulMullstm_cell_244/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_244/ReluRelulstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_244/mul_1Mullstm_cell_244/Sigmoid:y:0 lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_244/add_1AddV2lstm_cell_244/mul:z:0lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_244/Sigmoid_2Sigmoidlstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_244/Relu_1Relulstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_244/mul_2Mullstm_cell_244/Sigmoid_2:y:0"lstm_cell_244/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_244_matmul_readvariableop_resource.lstm_cell_244_matmul_1_readvariableop_resource-lstm_cell_244_biasadd_readvariableop_resource*
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
while_body_1486183*
condR
while_cond_1486182*K
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
NoOpNoOp%^lstm_cell_244/BiasAdd/ReadVariableOp$^lstm_cell_244/MatMul/ReadVariableOp&^lstm_cell_244/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_244/BiasAdd/ReadVariableOp$lstm_cell_244/BiasAdd/ReadVariableOp2J
#lstm_cell_244/MatMul/ReadVariableOp#lstm_cell_244/MatMul/ReadVariableOp2N
%lstm_cell_244/MatMul_1/ReadVariableOp%lstm_cell_244/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?8
?
while_body_1486612
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_244_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_244_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_244_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_244_matmul_readvariableop_resource:	d?G
4while_lstm_cell_244_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_244_biasadd_readvariableop_resource:	???*while/lstm_cell_244/BiasAdd/ReadVariableOp?)while/lstm_cell_244/MatMul/ReadVariableOp?+while/lstm_cell_244/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_244/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_244_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_244/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_244_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_244/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_244/addAddV2$while/lstm_cell_244/MatMul:product:0&while/lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_244_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_244/BiasAddBiasAddwhile/lstm_cell_244/add:z:02while/lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_244/splitSplit,while/lstm_cell_244/split/split_dim:output:0$while/lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_244/SigmoidSigmoid"while/lstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_244/Sigmoid_1Sigmoid"while/lstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mulMul!while/lstm_cell_244/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_244/ReluRelu"while/lstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mul_1Mulwhile/lstm_cell_244/Sigmoid:y:0&while/lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/add_1AddV2while/lstm_cell_244/mul:z:0while/lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_244/Sigmoid_2Sigmoid"while/lstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_244/Relu_1Reluwhile/lstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mul_2Mul!while/lstm_cell_244/Sigmoid_2:y:0(while/lstm_cell_244/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_244/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_244/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_244/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_244/BiasAdd/ReadVariableOp*^while/lstm_cell_244/MatMul/ReadVariableOp,^while/lstm_cell_244/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_244_biasadd_readvariableop_resource5while_lstm_cell_244_biasadd_readvariableop_resource_0"n
4while_lstm_cell_244_matmul_1_readvariableop_resource6while_lstm_cell_244_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_244_matmul_readvariableop_resource4while_lstm_cell_244_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_244/BiasAdd/ReadVariableOp*while/lstm_cell_244/BiasAdd/ReadVariableOp2V
)while/lstm_cell_244/MatMul/ReadVariableOp)while/lstm_cell_244/MatMul/ReadVariableOp2Z
+while/lstm_cell_244/MatMul_1/ReadVariableOp+while/lstm_cell_244/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1483710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1483710___redundant_placeholder05
1while_while_cond_1483710___redundant_placeholder15
1while_while_cond_1483710___redundant_placeholder25
1while_while_cond_1483710___redundant_placeholder3
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
??
?
#__inference__traced_restore_1487898
file_prefix2
 assignvariableop_dense_97_kernel:
.
 assignvariableop_1_dense_97_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_291_lstm_cell_291_kernel:	?M
:assignvariableop_8_lstm_291_lstm_cell_291_recurrent_kernel:	d?=
.assignvariableop_9_lstm_291_lstm_cell_291_bias:	?D
1assignvariableop_10_lstm_292_lstm_cell_292_kernel:	d?N
;assignvariableop_11_lstm_292_lstm_cell_292_recurrent_kernel:	2?>
/assignvariableop_12_lstm_292_lstm_cell_292_bias:	?C
1assignvariableop_13_lstm_293_lstm_cell_293_kernel:2(M
;assignvariableop_14_lstm_293_lstm_cell_293_recurrent_kernel:
(=
/assignvariableop_15_lstm_293_lstm_cell_293_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_97_kernel_m:
6
(assignvariableop_19_adam_dense_97_bias_m:K
8assignvariableop_20_adam_lstm_291_lstm_cell_291_kernel_m:	?U
Bassignvariableop_21_adam_lstm_291_lstm_cell_291_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_291_lstm_cell_291_bias_m:	?K
8assignvariableop_23_adam_lstm_292_lstm_cell_292_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_292_lstm_cell_292_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_292_lstm_cell_292_bias_m:	?J
8assignvariableop_26_adam_lstm_293_lstm_cell_293_kernel_m:2(T
Bassignvariableop_27_adam_lstm_293_lstm_cell_293_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_293_lstm_cell_293_bias_m:(<
*assignvariableop_29_adam_dense_97_kernel_v:
6
(assignvariableop_30_adam_dense_97_bias_v:K
8assignvariableop_31_adam_lstm_291_lstm_cell_291_kernel_v:	?U
Bassignvariableop_32_adam_lstm_291_lstm_cell_291_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_291_lstm_cell_291_bias_v:	?K
8assignvariableop_34_adam_lstm_292_lstm_cell_292_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_292_lstm_cell_292_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_292_lstm_cell_292_bias_v:	?J
8assignvariableop_37_adam_lstm_293_lstm_cell_293_kernel_v:2(T
Bassignvariableop_38_adam_lstm_293_lstm_cell_293_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_293_lstm_cell_293_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_97_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_97_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_291_lstm_cell_291_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_291_lstm_cell_291_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_291_lstm_cell_291_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_292_lstm_cell_292_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_292_lstm_cell_292_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_292_lstm_cell_292_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_293_lstm_cell_293_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_293_lstm_cell_293_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_293_lstm_cell_293_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_97_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_97_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_291_lstm_cell_291_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_291_lstm_cell_291_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_291_lstm_cell_291_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_292_lstm_cell_292_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_292_lstm_cell_292_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_292_lstm_cell_292_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_293_lstm_cell_293_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_293_lstm_cell_293_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_293_lstm_cell_293_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_97_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_97_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_291_lstm_cell_291_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_291_lstm_cell_291_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_291_lstm_cell_291_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_292_lstm_cell_292_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_292_lstm_cell_292_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_292_lstm_cell_292_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_293_lstm_cell_293_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_293_lstm_cell_293_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_293_lstm_cell_293_bias_vIdentity_39:output:0"/device:CPU:0*
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
J__inference_lstm_cell_243_layer_call_and_return_conditional_losses_1482363

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
while_cond_1484091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1484091___redundant_placeholder05
1while_while_cond_1484091___redundant_placeholder15
1while_while_cond_1484091___redundant_placeholder25
1while_while_cond_1484091___redundant_placeholder3
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
/__inference_lstm_cell_244_layer_call_fn_1487463

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
J__inference_lstm_cell_244_layer_call_and_return_conditional_losses_1482859o
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
lstm_291_while_cond_1484668.
*lstm_291_while_lstm_291_while_loop_counter4
0lstm_291_while_lstm_291_while_maximum_iterations
lstm_291_while_placeholder 
lstm_291_while_placeholder_1 
lstm_291_while_placeholder_2 
lstm_291_while_placeholder_30
,lstm_291_while_less_lstm_291_strided_slice_1G
Clstm_291_while_lstm_291_while_cond_1484668___redundant_placeholder0G
Clstm_291_while_lstm_291_while_cond_1484668___redundant_placeholder1G
Clstm_291_while_lstm_291_while_cond_1484668___redundant_placeholder2G
Clstm_291_while_lstm_291_while_cond_1484668___redundant_placeholder3
lstm_291_while_identity
?
lstm_291/while/LessLesslstm_291_while_placeholder,lstm_291_while_less_lstm_291_strided_slice_1*
T0*
_output_shapes
: ]
lstm_291/while/IdentityIdentitylstm_291/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_291_while_identity lstm_291/while/Identity:output:0*(
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
E__inference_lstm_293_layer_call_and_return_conditional_losses_1483146

inputs'
lstm_cell_245_1483064:2('
lstm_cell_245_1483066:
(#
lstm_cell_245_1483068:(
identity??%lstm_cell_245/StatefulPartitionedCall?while;
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
%lstm_cell_245/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_245_1483064lstm_cell_245_1483066lstm_cell_245_1483068*
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
J__inference_lstm_cell_245_layer_call_and_return_conditional_losses_1483063n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_245_1483064lstm_cell_245_1483066lstm_cell_245_1483068*
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
while_body_1483077*
condR
while_cond_1483076*K
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
NoOpNoOp&^lstm_cell_245/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_245/StatefulPartitionedCall%lstm_cell_245/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
J__inference_sequential_97_layer_call_and_return_conditional_losses_1483820

inputs#
lstm_291_1483496:	?#
lstm_291_1483498:	d?
lstm_291_1483500:	?#
lstm_292_1483646:	d?#
lstm_292_1483648:	2?
lstm_292_1483650:	?"
lstm_293_1483796:2("
lstm_293_1483798:
(
lstm_293_1483800:("
dense_97_1483814:

dense_97_1483816:
identity?? dense_97/StatefulPartitionedCall? lstm_291/StatefulPartitionedCall? lstm_292/StatefulPartitionedCall? lstm_293/StatefulPartitionedCall?
 lstm_291/StatefulPartitionedCallStatefulPartitionedCallinputslstm_291_1483496lstm_291_1483498lstm_291_1483500*
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
E__inference_lstm_291_layer_call_and_return_conditional_losses_1483495?
 lstm_292/StatefulPartitionedCallStatefulPartitionedCall)lstm_291/StatefulPartitionedCall:output:0lstm_292_1483646lstm_292_1483648lstm_292_1483650*
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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1483645?
 lstm_293/StatefulPartitionedCallStatefulPartitionedCall)lstm_292/StatefulPartitionedCall:output:0lstm_293_1483796lstm_293_1483798lstm_293_1483800*
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
E__inference_lstm_293_layer_call_and_return_conditional_losses_1483795?
 dense_97/StatefulPartitionedCallStatefulPartitionedCall)lstm_293/StatefulPartitionedCall:output:0dense_97_1483814dense_97_1483816*
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
E__inference_dense_97_layer_call_and_return_conditional_losses_1483813x
IdentityIdentity)dense_97/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_97/StatefulPartitionedCall!^lstm_291/StatefulPartitionedCall!^lstm_292/StatefulPartitionedCall!^lstm_293/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall2D
 lstm_291/StatefulPartitionedCall lstm_291/StatefulPartitionedCall2D
 lstm_292/StatefulPartitionedCall lstm_292/StatefulPartitionedCall2D
 lstm_293/StatefulPartitionedCall lstm_293/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_1483711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_245_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_245_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_245_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_245_matmul_readvariableop_resource:2(F
4while_lstm_cell_245_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_245_biasadd_readvariableop_resource:(??*while/lstm_cell_245/BiasAdd/ReadVariableOp?)while/lstm_cell_245/MatMul/ReadVariableOp?+while/lstm_cell_245/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_245/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_245_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_245/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_245_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_245/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_245/addAddV2$while/lstm_cell_245/MatMul:product:0&while/lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_245_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_245/BiasAddBiasAddwhile/lstm_cell_245/add:z:02while/lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_245/splitSplit,while/lstm_cell_245/split/split_dim:output:0$while/lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_245/SigmoidSigmoid"while/lstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_245/Sigmoid_1Sigmoid"while/lstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mulMul!while/lstm_cell_245/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_245/ReluRelu"while/lstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mul_1Mulwhile/lstm_cell_245/Sigmoid:y:0&while/lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/add_1AddV2while/lstm_cell_245/mul:z:0while/lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_245/Sigmoid_2Sigmoid"while/lstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_245/Relu_1Reluwhile/lstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mul_2Mul!while/lstm_cell_245/Sigmoid_2:y:0(while/lstm_cell_245/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_245/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_245/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_245/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_245/BiasAdd/ReadVariableOp*^while/lstm_cell_245/MatMul/ReadVariableOp,^while/lstm_cell_245/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_245_biasadd_readvariableop_resource5while_lstm_cell_245_biasadd_readvariableop_resource_0"n
4while_lstm_cell_245_matmul_1_readvariableop_resource6while_lstm_cell_245_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_245_matmul_readvariableop_resource4while_lstm_cell_245_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_245/BiasAdd/ReadVariableOp*while/lstm_cell_245/BiasAdd/ReadVariableOp2V
)while/lstm_cell_245/MatMul/ReadVariableOp)while/lstm_cell_245/MatMul/ReadVariableOp2Z
+while/lstm_cell_245/MatMul_1/ReadVariableOp+while/lstm_cell_245/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1483560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1483560___redundant_placeholder05
1while_while_cond_1483560___redundant_placeholder15
1while_while_cond_1483560___redundant_placeholder25
1while_while_cond_1483560___redundant_placeholder3
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
E__inference_lstm_293_layer_call_and_return_conditional_losses_1486883
inputs_0>
,lstm_cell_245_matmul_readvariableop_resource:2(@
.lstm_cell_245_matmul_1_readvariableop_resource:
(;
-lstm_cell_245_biasadd_readvariableop_resource:(
identity??$lstm_cell_245/BiasAdd/ReadVariableOp?#lstm_cell_245/MatMul/ReadVariableOp?%lstm_cell_245/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_245/MatMul/ReadVariableOpReadVariableOp,lstm_cell_245_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_245/MatMulMatMulstrided_slice_2:output:0+lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_245_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_245/MatMul_1MatMulzeros:output:0-lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_245/addAddV2lstm_cell_245/MatMul:product:0 lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_245_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_245/BiasAddBiasAddlstm_cell_245/add:z:0,lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_245/splitSplit&lstm_cell_245/split/split_dim:output:0lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_245/SigmoidSigmoidlstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_245/Sigmoid_1Sigmoidlstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_245/mulMullstm_cell_245/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_245/ReluRelulstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_245/mul_1Mullstm_cell_245/Sigmoid:y:0 lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_245/add_1AddV2lstm_cell_245/mul:z:0lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_245/Sigmoid_2Sigmoidlstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_245/Relu_1Relulstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_245/mul_2Mullstm_cell_245/Sigmoid_2:y:0"lstm_cell_245/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_245_matmul_readvariableop_resource.lstm_cell_245_matmul_1_readvariableop_resource-lstm_cell_245_biasadd_readvariableop_resource*
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
while_body_1486799*
condR
while_cond_1486798*K
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
NoOpNoOp%^lstm_cell_245/BiasAdd/ReadVariableOp$^lstm_cell_245/MatMul/ReadVariableOp&^lstm_cell_245/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_245/BiasAdd/ReadVariableOp$lstm_cell_245/BiasAdd/ReadVariableOp2J
#lstm_cell_245/MatMul/ReadVariableOp#lstm_cell_245/MatMul/ReadVariableOp2N
%lstm_cell_245/MatMul_1/ReadVariableOp%lstm_cell_245/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?

?
lstm_292_while_cond_1485234.
*lstm_292_while_lstm_292_while_loop_counter4
0lstm_292_while_lstm_292_while_maximum_iterations
lstm_292_while_placeholder 
lstm_292_while_placeholder_1 
lstm_292_while_placeholder_2 
lstm_292_while_placeholder_30
,lstm_292_while_less_lstm_292_strided_slice_1G
Clstm_292_while_lstm_292_while_cond_1485234___redundant_placeholder0G
Clstm_292_while_lstm_292_while_cond_1485234___redundant_placeholder1G
Clstm_292_while_lstm_292_while_cond_1485234___redundant_placeholder2G
Clstm_292_while_lstm_292_while_cond_1485234___redundant_placeholder3
lstm_292_while_identity
?
lstm_292/while/LessLesslstm_292_while_placeholder,lstm_292_while_less_lstm_292_strided_slice_1*
T0*
_output_shapes
: ]
lstm_292/while/IdentityIdentitylstm_292/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_292_while_identity lstm_292/while/Identity:output:0*(
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
)sequential_97_lstm_293_while_cond_1482205J
Fsequential_97_lstm_293_while_sequential_97_lstm_293_while_loop_counterP
Lsequential_97_lstm_293_while_sequential_97_lstm_293_while_maximum_iterations,
(sequential_97_lstm_293_while_placeholder.
*sequential_97_lstm_293_while_placeholder_1.
*sequential_97_lstm_293_while_placeholder_2.
*sequential_97_lstm_293_while_placeholder_3L
Hsequential_97_lstm_293_while_less_sequential_97_lstm_293_strided_slice_1c
_sequential_97_lstm_293_while_sequential_97_lstm_293_while_cond_1482205___redundant_placeholder0c
_sequential_97_lstm_293_while_sequential_97_lstm_293_while_cond_1482205___redundant_placeholder1c
_sequential_97_lstm_293_while_sequential_97_lstm_293_while_cond_1482205___redundant_placeholder2c
_sequential_97_lstm_293_while_sequential_97_lstm_293_while_cond_1482205___redundant_placeholder3)
%sequential_97_lstm_293_while_identity
?
!sequential_97/lstm_293/while/LessLess(sequential_97_lstm_293_while_placeholderHsequential_97_lstm_293_while_less_sequential_97_lstm_293_strided_slice_1*
T0*
_output_shapes
: y
%sequential_97/lstm_293/while/IdentityIdentity%sequential_97/lstm_293/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_97_lstm_293_while_identity.sequential_97/lstm_293/while/Identity:output:0*(
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
E__inference_lstm_293_layer_call_and_return_conditional_losses_1483795

inputs>
,lstm_cell_245_matmul_readvariableop_resource:2(@
.lstm_cell_245_matmul_1_readvariableop_resource:
(;
-lstm_cell_245_biasadd_readvariableop_resource:(
identity??$lstm_cell_245/BiasAdd/ReadVariableOp?#lstm_cell_245/MatMul/ReadVariableOp?%lstm_cell_245/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_245/MatMul/ReadVariableOpReadVariableOp,lstm_cell_245_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_245/MatMulMatMulstrided_slice_2:output:0+lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_245_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_245/MatMul_1MatMulzeros:output:0-lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_245/addAddV2lstm_cell_245/MatMul:product:0 lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_245_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_245/BiasAddBiasAddlstm_cell_245/add:z:0,lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_245/splitSplit&lstm_cell_245/split/split_dim:output:0lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_245/SigmoidSigmoidlstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_245/Sigmoid_1Sigmoidlstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_245/mulMullstm_cell_245/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_245/ReluRelulstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_245/mul_1Mullstm_cell_245/Sigmoid:y:0 lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_245/add_1AddV2lstm_cell_245/mul:z:0lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_245/Sigmoid_2Sigmoidlstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_245/Relu_1Relulstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_245/mul_2Mullstm_cell_245/Sigmoid_2:y:0"lstm_cell_245/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_245_matmul_readvariableop_resource.lstm_cell_245_matmul_1_readvariableop_resource-lstm_cell_245_biasadd_readvariableop_resource*
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
while_body_1483711*
condR
while_cond_1483710*K
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
NoOpNoOp%^lstm_cell_245/BiasAdd/ReadVariableOp$^lstm_cell_245/MatMul/ReadVariableOp&^lstm_cell_245/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_245/BiasAdd/ReadVariableOp$lstm_cell_245/BiasAdd/ReadVariableOp2J
#lstm_cell_245/MatMul/ReadVariableOp#lstm_cell_245/MatMul/ReadVariableOp2N
%lstm_cell_245/MatMul_1/ReadVariableOp%lstm_cell_245/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
while_cond_1487227
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1487227___redundant_placeholder05
1while_while_cond_1487227___redundant_placeholder15
1while_while_cond_1487227___redundant_placeholder25
1while_while_cond_1487227___redundant_placeholder3
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
while_body_1487228
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_245_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_245_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_245_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_245_matmul_readvariableop_resource:2(F
4while_lstm_cell_245_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_245_biasadd_readvariableop_resource:(??*while/lstm_cell_245/BiasAdd/ReadVariableOp?)while/lstm_cell_245/MatMul/ReadVariableOp?+while/lstm_cell_245/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_245/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_245_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_245/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_245_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_245/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_245/addAddV2$while/lstm_cell_245/MatMul:product:0&while/lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_245_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_245/BiasAddBiasAddwhile/lstm_cell_245/add:z:02while/lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_245/splitSplit,while/lstm_cell_245/split/split_dim:output:0$while/lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_245/SigmoidSigmoid"while/lstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_245/Sigmoid_1Sigmoid"while/lstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mulMul!while/lstm_cell_245/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_245/ReluRelu"while/lstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mul_1Mulwhile/lstm_cell_245/Sigmoid:y:0&while/lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/add_1AddV2while/lstm_cell_245/mul:z:0while/lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_245/Sigmoid_2Sigmoid"while/lstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_245/Relu_1Reluwhile/lstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mul_2Mul!while/lstm_cell_245/Sigmoid_2:y:0(while/lstm_cell_245/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_245/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_245/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_245/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_245/BiasAdd/ReadVariableOp*^while/lstm_cell_245/MatMul/ReadVariableOp,^while/lstm_cell_245/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_245_biasadd_readvariableop_resource5while_lstm_cell_245_biasadd_readvariableop_resource_0"n
4while_lstm_cell_245_matmul_1_readvariableop_resource6while_lstm_cell_245_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_245_matmul_readvariableop_resource4while_lstm_cell_245_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_245/BiasAdd/ReadVariableOp*while/lstm_cell_245/BiasAdd/ReadVariableOp2V
)while/lstm_cell_245/MatMul/ReadVariableOp)while/lstm_cell_245/MatMul/ReadVariableOp2Z
+while/lstm_cell_245/MatMul_1/ReadVariableOp+while/lstm_cell_245/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_245_layer_call_and_return_conditional_losses_1487593

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
*__inference_lstm_292_layer_call_fn_1486102
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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1482987|
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
*__inference_lstm_291_layer_call_fn_1485475
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
E__inference_lstm_291_layer_call_and_return_conditional_losses_1482446|
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
while_body_1483927
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_245_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_245_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_245_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_245_matmul_readvariableop_resource:2(F
4while_lstm_cell_245_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_245_biasadd_readvariableop_resource:(??*while/lstm_cell_245/BiasAdd/ReadVariableOp?)while/lstm_cell_245/MatMul/ReadVariableOp?+while/lstm_cell_245/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_245/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_245_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_245/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_245_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_245/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_245/addAddV2$while/lstm_cell_245/MatMul:product:0&while/lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_245_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_245/BiasAddBiasAddwhile/lstm_cell_245/add:z:02while/lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_245/splitSplit,while/lstm_cell_245/split/split_dim:output:0$while/lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_245/SigmoidSigmoid"while/lstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_245/Sigmoid_1Sigmoid"while/lstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mulMul!while/lstm_cell_245/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_245/ReluRelu"while/lstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mul_1Mulwhile/lstm_cell_245/Sigmoid:y:0&while/lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/add_1AddV2while/lstm_cell_245/mul:z:0while/lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_245/Sigmoid_2Sigmoid"while/lstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_245/Relu_1Reluwhile/lstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mul_2Mul!while/lstm_cell_245/Sigmoid_2:y:0(while/lstm_cell_245/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_245/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_245/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_245/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_245/BiasAdd/ReadVariableOp*^while/lstm_cell_245/MatMul/ReadVariableOp,^while/lstm_cell_245/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_245_biasadd_readvariableop_resource5while_lstm_cell_245_biasadd_readvariableop_resource_0"n
4while_lstm_cell_245_matmul_1_readvariableop_resource6while_lstm_cell_245_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_245_matmul_readvariableop_resource4while_lstm_cell_245_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_245/BiasAdd/ReadVariableOp*while/lstm_cell_245/BiasAdd/ReadVariableOp2V
)while/lstm_cell_245/MatMul/ReadVariableOp)while/lstm_cell_245/MatMul/ReadVariableOp2Z
+while/lstm_cell_245/MatMul_1/ReadVariableOp+while/lstm_cell_245/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_291_layer_call_and_return_conditional_losses_1482637

inputs(
lstm_cell_243_1482555:	?(
lstm_cell_243_1482557:	d?$
lstm_cell_243_1482559:	?
identity??%lstm_cell_243/StatefulPartitionedCall?while;
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
%lstm_cell_243/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_243_1482555lstm_cell_243_1482557lstm_cell_243_1482559*
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
J__inference_lstm_cell_243_layer_call_and_return_conditional_losses_1482509n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_243_1482555lstm_cell_243_1482557lstm_cell_243_1482559*
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
while_body_1482568*
condR
while_cond_1482567*K
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
NoOpNoOp&^lstm_cell_243/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_243/StatefulPartitionedCall%lstm_cell_243/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_97_layer_call_and_return_conditional_losses_1484521
lstm_291_input#
lstm_291_1484494:	?#
lstm_291_1484496:	d?
lstm_291_1484498:	?#
lstm_292_1484501:	d?#
lstm_292_1484503:	2?
lstm_292_1484505:	?"
lstm_293_1484508:2("
lstm_293_1484510:
(
lstm_293_1484512:("
dense_97_1484515:

dense_97_1484517:
identity?? dense_97/StatefulPartitionedCall? lstm_291/StatefulPartitionedCall? lstm_292/StatefulPartitionedCall? lstm_293/StatefulPartitionedCall?
 lstm_291/StatefulPartitionedCallStatefulPartitionedCalllstm_291_inputlstm_291_1484494lstm_291_1484496lstm_291_1484498*
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
E__inference_lstm_291_layer_call_and_return_conditional_losses_1484341?
 lstm_292/StatefulPartitionedCallStatefulPartitionedCall)lstm_291/StatefulPartitionedCall:output:0lstm_292_1484501lstm_292_1484503lstm_292_1484505*
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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1484176?
 lstm_293/StatefulPartitionedCallStatefulPartitionedCall)lstm_292/StatefulPartitionedCall:output:0lstm_293_1484508lstm_293_1484510lstm_293_1484512*
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
E__inference_lstm_293_layer_call_and_return_conditional_losses_1484011?
 dense_97/StatefulPartitionedCallStatefulPartitionedCall)lstm_293/StatefulPartitionedCall:output:0dense_97_1484515dense_97_1484517*
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
E__inference_dense_97_layer_call_and_return_conditional_losses_1483813x
IdentityIdentity)dense_97/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_97/StatefulPartitionedCall!^lstm_291/StatefulPartitionedCall!^lstm_292/StatefulPartitionedCall!^lstm_293/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall2D
 lstm_291/StatefulPartitionedCall lstm_291/StatefulPartitionedCall2D
 lstm_292/StatefulPartitionedCall lstm_292/StatefulPartitionedCall2D
 lstm_293/StatefulPartitionedCall lstm_293/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_291_input
?
?
*__inference_lstm_292_layer_call_fn_1486113

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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1483645s
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
?#
?
while_body_1483077
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_245_1483101_0:2(/
while_lstm_cell_245_1483103_0:
(+
while_lstm_cell_245_1483105_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_245_1483101:2(-
while_lstm_cell_245_1483103:
()
while_lstm_cell_245_1483105:(??+while/lstm_cell_245/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_245/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_245_1483101_0while_lstm_cell_245_1483103_0while_lstm_cell_245_1483105_0*
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
J__inference_lstm_cell_245_layer_call_and_return_conditional_losses_1483063?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_245/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_245/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_245/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_245/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_245_1483101while_lstm_cell_245_1483101_0"<
while_lstm_cell_245_1483103while_lstm_cell_245_1483103_0"<
while_lstm_cell_245_1483105while_lstm_cell_245_1483105_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_245/StatefulPartitionedCall+while/lstm_cell_245/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_dense_97_layer_call_fn_1487321

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
E__inference_dense_97_layer_call_and_return_conditional_losses_1483813o
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

?
/__inference_sequential_97_layer_call_fn_1484610

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
J__inference_sequential_97_layer_call_and_return_conditional_losses_1484409o
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
*__inference_lstm_293_layer_call_fn_1486707
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
E__inference_lstm_293_layer_call_and_return_conditional_losses_1483146o
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
?
?
J__inference_lstm_cell_243_layer_call_and_return_conditional_losses_1487429

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
?
*__inference_lstm_291_layer_call_fn_1485508

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
E__inference_lstm_291_layer_call_and_return_conditional_losses_1484341s
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
while_body_1484257
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_243_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_243_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_243_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_243_matmul_readvariableop_resource:	?G
4while_lstm_cell_243_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_243_biasadd_readvariableop_resource:	???*while/lstm_cell_243/BiasAdd/ReadVariableOp?)while/lstm_cell_243/MatMul/ReadVariableOp?+while/lstm_cell_243/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_243/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_243_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_243/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_243_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_243/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_243/addAddV2$while/lstm_cell_243/MatMul:product:0&while/lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_243_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_243/BiasAddBiasAddwhile/lstm_cell_243/add:z:02while/lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_243/splitSplit,while/lstm_cell_243/split/split_dim:output:0$while/lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_243/SigmoidSigmoid"while/lstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_243/Sigmoid_1Sigmoid"while/lstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mulMul!while/lstm_cell_243/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_243/ReluRelu"while/lstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mul_1Mulwhile/lstm_cell_243/Sigmoid:y:0&while/lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/add_1AddV2while/lstm_cell_243/mul:z:0while/lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_243/Sigmoid_2Sigmoid"while/lstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_243/Relu_1Reluwhile/lstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mul_2Mul!while/lstm_cell_243/Sigmoid_2:y:0(while/lstm_cell_243/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_243/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_243/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_243/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_243/BiasAdd/ReadVariableOp*^while/lstm_cell_243/MatMul/ReadVariableOp,^while/lstm_cell_243/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_243_biasadd_readvariableop_resource5while_lstm_cell_243_biasadd_readvariableop_resource_0"n
4while_lstm_cell_243_matmul_1_readvariableop_resource6while_lstm_cell_243_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_243_matmul_readvariableop_resource4while_lstm_cell_243_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_243/BiasAdd/ReadVariableOp*while/lstm_cell_243/BiasAdd/ReadVariableOp2V
)while/lstm_cell_243/MatMul/ReadVariableOp)while/lstm_cell_243/MatMul/ReadVariableOp2Z
+while/lstm_cell_243/MatMul_1/ReadVariableOp+while/lstm_cell_243/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_97_layer_call_and_return_conditional_losses_1483813

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
while_body_1486326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_244_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_244_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_244_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_244_matmul_readvariableop_resource:	d?G
4while_lstm_cell_244_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_244_biasadd_readvariableop_resource:	???*while/lstm_cell_244/BiasAdd/ReadVariableOp?)while/lstm_cell_244/MatMul/ReadVariableOp?+while/lstm_cell_244/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_244/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_244_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_244/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_244_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_244/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_244/addAddV2$while/lstm_cell_244/MatMul:product:0&while/lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_244_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_244/BiasAddBiasAddwhile/lstm_cell_244/add:z:02while/lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_244/splitSplit,while/lstm_cell_244/split/split_dim:output:0$while/lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_244/SigmoidSigmoid"while/lstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_244/Sigmoid_1Sigmoid"while/lstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mulMul!while/lstm_cell_244/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_244/ReluRelu"while/lstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mul_1Mulwhile/lstm_cell_244/Sigmoid:y:0&while/lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/add_1AddV2while/lstm_cell_244/mul:z:0while/lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_244/Sigmoid_2Sigmoid"while/lstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_244/Relu_1Reluwhile/lstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mul_2Mul!while/lstm_cell_244/Sigmoid_2:y:0(while/lstm_cell_244/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_244/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_244/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_244/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_244/BiasAdd/ReadVariableOp*^while/lstm_cell_244/MatMul/ReadVariableOp,^while/lstm_cell_244/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_244_biasadd_readvariableop_resource5while_lstm_cell_244_biasadd_readvariableop_resource_0"n
4while_lstm_cell_244_matmul_1_readvariableop_resource6while_lstm_cell_244_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_244_matmul_readvariableop_resource4while_lstm_cell_244_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_244/BiasAdd/ReadVariableOp*while/lstm_cell_244/BiasAdd/ReadVariableOp2V
)while/lstm_cell_244/MatMul/ReadVariableOp)while/lstm_cell_244/MatMul/ReadVariableOp2Z
+while/lstm_cell_244/MatMul_1/ReadVariableOp+while/lstm_cell_244/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1482796

inputs(
lstm_cell_244_1482714:	d?(
lstm_cell_244_1482716:	2?$
lstm_cell_244_1482718:	?
identity??%lstm_cell_244/StatefulPartitionedCall?while;
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
%lstm_cell_244/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_244_1482714lstm_cell_244_1482716lstm_cell_244_1482718*
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
J__inference_lstm_cell_244_layer_call_and_return_conditional_losses_1482713n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_244_1482714lstm_cell_244_1482716lstm_cell_244_1482718*
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
while_body_1482727*
condR
while_cond_1482726*K
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
NoOpNoOp&^lstm_cell_244/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_244/StatefulPartitionedCall%lstm_cell_244/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_1486799
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_245_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_245_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_245_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_245_matmul_readvariableop_resource:2(F
4while_lstm_cell_245_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_245_biasadd_readvariableop_resource:(??*while/lstm_cell_245/BiasAdd/ReadVariableOp?)while/lstm_cell_245/MatMul/ReadVariableOp?+while/lstm_cell_245/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_245/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_245_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_245/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_245_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_245/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_245/addAddV2$while/lstm_cell_245/MatMul:product:0&while/lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_245_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_245/BiasAddBiasAddwhile/lstm_cell_245/add:z:02while/lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_245/splitSplit,while/lstm_cell_245/split/split_dim:output:0$while/lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_245/SigmoidSigmoid"while/lstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_245/Sigmoid_1Sigmoid"while/lstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mulMul!while/lstm_cell_245/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_245/ReluRelu"while/lstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mul_1Mulwhile/lstm_cell_245/Sigmoid:y:0&while/lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/add_1AddV2while/lstm_cell_245/mul:z:0while/lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_245/Sigmoid_2Sigmoid"while/lstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_245/Relu_1Reluwhile/lstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mul_2Mul!while/lstm_cell_245/Sigmoid_2:y:0(while/lstm_cell_245/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_245/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_245/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_245/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_245/BiasAdd/ReadVariableOp*^while/lstm_cell_245/MatMul/ReadVariableOp,^while/lstm_cell_245/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_245_biasadd_readvariableop_resource5while_lstm_cell_245_biasadd_readvariableop_resource_0"n
4while_lstm_cell_245_matmul_1_readvariableop_resource6while_lstm_cell_245_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_245_matmul_readvariableop_resource4while_lstm_cell_245_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_245/BiasAdd/ReadVariableOp*while/lstm_cell_245/BiasAdd/ReadVariableOp2V
)while/lstm_cell_245/MatMul/ReadVariableOp)while/lstm_cell_245/MatMul/ReadVariableOp2Z
+while/lstm_cell_245/MatMul_1/ReadVariableOp+while/lstm_cell_245/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1485566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1485566___redundant_placeholder05
1while_while_cond_1485566___redundant_placeholder15
1while_while_cond_1485566___redundant_placeholder25
1while_while_cond_1485566___redundant_placeholder3
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

lstm_292_while_body_1484808.
*lstm_292_while_lstm_292_while_loop_counter4
0lstm_292_while_lstm_292_while_maximum_iterations
lstm_292_while_placeholder 
lstm_292_while_placeholder_1 
lstm_292_while_placeholder_2 
lstm_292_while_placeholder_3-
)lstm_292_while_lstm_292_strided_slice_1_0i
elstm_292_while_tensorarrayv2read_tensorlistgetitem_lstm_292_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_292_while_lstm_cell_244_matmul_readvariableop_resource_0:	d?R
?lstm_292_while_lstm_cell_244_matmul_1_readvariableop_resource_0:	2?M
>lstm_292_while_lstm_cell_244_biasadd_readvariableop_resource_0:	?
lstm_292_while_identity
lstm_292_while_identity_1
lstm_292_while_identity_2
lstm_292_while_identity_3
lstm_292_while_identity_4
lstm_292_while_identity_5+
'lstm_292_while_lstm_292_strided_slice_1g
clstm_292_while_tensorarrayv2read_tensorlistgetitem_lstm_292_tensorarrayunstack_tensorlistfromtensorN
;lstm_292_while_lstm_cell_244_matmul_readvariableop_resource:	d?P
=lstm_292_while_lstm_cell_244_matmul_1_readvariableop_resource:	2?K
<lstm_292_while_lstm_cell_244_biasadd_readvariableop_resource:	???3lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOp?2lstm_292/while/lstm_cell_244/MatMul/ReadVariableOp?4lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOp?
@lstm_292/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_292/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_292_while_tensorarrayv2read_tensorlistgetitem_lstm_292_tensorarrayunstack_tensorlistfromtensor_0lstm_292_while_placeholderIlstm_292/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_292/while/lstm_cell_244/MatMul/ReadVariableOpReadVariableOp=lstm_292_while_lstm_cell_244_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_292/while/lstm_cell_244/MatMulMatMul9lstm_292/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_292/while/lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOp?lstm_292_while_lstm_cell_244_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_292/while/lstm_cell_244/MatMul_1MatMullstm_292_while_placeholder_2<lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_292/while/lstm_cell_244/addAddV2-lstm_292/while/lstm_cell_244/MatMul:product:0/lstm_292/while/lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOp>lstm_292_while_lstm_cell_244_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_292/while/lstm_cell_244/BiasAddBiasAdd$lstm_292/while/lstm_cell_244/add:z:0;lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_292/while/lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_292/while/lstm_cell_244/splitSplit5lstm_292/while/lstm_cell_244/split/split_dim:output:0-lstm_292/while/lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_292/while/lstm_cell_244/SigmoidSigmoid+lstm_292/while/lstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_292/while/lstm_cell_244/Sigmoid_1Sigmoid+lstm_292/while/lstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_292/while/lstm_cell_244/mulMul*lstm_292/while/lstm_cell_244/Sigmoid_1:y:0lstm_292_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_292/while/lstm_cell_244/ReluRelu+lstm_292/while/lstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_292/while/lstm_cell_244/mul_1Mul(lstm_292/while/lstm_cell_244/Sigmoid:y:0/lstm_292/while/lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_292/while/lstm_cell_244/add_1AddV2$lstm_292/while/lstm_cell_244/mul:z:0&lstm_292/while/lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_292/while/lstm_cell_244/Sigmoid_2Sigmoid+lstm_292/while/lstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_292/while/lstm_cell_244/Relu_1Relu&lstm_292/while/lstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_292/while/lstm_cell_244/mul_2Mul*lstm_292/while/lstm_cell_244/Sigmoid_2:y:01lstm_292/while/lstm_cell_244/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_292/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_292_while_placeholder_1lstm_292_while_placeholder&lstm_292/while/lstm_cell_244/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_292/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_292/while/addAddV2lstm_292_while_placeholderlstm_292/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_292/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_292/while/add_1AddV2*lstm_292_while_lstm_292_while_loop_counterlstm_292/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_292/while/IdentityIdentitylstm_292/while/add_1:z:0^lstm_292/while/NoOp*
T0*
_output_shapes
: ?
lstm_292/while/Identity_1Identity0lstm_292_while_lstm_292_while_maximum_iterations^lstm_292/while/NoOp*
T0*
_output_shapes
: t
lstm_292/while/Identity_2Identitylstm_292/while/add:z:0^lstm_292/while/NoOp*
T0*
_output_shapes
: ?
lstm_292/while/Identity_3IdentityClstm_292/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_292/while/NoOp*
T0*
_output_shapes
: ?
lstm_292/while/Identity_4Identity&lstm_292/while/lstm_cell_244/mul_2:z:0^lstm_292/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_292/while/Identity_5Identity&lstm_292/while/lstm_cell_244/add_1:z:0^lstm_292/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_292/while/NoOpNoOp4^lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOp3^lstm_292/while/lstm_cell_244/MatMul/ReadVariableOp5^lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_292_while_identity lstm_292/while/Identity:output:0"?
lstm_292_while_identity_1"lstm_292/while/Identity_1:output:0"?
lstm_292_while_identity_2"lstm_292/while/Identity_2:output:0"?
lstm_292_while_identity_3"lstm_292/while/Identity_3:output:0"?
lstm_292_while_identity_4"lstm_292/while/Identity_4:output:0"?
lstm_292_while_identity_5"lstm_292/while/Identity_5:output:0"T
'lstm_292_while_lstm_292_strided_slice_1)lstm_292_while_lstm_292_strided_slice_1_0"~
<lstm_292_while_lstm_cell_244_biasadd_readvariableop_resource>lstm_292_while_lstm_cell_244_biasadd_readvariableop_resource_0"?
=lstm_292_while_lstm_cell_244_matmul_1_readvariableop_resource?lstm_292_while_lstm_cell_244_matmul_1_readvariableop_resource_0"|
;lstm_292_while_lstm_cell_244_matmul_readvariableop_resource=lstm_292_while_lstm_cell_244_matmul_readvariableop_resource_0"?
clstm_292_while_tensorarrayv2read_tensorlistgetitem_lstm_292_tensorarrayunstack_tensorlistfromtensorelstm_292_while_tensorarrayv2read_tensorlistgetitem_lstm_292_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOp3lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOp2h
2lstm_292/while/lstm_cell_244/MatMul/ReadVariableOp2lstm_292/while/lstm_cell_244/MatMul/ReadVariableOp2l
4lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOp4lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_291_layer_call_fn_1485486
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
E__inference_lstm_291_layer_call_and_return_conditional_losses_1482637|
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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1486553

inputs?
,lstm_cell_244_matmul_readvariableop_resource:	d?A
.lstm_cell_244_matmul_1_readvariableop_resource:	2?<
-lstm_cell_244_biasadd_readvariableop_resource:	?
identity??$lstm_cell_244/BiasAdd/ReadVariableOp?#lstm_cell_244/MatMul/ReadVariableOp?%lstm_cell_244/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_244/MatMul/ReadVariableOpReadVariableOp,lstm_cell_244_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_244/MatMulMatMulstrided_slice_2:output:0+lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_244_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_244/MatMul_1MatMulzeros:output:0-lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_244/addAddV2lstm_cell_244/MatMul:product:0 lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_244_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_244/BiasAddBiasAddlstm_cell_244/add:z:0,lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_244/splitSplit&lstm_cell_244/split/split_dim:output:0lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_244/SigmoidSigmoidlstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_244/Sigmoid_1Sigmoidlstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_244/mulMullstm_cell_244/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_244/ReluRelulstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_244/mul_1Mullstm_cell_244/Sigmoid:y:0 lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_244/add_1AddV2lstm_cell_244/mul:z:0lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_244/Sigmoid_2Sigmoidlstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_244/Relu_1Relulstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_244/mul_2Mullstm_cell_244/Sigmoid_2:y:0"lstm_cell_244/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_244_matmul_readvariableop_resource.lstm_cell_244_matmul_1_readvariableop_resource-lstm_cell_244_biasadd_readvariableop_resource*
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
while_body_1486469*
condR
while_cond_1486468*K
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
NoOpNoOp%^lstm_cell_244/BiasAdd/ReadVariableOp$^lstm_cell_244/MatMul/ReadVariableOp&^lstm_cell_244/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_244/BiasAdd/ReadVariableOp$lstm_cell_244/BiasAdd/ReadVariableOp2J
#lstm_cell_244/MatMul/ReadVariableOp#lstm_cell_244/MatMul/ReadVariableOp2N
%lstm_cell_244/MatMul_1/ReadVariableOp%lstm_cell_244/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_291_layer_call_and_return_conditional_losses_1482446

inputs(
lstm_cell_243_1482364:	?(
lstm_cell_243_1482366:	d?$
lstm_cell_243_1482368:	?
identity??%lstm_cell_243/StatefulPartitionedCall?while;
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
%lstm_cell_243/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_243_1482364lstm_cell_243_1482366lstm_cell_243_1482368*
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
J__inference_lstm_cell_243_layer_call_and_return_conditional_losses_1482363n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_243_1482364lstm_cell_243_1482366lstm_cell_243_1482368*
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
while_body_1482377*
condR
while_cond_1482376*K
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
NoOpNoOp&^lstm_cell_243/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_243/StatefulPartitionedCall%lstm_cell_243/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_1486798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1486798___redundant_placeholder05
1while_while_cond_1486798___redundant_placeholder15
1while_while_cond_1486798___redundant_placeholder25
1while_while_cond_1486798___redundant_placeholder3
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
while_cond_1486941
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1486941___redundant_placeholder05
1while_while_cond_1486941___redundant_placeholder15
1while_while_cond_1486941___redundant_placeholder25
1while_while_cond_1486941___redundant_placeholder3
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
while_cond_1482376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1482376___redundant_placeholder05
1while_while_cond_1482376___redundant_placeholder15
1while_while_cond_1482376___redundant_placeholder25
1while_while_cond_1482376___redundant_placeholder3
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
)sequential_97_lstm_293_while_body_1482206J
Fsequential_97_lstm_293_while_sequential_97_lstm_293_while_loop_counterP
Lsequential_97_lstm_293_while_sequential_97_lstm_293_while_maximum_iterations,
(sequential_97_lstm_293_while_placeholder.
*sequential_97_lstm_293_while_placeholder_1.
*sequential_97_lstm_293_while_placeholder_2.
*sequential_97_lstm_293_while_placeholder_3I
Esequential_97_lstm_293_while_sequential_97_lstm_293_strided_slice_1_0?
?sequential_97_lstm_293_while_tensorarrayv2read_tensorlistgetitem_sequential_97_lstm_293_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_97_lstm_293_while_lstm_cell_245_matmul_readvariableop_resource_0:2(_
Msequential_97_lstm_293_while_lstm_cell_245_matmul_1_readvariableop_resource_0:
(Z
Lsequential_97_lstm_293_while_lstm_cell_245_biasadd_readvariableop_resource_0:()
%sequential_97_lstm_293_while_identity+
'sequential_97_lstm_293_while_identity_1+
'sequential_97_lstm_293_while_identity_2+
'sequential_97_lstm_293_while_identity_3+
'sequential_97_lstm_293_while_identity_4+
'sequential_97_lstm_293_while_identity_5G
Csequential_97_lstm_293_while_sequential_97_lstm_293_strided_slice_1?
sequential_97_lstm_293_while_tensorarrayv2read_tensorlistgetitem_sequential_97_lstm_293_tensorarrayunstack_tensorlistfromtensor[
Isequential_97_lstm_293_while_lstm_cell_245_matmul_readvariableop_resource:2(]
Ksequential_97_lstm_293_while_lstm_cell_245_matmul_1_readvariableop_resource:
(X
Jsequential_97_lstm_293_while_lstm_cell_245_biasadd_readvariableop_resource:(??Asequential_97/lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOp?@sequential_97/lstm_293/while/lstm_cell_245/MatMul/ReadVariableOp?Bsequential_97/lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOp?
Nsequential_97/lstm_293/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_97/lstm_293/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_97_lstm_293_while_tensorarrayv2read_tensorlistgetitem_sequential_97_lstm_293_tensorarrayunstack_tensorlistfromtensor_0(sequential_97_lstm_293_while_placeholderWsequential_97/lstm_293/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_97/lstm_293/while/lstm_cell_245/MatMul/ReadVariableOpReadVariableOpKsequential_97_lstm_293_while_lstm_cell_245_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_97/lstm_293/while/lstm_cell_245/MatMulMatMulGsequential_97/lstm_293/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_97/lstm_293/while/lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_97/lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOpMsequential_97_lstm_293_while_lstm_cell_245_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_97/lstm_293/while/lstm_cell_245/MatMul_1MatMul*sequential_97_lstm_293_while_placeholder_2Jsequential_97/lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_97/lstm_293/while/lstm_cell_245/addAddV2;sequential_97/lstm_293/while/lstm_cell_245/MatMul:product:0=sequential_97/lstm_293/while/lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_97/lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOpLsequential_97_lstm_293_while_lstm_cell_245_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_97/lstm_293/while/lstm_cell_245/BiasAddBiasAdd2sequential_97/lstm_293/while/lstm_cell_245/add:z:0Isequential_97/lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_97/lstm_293/while/lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_97/lstm_293/while/lstm_cell_245/splitSplitCsequential_97/lstm_293/while/lstm_cell_245/split/split_dim:output:0;sequential_97/lstm_293/while/lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_97/lstm_293/while/lstm_cell_245/SigmoidSigmoid9sequential_97/lstm_293/while/lstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_97/lstm_293/while/lstm_cell_245/Sigmoid_1Sigmoid9sequential_97/lstm_293/while/lstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_97/lstm_293/while/lstm_cell_245/mulMul8sequential_97/lstm_293/while/lstm_cell_245/Sigmoid_1:y:0*sequential_97_lstm_293_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_97/lstm_293/while/lstm_cell_245/ReluRelu9sequential_97/lstm_293/while/lstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_97/lstm_293/while/lstm_cell_245/mul_1Mul6sequential_97/lstm_293/while/lstm_cell_245/Sigmoid:y:0=sequential_97/lstm_293/while/lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_97/lstm_293/while/lstm_cell_245/add_1AddV22sequential_97/lstm_293/while/lstm_cell_245/mul:z:04sequential_97/lstm_293/while/lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_97/lstm_293/while/lstm_cell_245/Sigmoid_2Sigmoid9sequential_97/lstm_293/while/lstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_97/lstm_293/while/lstm_cell_245/Relu_1Relu4sequential_97/lstm_293/while/lstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_97/lstm_293/while/lstm_cell_245/mul_2Mul8sequential_97/lstm_293/while/lstm_cell_245/Sigmoid_2:y:0?sequential_97/lstm_293/while/lstm_cell_245/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_97/lstm_293/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_97_lstm_293_while_placeholder_1(sequential_97_lstm_293_while_placeholder4sequential_97/lstm_293/while/lstm_cell_245/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_97/lstm_293/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_97/lstm_293/while/addAddV2(sequential_97_lstm_293_while_placeholder+sequential_97/lstm_293/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_97/lstm_293/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_97/lstm_293/while/add_1AddV2Fsequential_97_lstm_293_while_sequential_97_lstm_293_while_loop_counter-sequential_97/lstm_293/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_97/lstm_293/while/IdentityIdentity&sequential_97/lstm_293/while/add_1:z:0"^sequential_97/lstm_293/while/NoOp*
T0*
_output_shapes
: ?
'sequential_97/lstm_293/while/Identity_1IdentityLsequential_97_lstm_293_while_sequential_97_lstm_293_while_maximum_iterations"^sequential_97/lstm_293/while/NoOp*
T0*
_output_shapes
: ?
'sequential_97/lstm_293/while/Identity_2Identity$sequential_97/lstm_293/while/add:z:0"^sequential_97/lstm_293/while/NoOp*
T0*
_output_shapes
: ?
'sequential_97/lstm_293/while/Identity_3IdentityQsequential_97/lstm_293/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_97/lstm_293/while/NoOp*
T0*
_output_shapes
: ?
'sequential_97/lstm_293/while/Identity_4Identity4sequential_97/lstm_293/while/lstm_cell_245/mul_2:z:0"^sequential_97/lstm_293/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_97/lstm_293/while/Identity_5Identity4sequential_97/lstm_293/while/lstm_cell_245/add_1:z:0"^sequential_97/lstm_293/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_97/lstm_293/while/NoOpNoOpB^sequential_97/lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOpA^sequential_97/lstm_293/while/lstm_cell_245/MatMul/ReadVariableOpC^sequential_97/lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_97_lstm_293_while_identity.sequential_97/lstm_293/while/Identity:output:0"[
'sequential_97_lstm_293_while_identity_10sequential_97/lstm_293/while/Identity_1:output:0"[
'sequential_97_lstm_293_while_identity_20sequential_97/lstm_293/while/Identity_2:output:0"[
'sequential_97_lstm_293_while_identity_30sequential_97/lstm_293/while/Identity_3:output:0"[
'sequential_97_lstm_293_while_identity_40sequential_97/lstm_293/while/Identity_4:output:0"[
'sequential_97_lstm_293_while_identity_50sequential_97/lstm_293/while/Identity_5:output:0"?
Jsequential_97_lstm_293_while_lstm_cell_245_biasadd_readvariableop_resourceLsequential_97_lstm_293_while_lstm_cell_245_biasadd_readvariableop_resource_0"?
Ksequential_97_lstm_293_while_lstm_cell_245_matmul_1_readvariableop_resourceMsequential_97_lstm_293_while_lstm_cell_245_matmul_1_readvariableop_resource_0"?
Isequential_97_lstm_293_while_lstm_cell_245_matmul_readvariableop_resourceKsequential_97_lstm_293_while_lstm_cell_245_matmul_readvariableop_resource_0"?
Csequential_97_lstm_293_while_sequential_97_lstm_293_strided_slice_1Esequential_97_lstm_293_while_sequential_97_lstm_293_strided_slice_1_0"?
sequential_97_lstm_293_while_tensorarrayv2read_tensorlistgetitem_sequential_97_lstm_293_tensorarrayunstack_tensorlistfromtensor?sequential_97_lstm_293_while_tensorarrayv2read_tensorlistgetitem_sequential_97_lstm_293_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_97/lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOpAsequential_97/lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOp2?
@sequential_97/lstm_293/while/lstm_cell_245/MatMul/ReadVariableOp@sequential_97/lstm_293/while/lstm_cell_245/MatMul/ReadVariableOp2?
Bsequential_97/lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOpBsequential_97/lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1484256
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1484256___redundant_placeholder05
1while_while_cond_1484256___redundant_placeholder15
1while_while_cond_1484256___redundant_placeholder25
1while_while_cond_1484256___redundant_placeholder3
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
/__inference_sequential_97_layer_call_fn_1483845
lstm_291_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_291_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_97_layer_call_and_return_conditional_losses_1483820o
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
_user_specified_namelstm_291_input
?J
?
E__inference_lstm_293_layer_call_and_return_conditional_losses_1487312

inputs>
,lstm_cell_245_matmul_readvariableop_resource:2(@
.lstm_cell_245_matmul_1_readvariableop_resource:
(;
-lstm_cell_245_biasadd_readvariableop_resource:(
identity??$lstm_cell_245/BiasAdd/ReadVariableOp?#lstm_cell_245/MatMul/ReadVariableOp?%lstm_cell_245/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_245/MatMul/ReadVariableOpReadVariableOp,lstm_cell_245_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_245/MatMulMatMulstrided_slice_2:output:0+lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_245_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_245/MatMul_1MatMulzeros:output:0-lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_245/addAddV2lstm_cell_245/MatMul:product:0 lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_245_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_245/BiasAddBiasAddlstm_cell_245/add:z:0,lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_245/splitSplit&lstm_cell_245/split/split_dim:output:0lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_245/SigmoidSigmoidlstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_245/Sigmoid_1Sigmoidlstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_245/mulMullstm_cell_245/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_245/ReluRelulstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_245/mul_1Mullstm_cell_245/Sigmoid:y:0 lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_245/add_1AddV2lstm_cell_245/mul:z:0lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_245/Sigmoid_2Sigmoidlstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_245/Relu_1Relulstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_245/mul_2Mullstm_cell_245/Sigmoid_2:y:0"lstm_cell_245/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_245_matmul_readvariableop_resource.lstm_cell_245_matmul_1_readvariableop_resource-lstm_cell_245_biasadd_readvariableop_resource*
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
while_body_1487228*
condR
while_cond_1487227*K
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
NoOpNoOp%^lstm_cell_245/BiasAdd/ReadVariableOp$^lstm_cell_245/MatMul/ReadVariableOp&^lstm_cell_245/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_245/BiasAdd/ReadVariableOp$lstm_cell_245/BiasAdd/ReadVariableOp2J
#lstm_cell_245/MatMul/ReadVariableOp#lstm_cell_245/MatMul/ReadVariableOp2N
%lstm_cell_245/MatMul_1/ReadVariableOp%lstm_cell_245/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_291_layer_call_and_return_conditional_losses_1485794
inputs_0?
,lstm_cell_243_matmul_readvariableop_resource:	?A
.lstm_cell_243_matmul_1_readvariableop_resource:	d?<
-lstm_cell_243_biasadd_readvariableop_resource:	?
identity??$lstm_cell_243/BiasAdd/ReadVariableOp?#lstm_cell_243/MatMul/ReadVariableOp?%lstm_cell_243/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_243/MatMul/ReadVariableOpReadVariableOp,lstm_cell_243_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_243/MatMulMatMulstrided_slice_2:output:0+lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_243_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_243/MatMul_1MatMulzeros:output:0-lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_243/addAddV2lstm_cell_243/MatMul:product:0 lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_243_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_243/BiasAddBiasAddlstm_cell_243/add:z:0,lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_243/splitSplit&lstm_cell_243/split/split_dim:output:0lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_243/SigmoidSigmoidlstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_243/Sigmoid_1Sigmoidlstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_243/mulMullstm_cell_243/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_243/ReluRelulstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_243/mul_1Mullstm_cell_243/Sigmoid:y:0 lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_243/add_1AddV2lstm_cell_243/mul:z:0lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_243/Sigmoid_2Sigmoidlstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_243/Relu_1Relulstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_243/mul_2Mullstm_cell_243/Sigmoid_2:y:0"lstm_cell_243/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_243_matmul_readvariableop_resource.lstm_cell_243_matmul_1_readvariableop_resource-lstm_cell_243_biasadd_readvariableop_resource*
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
while_body_1485710*
condR
while_cond_1485709*K
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
NoOpNoOp%^lstm_cell_243/BiasAdd/ReadVariableOp$^lstm_cell_243/MatMul/ReadVariableOp&^lstm_cell_243/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_243/BiasAdd/ReadVariableOp$lstm_cell_243/BiasAdd/ReadVariableOp2J
#lstm_cell_243/MatMul/ReadVariableOp#lstm_cell_243/MatMul/ReadVariableOp2N
%lstm_cell_243/MatMul_1/ReadVariableOp%lstm_cell_243/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_1483076
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1483076___redundant_placeholder05
1while_while_cond_1483076___redundant_placeholder15
1while_while_cond_1483076___redundant_placeholder25
1while_while_cond_1483076___redundant_placeholder3
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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1484176

inputs?
,lstm_cell_244_matmul_readvariableop_resource:	d?A
.lstm_cell_244_matmul_1_readvariableop_resource:	2?<
-lstm_cell_244_biasadd_readvariableop_resource:	?
identity??$lstm_cell_244/BiasAdd/ReadVariableOp?#lstm_cell_244/MatMul/ReadVariableOp?%lstm_cell_244/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_244/MatMul/ReadVariableOpReadVariableOp,lstm_cell_244_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_244/MatMulMatMulstrided_slice_2:output:0+lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_244_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_244/MatMul_1MatMulzeros:output:0-lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_244/addAddV2lstm_cell_244/MatMul:product:0 lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_244_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_244/BiasAddBiasAddlstm_cell_244/add:z:0,lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_244/splitSplit&lstm_cell_244/split/split_dim:output:0lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_244/SigmoidSigmoidlstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_244/Sigmoid_1Sigmoidlstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_244/mulMullstm_cell_244/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_244/ReluRelulstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_244/mul_1Mullstm_cell_244/Sigmoid:y:0 lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_244/add_1AddV2lstm_cell_244/mul:z:0lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_244/Sigmoid_2Sigmoidlstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_244/Relu_1Relulstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_244/mul_2Mullstm_cell_244/Sigmoid_2:y:0"lstm_cell_244/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_244_matmul_readvariableop_resource.lstm_cell_244_matmul_1_readvariableop_resource-lstm_cell_244_biasadd_readvariableop_resource*
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
while_body_1484092*
condR
while_cond_1484091*K
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
NoOpNoOp%^lstm_cell_244/BiasAdd/ReadVariableOp$^lstm_cell_244/MatMul/ReadVariableOp&^lstm_cell_244/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_244/BiasAdd/ReadVariableOp$lstm_cell_244/BiasAdd/ReadVariableOp2J
#lstm_cell_244/MatMul/ReadVariableOp#lstm_cell_244/MatMul/ReadVariableOp2N
%lstm_cell_244/MatMul_1/ReadVariableOp%lstm_cell_244/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1483926
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1483926___redundant_placeholder05
1while_while_cond_1483926___redundant_placeholder15
1while_while_cond_1483926___redundant_placeholder25
1while_while_cond_1483926___redundant_placeholder3
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
while_body_1483411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_243_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_243_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_243_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_243_matmul_readvariableop_resource:	?G
4while_lstm_cell_243_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_243_biasadd_readvariableop_resource:	???*while/lstm_cell_243/BiasAdd/ReadVariableOp?)while/lstm_cell_243/MatMul/ReadVariableOp?+while/lstm_cell_243/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_243/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_243_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_243/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_243_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_243/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_243/addAddV2$while/lstm_cell_243/MatMul:product:0&while/lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_243_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_243/BiasAddBiasAddwhile/lstm_cell_243/add:z:02while/lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_243/splitSplit,while/lstm_cell_243/split/split_dim:output:0$while/lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_243/SigmoidSigmoid"while/lstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_243/Sigmoid_1Sigmoid"while/lstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mulMul!while/lstm_cell_243/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_243/ReluRelu"while/lstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mul_1Mulwhile/lstm_cell_243/Sigmoid:y:0&while/lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/add_1AddV2while/lstm_cell_243/mul:z:0while/lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_243/Sigmoid_2Sigmoid"while/lstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_243/Relu_1Reluwhile/lstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mul_2Mul!while/lstm_cell_243/Sigmoid_2:y:0(while/lstm_cell_243/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_243/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_243/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_243/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_243/BiasAdd/ReadVariableOp*^while/lstm_cell_243/MatMul/ReadVariableOp,^while/lstm_cell_243/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_243_biasadd_readvariableop_resource5while_lstm_cell_243_biasadd_readvariableop_resource_0"n
4while_lstm_cell_243_matmul_1_readvariableop_resource6while_lstm_cell_243_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_243_matmul_readvariableop_resource4while_lstm_cell_243_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_243/BiasAdd/ReadVariableOp*while/lstm_cell_243/BiasAdd/ReadVariableOp2V
)while/lstm_cell_243/MatMul/ReadVariableOp)while/lstm_cell_243/MatMul/ReadVariableOp2Z
+while/lstm_cell_243/MatMul_1/ReadVariableOp+while/lstm_cell_243/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1483645

inputs?
,lstm_cell_244_matmul_readvariableop_resource:	d?A
.lstm_cell_244_matmul_1_readvariableop_resource:	2?<
-lstm_cell_244_biasadd_readvariableop_resource:	?
identity??$lstm_cell_244/BiasAdd/ReadVariableOp?#lstm_cell_244/MatMul/ReadVariableOp?%lstm_cell_244/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_244/MatMul/ReadVariableOpReadVariableOp,lstm_cell_244_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_244/MatMulMatMulstrided_slice_2:output:0+lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_244_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_244/MatMul_1MatMulzeros:output:0-lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_244/addAddV2lstm_cell_244/MatMul:product:0 lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_244_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_244/BiasAddBiasAddlstm_cell_244/add:z:0,lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_244/splitSplit&lstm_cell_244/split/split_dim:output:0lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_244/SigmoidSigmoidlstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_244/Sigmoid_1Sigmoidlstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_244/mulMullstm_cell_244/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_244/ReluRelulstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_244/mul_1Mullstm_cell_244/Sigmoid:y:0 lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_244/add_1AddV2lstm_cell_244/mul:z:0lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_244/Sigmoid_2Sigmoidlstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_244/Relu_1Relulstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_244/mul_2Mullstm_cell_244/Sigmoid_2:y:0"lstm_cell_244/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_244_matmul_readvariableop_resource.lstm_cell_244_matmul_1_readvariableop_resource-lstm_cell_244_biasadd_readvariableop_resource*
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
while_body_1483561*
condR
while_cond_1483560*K
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
NoOpNoOp%^lstm_cell_244/BiasAdd/ReadVariableOp$^lstm_cell_244/MatMul/ReadVariableOp&^lstm_cell_244/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_244/BiasAdd/ReadVariableOp$lstm_cell_244/BiasAdd/ReadVariableOp2J
#lstm_cell_244/MatMul/ReadVariableOp#lstm_cell_244/MatMul/ReadVariableOp2N
%lstm_cell_244/MatMul_1/ReadVariableOp%lstm_cell_244/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_243_layer_call_and_return_conditional_losses_1482509

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
while_cond_1486182
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1486182___redundant_placeholder05
1while_while_cond_1486182___redundant_placeholder15
1while_while_cond_1486182___redundant_placeholder25
1while_while_cond_1486182___redundant_placeholder3
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
while_body_1487085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_245_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_245_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_245_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_245_matmul_readvariableop_resource:2(F
4while_lstm_cell_245_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_245_biasadd_readvariableop_resource:(??*while/lstm_cell_245/BiasAdd/ReadVariableOp?)while/lstm_cell_245/MatMul/ReadVariableOp?+while/lstm_cell_245/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_245/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_245_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_245/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_245_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_245/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_245/addAddV2$while/lstm_cell_245/MatMul:product:0&while/lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_245_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_245/BiasAddBiasAddwhile/lstm_cell_245/add:z:02while/lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_245/splitSplit,while/lstm_cell_245/split/split_dim:output:0$while/lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_245/SigmoidSigmoid"while/lstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_245/Sigmoid_1Sigmoid"while/lstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mulMul!while/lstm_cell_245/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_245/ReluRelu"while/lstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mul_1Mulwhile/lstm_cell_245/Sigmoid:y:0&while/lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/add_1AddV2while/lstm_cell_245/mul:z:0while/lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_245/Sigmoid_2Sigmoid"while/lstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_245/Relu_1Reluwhile/lstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mul_2Mul!while/lstm_cell_245/Sigmoid_2:y:0(while/lstm_cell_245/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_245/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_245/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_245/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_245/BiasAdd/ReadVariableOp*^while/lstm_cell_245/MatMul/ReadVariableOp,^while/lstm_cell_245/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_245_biasadd_readvariableop_resource5while_lstm_cell_245_biasadd_readvariableop_resource_0"n
4while_lstm_cell_245_matmul_1_readvariableop_resource6while_lstm_cell_245_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_245_matmul_readvariableop_resource4while_lstm_cell_245_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_245/BiasAdd/ReadVariableOp*while/lstm_cell_245/BiasAdd/ReadVariableOp2V
)while/lstm_cell_245/MatMul/ReadVariableOp)while/lstm_cell_245/MatMul/ReadVariableOp2Z
+while/lstm_cell_245/MatMul_1/ReadVariableOp+while/lstm_cell_245/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1486611
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1486611___redundant_placeholder05
1while_while_cond_1486611___redundant_placeholder15
1while_while_cond_1486611___redundant_placeholder25
1while_while_cond_1486611___redundant_placeholder3
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
while_cond_1485995
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1485995___redundant_placeholder05
1while_while_cond_1485995___redundant_placeholder15
1while_while_cond_1485995___redundant_placeholder25
1while_while_cond_1485995___redundant_placeholder3
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
J__inference_lstm_cell_245_layer_call_and_return_conditional_losses_1483063

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
?
)sequential_97_lstm_292_while_cond_1482066J
Fsequential_97_lstm_292_while_sequential_97_lstm_292_while_loop_counterP
Lsequential_97_lstm_292_while_sequential_97_lstm_292_while_maximum_iterations,
(sequential_97_lstm_292_while_placeholder.
*sequential_97_lstm_292_while_placeholder_1.
*sequential_97_lstm_292_while_placeholder_2.
*sequential_97_lstm_292_while_placeholder_3L
Hsequential_97_lstm_292_while_less_sequential_97_lstm_292_strided_slice_1c
_sequential_97_lstm_292_while_sequential_97_lstm_292_while_cond_1482066___redundant_placeholder0c
_sequential_97_lstm_292_while_sequential_97_lstm_292_while_cond_1482066___redundant_placeholder1c
_sequential_97_lstm_292_while_sequential_97_lstm_292_while_cond_1482066___redundant_placeholder2c
_sequential_97_lstm_292_while_sequential_97_lstm_292_while_cond_1482066___redundant_placeholder3)
%sequential_97_lstm_292_while_identity
?
!sequential_97/lstm_292/while/LessLess(sequential_97_lstm_292_while_placeholderHsequential_97_lstm_292_while_less_sequential_97_lstm_292_strided_slice_1*
T0*
_output_shapes
: y
%sequential_97/lstm_292/while/IdentityIdentity%sequential_97/lstm_292/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_97_lstm_292_while_identity.sequential_97/lstm_292/while/Identity:output:0*(
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
/__inference_lstm_cell_245_layer_call_fn_1487544

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
J__inference_lstm_cell_245_layer_call_and_return_conditional_losses_1483063o
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
?K
?
E__inference_lstm_293_layer_call_and_return_conditional_losses_1487026
inputs_0>
,lstm_cell_245_matmul_readvariableop_resource:2(@
.lstm_cell_245_matmul_1_readvariableop_resource:
(;
-lstm_cell_245_biasadd_readvariableop_resource:(
identity??$lstm_cell_245/BiasAdd/ReadVariableOp?#lstm_cell_245/MatMul/ReadVariableOp?%lstm_cell_245/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_245/MatMul/ReadVariableOpReadVariableOp,lstm_cell_245_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_245/MatMulMatMulstrided_slice_2:output:0+lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_245_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_245/MatMul_1MatMulzeros:output:0-lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_245/addAddV2lstm_cell_245/MatMul:product:0 lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_245_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_245/BiasAddBiasAddlstm_cell_245/add:z:0,lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_245/splitSplit&lstm_cell_245/split/split_dim:output:0lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_245/SigmoidSigmoidlstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_245/Sigmoid_1Sigmoidlstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_245/mulMullstm_cell_245/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_245/ReluRelulstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_245/mul_1Mullstm_cell_245/Sigmoid:y:0 lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_245/add_1AddV2lstm_cell_245/mul:z:0lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_245/Sigmoid_2Sigmoidlstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_245/Relu_1Relulstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_245/mul_2Mullstm_cell_245/Sigmoid_2:y:0"lstm_cell_245/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_245_matmul_readvariableop_resource.lstm_cell_245_matmul_1_readvariableop_resource-lstm_cell_245_biasadd_readvariableop_resource*
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
while_body_1486942*
condR
while_cond_1486941*K
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
NoOpNoOp%^lstm_cell_245/BiasAdd/ReadVariableOp$^lstm_cell_245/MatMul/ReadVariableOp&^lstm_cell_245/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_245/BiasAdd/ReadVariableOp$lstm_cell_245/BiasAdd/ReadVariableOp2J
#lstm_cell_245/MatMul/ReadVariableOp#lstm_cell_245/MatMul/ReadVariableOp2N
%lstm_cell_245/MatMul_1/ReadVariableOp%lstm_cell_245/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_292_layer_call_and_return_conditional_losses_1486696

inputs?
,lstm_cell_244_matmul_readvariableop_resource:	d?A
.lstm_cell_244_matmul_1_readvariableop_resource:	2?<
-lstm_cell_244_biasadd_readvariableop_resource:	?
identity??$lstm_cell_244/BiasAdd/ReadVariableOp?#lstm_cell_244/MatMul/ReadVariableOp?%lstm_cell_244/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_244/MatMul/ReadVariableOpReadVariableOp,lstm_cell_244_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_244/MatMulMatMulstrided_slice_2:output:0+lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_244_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_244/MatMul_1MatMulzeros:output:0-lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_244/addAddV2lstm_cell_244/MatMul:product:0 lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_244_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_244/BiasAddBiasAddlstm_cell_244/add:z:0,lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_244/splitSplit&lstm_cell_244/split/split_dim:output:0lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_244/SigmoidSigmoidlstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_244/Sigmoid_1Sigmoidlstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_244/mulMullstm_cell_244/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_244/ReluRelulstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_244/mul_1Mullstm_cell_244/Sigmoid:y:0 lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_244/add_1AddV2lstm_cell_244/mul:z:0lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_244/Sigmoid_2Sigmoidlstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_244/Relu_1Relulstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_244/mul_2Mullstm_cell_244/Sigmoid_2:y:0"lstm_cell_244/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_244_matmul_readvariableop_resource.lstm_cell_244_matmul_1_readvariableop_resource-lstm_cell_244_biasadd_readvariableop_resource*
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
while_body_1486612*
condR
while_cond_1486611*K
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
NoOpNoOp%^lstm_cell_244/BiasAdd/ReadVariableOp$^lstm_cell_244/MatMul/ReadVariableOp&^lstm_cell_244/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_244/BiasAdd/ReadVariableOp$lstm_cell_244/BiasAdd/ReadVariableOp2J
#lstm_cell_244/MatMul/ReadVariableOp#lstm_cell_244/MatMul/ReadVariableOp2N
%lstm_cell_244/MatMul_1/ReadVariableOp%lstm_cell_244/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
)sequential_97_lstm_291_while_cond_1481927J
Fsequential_97_lstm_291_while_sequential_97_lstm_291_while_loop_counterP
Lsequential_97_lstm_291_while_sequential_97_lstm_291_while_maximum_iterations,
(sequential_97_lstm_291_while_placeholder.
*sequential_97_lstm_291_while_placeholder_1.
*sequential_97_lstm_291_while_placeholder_2.
*sequential_97_lstm_291_while_placeholder_3L
Hsequential_97_lstm_291_while_less_sequential_97_lstm_291_strided_slice_1c
_sequential_97_lstm_291_while_sequential_97_lstm_291_while_cond_1481927___redundant_placeholder0c
_sequential_97_lstm_291_while_sequential_97_lstm_291_while_cond_1481927___redundant_placeholder1c
_sequential_97_lstm_291_while_sequential_97_lstm_291_while_cond_1481927___redundant_placeholder2c
_sequential_97_lstm_291_while_sequential_97_lstm_291_while_cond_1481927___redundant_placeholder3)
%sequential_97_lstm_291_while_identity
?
!sequential_97/lstm_291/while/LessLess(sequential_97_lstm_291_while_placeholderHsequential_97_lstm_291_while_less_sequential_97_lstm_291_strided_slice_1*
T0*
_output_shapes
: y
%sequential_97/lstm_291/while/IdentityIdentity%sequential_97/lstm_291/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_97_lstm_291_while_identity.sequential_97/lstm_291/while/Identity:output:0*(
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

lstm_291_while_body_1484669.
*lstm_291_while_lstm_291_while_loop_counter4
0lstm_291_while_lstm_291_while_maximum_iterations
lstm_291_while_placeholder 
lstm_291_while_placeholder_1 
lstm_291_while_placeholder_2 
lstm_291_while_placeholder_3-
)lstm_291_while_lstm_291_strided_slice_1_0i
elstm_291_while_tensorarrayv2read_tensorlistgetitem_lstm_291_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_291_while_lstm_cell_243_matmul_readvariableop_resource_0:	?R
?lstm_291_while_lstm_cell_243_matmul_1_readvariableop_resource_0:	d?M
>lstm_291_while_lstm_cell_243_biasadd_readvariableop_resource_0:	?
lstm_291_while_identity
lstm_291_while_identity_1
lstm_291_while_identity_2
lstm_291_while_identity_3
lstm_291_while_identity_4
lstm_291_while_identity_5+
'lstm_291_while_lstm_291_strided_slice_1g
clstm_291_while_tensorarrayv2read_tensorlistgetitem_lstm_291_tensorarrayunstack_tensorlistfromtensorN
;lstm_291_while_lstm_cell_243_matmul_readvariableop_resource:	?P
=lstm_291_while_lstm_cell_243_matmul_1_readvariableop_resource:	d?K
<lstm_291_while_lstm_cell_243_biasadd_readvariableop_resource:	???3lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOp?2lstm_291/while/lstm_cell_243/MatMul/ReadVariableOp?4lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOp?
@lstm_291/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_291/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_291_while_tensorarrayv2read_tensorlistgetitem_lstm_291_tensorarrayunstack_tensorlistfromtensor_0lstm_291_while_placeholderIlstm_291/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_291/while/lstm_cell_243/MatMul/ReadVariableOpReadVariableOp=lstm_291_while_lstm_cell_243_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_291/while/lstm_cell_243/MatMulMatMul9lstm_291/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_291/while/lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOp?lstm_291_while_lstm_cell_243_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_291/while/lstm_cell_243/MatMul_1MatMullstm_291_while_placeholder_2<lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_291/while/lstm_cell_243/addAddV2-lstm_291/while/lstm_cell_243/MatMul:product:0/lstm_291/while/lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOp>lstm_291_while_lstm_cell_243_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_291/while/lstm_cell_243/BiasAddBiasAdd$lstm_291/while/lstm_cell_243/add:z:0;lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_291/while/lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_291/while/lstm_cell_243/splitSplit5lstm_291/while/lstm_cell_243/split/split_dim:output:0-lstm_291/while/lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_291/while/lstm_cell_243/SigmoidSigmoid+lstm_291/while/lstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_291/while/lstm_cell_243/Sigmoid_1Sigmoid+lstm_291/while/lstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_291/while/lstm_cell_243/mulMul*lstm_291/while/lstm_cell_243/Sigmoid_1:y:0lstm_291_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_291/while/lstm_cell_243/ReluRelu+lstm_291/while/lstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_291/while/lstm_cell_243/mul_1Mul(lstm_291/while/lstm_cell_243/Sigmoid:y:0/lstm_291/while/lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_291/while/lstm_cell_243/add_1AddV2$lstm_291/while/lstm_cell_243/mul:z:0&lstm_291/while/lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_291/while/lstm_cell_243/Sigmoid_2Sigmoid+lstm_291/while/lstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_291/while/lstm_cell_243/Relu_1Relu&lstm_291/while/lstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_291/while/lstm_cell_243/mul_2Mul*lstm_291/while/lstm_cell_243/Sigmoid_2:y:01lstm_291/while/lstm_cell_243/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_291/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_291_while_placeholder_1lstm_291_while_placeholder&lstm_291/while/lstm_cell_243/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_291/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_291/while/addAddV2lstm_291_while_placeholderlstm_291/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_291/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_291/while/add_1AddV2*lstm_291_while_lstm_291_while_loop_counterlstm_291/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_291/while/IdentityIdentitylstm_291/while/add_1:z:0^lstm_291/while/NoOp*
T0*
_output_shapes
: ?
lstm_291/while/Identity_1Identity0lstm_291_while_lstm_291_while_maximum_iterations^lstm_291/while/NoOp*
T0*
_output_shapes
: t
lstm_291/while/Identity_2Identitylstm_291/while/add:z:0^lstm_291/while/NoOp*
T0*
_output_shapes
: ?
lstm_291/while/Identity_3IdentityClstm_291/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_291/while/NoOp*
T0*
_output_shapes
: ?
lstm_291/while/Identity_4Identity&lstm_291/while/lstm_cell_243/mul_2:z:0^lstm_291/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_291/while/Identity_5Identity&lstm_291/while/lstm_cell_243/add_1:z:0^lstm_291/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_291/while/NoOpNoOp4^lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOp3^lstm_291/while/lstm_cell_243/MatMul/ReadVariableOp5^lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_291_while_identity lstm_291/while/Identity:output:0"?
lstm_291_while_identity_1"lstm_291/while/Identity_1:output:0"?
lstm_291_while_identity_2"lstm_291/while/Identity_2:output:0"?
lstm_291_while_identity_3"lstm_291/while/Identity_3:output:0"?
lstm_291_while_identity_4"lstm_291/while/Identity_4:output:0"?
lstm_291_while_identity_5"lstm_291/while/Identity_5:output:0"T
'lstm_291_while_lstm_291_strided_slice_1)lstm_291_while_lstm_291_strided_slice_1_0"~
<lstm_291_while_lstm_cell_243_biasadd_readvariableop_resource>lstm_291_while_lstm_cell_243_biasadd_readvariableop_resource_0"?
=lstm_291_while_lstm_cell_243_matmul_1_readvariableop_resource?lstm_291_while_lstm_cell_243_matmul_1_readvariableop_resource_0"|
;lstm_291_while_lstm_cell_243_matmul_readvariableop_resource=lstm_291_while_lstm_cell_243_matmul_readvariableop_resource_0"?
clstm_291_while_tensorarrayv2read_tensorlistgetitem_lstm_291_tensorarrayunstack_tensorlistfromtensorelstm_291_while_tensorarrayv2read_tensorlistgetitem_lstm_291_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOp3lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOp2h
2lstm_291/while/lstm_cell_243/MatMul/ReadVariableOp2lstm_291/while/lstm_cell_243/MatMul/ReadVariableOp2l
4lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOp4lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1485567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_243_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_243_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_243_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_243_matmul_readvariableop_resource:	?G
4while_lstm_cell_243_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_243_biasadd_readvariableop_resource:	???*while/lstm_cell_243/BiasAdd/ReadVariableOp?)while/lstm_cell_243/MatMul/ReadVariableOp?+while/lstm_cell_243/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_243/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_243_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_243/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_243_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_243/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_243/addAddV2$while/lstm_cell_243/MatMul:product:0&while/lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_243_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_243/BiasAddBiasAddwhile/lstm_cell_243/add:z:02while/lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_243/splitSplit,while/lstm_cell_243/split/split_dim:output:0$while/lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_243/SigmoidSigmoid"while/lstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_243/Sigmoid_1Sigmoid"while/lstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mulMul!while/lstm_cell_243/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_243/ReluRelu"while/lstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mul_1Mulwhile/lstm_cell_243/Sigmoid:y:0&while/lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/add_1AddV2while/lstm_cell_243/mul:z:0while/lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_243/Sigmoid_2Sigmoid"while/lstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_243/Relu_1Reluwhile/lstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_243/mul_2Mul!while/lstm_cell_243/Sigmoid_2:y:0(while/lstm_cell_243/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_243/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_243/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_243/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_243/BiasAdd/ReadVariableOp*^while/lstm_cell_243/MatMul/ReadVariableOp,^while/lstm_cell_243/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_243_biasadd_readvariableop_resource5while_lstm_cell_243_biasadd_readvariableop_resource_0"n
4while_lstm_cell_243_matmul_1_readvariableop_resource6while_lstm_cell_243_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_243_matmul_readvariableop_resource4while_lstm_cell_243_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_243/BiasAdd/ReadVariableOp*while/lstm_cell_243/BiasAdd/ReadVariableOp2V
)while/lstm_cell_243/MatMul/ReadVariableOp)while/lstm_cell_243/MatMul/ReadVariableOp2Z
+while/lstm_cell_243/MatMul_1/ReadVariableOp+while/lstm_cell_243/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1482377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_243_1482401_0:	?0
while_lstm_cell_243_1482403_0:	d?,
while_lstm_cell_243_1482405_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_243_1482401:	?.
while_lstm_cell_243_1482403:	d?*
while_lstm_cell_243_1482405:	???+while/lstm_cell_243/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_243/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_243_1482401_0while_lstm_cell_243_1482403_0while_lstm_cell_243_1482405_0*
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
J__inference_lstm_cell_243_layer_call_and_return_conditional_losses_1482363?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_243/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_243/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_243/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_243/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_243_1482401while_lstm_cell_243_1482401_0"<
while_lstm_cell_243_1482403while_lstm_cell_243_1482403_0"<
while_lstm_cell_243_1482405while_lstm_cell_243_1482405_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_243/StatefulPartitionedCall+while/lstm_cell_243/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_1485709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1485709___redundant_placeholder05
1while_while_cond_1485709___redundant_placeholder15
1while_while_cond_1485709___redundant_placeholder25
1while_while_cond_1485709___redundant_placeholder3
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
/__inference_lstm_cell_245_layer_call_fn_1487561

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
J__inference_lstm_cell_245_layer_call_and_return_conditional_losses_1483209o
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
J__inference_sequential_97_layer_call_and_return_conditional_losses_1485037

inputsH
5lstm_291_lstm_cell_243_matmul_readvariableop_resource:	?J
7lstm_291_lstm_cell_243_matmul_1_readvariableop_resource:	d?E
6lstm_291_lstm_cell_243_biasadd_readvariableop_resource:	?H
5lstm_292_lstm_cell_244_matmul_readvariableop_resource:	d?J
7lstm_292_lstm_cell_244_matmul_1_readvariableop_resource:	2?E
6lstm_292_lstm_cell_244_biasadd_readvariableop_resource:	?G
5lstm_293_lstm_cell_245_matmul_readvariableop_resource:2(I
7lstm_293_lstm_cell_245_matmul_1_readvariableop_resource:
(D
6lstm_293_lstm_cell_245_biasadd_readvariableop_resource:(9
'dense_97_matmul_readvariableop_resource:
6
(dense_97_biasadd_readvariableop_resource:
identity??dense_97/BiasAdd/ReadVariableOp?dense_97/MatMul/ReadVariableOp?-lstm_291/lstm_cell_243/BiasAdd/ReadVariableOp?,lstm_291/lstm_cell_243/MatMul/ReadVariableOp?.lstm_291/lstm_cell_243/MatMul_1/ReadVariableOp?lstm_291/while?-lstm_292/lstm_cell_244/BiasAdd/ReadVariableOp?,lstm_292/lstm_cell_244/MatMul/ReadVariableOp?.lstm_292/lstm_cell_244/MatMul_1/ReadVariableOp?lstm_292/while?-lstm_293/lstm_cell_245/BiasAdd/ReadVariableOp?,lstm_293/lstm_cell_245/MatMul/ReadVariableOp?.lstm_293/lstm_cell_245/MatMul_1/ReadVariableOp?lstm_293/whileD
lstm_291/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_291/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_291/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_291/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_291/strided_sliceStridedSlicelstm_291/Shape:output:0%lstm_291/strided_slice/stack:output:0'lstm_291/strided_slice/stack_1:output:0'lstm_291/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_291/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_291/zeros/packedPacklstm_291/strided_slice:output:0 lstm_291/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_291/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_291/zerosFilllstm_291/zeros/packed:output:0lstm_291/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_291/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_291/zeros_1/packedPacklstm_291/strided_slice:output:0"lstm_291/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_291/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_291/zeros_1Fill lstm_291/zeros_1/packed:output:0lstm_291/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_291/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_291/transpose	Transposeinputs lstm_291/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_291/Shape_1Shapelstm_291/transpose:y:0*
T0*
_output_shapes
:h
lstm_291/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_291/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_291/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_291/strided_slice_1StridedSlicelstm_291/Shape_1:output:0'lstm_291/strided_slice_1/stack:output:0)lstm_291/strided_slice_1/stack_1:output:0)lstm_291/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_291/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_291/TensorArrayV2TensorListReserve-lstm_291/TensorArrayV2/element_shape:output:0!lstm_291/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_291/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_291/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_291/transpose:y:0Glstm_291/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_291/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_291/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_291/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_291/strided_slice_2StridedSlicelstm_291/transpose:y:0'lstm_291/strided_slice_2/stack:output:0)lstm_291/strided_slice_2/stack_1:output:0)lstm_291/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_291/lstm_cell_243/MatMul/ReadVariableOpReadVariableOp5lstm_291_lstm_cell_243_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_291/lstm_cell_243/MatMulMatMul!lstm_291/strided_slice_2:output:04lstm_291/lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_291/lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOp7lstm_291_lstm_cell_243_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_291/lstm_cell_243/MatMul_1MatMullstm_291/zeros:output:06lstm_291/lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_291/lstm_cell_243/addAddV2'lstm_291/lstm_cell_243/MatMul:product:0)lstm_291/lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_291/lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOp6lstm_291_lstm_cell_243_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_291/lstm_cell_243/BiasAddBiasAddlstm_291/lstm_cell_243/add:z:05lstm_291/lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_291/lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_291/lstm_cell_243/splitSplit/lstm_291/lstm_cell_243/split/split_dim:output:0'lstm_291/lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_291/lstm_cell_243/SigmoidSigmoid%lstm_291/lstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_291/lstm_cell_243/Sigmoid_1Sigmoid%lstm_291/lstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_291/lstm_cell_243/mulMul$lstm_291/lstm_cell_243/Sigmoid_1:y:0lstm_291/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_291/lstm_cell_243/ReluRelu%lstm_291/lstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_291/lstm_cell_243/mul_1Mul"lstm_291/lstm_cell_243/Sigmoid:y:0)lstm_291/lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_291/lstm_cell_243/add_1AddV2lstm_291/lstm_cell_243/mul:z:0 lstm_291/lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_291/lstm_cell_243/Sigmoid_2Sigmoid%lstm_291/lstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_291/lstm_cell_243/Relu_1Relu lstm_291/lstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_291/lstm_cell_243/mul_2Mul$lstm_291/lstm_cell_243/Sigmoid_2:y:0+lstm_291/lstm_cell_243/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_291/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_291/TensorArrayV2_1TensorListReserve/lstm_291/TensorArrayV2_1/element_shape:output:0!lstm_291/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_291/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_291/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_291/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_291/whileWhile$lstm_291/while/loop_counter:output:0*lstm_291/while/maximum_iterations:output:0lstm_291/time:output:0!lstm_291/TensorArrayV2_1:handle:0lstm_291/zeros:output:0lstm_291/zeros_1:output:0!lstm_291/strided_slice_1:output:0@lstm_291/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_291_lstm_cell_243_matmul_readvariableop_resource7lstm_291_lstm_cell_243_matmul_1_readvariableop_resource6lstm_291_lstm_cell_243_biasadd_readvariableop_resource*
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
lstm_291_while_body_1484669*'
condR
lstm_291_while_cond_1484668*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_291/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_291/TensorArrayV2Stack/TensorListStackTensorListStacklstm_291/while:output:3Blstm_291/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_291/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_291/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_291/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_291/strided_slice_3StridedSlice4lstm_291/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_291/strided_slice_3/stack:output:0)lstm_291/strided_slice_3/stack_1:output:0)lstm_291/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_291/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_291/transpose_1	Transpose4lstm_291/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_291/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_291/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_292/ShapeShapelstm_291/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_292/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_292/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_292/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_292/strided_sliceStridedSlicelstm_292/Shape:output:0%lstm_292/strided_slice/stack:output:0'lstm_292/strided_slice/stack_1:output:0'lstm_292/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_292/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_292/zeros/packedPacklstm_292/strided_slice:output:0 lstm_292/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_292/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_292/zerosFilllstm_292/zeros/packed:output:0lstm_292/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_292/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_292/zeros_1/packedPacklstm_292/strided_slice:output:0"lstm_292/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_292/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_292/zeros_1Fill lstm_292/zeros_1/packed:output:0lstm_292/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_292/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_292/transpose	Transposelstm_291/transpose_1:y:0 lstm_292/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_292/Shape_1Shapelstm_292/transpose:y:0*
T0*
_output_shapes
:h
lstm_292/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_292/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_292/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_292/strided_slice_1StridedSlicelstm_292/Shape_1:output:0'lstm_292/strided_slice_1/stack:output:0)lstm_292/strided_slice_1/stack_1:output:0)lstm_292/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_292/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_292/TensorArrayV2TensorListReserve-lstm_292/TensorArrayV2/element_shape:output:0!lstm_292/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_292/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_292/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_292/transpose:y:0Glstm_292/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_292/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_292/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_292/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_292/strided_slice_2StridedSlicelstm_292/transpose:y:0'lstm_292/strided_slice_2/stack:output:0)lstm_292/strided_slice_2/stack_1:output:0)lstm_292/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_292/lstm_cell_244/MatMul/ReadVariableOpReadVariableOp5lstm_292_lstm_cell_244_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_292/lstm_cell_244/MatMulMatMul!lstm_292/strided_slice_2:output:04lstm_292/lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_292/lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOp7lstm_292_lstm_cell_244_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_292/lstm_cell_244/MatMul_1MatMullstm_292/zeros:output:06lstm_292/lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_292/lstm_cell_244/addAddV2'lstm_292/lstm_cell_244/MatMul:product:0)lstm_292/lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_292/lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOp6lstm_292_lstm_cell_244_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_292/lstm_cell_244/BiasAddBiasAddlstm_292/lstm_cell_244/add:z:05lstm_292/lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_292/lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_292/lstm_cell_244/splitSplit/lstm_292/lstm_cell_244/split/split_dim:output:0'lstm_292/lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_292/lstm_cell_244/SigmoidSigmoid%lstm_292/lstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_292/lstm_cell_244/Sigmoid_1Sigmoid%lstm_292/lstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_292/lstm_cell_244/mulMul$lstm_292/lstm_cell_244/Sigmoid_1:y:0lstm_292/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_292/lstm_cell_244/ReluRelu%lstm_292/lstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_292/lstm_cell_244/mul_1Mul"lstm_292/lstm_cell_244/Sigmoid:y:0)lstm_292/lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_292/lstm_cell_244/add_1AddV2lstm_292/lstm_cell_244/mul:z:0 lstm_292/lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_292/lstm_cell_244/Sigmoid_2Sigmoid%lstm_292/lstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_292/lstm_cell_244/Relu_1Relu lstm_292/lstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_292/lstm_cell_244/mul_2Mul$lstm_292/lstm_cell_244/Sigmoid_2:y:0+lstm_292/lstm_cell_244/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_292/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_292/TensorArrayV2_1TensorListReserve/lstm_292/TensorArrayV2_1/element_shape:output:0!lstm_292/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_292/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_292/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_292/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_292/whileWhile$lstm_292/while/loop_counter:output:0*lstm_292/while/maximum_iterations:output:0lstm_292/time:output:0!lstm_292/TensorArrayV2_1:handle:0lstm_292/zeros:output:0lstm_292/zeros_1:output:0!lstm_292/strided_slice_1:output:0@lstm_292/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_292_lstm_cell_244_matmul_readvariableop_resource7lstm_292_lstm_cell_244_matmul_1_readvariableop_resource6lstm_292_lstm_cell_244_biasadd_readvariableop_resource*
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
lstm_292_while_body_1484808*'
condR
lstm_292_while_cond_1484807*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_292/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_292/TensorArrayV2Stack/TensorListStackTensorListStacklstm_292/while:output:3Blstm_292/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_292/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_292/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_292/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_292/strided_slice_3StridedSlice4lstm_292/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_292/strided_slice_3/stack:output:0)lstm_292/strided_slice_3/stack_1:output:0)lstm_292/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_292/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_292/transpose_1	Transpose4lstm_292/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_292/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_292/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_293/ShapeShapelstm_292/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_293/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_293/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_293/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_293/strided_sliceStridedSlicelstm_293/Shape:output:0%lstm_293/strided_slice/stack:output:0'lstm_293/strided_slice/stack_1:output:0'lstm_293/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_293/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_293/zeros/packedPacklstm_293/strided_slice:output:0 lstm_293/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_293/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_293/zerosFilllstm_293/zeros/packed:output:0lstm_293/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_293/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_293/zeros_1/packedPacklstm_293/strided_slice:output:0"lstm_293/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_293/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_293/zeros_1Fill lstm_293/zeros_1/packed:output:0lstm_293/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_293/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_293/transpose	Transposelstm_292/transpose_1:y:0 lstm_293/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_293/Shape_1Shapelstm_293/transpose:y:0*
T0*
_output_shapes
:h
lstm_293/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_293/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_293/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_293/strided_slice_1StridedSlicelstm_293/Shape_1:output:0'lstm_293/strided_slice_1/stack:output:0)lstm_293/strided_slice_1/stack_1:output:0)lstm_293/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_293/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_293/TensorArrayV2TensorListReserve-lstm_293/TensorArrayV2/element_shape:output:0!lstm_293/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_293/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_293/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_293/transpose:y:0Glstm_293/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_293/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_293/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_293/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_293/strided_slice_2StridedSlicelstm_293/transpose:y:0'lstm_293/strided_slice_2/stack:output:0)lstm_293/strided_slice_2/stack_1:output:0)lstm_293/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_293/lstm_cell_245/MatMul/ReadVariableOpReadVariableOp5lstm_293_lstm_cell_245_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_293/lstm_cell_245/MatMulMatMul!lstm_293/strided_slice_2:output:04lstm_293/lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_293/lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOp7lstm_293_lstm_cell_245_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_293/lstm_cell_245/MatMul_1MatMullstm_293/zeros:output:06lstm_293/lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_293/lstm_cell_245/addAddV2'lstm_293/lstm_cell_245/MatMul:product:0)lstm_293/lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_293/lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOp6lstm_293_lstm_cell_245_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_293/lstm_cell_245/BiasAddBiasAddlstm_293/lstm_cell_245/add:z:05lstm_293/lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_293/lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_293/lstm_cell_245/splitSplit/lstm_293/lstm_cell_245/split/split_dim:output:0'lstm_293/lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_293/lstm_cell_245/SigmoidSigmoid%lstm_293/lstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_293/lstm_cell_245/Sigmoid_1Sigmoid%lstm_293/lstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_293/lstm_cell_245/mulMul$lstm_293/lstm_cell_245/Sigmoid_1:y:0lstm_293/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_293/lstm_cell_245/ReluRelu%lstm_293/lstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_293/lstm_cell_245/mul_1Mul"lstm_293/lstm_cell_245/Sigmoid:y:0)lstm_293/lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_293/lstm_cell_245/add_1AddV2lstm_293/lstm_cell_245/mul:z:0 lstm_293/lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_293/lstm_cell_245/Sigmoid_2Sigmoid%lstm_293/lstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_293/lstm_cell_245/Relu_1Relu lstm_293/lstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_293/lstm_cell_245/mul_2Mul$lstm_293/lstm_cell_245/Sigmoid_2:y:0+lstm_293/lstm_cell_245/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_293/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_293/TensorArrayV2_1TensorListReserve/lstm_293/TensorArrayV2_1/element_shape:output:0!lstm_293/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_293/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_293/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_293/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_293/whileWhile$lstm_293/while/loop_counter:output:0*lstm_293/while/maximum_iterations:output:0lstm_293/time:output:0!lstm_293/TensorArrayV2_1:handle:0lstm_293/zeros:output:0lstm_293/zeros_1:output:0!lstm_293/strided_slice_1:output:0@lstm_293/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_293_lstm_cell_245_matmul_readvariableop_resource7lstm_293_lstm_cell_245_matmul_1_readvariableop_resource6lstm_293_lstm_cell_245_biasadd_readvariableop_resource*
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
lstm_293_while_body_1484947*'
condR
lstm_293_while_cond_1484946*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_293/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_293/TensorArrayV2Stack/TensorListStackTensorListStacklstm_293/while:output:3Blstm_293/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_293/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_293/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_293/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_293/strided_slice_3StridedSlice4lstm_293/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_293/strided_slice_3/stack:output:0)lstm_293/strided_slice_3/stack_1:output:0)lstm_293/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_293/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_293/transpose_1	Transpose4lstm_293/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_293/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_293/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_97/MatMul/ReadVariableOpReadVariableOp'dense_97_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_97/MatMulMatMul!lstm_293/strided_slice_3:output:0&dense_97/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_97/BiasAdd/ReadVariableOpReadVariableOp(dense_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_97/BiasAddBiasAdddense_97/MatMul:product:0'dense_97/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_97/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_97/BiasAdd/ReadVariableOp^dense_97/MatMul/ReadVariableOp.^lstm_291/lstm_cell_243/BiasAdd/ReadVariableOp-^lstm_291/lstm_cell_243/MatMul/ReadVariableOp/^lstm_291/lstm_cell_243/MatMul_1/ReadVariableOp^lstm_291/while.^lstm_292/lstm_cell_244/BiasAdd/ReadVariableOp-^lstm_292/lstm_cell_244/MatMul/ReadVariableOp/^lstm_292/lstm_cell_244/MatMul_1/ReadVariableOp^lstm_292/while.^lstm_293/lstm_cell_245/BiasAdd/ReadVariableOp-^lstm_293/lstm_cell_245/MatMul/ReadVariableOp/^lstm_293/lstm_cell_245/MatMul_1/ReadVariableOp^lstm_293/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_97/BiasAdd/ReadVariableOpdense_97/BiasAdd/ReadVariableOp2@
dense_97/MatMul/ReadVariableOpdense_97/MatMul/ReadVariableOp2^
-lstm_291/lstm_cell_243/BiasAdd/ReadVariableOp-lstm_291/lstm_cell_243/BiasAdd/ReadVariableOp2\
,lstm_291/lstm_cell_243/MatMul/ReadVariableOp,lstm_291/lstm_cell_243/MatMul/ReadVariableOp2`
.lstm_291/lstm_cell_243/MatMul_1/ReadVariableOp.lstm_291/lstm_cell_243/MatMul_1/ReadVariableOp2 
lstm_291/whilelstm_291/while2^
-lstm_292/lstm_cell_244/BiasAdd/ReadVariableOp-lstm_292/lstm_cell_244/BiasAdd/ReadVariableOp2\
,lstm_292/lstm_cell_244/MatMul/ReadVariableOp,lstm_292/lstm_cell_244/MatMul/ReadVariableOp2`
.lstm_292/lstm_cell_244/MatMul_1/ReadVariableOp.lstm_292/lstm_cell_244/MatMul_1/ReadVariableOp2 
lstm_292/whilelstm_292/while2^
-lstm_293/lstm_cell_245/BiasAdd/ReadVariableOp-lstm_293/lstm_cell_245/BiasAdd/ReadVariableOp2\
,lstm_293/lstm_cell_245/MatMul/ReadVariableOp,lstm_293/lstm_cell_245/MatMul/ReadVariableOp2`
.lstm_293/lstm_cell_245/MatMul_1/ReadVariableOp.lstm_293/lstm_cell_245/MatMul_1/ReadVariableOp2 
lstm_293/whilelstm_293/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_244_layer_call_and_return_conditional_losses_1487527

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
?
*__inference_lstm_292_layer_call_fn_1486091
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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1482796|
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
while_body_1482918
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_244_1482942_0:	d?0
while_lstm_cell_244_1482944_0:	2?,
while_lstm_cell_244_1482946_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_244_1482942:	d?.
while_lstm_cell_244_1482944:	2?*
while_lstm_cell_244_1482946:	???+while/lstm_cell_244/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_244/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_244_1482942_0while_lstm_cell_244_1482944_0while_lstm_cell_244_1482946_0*
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
J__inference_lstm_cell_244_layer_call_and_return_conditional_losses_1482859?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_244/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_244/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_244/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_244/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_244_1482942while_lstm_cell_244_1482942_0"<
while_lstm_cell_244_1482944while_lstm_cell_244_1482944_0"<
while_lstm_cell_244_1482946while_lstm_cell_244_1482946_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_244/StatefulPartitionedCall+while/lstm_cell_244/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_97_layer_call_and_return_conditional_losses_1487331

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
??
?
J__inference_sequential_97_layer_call_and_return_conditional_losses_1485464

inputsH
5lstm_291_lstm_cell_243_matmul_readvariableop_resource:	?J
7lstm_291_lstm_cell_243_matmul_1_readvariableop_resource:	d?E
6lstm_291_lstm_cell_243_biasadd_readvariableop_resource:	?H
5lstm_292_lstm_cell_244_matmul_readvariableop_resource:	d?J
7lstm_292_lstm_cell_244_matmul_1_readvariableop_resource:	2?E
6lstm_292_lstm_cell_244_biasadd_readvariableop_resource:	?G
5lstm_293_lstm_cell_245_matmul_readvariableop_resource:2(I
7lstm_293_lstm_cell_245_matmul_1_readvariableop_resource:
(D
6lstm_293_lstm_cell_245_biasadd_readvariableop_resource:(9
'dense_97_matmul_readvariableop_resource:
6
(dense_97_biasadd_readvariableop_resource:
identity??dense_97/BiasAdd/ReadVariableOp?dense_97/MatMul/ReadVariableOp?-lstm_291/lstm_cell_243/BiasAdd/ReadVariableOp?,lstm_291/lstm_cell_243/MatMul/ReadVariableOp?.lstm_291/lstm_cell_243/MatMul_1/ReadVariableOp?lstm_291/while?-lstm_292/lstm_cell_244/BiasAdd/ReadVariableOp?,lstm_292/lstm_cell_244/MatMul/ReadVariableOp?.lstm_292/lstm_cell_244/MatMul_1/ReadVariableOp?lstm_292/while?-lstm_293/lstm_cell_245/BiasAdd/ReadVariableOp?,lstm_293/lstm_cell_245/MatMul/ReadVariableOp?.lstm_293/lstm_cell_245/MatMul_1/ReadVariableOp?lstm_293/whileD
lstm_291/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_291/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_291/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_291/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_291/strided_sliceStridedSlicelstm_291/Shape:output:0%lstm_291/strided_slice/stack:output:0'lstm_291/strided_slice/stack_1:output:0'lstm_291/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_291/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_291/zeros/packedPacklstm_291/strided_slice:output:0 lstm_291/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_291/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_291/zerosFilllstm_291/zeros/packed:output:0lstm_291/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_291/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_291/zeros_1/packedPacklstm_291/strided_slice:output:0"lstm_291/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_291/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_291/zeros_1Fill lstm_291/zeros_1/packed:output:0lstm_291/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_291/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_291/transpose	Transposeinputs lstm_291/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_291/Shape_1Shapelstm_291/transpose:y:0*
T0*
_output_shapes
:h
lstm_291/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_291/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_291/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_291/strided_slice_1StridedSlicelstm_291/Shape_1:output:0'lstm_291/strided_slice_1/stack:output:0)lstm_291/strided_slice_1/stack_1:output:0)lstm_291/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_291/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_291/TensorArrayV2TensorListReserve-lstm_291/TensorArrayV2/element_shape:output:0!lstm_291/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_291/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_291/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_291/transpose:y:0Glstm_291/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_291/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_291/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_291/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_291/strided_slice_2StridedSlicelstm_291/transpose:y:0'lstm_291/strided_slice_2/stack:output:0)lstm_291/strided_slice_2/stack_1:output:0)lstm_291/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_291/lstm_cell_243/MatMul/ReadVariableOpReadVariableOp5lstm_291_lstm_cell_243_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_291/lstm_cell_243/MatMulMatMul!lstm_291/strided_slice_2:output:04lstm_291/lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_291/lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOp7lstm_291_lstm_cell_243_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_291/lstm_cell_243/MatMul_1MatMullstm_291/zeros:output:06lstm_291/lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_291/lstm_cell_243/addAddV2'lstm_291/lstm_cell_243/MatMul:product:0)lstm_291/lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_291/lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOp6lstm_291_lstm_cell_243_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_291/lstm_cell_243/BiasAddBiasAddlstm_291/lstm_cell_243/add:z:05lstm_291/lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_291/lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_291/lstm_cell_243/splitSplit/lstm_291/lstm_cell_243/split/split_dim:output:0'lstm_291/lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_291/lstm_cell_243/SigmoidSigmoid%lstm_291/lstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_291/lstm_cell_243/Sigmoid_1Sigmoid%lstm_291/lstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_291/lstm_cell_243/mulMul$lstm_291/lstm_cell_243/Sigmoid_1:y:0lstm_291/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_291/lstm_cell_243/ReluRelu%lstm_291/lstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_291/lstm_cell_243/mul_1Mul"lstm_291/lstm_cell_243/Sigmoid:y:0)lstm_291/lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_291/lstm_cell_243/add_1AddV2lstm_291/lstm_cell_243/mul:z:0 lstm_291/lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_291/lstm_cell_243/Sigmoid_2Sigmoid%lstm_291/lstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_291/lstm_cell_243/Relu_1Relu lstm_291/lstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_291/lstm_cell_243/mul_2Mul$lstm_291/lstm_cell_243/Sigmoid_2:y:0+lstm_291/lstm_cell_243/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_291/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_291/TensorArrayV2_1TensorListReserve/lstm_291/TensorArrayV2_1/element_shape:output:0!lstm_291/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_291/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_291/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_291/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_291/whileWhile$lstm_291/while/loop_counter:output:0*lstm_291/while/maximum_iterations:output:0lstm_291/time:output:0!lstm_291/TensorArrayV2_1:handle:0lstm_291/zeros:output:0lstm_291/zeros_1:output:0!lstm_291/strided_slice_1:output:0@lstm_291/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_291_lstm_cell_243_matmul_readvariableop_resource7lstm_291_lstm_cell_243_matmul_1_readvariableop_resource6lstm_291_lstm_cell_243_biasadd_readvariableop_resource*
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
lstm_291_while_body_1485096*'
condR
lstm_291_while_cond_1485095*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_291/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_291/TensorArrayV2Stack/TensorListStackTensorListStacklstm_291/while:output:3Blstm_291/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_291/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_291/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_291/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_291/strided_slice_3StridedSlice4lstm_291/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_291/strided_slice_3/stack:output:0)lstm_291/strided_slice_3/stack_1:output:0)lstm_291/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_291/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_291/transpose_1	Transpose4lstm_291/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_291/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_291/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_292/ShapeShapelstm_291/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_292/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_292/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_292/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_292/strided_sliceStridedSlicelstm_292/Shape:output:0%lstm_292/strided_slice/stack:output:0'lstm_292/strided_slice/stack_1:output:0'lstm_292/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_292/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_292/zeros/packedPacklstm_292/strided_slice:output:0 lstm_292/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_292/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_292/zerosFilllstm_292/zeros/packed:output:0lstm_292/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_292/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_292/zeros_1/packedPacklstm_292/strided_slice:output:0"lstm_292/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_292/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_292/zeros_1Fill lstm_292/zeros_1/packed:output:0lstm_292/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_292/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_292/transpose	Transposelstm_291/transpose_1:y:0 lstm_292/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_292/Shape_1Shapelstm_292/transpose:y:0*
T0*
_output_shapes
:h
lstm_292/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_292/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_292/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_292/strided_slice_1StridedSlicelstm_292/Shape_1:output:0'lstm_292/strided_slice_1/stack:output:0)lstm_292/strided_slice_1/stack_1:output:0)lstm_292/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_292/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_292/TensorArrayV2TensorListReserve-lstm_292/TensorArrayV2/element_shape:output:0!lstm_292/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_292/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_292/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_292/transpose:y:0Glstm_292/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_292/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_292/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_292/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_292/strided_slice_2StridedSlicelstm_292/transpose:y:0'lstm_292/strided_slice_2/stack:output:0)lstm_292/strided_slice_2/stack_1:output:0)lstm_292/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_292/lstm_cell_244/MatMul/ReadVariableOpReadVariableOp5lstm_292_lstm_cell_244_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_292/lstm_cell_244/MatMulMatMul!lstm_292/strided_slice_2:output:04lstm_292/lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_292/lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOp7lstm_292_lstm_cell_244_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_292/lstm_cell_244/MatMul_1MatMullstm_292/zeros:output:06lstm_292/lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_292/lstm_cell_244/addAddV2'lstm_292/lstm_cell_244/MatMul:product:0)lstm_292/lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_292/lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOp6lstm_292_lstm_cell_244_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_292/lstm_cell_244/BiasAddBiasAddlstm_292/lstm_cell_244/add:z:05lstm_292/lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_292/lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_292/lstm_cell_244/splitSplit/lstm_292/lstm_cell_244/split/split_dim:output:0'lstm_292/lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_292/lstm_cell_244/SigmoidSigmoid%lstm_292/lstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_292/lstm_cell_244/Sigmoid_1Sigmoid%lstm_292/lstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_292/lstm_cell_244/mulMul$lstm_292/lstm_cell_244/Sigmoid_1:y:0lstm_292/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_292/lstm_cell_244/ReluRelu%lstm_292/lstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_292/lstm_cell_244/mul_1Mul"lstm_292/lstm_cell_244/Sigmoid:y:0)lstm_292/lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_292/lstm_cell_244/add_1AddV2lstm_292/lstm_cell_244/mul:z:0 lstm_292/lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_292/lstm_cell_244/Sigmoid_2Sigmoid%lstm_292/lstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_292/lstm_cell_244/Relu_1Relu lstm_292/lstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_292/lstm_cell_244/mul_2Mul$lstm_292/lstm_cell_244/Sigmoid_2:y:0+lstm_292/lstm_cell_244/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_292/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_292/TensorArrayV2_1TensorListReserve/lstm_292/TensorArrayV2_1/element_shape:output:0!lstm_292/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_292/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_292/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_292/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_292/whileWhile$lstm_292/while/loop_counter:output:0*lstm_292/while/maximum_iterations:output:0lstm_292/time:output:0!lstm_292/TensorArrayV2_1:handle:0lstm_292/zeros:output:0lstm_292/zeros_1:output:0!lstm_292/strided_slice_1:output:0@lstm_292/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_292_lstm_cell_244_matmul_readvariableop_resource7lstm_292_lstm_cell_244_matmul_1_readvariableop_resource6lstm_292_lstm_cell_244_biasadd_readvariableop_resource*
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
lstm_292_while_body_1485235*'
condR
lstm_292_while_cond_1485234*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_292/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_292/TensorArrayV2Stack/TensorListStackTensorListStacklstm_292/while:output:3Blstm_292/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_292/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_292/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_292/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_292/strided_slice_3StridedSlice4lstm_292/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_292/strided_slice_3/stack:output:0)lstm_292/strided_slice_3/stack_1:output:0)lstm_292/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_292/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_292/transpose_1	Transpose4lstm_292/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_292/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_292/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_293/ShapeShapelstm_292/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_293/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_293/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_293/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_293/strided_sliceStridedSlicelstm_293/Shape:output:0%lstm_293/strided_slice/stack:output:0'lstm_293/strided_slice/stack_1:output:0'lstm_293/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_293/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_293/zeros/packedPacklstm_293/strided_slice:output:0 lstm_293/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_293/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_293/zerosFilllstm_293/zeros/packed:output:0lstm_293/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_293/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_293/zeros_1/packedPacklstm_293/strided_slice:output:0"lstm_293/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_293/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_293/zeros_1Fill lstm_293/zeros_1/packed:output:0lstm_293/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_293/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_293/transpose	Transposelstm_292/transpose_1:y:0 lstm_293/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_293/Shape_1Shapelstm_293/transpose:y:0*
T0*
_output_shapes
:h
lstm_293/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_293/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_293/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_293/strided_slice_1StridedSlicelstm_293/Shape_1:output:0'lstm_293/strided_slice_1/stack:output:0)lstm_293/strided_slice_1/stack_1:output:0)lstm_293/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_293/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_293/TensorArrayV2TensorListReserve-lstm_293/TensorArrayV2/element_shape:output:0!lstm_293/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_293/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_293/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_293/transpose:y:0Glstm_293/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_293/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_293/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_293/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_293/strided_slice_2StridedSlicelstm_293/transpose:y:0'lstm_293/strided_slice_2/stack:output:0)lstm_293/strided_slice_2/stack_1:output:0)lstm_293/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_293/lstm_cell_245/MatMul/ReadVariableOpReadVariableOp5lstm_293_lstm_cell_245_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_293/lstm_cell_245/MatMulMatMul!lstm_293/strided_slice_2:output:04lstm_293/lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_293/lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOp7lstm_293_lstm_cell_245_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_293/lstm_cell_245/MatMul_1MatMullstm_293/zeros:output:06lstm_293/lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_293/lstm_cell_245/addAddV2'lstm_293/lstm_cell_245/MatMul:product:0)lstm_293/lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_293/lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOp6lstm_293_lstm_cell_245_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_293/lstm_cell_245/BiasAddBiasAddlstm_293/lstm_cell_245/add:z:05lstm_293/lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_293/lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_293/lstm_cell_245/splitSplit/lstm_293/lstm_cell_245/split/split_dim:output:0'lstm_293/lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_293/lstm_cell_245/SigmoidSigmoid%lstm_293/lstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_293/lstm_cell_245/Sigmoid_1Sigmoid%lstm_293/lstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_293/lstm_cell_245/mulMul$lstm_293/lstm_cell_245/Sigmoid_1:y:0lstm_293/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_293/lstm_cell_245/ReluRelu%lstm_293/lstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_293/lstm_cell_245/mul_1Mul"lstm_293/lstm_cell_245/Sigmoid:y:0)lstm_293/lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_293/lstm_cell_245/add_1AddV2lstm_293/lstm_cell_245/mul:z:0 lstm_293/lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_293/lstm_cell_245/Sigmoid_2Sigmoid%lstm_293/lstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_293/lstm_cell_245/Relu_1Relu lstm_293/lstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_293/lstm_cell_245/mul_2Mul$lstm_293/lstm_cell_245/Sigmoid_2:y:0+lstm_293/lstm_cell_245/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_293/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_293/TensorArrayV2_1TensorListReserve/lstm_293/TensorArrayV2_1/element_shape:output:0!lstm_293/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_293/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_293/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_293/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_293/whileWhile$lstm_293/while/loop_counter:output:0*lstm_293/while/maximum_iterations:output:0lstm_293/time:output:0!lstm_293/TensorArrayV2_1:handle:0lstm_293/zeros:output:0lstm_293/zeros_1:output:0!lstm_293/strided_slice_1:output:0@lstm_293/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_293_lstm_cell_245_matmul_readvariableop_resource7lstm_293_lstm_cell_245_matmul_1_readvariableop_resource6lstm_293_lstm_cell_245_biasadd_readvariableop_resource*
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
lstm_293_while_body_1485374*'
condR
lstm_293_while_cond_1485373*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_293/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_293/TensorArrayV2Stack/TensorListStackTensorListStacklstm_293/while:output:3Blstm_293/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_293/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_293/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_293/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_293/strided_slice_3StridedSlice4lstm_293/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_293/strided_slice_3/stack:output:0)lstm_293/strided_slice_3/stack_1:output:0)lstm_293/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_293/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_293/transpose_1	Transpose4lstm_293/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_293/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_293/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_97/MatMul/ReadVariableOpReadVariableOp'dense_97_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_97/MatMulMatMul!lstm_293/strided_slice_3:output:0&dense_97/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_97/BiasAdd/ReadVariableOpReadVariableOp(dense_97_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_97/BiasAddBiasAdddense_97/MatMul:product:0'dense_97/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_97/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_97/BiasAdd/ReadVariableOp^dense_97/MatMul/ReadVariableOp.^lstm_291/lstm_cell_243/BiasAdd/ReadVariableOp-^lstm_291/lstm_cell_243/MatMul/ReadVariableOp/^lstm_291/lstm_cell_243/MatMul_1/ReadVariableOp^lstm_291/while.^lstm_292/lstm_cell_244/BiasAdd/ReadVariableOp-^lstm_292/lstm_cell_244/MatMul/ReadVariableOp/^lstm_292/lstm_cell_244/MatMul_1/ReadVariableOp^lstm_292/while.^lstm_293/lstm_cell_245/BiasAdd/ReadVariableOp-^lstm_293/lstm_cell_245/MatMul/ReadVariableOp/^lstm_293/lstm_cell_245/MatMul_1/ReadVariableOp^lstm_293/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_97/BiasAdd/ReadVariableOpdense_97/BiasAdd/ReadVariableOp2@
dense_97/MatMul/ReadVariableOpdense_97/MatMul/ReadVariableOp2^
-lstm_291/lstm_cell_243/BiasAdd/ReadVariableOp-lstm_291/lstm_cell_243/BiasAdd/ReadVariableOp2\
,lstm_291/lstm_cell_243/MatMul/ReadVariableOp,lstm_291/lstm_cell_243/MatMul/ReadVariableOp2`
.lstm_291/lstm_cell_243/MatMul_1/ReadVariableOp.lstm_291/lstm_cell_243/MatMul_1/ReadVariableOp2 
lstm_291/whilelstm_291/while2^
-lstm_292/lstm_cell_244/BiasAdd/ReadVariableOp-lstm_292/lstm_cell_244/BiasAdd/ReadVariableOp2\
,lstm_292/lstm_cell_244/MatMul/ReadVariableOp,lstm_292/lstm_cell_244/MatMul/ReadVariableOp2`
.lstm_292/lstm_cell_244/MatMul_1/ReadVariableOp.lstm_292/lstm_cell_244/MatMul_1/ReadVariableOp2 
lstm_292/whilelstm_292/while2^
-lstm_293/lstm_cell_245/BiasAdd/ReadVariableOp-lstm_293/lstm_cell_245/BiasAdd/ReadVariableOp2\
,lstm_293/lstm_cell_245/MatMul/ReadVariableOp,lstm_293/lstm_cell_245/MatMul/ReadVariableOp2`
.lstm_293/lstm_cell_245/MatMul_1/ReadVariableOp.lstm_293/lstm_cell_245/MatMul_1/ReadVariableOp2 
lstm_293/whilelstm_293/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_293_while_body_1484947.
*lstm_293_while_lstm_293_while_loop_counter4
0lstm_293_while_lstm_293_while_maximum_iterations
lstm_293_while_placeholder 
lstm_293_while_placeholder_1 
lstm_293_while_placeholder_2 
lstm_293_while_placeholder_3-
)lstm_293_while_lstm_293_strided_slice_1_0i
elstm_293_while_tensorarrayv2read_tensorlistgetitem_lstm_293_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_293_while_lstm_cell_245_matmul_readvariableop_resource_0:2(Q
?lstm_293_while_lstm_cell_245_matmul_1_readvariableop_resource_0:
(L
>lstm_293_while_lstm_cell_245_biasadd_readvariableop_resource_0:(
lstm_293_while_identity
lstm_293_while_identity_1
lstm_293_while_identity_2
lstm_293_while_identity_3
lstm_293_while_identity_4
lstm_293_while_identity_5+
'lstm_293_while_lstm_293_strided_slice_1g
clstm_293_while_tensorarrayv2read_tensorlistgetitem_lstm_293_tensorarrayunstack_tensorlistfromtensorM
;lstm_293_while_lstm_cell_245_matmul_readvariableop_resource:2(O
=lstm_293_while_lstm_cell_245_matmul_1_readvariableop_resource:
(J
<lstm_293_while_lstm_cell_245_biasadd_readvariableop_resource:(??3lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOp?2lstm_293/while/lstm_cell_245/MatMul/ReadVariableOp?4lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOp?
@lstm_293/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_293/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_293_while_tensorarrayv2read_tensorlistgetitem_lstm_293_tensorarrayunstack_tensorlistfromtensor_0lstm_293_while_placeholderIlstm_293/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_293/while/lstm_cell_245/MatMul/ReadVariableOpReadVariableOp=lstm_293_while_lstm_cell_245_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_293/while/lstm_cell_245/MatMulMatMul9lstm_293/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_293/while/lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOp?lstm_293_while_lstm_cell_245_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_293/while/lstm_cell_245/MatMul_1MatMullstm_293_while_placeholder_2<lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_293/while/lstm_cell_245/addAddV2-lstm_293/while/lstm_cell_245/MatMul:product:0/lstm_293/while/lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOp>lstm_293_while_lstm_cell_245_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_293/while/lstm_cell_245/BiasAddBiasAdd$lstm_293/while/lstm_cell_245/add:z:0;lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_293/while/lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_293/while/lstm_cell_245/splitSplit5lstm_293/while/lstm_cell_245/split/split_dim:output:0-lstm_293/while/lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_293/while/lstm_cell_245/SigmoidSigmoid+lstm_293/while/lstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_293/while/lstm_cell_245/Sigmoid_1Sigmoid+lstm_293/while/lstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_293/while/lstm_cell_245/mulMul*lstm_293/while/lstm_cell_245/Sigmoid_1:y:0lstm_293_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_293/while/lstm_cell_245/ReluRelu+lstm_293/while/lstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_293/while/lstm_cell_245/mul_1Mul(lstm_293/while/lstm_cell_245/Sigmoid:y:0/lstm_293/while/lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_293/while/lstm_cell_245/add_1AddV2$lstm_293/while/lstm_cell_245/mul:z:0&lstm_293/while/lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_293/while/lstm_cell_245/Sigmoid_2Sigmoid+lstm_293/while/lstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_293/while/lstm_cell_245/Relu_1Relu&lstm_293/while/lstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_293/while/lstm_cell_245/mul_2Mul*lstm_293/while/lstm_cell_245/Sigmoid_2:y:01lstm_293/while/lstm_cell_245/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_293/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_293_while_placeholder_1lstm_293_while_placeholder&lstm_293/while/lstm_cell_245/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_293/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_293/while/addAddV2lstm_293_while_placeholderlstm_293/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_293/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_293/while/add_1AddV2*lstm_293_while_lstm_293_while_loop_counterlstm_293/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_293/while/IdentityIdentitylstm_293/while/add_1:z:0^lstm_293/while/NoOp*
T0*
_output_shapes
: ?
lstm_293/while/Identity_1Identity0lstm_293_while_lstm_293_while_maximum_iterations^lstm_293/while/NoOp*
T0*
_output_shapes
: t
lstm_293/while/Identity_2Identitylstm_293/while/add:z:0^lstm_293/while/NoOp*
T0*
_output_shapes
: ?
lstm_293/while/Identity_3IdentityClstm_293/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_293/while/NoOp*
T0*
_output_shapes
: ?
lstm_293/while/Identity_4Identity&lstm_293/while/lstm_cell_245/mul_2:z:0^lstm_293/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_293/while/Identity_5Identity&lstm_293/while/lstm_cell_245/add_1:z:0^lstm_293/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_293/while/NoOpNoOp4^lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOp3^lstm_293/while/lstm_cell_245/MatMul/ReadVariableOp5^lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_293_while_identity lstm_293/while/Identity:output:0"?
lstm_293_while_identity_1"lstm_293/while/Identity_1:output:0"?
lstm_293_while_identity_2"lstm_293/while/Identity_2:output:0"?
lstm_293_while_identity_3"lstm_293/while/Identity_3:output:0"?
lstm_293_while_identity_4"lstm_293/while/Identity_4:output:0"?
lstm_293_while_identity_5"lstm_293/while/Identity_5:output:0"T
'lstm_293_while_lstm_293_strided_slice_1)lstm_293_while_lstm_293_strided_slice_1_0"~
<lstm_293_while_lstm_cell_245_biasadd_readvariableop_resource>lstm_293_while_lstm_cell_245_biasadd_readvariableop_resource_0"?
=lstm_293_while_lstm_cell_245_matmul_1_readvariableop_resource?lstm_293_while_lstm_cell_245_matmul_1_readvariableop_resource_0"|
;lstm_293_while_lstm_cell_245_matmul_readvariableop_resource=lstm_293_while_lstm_cell_245_matmul_readvariableop_resource_0"?
clstm_293_while_tensorarrayv2read_tensorlistgetitem_lstm_293_tensorarrayunstack_tensorlistfromtensorelstm_293_while_tensorarrayv2read_tensorlistgetitem_lstm_293_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOp3lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOp2h
2lstm_293/while/lstm_cell_245/MatMul/ReadVariableOp2lstm_293/while/lstm_cell_245/MatMul/ReadVariableOp2l
4lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOp4lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_243_layer_call_fn_1487348

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
J__inference_lstm_cell_243_layer_call_and_return_conditional_losses_1482363o
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
while_cond_1483410
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1483410___redundant_placeholder05
1while_while_cond_1483410___redundant_placeholder15
1while_while_cond_1483410___redundant_placeholder25
1while_while_cond_1483410___redundant_placeholder3
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
*__inference_lstm_293_layer_call_fn_1486729

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
E__inference_lstm_293_layer_call_and_return_conditional_losses_1483795o
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
J__inference_lstm_cell_244_layer_call_and_return_conditional_losses_1482859

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
while_cond_1482726
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1482726___redundant_placeholder05
1while_while_cond_1482726___redundant_placeholder15
1while_while_cond_1482726___redundant_placeholder25
1while_while_cond_1482726___redundant_placeholder3
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
while_body_1483561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_244_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_244_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_244_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_244_matmul_readvariableop_resource:	d?G
4while_lstm_cell_244_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_244_biasadd_readvariableop_resource:	???*while/lstm_cell_244/BiasAdd/ReadVariableOp?)while/lstm_cell_244/MatMul/ReadVariableOp?+while/lstm_cell_244/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_244/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_244_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_244/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_244_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_244/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_244/addAddV2$while/lstm_cell_244/MatMul:product:0&while/lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_244_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_244/BiasAddBiasAddwhile/lstm_cell_244/add:z:02while/lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_244/splitSplit,while/lstm_cell_244/split/split_dim:output:0$while/lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_244/SigmoidSigmoid"while/lstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_244/Sigmoid_1Sigmoid"while/lstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mulMul!while/lstm_cell_244/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_244/ReluRelu"while/lstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mul_1Mulwhile/lstm_cell_244/Sigmoid:y:0&while/lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/add_1AddV2while/lstm_cell_244/mul:z:0while/lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_244/Sigmoid_2Sigmoid"while/lstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_244/Relu_1Reluwhile/lstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mul_2Mul!while/lstm_cell_244/Sigmoid_2:y:0(while/lstm_cell_244/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_244/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_244/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_244/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_244/BiasAdd/ReadVariableOp*^while/lstm_cell_244/MatMul/ReadVariableOp,^while/lstm_cell_244/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_244_biasadd_readvariableop_resource5while_lstm_cell_244_biasadd_readvariableop_resource_0"n
4while_lstm_cell_244_matmul_1_readvariableop_resource6while_lstm_cell_244_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_244_matmul_readvariableop_resource4while_lstm_cell_244_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_244/BiasAdd/ReadVariableOp*while/lstm_cell_244/BiasAdd/ReadVariableOp2V
)while/lstm_cell_244/MatMul/ReadVariableOp)while/lstm_cell_244/MatMul/ReadVariableOp2Z
+while/lstm_cell_244/MatMul_1/ReadVariableOp+while/lstm_cell_244/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_291_layer_call_and_return_conditional_losses_1486080

inputs?
,lstm_cell_243_matmul_readvariableop_resource:	?A
.lstm_cell_243_matmul_1_readvariableop_resource:	d?<
-lstm_cell_243_biasadd_readvariableop_resource:	?
identity??$lstm_cell_243/BiasAdd/ReadVariableOp?#lstm_cell_243/MatMul/ReadVariableOp?%lstm_cell_243/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_243/MatMul/ReadVariableOpReadVariableOp,lstm_cell_243_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_243/MatMulMatMulstrided_slice_2:output:0+lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_243_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_243/MatMul_1MatMulzeros:output:0-lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_243/addAddV2lstm_cell_243/MatMul:product:0 lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_243_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_243/BiasAddBiasAddlstm_cell_243/add:z:0,lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_243/splitSplit&lstm_cell_243/split/split_dim:output:0lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_243/SigmoidSigmoidlstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_243/Sigmoid_1Sigmoidlstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_243/mulMullstm_cell_243/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_243/ReluRelulstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_243/mul_1Mullstm_cell_243/Sigmoid:y:0 lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_243/add_1AddV2lstm_cell_243/mul:z:0lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_243/Sigmoid_2Sigmoidlstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_243/Relu_1Relulstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_243/mul_2Mullstm_cell_243/Sigmoid_2:y:0"lstm_cell_243/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_243_matmul_readvariableop_resource.lstm_cell_243_matmul_1_readvariableop_resource-lstm_cell_243_biasadd_readvariableop_resource*
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
while_body_1485996*
condR
while_cond_1485995*K
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
NoOpNoOp%^lstm_cell_243/BiasAdd/ReadVariableOp$^lstm_cell_243/MatMul/ReadVariableOp&^lstm_cell_243/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_243/BiasAdd/ReadVariableOp$lstm_cell_243/BiasAdd/ReadVariableOp2J
#lstm_cell_243/MatMul/ReadVariableOp#lstm_cell_243/MatMul/ReadVariableOp2N
%lstm_cell_243/MatMul_1/ReadVariableOp%lstm_cell_243/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1482567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1482567___redundant_placeholder05
1while_while_cond_1482567___redundant_placeholder15
1while_while_cond_1482567___redundant_placeholder25
1while_while_cond_1482567___redundant_placeholder3
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
while_cond_1482917
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1482917___redundant_placeholder05
1while_while_cond_1482917___redundant_placeholder15
1while_while_cond_1482917___redundant_placeholder25
1while_while_cond_1482917___redundant_placeholder3
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
%__inference_signature_wrapper_1484556
lstm_291_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_291_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1482296o
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
_user_specified_namelstm_291_input
?8
?
E__inference_lstm_293_layer_call_and_return_conditional_losses_1483337

inputs'
lstm_cell_245_1483255:2('
lstm_cell_245_1483257:
(#
lstm_cell_245_1483259:(
identity??%lstm_cell_245/StatefulPartitionedCall?while;
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
%lstm_cell_245/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_245_1483255lstm_cell_245_1483257lstm_cell_245_1483259*
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
J__inference_lstm_cell_245_layer_call_and_return_conditional_losses_1483209n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_245_1483255lstm_cell_245_1483257lstm_cell_245_1483259*
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
while_body_1483268*
condR
while_cond_1483267*K
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
NoOpNoOp&^lstm_cell_245/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_245/StatefulPartitionedCall%lstm_cell_245/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?8
?
while_body_1486942
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_245_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_245_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_245_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_245_matmul_readvariableop_resource:2(F
4while_lstm_cell_245_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_245_biasadd_readvariableop_resource:(??*while/lstm_cell_245/BiasAdd/ReadVariableOp?)while/lstm_cell_245/MatMul/ReadVariableOp?+while/lstm_cell_245/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_245/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_245_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_245/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_245_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_245/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_245/addAddV2$while/lstm_cell_245/MatMul:product:0&while/lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_245_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_245/BiasAddBiasAddwhile/lstm_cell_245/add:z:02while/lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_245/splitSplit,while/lstm_cell_245/split/split_dim:output:0$while/lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_245/SigmoidSigmoid"while/lstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_245/Sigmoid_1Sigmoid"while/lstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mulMul!while/lstm_cell_245/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_245/ReluRelu"while/lstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mul_1Mulwhile/lstm_cell_245/Sigmoid:y:0&while/lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/add_1AddV2while/lstm_cell_245/mul:z:0while/lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_245/Sigmoid_2Sigmoid"while/lstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_245/Relu_1Reluwhile/lstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_245/mul_2Mul!while/lstm_cell_245/Sigmoid_2:y:0(while/lstm_cell_245/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_245/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_245/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_245/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_245/BiasAdd/ReadVariableOp*^while/lstm_cell_245/MatMul/ReadVariableOp,^while/lstm_cell_245/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_245_biasadd_readvariableop_resource5while_lstm_cell_245_biasadd_readvariableop_resource_0"n
4while_lstm_cell_245_matmul_1_readvariableop_resource6while_lstm_cell_245_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_245_matmul_readvariableop_resource4while_lstm_cell_245_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_245/BiasAdd/ReadVariableOp*while/lstm_cell_245/BiasAdd/ReadVariableOp2V
)while/lstm_cell_245/MatMul/ReadVariableOp)while/lstm_cell_245/MatMul/ReadVariableOp2Z
+while/lstm_cell_245/MatMul_1/ReadVariableOp+while/lstm_cell_245/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?W
?
 __inference__traced_save_1487768
file_prefix.
*savev2_dense_97_kernel_read_readvariableop,
(savev2_dense_97_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_291_lstm_cell_291_kernel_read_readvariableopF
Bsavev2_lstm_291_lstm_cell_291_recurrent_kernel_read_readvariableop:
6savev2_lstm_291_lstm_cell_291_bias_read_readvariableop<
8savev2_lstm_292_lstm_cell_292_kernel_read_readvariableopF
Bsavev2_lstm_292_lstm_cell_292_recurrent_kernel_read_readvariableop:
6savev2_lstm_292_lstm_cell_292_bias_read_readvariableop<
8savev2_lstm_293_lstm_cell_293_kernel_read_readvariableopF
Bsavev2_lstm_293_lstm_cell_293_recurrent_kernel_read_readvariableop:
6savev2_lstm_293_lstm_cell_293_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_97_kernel_m_read_readvariableop3
/savev2_adam_dense_97_bias_m_read_readvariableopC
?savev2_adam_lstm_291_lstm_cell_291_kernel_m_read_readvariableopM
Isavev2_adam_lstm_291_lstm_cell_291_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_291_lstm_cell_291_bias_m_read_readvariableopC
?savev2_adam_lstm_292_lstm_cell_292_kernel_m_read_readvariableopM
Isavev2_adam_lstm_292_lstm_cell_292_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_292_lstm_cell_292_bias_m_read_readvariableopC
?savev2_adam_lstm_293_lstm_cell_293_kernel_m_read_readvariableopM
Isavev2_adam_lstm_293_lstm_cell_293_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_293_lstm_cell_293_bias_m_read_readvariableop5
1savev2_adam_dense_97_kernel_v_read_readvariableop3
/savev2_adam_dense_97_bias_v_read_readvariableopC
?savev2_adam_lstm_291_lstm_cell_291_kernel_v_read_readvariableopM
Isavev2_adam_lstm_291_lstm_cell_291_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_291_lstm_cell_291_bias_v_read_readvariableopC
?savev2_adam_lstm_292_lstm_cell_292_kernel_v_read_readvariableopM
Isavev2_adam_lstm_292_lstm_cell_292_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_292_lstm_cell_292_bias_v_read_readvariableopC
?savev2_adam_lstm_293_lstm_cell_293_kernel_v_read_readvariableopM
Isavev2_adam_lstm_293_lstm_cell_293_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_293_lstm_cell_293_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_97_kernel_read_readvariableop(savev2_dense_97_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_291_lstm_cell_291_kernel_read_readvariableopBsavev2_lstm_291_lstm_cell_291_recurrent_kernel_read_readvariableop6savev2_lstm_291_lstm_cell_291_bias_read_readvariableop8savev2_lstm_292_lstm_cell_292_kernel_read_readvariableopBsavev2_lstm_292_lstm_cell_292_recurrent_kernel_read_readvariableop6savev2_lstm_292_lstm_cell_292_bias_read_readvariableop8savev2_lstm_293_lstm_cell_293_kernel_read_readvariableopBsavev2_lstm_293_lstm_cell_293_recurrent_kernel_read_readvariableop6savev2_lstm_293_lstm_cell_293_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_97_kernel_m_read_readvariableop/savev2_adam_dense_97_bias_m_read_readvariableop?savev2_adam_lstm_291_lstm_cell_291_kernel_m_read_readvariableopIsavev2_adam_lstm_291_lstm_cell_291_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_291_lstm_cell_291_bias_m_read_readvariableop?savev2_adam_lstm_292_lstm_cell_292_kernel_m_read_readvariableopIsavev2_adam_lstm_292_lstm_cell_292_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_292_lstm_cell_292_bias_m_read_readvariableop?savev2_adam_lstm_293_lstm_cell_293_kernel_m_read_readvariableopIsavev2_adam_lstm_293_lstm_cell_293_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_293_lstm_cell_293_bias_m_read_readvariableop1savev2_adam_dense_97_kernel_v_read_readvariableop/savev2_adam_dense_97_bias_v_read_readvariableop?savev2_adam_lstm_291_lstm_cell_291_kernel_v_read_readvariableopIsavev2_adam_lstm_291_lstm_cell_291_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_291_lstm_cell_291_bias_v_read_readvariableop?savev2_adam_lstm_292_lstm_cell_292_kernel_v_read_readvariableopIsavev2_adam_lstm_292_lstm_cell_292_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_292_lstm_cell_292_bias_v_read_readvariableop?savev2_adam_lstm_293_lstm_cell_293_kernel_v_read_readvariableopIsavev2_adam_lstm_293_lstm_cell_293_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_293_lstm_cell_293_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
/__inference_sequential_97_layer_call_fn_1484461
lstm_291_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_291_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_97_layer_call_and_return_conditional_losses_1484409o
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
_user_specified_namelstm_291_input
?C
?

lstm_293_while_body_1485374.
*lstm_293_while_lstm_293_while_loop_counter4
0lstm_293_while_lstm_293_while_maximum_iterations
lstm_293_while_placeholder 
lstm_293_while_placeholder_1 
lstm_293_while_placeholder_2 
lstm_293_while_placeholder_3-
)lstm_293_while_lstm_293_strided_slice_1_0i
elstm_293_while_tensorarrayv2read_tensorlistgetitem_lstm_293_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_293_while_lstm_cell_245_matmul_readvariableop_resource_0:2(Q
?lstm_293_while_lstm_cell_245_matmul_1_readvariableop_resource_0:
(L
>lstm_293_while_lstm_cell_245_biasadd_readvariableop_resource_0:(
lstm_293_while_identity
lstm_293_while_identity_1
lstm_293_while_identity_2
lstm_293_while_identity_3
lstm_293_while_identity_4
lstm_293_while_identity_5+
'lstm_293_while_lstm_293_strided_slice_1g
clstm_293_while_tensorarrayv2read_tensorlistgetitem_lstm_293_tensorarrayunstack_tensorlistfromtensorM
;lstm_293_while_lstm_cell_245_matmul_readvariableop_resource:2(O
=lstm_293_while_lstm_cell_245_matmul_1_readvariableop_resource:
(J
<lstm_293_while_lstm_cell_245_biasadd_readvariableop_resource:(??3lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOp?2lstm_293/while/lstm_cell_245/MatMul/ReadVariableOp?4lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOp?
@lstm_293/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_293/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_293_while_tensorarrayv2read_tensorlistgetitem_lstm_293_tensorarrayunstack_tensorlistfromtensor_0lstm_293_while_placeholderIlstm_293/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_293/while/lstm_cell_245/MatMul/ReadVariableOpReadVariableOp=lstm_293_while_lstm_cell_245_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_293/while/lstm_cell_245/MatMulMatMul9lstm_293/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_293/while/lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOp?lstm_293_while_lstm_cell_245_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_293/while/lstm_cell_245/MatMul_1MatMullstm_293_while_placeholder_2<lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_293/while/lstm_cell_245/addAddV2-lstm_293/while/lstm_cell_245/MatMul:product:0/lstm_293/while/lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOp>lstm_293_while_lstm_cell_245_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_293/while/lstm_cell_245/BiasAddBiasAdd$lstm_293/while/lstm_cell_245/add:z:0;lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_293/while/lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_293/while/lstm_cell_245/splitSplit5lstm_293/while/lstm_cell_245/split/split_dim:output:0-lstm_293/while/lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_293/while/lstm_cell_245/SigmoidSigmoid+lstm_293/while/lstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_293/while/lstm_cell_245/Sigmoid_1Sigmoid+lstm_293/while/lstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_293/while/lstm_cell_245/mulMul*lstm_293/while/lstm_cell_245/Sigmoid_1:y:0lstm_293_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_293/while/lstm_cell_245/ReluRelu+lstm_293/while/lstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_293/while/lstm_cell_245/mul_1Mul(lstm_293/while/lstm_cell_245/Sigmoid:y:0/lstm_293/while/lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_293/while/lstm_cell_245/add_1AddV2$lstm_293/while/lstm_cell_245/mul:z:0&lstm_293/while/lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_293/while/lstm_cell_245/Sigmoid_2Sigmoid+lstm_293/while/lstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_293/while/lstm_cell_245/Relu_1Relu&lstm_293/while/lstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_293/while/lstm_cell_245/mul_2Mul*lstm_293/while/lstm_cell_245/Sigmoid_2:y:01lstm_293/while/lstm_cell_245/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_293/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_293_while_placeholder_1lstm_293_while_placeholder&lstm_293/while/lstm_cell_245/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_293/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_293/while/addAddV2lstm_293_while_placeholderlstm_293/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_293/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_293/while/add_1AddV2*lstm_293_while_lstm_293_while_loop_counterlstm_293/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_293/while/IdentityIdentitylstm_293/while/add_1:z:0^lstm_293/while/NoOp*
T0*
_output_shapes
: ?
lstm_293/while/Identity_1Identity0lstm_293_while_lstm_293_while_maximum_iterations^lstm_293/while/NoOp*
T0*
_output_shapes
: t
lstm_293/while/Identity_2Identitylstm_293/while/add:z:0^lstm_293/while/NoOp*
T0*
_output_shapes
: ?
lstm_293/while/Identity_3IdentityClstm_293/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_293/while/NoOp*
T0*
_output_shapes
: ?
lstm_293/while/Identity_4Identity&lstm_293/while/lstm_cell_245/mul_2:z:0^lstm_293/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_293/while/Identity_5Identity&lstm_293/while/lstm_cell_245/add_1:z:0^lstm_293/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_293/while/NoOpNoOp4^lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOp3^lstm_293/while/lstm_cell_245/MatMul/ReadVariableOp5^lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_293_while_identity lstm_293/while/Identity:output:0"?
lstm_293_while_identity_1"lstm_293/while/Identity_1:output:0"?
lstm_293_while_identity_2"lstm_293/while/Identity_2:output:0"?
lstm_293_while_identity_3"lstm_293/while/Identity_3:output:0"?
lstm_293_while_identity_4"lstm_293/while/Identity_4:output:0"?
lstm_293_while_identity_5"lstm_293/while/Identity_5:output:0"T
'lstm_293_while_lstm_293_strided_slice_1)lstm_293_while_lstm_293_strided_slice_1_0"~
<lstm_293_while_lstm_cell_245_biasadd_readvariableop_resource>lstm_293_while_lstm_cell_245_biasadd_readvariableop_resource_0"?
=lstm_293_while_lstm_cell_245_matmul_1_readvariableop_resource?lstm_293_while_lstm_cell_245_matmul_1_readvariableop_resource_0"|
;lstm_293_while_lstm_cell_245_matmul_readvariableop_resource=lstm_293_while_lstm_cell_245_matmul_readvariableop_resource_0"?
clstm_293_while_tensorarrayv2read_tensorlistgetitem_lstm_293_tensorarrayunstack_tensorlistfromtensorelstm_293_while_tensorarrayv2read_tensorlistgetitem_lstm_293_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOp3lstm_293/while/lstm_cell_245/BiasAdd/ReadVariableOp2h
2lstm_293/while/lstm_cell_245/MatMul/ReadVariableOp2lstm_293/while/lstm_cell_245/MatMul/ReadVariableOp2l
4lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOp4lstm_293/while/lstm_cell_245/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1486183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_244_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_244_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_244_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_244_matmul_readvariableop_resource:	d?G
4while_lstm_cell_244_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_244_biasadd_readvariableop_resource:	???*while/lstm_cell_244/BiasAdd/ReadVariableOp?)while/lstm_cell_244/MatMul/ReadVariableOp?+while/lstm_cell_244/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_244/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_244_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_244/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_244_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_244/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_244/addAddV2$while/lstm_cell_244/MatMul:product:0&while/lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_244_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_244/BiasAddBiasAddwhile/lstm_cell_244/add:z:02while/lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_244/splitSplit,while/lstm_cell_244/split/split_dim:output:0$while/lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_244/SigmoidSigmoid"while/lstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_244/Sigmoid_1Sigmoid"while/lstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mulMul!while/lstm_cell_244/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_244/ReluRelu"while/lstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mul_1Mulwhile/lstm_cell_244/Sigmoid:y:0&while/lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/add_1AddV2while/lstm_cell_244/mul:z:0while/lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_244/Sigmoid_2Sigmoid"while/lstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_244/Relu_1Reluwhile/lstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mul_2Mul!while/lstm_cell_244/Sigmoid_2:y:0(while/lstm_cell_244/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_244/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_244/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_244/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_244/BiasAdd/ReadVariableOp*^while/lstm_cell_244/MatMul/ReadVariableOp,^while/lstm_cell_244/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_244_biasadd_readvariableop_resource5while_lstm_cell_244_biasadd_readvariableop_resource_0"n
4while_lstm_cell_244_matmul_1_readvariableop_resource6while_lstm_cell_244_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_244_matmul_readvariableop_resource4while_lstm_cell_244_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_244/BiasAdd/ReadVariableOp*while/lstm_cell_244/BiasAdd/ReadVariableOp2V
)while/lstm_cell_244/MatMul/ReadVariableOp)while/lstm_cell_244/MatMul/ReadVariableOp2Z
+while/lstm_cell_244/MatMul_1/ReadVariableOp+while/lstm_cell_244/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1484092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_244_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_244_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_244_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_244_matmul_readvariableop_resource:	d?G
4while_lstm_cell_244_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_244_biasadd_readvariableop_resource:	???*while/lstm_cell_244/BiasAdd/ReadVariableOp?)while/lstm_cell_244/MatMul/ReadVariableOp?+while/lstm_cell_244/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_244/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_244_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_244/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_244_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_244/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_244/addAddV2$while/lstm_cell_244/MatMul:product:0&while/lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_244_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_244/BiasAddBiasAddwhile/lstm_cell_244/add:z:02while/lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_244/splitSplit,while/lstm_cell_244/split/split_dim:output:0$while/lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_244/SigmoidSigmoid"while/lstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_244/Sigmoid_1Sigmoid"while/lstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mulMul!while/lstm_cell_244/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_244/ReluRelu"while/lstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mul_1Mulwhile/lstm_cell_244/Sigmoid:y:0&while/lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/add_1AddV2while/lstm_cell_244/mul:z:0while/lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_244/Sigmoid_2Sigmoid"while/lstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_244/Relu_1Reluwhile/lstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_244/mul_2Mul!while/lstm_cell_244/Sigmoid_2:y:0(while/lstm_cell_244/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_244/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_244/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_244/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_244/BiasAdd/ReadVariableOp*^while/lstm_cell_244/MatMul/ReadVariableOp,^while/lstm_cell_244/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_244_biasadd_readvariableop_resource5while_lstm_cell_244_biasadd_readvariableop_resource_0"n
4while_lstm_cell_244_matmul_1_readvariableop_resource6while_lstm_cell_244_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_244_matmul_readvariableop_resource4while_lstm_cell_244_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_244/BiasAdd/ReadVariableOp*while/lstm_cell_244/BiasAdd/ReadVariableOp2V
)while/lstm_cell_244/MatMul/ReadVariableOp)while/lstm_cell_244/MatMul/ReadVariableOp2Z
+while/lstm_cell_244/MatMul_1/ReadVariableOp+while/lstm_cell_244/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?
?
J__inference_sequential_97_layer_call_and_return_conditional_losses_1484491
lstm_291_input#
lstm_291_1484464:	?#
lstm_291_1484466:	d?
lstm_291_1484468:	?#
lstm_292_1484471:	d?#
lstm_292_1484473:	2?
lstm_292_1484475:	?"
lstm_293_1484478:2("
lstm_293_1484480:
(
lstm_293_1484482:("
dense_97_1484485:

dense_97_1484487:
identity?? dense_97/StatefulPartitionedCall? lstm_291/StatefulPartitionedCall? lstm_292/StatefulPartitionedCall? lstm_293/StatefulPartitionedCall?
 lstm_291/StatefulPartitionedCallStatefulPartitionedCalllstm_291_inputlstm_291_1484464lstm_291_1484466lstm_291_1484468*
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
E__inference_lstm_291_layer_call_and_return_conditional_losses_1483495?
 lstm_292/StatefulPartitionedCallStatefulPartitionedCall)lstm_291/StatefulPartitionedCall:output:0lstm_292_1484471lstm_292_1484473lstm_292_1484475*
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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1483645?
 lstm_293/StatefulPartitionedCallStatefulPartitionedCall)lstm_292/StatefulPartitionedCall:output:0lstm_293_1484478lstm_293_1484480lstm_293_1484482*
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
E__inference_lstm_293_layer_call_and_return_conditional_losses_1483795?
 dense_97/StatefulPartitionedCallStatefulPartitionedCall)lstm_293/StatefulPartitionedCall:output:0dense_97_1484485dense_97_1484487*
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
E__inference_dense_97_layer_call_and_return_conditional_losses_1483813x
IdentityIdentity)dense_97/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_97/StatefulPartitionedCall!^lstm_291/StatefulPartitionedCall!^lstm_292/StatefulPartitionedCall!^lstm_293/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_97/StatefulPartitionedCall dense_97/StatefulPartitionedCall2D
 lstm_291/StatefulPartitionedCall lstm_291/StatefulPartitionedCall2D
 lstm_292/StatefulPartitionedCall lstm_292/StatefulPartitionedCall2D
 lstm_293/StatefulPartitionedCall lstm_293/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_291_input
?
?
J__inference_lstm_cell_245_layer_call_and_return_conditional_losses_1487625

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

lstm_291_while_body_1485096.
*lstm_291_while_lstm_291_while_loop_counter4
0lstm_291_while_lstm_291_while_maximum_iterations
lstm_291_while_placeholder 
lstm_291_while_placeholder_1 
lstm_291_while_placeholder_2 
lstm_291_while_placeholder_3-
)lstm_291_while_lstm_291_strided_slice_1_0i
elstm_291_while_tensorarrayv2read_tensorlistgetitem_lstm_291_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_291_while_lstm_cell_243_matmul_readvariableop_resource_0:	?R
?lstm_291_while_lstm_cell_243_matmul_1_readvariableop_resource_0:	d?M
>lstm_291_while_lstm_cell_243_biasadd_readvariableop_resource_0:	?
lstm_291_while_identity
lstm_291_while_identity_1
lstm_291_while_identity_2
lstm_291_while_identity_3
lstm_291_while_identity_4
lstm_291_while_identity_5+
'lstm_291_while_lstm_291_strided_slice_1g
clstm_291_while_tensorarrayv2read_tensorlistgetitem_lstm_291_tensorarrayunstack_tensorlistfromtensorN
;lstm_291_while_lstm_cell_243_matmul_readvariableop_resource:	?P
=lstm_291_while_lstm_cell_243_matmul_1_readvariableop_resource:	d?K
<lstm_291_while_lstm_cell_243_biasadd_readvariableop_resource:	???3lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOp?2lstm_291/while/lstm_cell_243/MatMul/ReadVariableOp?4lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOp?
@lstm_291/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_291/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_291_while_tensorarrayv2read_tensorlistgetitem_lstm_291_tensorarrayunstack_tensorlistfromtensor_0lstm_291_while_placeholderIlstm_291/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_291/while/lstm_cell_243/MatMul/ReadVariableOpReadVariableOp=lstm_291_while_lstm_cell_243_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_291/while/lstm_cell_243/MatMulMatMul9lstm_291/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_291/while/lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOp?lstm_291_while_lstm_cell_243_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_291/while/lstm_cell_243/MatMul_1MatMullstm_291_while_placeholder_2<lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_291/while/lstm_cell_243/addAddV2-lstm_291/while/lstm_cell_243/MatMul:product:0/lstm_291/while/lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOp>lstm_291_while_lstm_cell_243_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_291/while/lstm_cell_243/BiasAddBiasAdd$lstm_291/while/lstm_cell_243/add:z:0;lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_291/while/lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_291/while/lstm_cell_243/splitSplit5lstm_291/while/lstm_cell_243/split/split_dim:output:0-lstm_291/while/lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_291/while/lstm_cell_243/SigmoidSigmoid+lstm_291/while/lstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_291/while/lstm_cell_243/Sigmoid_1Sigmoid+lstm_291/while/lstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_291/while/lstm_cell_243/mulMul*lstm_291/while/lstm_cell_243/Sigmoid_1:y:0lstm_291_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_291/while/lstm_cell_243/ReluRelu+lstm_291/while/lstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_291/while/lstm_cell_243/mul_1Mul(lstm_291/while/lstm_cell_243/Sigmoid:y:0/lstm_291/while/lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_291/while/lstm_cell_243/add_1AddV2$lstm_291/while/lstm_cell_243/mul:z:0&lstm_291/while/lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_291/while/lstm_cell_243/Sigmoid_2Sigmoid+lstm_291/while/lstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_291/while/lstm_cell_243/Relu_1Relu&lstm_291/while/lstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_291/while/lstm_cell_243/mul_2Mul*lstm_291/while/lstm_cell_243/Sigmoid_2:y:01lstm_291/while/lstm_cell_243/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_291/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_291_while_placeholder_1lstm_291_while_placeholder&lstm_291/while/lstm_cell_243/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_291/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_291/while/addAddV2lstm_291_while_placeholderlstm_291/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_291/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_291/while/add_1AddV2*lstm_291_while_lstm_291_while_loop_counterlstm_291/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_291/while/IdentityIdentitylstm_291/while/add_1:z:0^lstm_291/while/NoOp*
T0*
_output_shapes
: ?
lstm_291/while/Identity_1Identity0lstm_291_while_lstm_291_while_maximum_iterations^lstm_291/while/NoOp*
T0*
_output_shapes
: t
lstm_291/while/Identity_2Identitylstm_291/while/add:z:0^lstm_291/while/NoOp*
T0*
_output_shapes
: ?
lstm_291/while/Identity_3IdentityClstm_291/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_291/while/NoOp*
T0*
_output_shapes
: ?
lstm_291/while/Identity_4Identity&lstm_291/while/lstm_cell_243/mul_2:z:0^lstm_291/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_291/while/Identity_5Identity&lstm_291/while/lstm_cell_243/add_1:z:0^lstm_291/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_291/while/NoOpNoOp4^lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOp3^lstm_291/while/lstm_cell_243/MatMul/ReadVariableOp5^lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_291_while_identity lstm_291/while/Identity:output:0"?
lstm_291_while_identity_1"lstm_291/while/Identity_1:output:0"?
lstm_291_while_identity_2"lstm_291/while/Identity_2:output:0"?
lstm_291_while_identity_3"lstm_291/while/Identity_3:output:0"?
lstm_291_while_identity_4"lstm_291/while/Identity_4:output:0"?
lstm_291_while_identity_5"lstm_291/while/Identity_5:output:0"T
'lstm_291_while_lstm_291_strided_slice_1)lstm_291_while_lstm_291_strided_slice_1_0"~
<lstm_291_while_lstm_cell_243_biasadd_readvariableop_resource>lstm_291_while_lstm_cell_243_biasadd_readvariableop_resource_0"?
=lstm_291_while_lstm_cell_243_matmul_1_readvariableop_resource?lstm_291_while_lstm_cell_243_matmul_1_readvariableop_resource_0"|
;lstm_291_while_lstm_cell_243_matmul_readvariableop_resource=lstm_291_while_lstm_cell_243_matmul_readvariableop_resource_0"?
clstm_291_while_tensorarrayv2read_tensorlistgetitem_lstm_291_tensorarrayunstack_tensorlistfromtensorelstm_291_while_tensorarrayv2read_tensorlistgetitem_lstm_291_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOp3lstm_291/while/lstm_cell_243/BiasAdd/ReadVariableOp2h
2lstm_291/while/lstm_cell_243/MatMul/ReadVariableOp2lstm_291/while/lstm_cell_243/MatMul/ReadVariableOp2l
4lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOp4lstm_291/while/lstm_cell_243/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1483268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_245_1483292_0:2(/
while_lstm_cell_245_1483294_0:
(+
while_lstm_cell_245_1483296_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_245_1483292:2(-
while_lstm_cell_245_1483294:
()
while_lstm_cell_245_1483296:(??+while/lstm_cell_245/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_245/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_245_1483292_0while_lstm_cell_245_1483294_0while_lstm_cell_245_1483296_0*
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
J__inference_lstm_cell_245_layer_call_and_return_conditional_losses_1483209?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_245/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_245/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_245/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_245/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_245_1483292while_lstm_cell_245_1483292_0"<
while_lstm_cell_245_1483294while_lstm_cell_245_1483294_0"<
while_lstm_cell_245_1483296while_lstm_cell_245_1483296_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_245/StatefulPartitionedCall+while/lstm_cell_245/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_244_layer_call_and_return_conditional_losses_1482713

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
?C
?

lstm_292_while_body_1485235.
*lstm_292_while_lstm_292_while_loop_counter4
0lstm_292_while_lstm_292_while_maximum_iterations
lstm_292_while_placeholder 
lstm_292_while_placeholder_1 
lstm_292_while_placeholder_2 
lstm_292_while_placeholder_3-
)lstm_292_while_lstm_292_strided_slice_1_0i
elstm_292_while_tensorarrayv2read_tensorlistgetitem_lstm_292_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_292_while_lstm_cell_244_matmul_readvariableop_resource_0:	d?R
?lstm_292_while_lstm_cell_244_matmul_1_readvariableop_resource_0:	2?M
>lstm_292_while_lstm_cell_244_biasadd_readvariableop_resource_0:	?
lstm_292_while_identity
lstm_292_while_identity_1
lstm_292_while_identity_2
lstm_292_while_identity_3
lstm_292_while_identity_4
lstm_292_while_identity_5+
'lstm_292_while_lstm_292_strided_slice_1g
clstm_292_while_tensorarrayv2read_tensorlistgetitem_lstm_292_tensorarrayunstack_tensorlistfromtensorN
;lstm_292_while_lstm_cell_244_matmul_readvariableop_resource:	d?P
=lstm_292_while_lstm_cell_244_matmul_1_readvariableop_resource:	2?K
<lstm_292_while_lstm_cell_244_biasadd_readvariableop_resource:	???3lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOp?2lstm_292/while/lstm_cell_244/MatMul/ReadVariableOp?4lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOp?
@lstm_292/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_292/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_292_while_tensorarrayv2read_tensorlistgetitem_lstm_292_tensorarrayunstack_tensorlistfromtensor_0lstm_292_while_placeholderIlstm_292/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_292/while/lstm_cell_244/MatMul/ReadVariableOpReadVariableOp=lstm_292_while_lstm_cell_244_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_292/while/lstm_cell_244/MatMulMatMul9lstm_292/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_292/while/lstm_cell_244/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOpReadVariableOp?lstm_292_while_lstm_cell_244_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_292/while/lstm_cell_244/MatMul_1MatMullstm_292_while_placeholder_2<lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_292/while/lstm_cell_244/addAddV2-lstm_292/while/lstm_cell_244/MatMul:product:0/lstm_292/while/lstm_cell_244/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOpReadVariableOp>lstm_292_while_lstm_cell_244_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_292/while/lstm_cell_244/BiasAddBiasAdd$lstm_292/while/lstm_cell_244/add:z:0;lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_292/while/lstm_cell_244/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_292/while/lstm_cell_244/splitSplit5lstm_292/while/lstm_cell_244/split/split_dim:output:0-lstm_292/while/lstm_cell_244/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_292/while/lstm_cell_244/SigmoidSigmoid+lstm_292/while/lstm_cell_244/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_292/while/lstm_cell_244/Sigmoid_1Sigmoid+lstm_292/while/lstm_cell_244/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_292/while/lstm_cell_244/mulMul*lstm_292/while/lstm_cell_244/Sigmoid_1:y:0lstm_292_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_292/while/lstm_cell_244/ReluRelu+lstm_292/while/lstm_cell_244/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_292/while/lstm_cell_244/mul_1Mul(lstm_292/while/lstm_cell_244/Sigmoid:y:0/lstm_292/while/lstm_cell_244/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_292/while/lstm_cell_244/add_1AddV2$lstm_292/while/lstm_cell_244/mul:z:0&lstm_292/while/lstm_cell_244/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_292/while/lstm_cell_244/Sigmoid_2Sigmoid+lstm_292/while/lstm_cell_244/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_292/while/lstm_cell_244/Relu_1Relu&lstm_292/while/lstm_cell_244/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_292/while/lstm_cell_244/mul_2Mul*lstm_292/while/lstm_cell_244/Sigmoid_2:y:01lstm_292/while/lstm_cell_244/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_292/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_292_while_placeholder_1lstm_292_while_placeholder&lstm_292/while/lstm_cell_244/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_292/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_292/while/addAddV2lstm_292_while_placeholderlstm_292/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_292/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_292/while/add_1AddV2*lstm_292_while_lstm_292_while_loop_counterlstm_292/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_292/while/IdentityIdentitylstm_292/while/add_1:z:0^lstm_292/while/NoOp*
T0*
_output_shapes
: ?
lstm_292/while/Identity_1Identity0lstm_292_while_lstm_292_while_maximum_iterations^lstm_292/while/NoOp*
T0*
_output_shapes
: t
lstm_292/while/Identity_2Identitylstm_292/while/add:z:0^lstm_292/while/NoOp*
T0*
_output_shapes
: ?
lstm_292/while/Identity_3IdentityClstm_292/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_292/while/NoOp*
T0*
_output_shapes
: ?
lstm_292/while/Identity_4Identity&lstm_292/while/lstm_cell_244/mul_2:z:0^lstm_292/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_292/while/Identity_5Identity&lstm_292/while/lstm_cell_244/add_1:z:0^lstm_292/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_292/while/NoOpNoOp4^lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOp3^lstm_292/while/lstm_cell_244/MatMul/ReadVariableOp5^lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_292_while_identity lstm_292/while/Identity:output:0"?
lstm_292_while_identity_1"lstm_292/while/Identity_1:output:0"?
lstm_292_while_identity_2"lstm_292/while/Identity_2:output:0"?
lstm_292_while_identity_3"lstm_292/while/Identity_3:output:0"?
lstm_292_while_identity_4"lstm_292/while/Identity_4:output:0"?
lstm_292_while_identity_5"lstm_292/while/Identity_5:output:0"T
'lstm_292_while_lstm_292_strided_slice_1)lstm_292_while_lstm_292_strided_slice_1_0"~
<lstm_292_while_lstm_cell_244_biasadd_readvariableop_resource>lstm_292_while_lstm_cell_244_biasadd_readvariableop_resource_0"?
=lstm_292_while_lstm_cell_244_matmul_1_readvariableop_resource?lstm_292_while_lstm_cell_244_matmul_1_readvariableop_resource_0"|
;lstm_292_while_lstm_cell_244_matmul_readvariableop_resource=lstm_292_while_lstm_cell_244_matmul_readvariableop_resource_0"?
clstm_292_while_tensorarrayv2read_tensorlistgetitem_lstm_292_tensorarrayunstack_tensorlistfromtensorelstm_292_while_tensorarrayv2read_tensorlistgetitem_lstm_292_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOp3lstm_292/while/lstm_cell_244/BiasAdd/ReadVariableOp2h
2lstm_292/while/lstm_cell_244/MatMul/ReadVariableOp2lstm_292/while/lstm_cell_244/MatMul/ReadVariableOp2l
4lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOp4lstm_292/while/lstm_cell_244/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_293_layer_call_and_return_conditional_losses_1484011

inputs>
,lstm_cell_245_matmul_readvariableop_resource:2(@
.lstm_cell_245_matmul_1_readvariableop_resource:
(;
-lstm_cell_245_biasadd_readvariableop_resource:(
identity??$lstm_cell_245/BiasAdd/ReadVariableOp?#lstm_cell_245/MatMul/ReadVariableOp?%lstm_cell_245/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_245/MatMul/ReadVariableOpReadVariableOp,lstm_cell_245_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_245/MatMulMatMulstrided_slice_2:output:0+lstm_cell_245/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_245/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_245_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_245/MatMul_1MatMulzeros:output:0-lstm_cell_245/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_245/addAddV2lstm_cell_245/MatMul:product:0 lstm_cell_245/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_245/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_245_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_245/BiasAddBiasAddlstm_cell_245/add:z:0,lstm_cell_245/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_245/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_245/splitSplit&lstm_cell_245/split/split_dim:output:0lstm_cell_245/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_245/SigmoidSigmoidlstm_cell_245/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_245/Sigmoid_1Sigmoidlstm_cell_245/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_245/mulMullstm_cell_245/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_245/ReluRelulstm_cell_245/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_245/mul_1Mullstm_cell_245/Sigmoid:y:0 lstm_cell_245/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_245/add_1AddV2lstm_cell_245/mul:z:0lstm_cell_245/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_245/Sigmoid_2Sigmoidlstm_cell_245/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_245/Relu_1Relulstm_cell_245/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_245/mul_2Mullstm_cell_245/Sigmoid_2:y:0"lstm_cell_245/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_245_matmul_readvariableop_resource.lstm_cell_245_matmul_1_readvariableop_resource-lstm_cell_245_biasadd_readvariableop_resource*
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
while_body_1483927*
condR
while_cond_1483926*K
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
NoOpNoOp%^lstm_cell_245/BiasAdd/ReadVariableOp$^lstm_cell_245/MatMul/ReadVariableOp&^lstm_cell_245/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_245/BiasAdd/ReadVariableOp$lstm_cell_245/BiasAdd/ReadVariableOp2J
#lstm_cell_245/MatMul/ReadVariableOp#lstm_cell_245/MatMul/ReadVariableOp2N
%lstm_cell_245/MatMul_1/ReadVariableOp%lstm_cell_245/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?K
?
E__inference_lstm_291_layer_call_and_return_conditional_losses_1485651
inputs_0?
,lstm_cell_243_matmul_readvariableop_resource:	?A
.lstm_cell_243_matmul_1_readvariableop_resource:	d?<
-lstm_cell_243_biasadd_readvariableop_resource:	?
identity??$lstm_cell_243/BiasAdd/ReadVariableOp?#lstm_cell_243/MatMul/ReadVariableOp?%lstm_cell_243/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_243/MatMul/ReadVariableOpReadVariableOp,lstm_cell_243_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_243/MatMulMatMulstrided_slice_2:output:0+lstm_cell_243/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_243/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_243_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_243/MatMul_1MatMulzeros:output:0-lstm_cell_243/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_243/addAddV2lstm_cell_243/MatMul:product:0 lstm_cell_243/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_243/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_243_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_243/BiasAddBiasAddlstm_cell_243/add:z:0,lstm_cell_243/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_243/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_243/splitSplit&lstm_cell_243/split/split_dim:output:0lstm_cell_243/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_243/SigmoidSigmoidlstm_cell_243/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_243/Sigmoid_1Sigmoidlstm_cell_243/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_243/mulMullstm_cell_243/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_243/ReluRelulstm_cell_243/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_243/mul_1Mullstm_cell_243/Sigmoid:y:0 lstm_cell_243/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_243/add_1AddV2lstm_cell_243/mul:z:0lstm_cell_243/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_243/Sigmoid_2Sigmoidlstm_cell_243/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_243/Relu_1Relulstm_cell_243/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_243/mul_2Mullstm_cell_243/Sigmoid_2:y:0"lstm_cell_243/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_243_matmul_readvariableop_resource.lstm_cell_243_matmul_1_readvariableop_resource-lstm_cell_243_biasadd_readvariableop_resource*
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
while_body_1485567*
condR
while_cond_1485566*K
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
NoOpNoOp%^lstm_cell_243/BiasAdd/ReadVariableOp$^lstm_cell_243/MatMul/ReadVariableOp&^lstm_cell_243/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_243/BiasAdd/ReadVariableOp$lstm_cell_243/BiasAdd/ReadVariableOp2J
#lstm_cell_243/MatMul/ReadVariableOp#lstm_cell_243/MatMul/ReadVariableOp2N
%lstm_cell_243/MatMul_1/ReadVariableOp%lstm_cell_243/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
lstm_291_while_cond_1485095.
*lstm_291_while_lstm_291_while_loop_counter4
0lstm_291_while_lstm_291_while_maximum_iterations
lstm_291_while_placeholder 
lstm_291_while_placeholder_1 
lstm_291_while_placeholder_2 
lstm_291_while_placeholder_30
,lstm_291_while_less_lstm_291_strided_slice_1G
Clstm_291_while_lstm_291_while_cond_1485095___redundant_placeholder0G
Clstm_291_while_lstm_291_while_cond_1485095___redundant_placeholder1G
Clstm_291_while_lstm_291_while_cond_1485095___redundant_placeholder2G
Clstm_291_while_lstm_291_while_cond_1485095___redundant_placeholder3
lstm_291_while_identity
?
lstm_291/while/LessLesslstm_291_while_placeholder,lstm_291_while_less_lstm_291_strided_slice_1*
T0*
_output_shapes
: ]
lstm_291/while/IdentityIdentitylstm_291/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_291_while_identity lstm_291/while/Identity:output:0*(
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
lstm_291_input;
 serving_default_lstm_291_input:0?????????<
dense_970
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
2dense_97/kernel
:2dense_97/bias
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
0:.	?2lstm_291/lstm_cell_291/kernel
::8	d?2'lstm_291/lstm_cell_291/recurrent_kernel
*:(?2lstm_291/lstm_cell_291/bias
0:.	d?2lstm_292/lstm_cell_292/kernel
::8	2?2'lstm_292/lstm_cell_292/recurrent_kernel
*:(?2lstm_292/lstm_cell_292/bias
/:-2(2lstm_293/lstm_cell_293/kernel
9:7
(2'lstm_293/lstm_cell_293/recurrent_kernel
):'(2lstm_293/lstm_cell_293/bias
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
2Adam/dense_97/kernel/m
 :2Adam/dense_97/bias/m
5:3	?2$Adam/lstm_291/lstm_cell_291/kernel/m
?:=	d?2.Adam/lstm_291/lstm_cell_291/recurrent_kernel/m
/:-?2"Adam/lstm_291/lstm_cell_291/bias/m
5:3	d?2$Adam/lstm_292/lstm_cell_292/kernel/m
?:=	2?2.Adam/lstm_292/lstm_cell_292/recurrent_kernel/m
/:-?2"Adam/lstm_292/lstm_cell_292/bias/m
4:22(2$Adam/lstm_293/lstm_cell_293/kernel/m
>:<
(2.Adam/lstm_293/lstm_cell_293/recurrent_kernel/m
.:,(2"Adam/lstm_293/lstm_cell_293/bias/m
&:$
2Adam/dense_97/kernel/v
 :2Adam/dense_97/bias/v
5:3	?2$Adam/lstm_291/lstm_cell_291/kernel/v
?:=	d?2.Adam/lstm_291/lstm_cell_291/recurrent_kernel/v
/:-?2"Adam/lstm_291/lstm_cell_291/bias/v
5:3	d?2$Adam/lstm_292/lstm_cell_292/kernel/v
?:=	2?2.Adam/lstm_292/lstm_cell_292/recurrent_kernel/v
/:-?2"Adam/lstm_292/lstm_cell_292/bias/v
4:22(2$Adam/lstm_293/lstm_cell_293/kernel/v
>:<
(2.Adam/lstm_293/lstm_cell_293/recurrent_kernel/v
.:,(2"Adam/lstm_293/lstm_cell_293/bias/v
?2?
/__inference_sequential_97_layer_call_fn_1483845
/__inference_sequential_97_layer_call_fn_1484583
/__inference_sequential_97_layer_call_fn_1484610
/__inference_sequential_97_layer_call_fn_1484461?
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
J__inference_sequential_97_layer_call_and_return_conditional_losses_1485037
J__inference_sequential_97_layer_call_and_return_conditional_losses_1485464
J__inference_sequential_97_layer_call_and_return_conditional_losses_1484491
J__inference_sequential_97_layer_call_and_return_conditional_losses_1484521?
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
"__inference__wrapped_model_1482296lstm_291_input"?
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
*__inference_lstm_291_layer_call_fn_1485475
*__inference_lstm_291_layer_call_fn_1485486
*__inference_lstm_291_layer_call_fn_1485497
*__inference_lstm_291_layer_call_fn_1485508?
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
E__inference_lstm_291_layer_call_and_return_conditional_losses_1485651
E__inference_lstm_291_layer_call_and_return_conditional_losses_1485794
E__inference_lstm_291_layer_call_and_return_conditional_losses_1485937
E__inference_lstm_291_layer_call_and_return_conditional_losses_1486080?
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
*__inference_lstm_292_layer_call_fn_1486091
*__inference_lstm_292_layer_call_fn_1486102
*__inference_lstm_292_layer_call_fn_1486113
*__inference_lstm_292_layer_call_fn_1486124?
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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1486267
E__inference_lstm_292_layer_call_and_return_conditional_losses_1486410
E__inference_lstm_292_layer_call_and_return_conditional_losses_1486553
E__inference_lstm_292_layer_call_and_return_conditional_losses_1486696?
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
*__inference_lstm_293_layer_call_fn_1486707
*__inference_lstm_293_layer_call_fn_1486718
*__inference_lstm_293_layer_call_fn_1486729
*__inference_lstm_293_layer_call_fn_1486740?
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
E__inference_lstm_293_layer_call_and_return_conditional_losses_1486883
E__inference_lstm_293_layer_call_and_return_conditional_losses_1487026
E__inference_lstm_293_layer_call_and_return_conditional_losses_1487169
E__inference_lstm_293_layer_call_and_return_conditional_losses_1487312?
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
*__inference_dense_97_layer_call_fn_1487321?
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
E__inference_dense_97_layer_call_and_return_conditional_losses_1487331?
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
%__inference_signature_wrapper_1484556lstm_291_input"?
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
/__inference_lstm_cell_243_layer_call_fn_1487348
/__inference_lstm_cell_243_layer_call_fn_1487365?
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
J__inference_lstm_cell_243_layer_call_and_return_conditional_losses_1487397
J__inference_lstm_cell_243_layer_call_and_return_conditional_losses_1487429?
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
/__inference_lstm_cell_244_layer_call_fn_1487446
/__inference_lstm_cell_244_layer_call_fn_1487463?
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
J__inference_lstm_cell_244_layer_call_and_return_conditional_losses_1487495
J__inference_lstm_cell_244_layer_call_and_return_conditional_losses_1487527?
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
/__inference_lstm_cell_245_layer_call_fn_1487544
/__inference_lstm_cell_245_layer_call_fn_1487561?
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
J__inference_lstm_cell_245_layer_call_and_return_conditional_losses_1487593
J__inference_lstm_cell_245_layer_call_and_return_conditional_losses_1487625?
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
"__inference__wrapped_model_1482296-./012345!";?8
1?.
,?)
lstm_291_input?????????
? "3?0
.
dense_97"?
dense_97??????????
E__inference_dense_97_layer_call_and_return_conditional_losses_1487331\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_97_layer_call_fn_1487321O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_291_layer_call_and_return_conditional_losses_1485651?-./O?L
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
E__inference_lstm_291_layer_call_and_return_conditional_losses_1485794?-./O?L
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
E__inference_lstm_291_layer_call_and_return_conditional_losses_1485937q-./??<
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
E__inference_lstm_291_layer_call_and_return_conditional_losses_1486080q-./??<
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
*__inference_lstm_291_layer_call_fn_1485475}-./O?L
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
*__inference_lstm_291_layer_call_fn_1485486}-./O?L
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
*__inference_lstm_291_layer_call_fn_1485497d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_291_layer_call_fn_1485508d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_292_layer_call_and_return_conditional_losses_1486267?012O?L
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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1486410?012O?L
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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1486553q012??<
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
E__inference_lstm_292_layer_call_and_return_conditional_losses_1486696q012??<
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
*__inference_lstm_292_layer_call_fn_1486091}012O?L
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
*__inference_lstm_292_layer_call_fn_1486102}012O?L
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
*__inference_lstm_292_layer_call_fn_1486113d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_292_layer_call_fn_1486124d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_293_layer_call_and_return_conditional_losses_1486883}345O?L
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
E__inference_lstm_293_layer_call_and_return_conditional_losses_1487026}345O?L
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
E__inference_lstm_293_layer_call_and_return_conditional_losses_1487169m345??<
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
E__inference_lstm_293_layer_call_and_return_conditional_losses_1487312m345??<
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
*__inference_lstm_293_layer_call_fn_1486707p345O?L
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
*__inference_lstm_293_layer_call_fn_1486718p345O?L
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
*__inference_lstm_293_layer_call_fn_1486729`345??<
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
*__inference_lstm_293_layer_call_fn_1486740`345??<
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
J__inference_lstm_cell_243_layer_call_and_return_conditional_losses_1487397?-./??}
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
J__inference_lstm_cell_243_layer_call_and_return_conditional_losses_1487429?-./??}
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
/__inference_lstm_cell_243_layer_call_fn_1487348?-./??}
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
/__inference_lstm_cell_243_layer_call_fn_1487365?-./??}
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
J__inference_lstm_cell_244_layer_call_and_return_conditional_losses_1487495?012??}
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
J__inference_lstm_cell_244_layer_call_and_return_conditional_losses_1487527?012??}
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
/__inference_lstm_cell_244_layer_call_fn_1487446?012??}
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
/__inference_lstm_cell_244_layer_call_fn_1487463?012??}
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
J__inference_lstm_cell_245_layer_call_and_return_conditional_losses_1487593?345??}
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
J__inference_lstm_cell_245_layer_call_and_return_conditional_losses_1487625?345??}
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
/__inference_lstm_cell_245_layer_call_fn_1487544?345??}
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
/__inference_lstm_cell_245_layer_call_fn_1487561?345??}
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
J__inference_sequential_97_layer_call_and_return_conditional_losses_1484491y-./012345!"C?@
9?6
,?)
lstm_291_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_97_layer_call_and_return_conditional_losses_1484521y-./012345!"C?@
9?6
,?)
lstm_291_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_97_layer_call_and_return_conditional_losses_1485037q-./012345!";?8
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
J__inference_sequential_97_layer_call_and_return_conditional_losses_1485464q-./012345!";?8
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
/__inference_sequential_97_layer_call_fn_1483845l-./012345!"C?@
9?6
,?)
lstm_291_input?????????
p 

 
? "???????????
/__inference_sequential_97_layer_call_fn_1484461l-./012345!"C?@
9?6
,?)
lstm_291_input?????????
p

 
? "???????????
/__inference_sequential_97_layer_call_fn_1484583d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_97_layer_call_fn_1484610d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1484556?-./012345!"M?J
? 
C?@
>
lstm_291_input,?)
lstm_291_input?????????"3?0
.
dense_97"?
dense_97?????????