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
dense_85/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_85/kernel
s
#dense_85/kernel/Read/ReadVariableOpReadVariableOpdense_85/kernel*
_output_shapes

:
*
dtype0
r
dense_85/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_85/bias
k
!dense_85/bias/Read/ReadVariableOpReadVariableOpdense_85/bias*
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
lstm_255/lstm_cell_255/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_255/lstm_cell_255/kernel
?
1lstm_255/lstm_cell_255/kernel/Read/ReadVariableOpReadVariableOplstm_255/lstm_cell_255/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_255/lstm_cell_255/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_255/lstm_cell_255/recurrent_kernel
?
;lstm_255/lstm_cell_255/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_255/lstm_cell_255/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_255/lstm_cell_255/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_255/lstm_cell_255/bias
?
/lstm_255/lstm_cell_255/bias/Read/ReadVariableOpReadVariableOplstm_255/lstm_cell_255/bias*
_output_shapes	
:?*
dtype0
?
lstm_256/lstm_cell_256/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_256/lstm_cell_256/kernel
?
1lstm_256/lstm_cell_256/kernel/Read/ReadVariableOpReadVariableOplstm_256/lstm_cell_256/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_256/lstm_cell_256/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_256/lstm_cell_256/recurrent_kernel
?
;lstm_256/lstm_cell_256/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_256/lstm_cell_256/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_256/lstm_cell_256/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_256/lstm_cell_256/bias
?
/lstm_256/lstm_cell_256/bias/Read/ReadVariableOpReadVariableOplstm_256/lstm_cell_256/bias*
_output_shapes	
:?*
dtype0
?
lstm_257/lstm_cell_257/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_257/lstm_cell_257/kernel
?
1lstm_257/lstm_cell_257/kernel/Read/ReadVariableOpReadVariableOplstm_257/lstm_cell_257/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_257/lstm_cell_257/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_257/lstm_cell_257/recurrent_kernel
?
;lstm_257/lstm_cell_257/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_257/lstm_cell_257/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_257/lstm_cell_257/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_257/lstm_cell_257/bias
?
/lstm_257/lstm_cell_257/bias/Read/ReadVariableOpReadVariableOplstm_257/lstm_cell_257/bias*
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
Adam/dense_85/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_85/kernel/m
?
*Adam/dense_85/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_85/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_85/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_85/bias/m
y
(Adam/dense_85/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_85/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_255/lstm_cell_255/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_255/lstm_cell_255/kernel/m
?
8Adam/lstm_255/lstm_cell_255/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_255/lstm_cell_255/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_255/lstm_cell_255/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_255/lstm_cell_255/recurrent_kernel/m
?
BAdam/lstm_255/lstm_cell_255/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_255/lstm_cell_255/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_255/lstm_cell_255/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_255/lstm_cell_255/bias/m
?
6Adam/lstm_255/lstm_cell_255/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_255/lstm_cell_255/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_256/lstm_cell_256/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_256/lstm_cell_256/kernel/m
?
8Adam/lstm_256/lstm_cell_256/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_256/lstm_cell_256/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_256/lstm_cell_256/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_256/lstm_cell_256/recurrent_kernel/m
?
BAdam/lstm_256/lstm_cell_256/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_256/lstm_cell_256/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_256/lstm_cell_256/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_256/lstm_cell_256/bias/m
?
6Adam/lstm_256/lstm_cell_256/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_256/lstm_cell_256/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_257/lstm_cell_257/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_257/lstm_cell_257/kernel/m
?
8Adam/lstm_257/lstm_cell_257/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_257/lstm_cell_257/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_257/lstm_cell_257/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_257/lstm_cell_257/recurrent_kernel/m
?
BAdam/lstm_257/lstm_cell_257/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_257/lstm_cell_257/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_257/lstm_cell_257/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_257/lstm_cell_257/bias/m
?
6Adam/lstm_257/lstm_cell_257/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_257/lstm_cell_257/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_85/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_85/kernel/v
?
*Adam/dense_85/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_85/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_85/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_85/bias/v
y
(Adam/dense_85/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_85/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_255/lstm_cell_255/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_255/lstm_cell_255/kernel/v
?
8Adam/lstm_255/lstm_cell_255/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_255/lstm_cell_255/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_255/lstm_cell_255/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_255/lstm_cell_255/recurrent_kernel/v
?
BAdam/lstm_255/lstm_cell_255/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_255/lstm_cell_255/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_255/lstm_cell_255/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_255/lstm_cell_255/bias/v
?
6Adam/lstm_255/lstm_cell_255/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_255/lstm_cell_255/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_256/lstm_cell_256/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_256/lstm_cell_256/kernel/v
?
8Adam/lstm_256/lstm_cell_256/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_256/lstm_cell_256/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_256/lstm_cell_256/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_256/lstm_cell_256/recurrent_kernel/v
?
BAdam/lstm_256/lstm_cell_256/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_256/lstm_cell_256/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_256/lstm_cell_256/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_256/lstm_cell_256/bias/v
?
6Adam/lstm_256/lstm_cell_256/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_256/lstm_cell_256/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_257/lstm_cell_257/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_257/lstm_cell_257/kernel/v
?
8Adam/lstm_257/lstm_cell_257/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_257/lstm_cell_257/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_257/lstm_cell_257/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_257/lstm_cell_257/recurrent_kernel/v
?
BAdam/lstm_257/lstm_cell_257/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_257/lstm_cell_257/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_257/lstm_cell_257/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_257/lstm_cell_257/bias/v
?
6Adam/lstm_257/lstm_cell_257/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_257/lstm_cell_257/bias/v*
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
VARIABLE_VALUEdense_85/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_85/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_255/lstm_cell_255/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_255/lstm_cell_255/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_255/lstm_cell_255/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_256/lstm_cell_256/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_256/lstm_cell_256/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_256/lstm_cell_256/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_257/lstm_cell_257/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_257/lstm_cell_257/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_257/lstm_cell_257/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_85/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_85/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_255/lstm_cell_255/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_255/lstm_cell_255/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_255/lstm_cell_255/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_256/lstm_cell_256/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_256/lstm_cell_256/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_256/lstm_cell_256/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_257/lstm_cell_257/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_257/lstm_cell_257/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_257/lstm_cell_257/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_85/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_85/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_255/lstm_cell_255/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_255/lstm_cell_255/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_255/lstm_cell_255/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_256/lstm_cell_256/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_256/lstm_cell_256/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_256/lstm_cell_256/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_257/lstm_cell_257/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_257/lstm_cell_257/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_257/lstm_cell_257/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_255_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_255_inputlstm_255/lstm_cell_255/kernel'lstm_255/lstm_cell_255/recurrent_kernellstm_255/lstm_cell_255/biaslstm_256/lstm_cell_256/kernel'lstm_256/lstm_cell_256/recurrent_kernellstm_256/lstm_cell_256/biaslstm_257/lstm_cell_257/kernel'lstm_257/lstm_cell_257/recurrent_kernellstm_257/lstm_cell_257/biasdense_85/kerneldense_85/bias*
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
%__inference_signature_wrapper_2283220
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_85/kernel/Read/ReadVariableOp!dense_85/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_255/lstm_cell_255/kernel/Read/ReadVariableOp;lstm_255/lstm_cell_255/recurrent_kernel/Read/ReadVariableOp/lstm_255/lstm_cell_255/bias/Read/ReadVariableOp1lstm_256/lstm_cell_256/kernel/Read/ReadVariableOp;lstm_256/lstm_cell_256/recurrent_kernel/Read/ReadVariableOp/lstm_256/lstm_cell_256/bias/Read/ReadVariableOp1lstm_257/lstm_cell_257/kernel/Read/ReadVariableOp;lstm_257/lstm_cell_257/recurrent_kernel/Read/ReadVariableOp/lstm_257/lstm_cell_257/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_85/kernel/m/Read/ReadVariableOp(Adam/dense_85/bias/m/Read/ReadVariableOp8Adam/lstm_255/lstm_cell_255/kernel/m/Read/ReadVariableOpBAdam/lstm_255/lstm_cell_255/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_255/lstm_cell_255/bias/m/Read/ReadVariableOp8Adam/lstm_256/lstm_cell_256/kernel/m/Read/ReadVariableOpBAdam/lstm_256/lstm_cell_256/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_256/lstm_cell_256/bias/m/Read/ReadVariableOp8Adam/lstm_257/lstm_cell_257/kernel/m/Read/ReadVariableOpBAdam/lstm_257/lstm_cell_257/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_257/lstm_cell_257/bias/m/Read/ReadVariableOp*Adam/dense_85/kernel/v/Read/ReadVariableOp(Adam/dense_85/bias/v/Read/ReadVariableOp8Adam/lstm_255/lstm_cell_255/kernel/v/Read/ReadVariableOpBAdam/lstm_255/lstm_cell_255/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_255/lstm_cell_255/bias/v/Read/ReadVariableOp8Adam/lstm_256/lstm_cell_256/kernel/v/Read/ReadVariableOpBAdam/lstm_256/lstm_cell_256/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_256/lstm_cell_256/bias/v/Read/ReadVariableOp8Adam/lstm_257/lstm_cell_257/kernel/v/Read/ReadVariableOpBAdam/lstm_257/lstm_cell_257/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_257/lstm_cell_257/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_2286432
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_85/kerneldense_85/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_255/lstm_cell_255/kernel'lstm_255/lstm_cell_255/recurrent_kernellstm_255/lstm_cell_255/biaslstm_256/lstm_cell_256/kernel'lstm_256/lstm_cell_256/recurrent_kernellstm_256/lstm_cell_256/biaslstm_257/lstm_cell_257/kernel'lstm_257/lstm_cell_257/recurrent_kernellstm_257/lstm_cell_257/biastotalcountAdam/dense_85/kernel/mAdam/dense_85/bias/m$Adam/lstm_255/lstm_cell_255/kernel/m.Adam/lstm_255/lstm_cell_255/recurrent_kernel/m"Adam/lstm_255/lstm_cell_255/bias/m$Adam/lstm_256/lstm_cell_256/kernel/m.Adam/lstm_256/lstm_cell_256/recurrent_kernel/m"Adam/lstm_256/lstm_cell_256/bias/m$Adam/lstm_257/lstm_cell_257/kernel/m.Adam/lstm_257/lstm_cell_257/recurrent_kernel/m"Adam/lstm_257/lstm_cell_257/bias/mAdam/dense_85/kernel/vAdam/dense_85/bias/v$Adam/lstm_255/lstm_cell_255/kernel/v.Adam/lstm_255/lstm_cell_255/recurrent_kernel/v"Adam/lstm_255/lstm_cell_255/bias/v$Adam/lstm_256/lstm_cell_256/kernel/v.Adam/lstm_256/lstm_cell_256/recurrent_kernel/v"Adam/lstm_256/lstm_cell_256/bias/v$Adam/lstm_257/lstm_cell_257/kernel/v.Adam/lstm_257/lstm_cell_257/recurrent_kernel/v"Adam/lstm_257/lstm_cell_257/bias/v*4
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
#__inference__traced_restore_2286562??+
?
?
*__inference_lstm_255_layer_call_fn_2284172

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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2283005s
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
?C
?

lstm_255_while_body_2283333.
*lstm_255_while_lstm_255_while_loop_counter4
0lstm_255_while_lstm_255_while_maximum_iterations
lstm_255_while_placeholder 
lstm_255_while_placeholder_1 
lstm_255_while_placeholder_2 
lstm_255_while_placeholder_3-
)lstm_255_while_lstm_255_strided_slice_1_0i
elstm_255_while_tensorarrayv2read_tensorlistgetitem_lstm_255_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_255_while_lstm_cell_375_matmul_readvariableop_resource_0:	?R
?lstm_255_while_lstm_cell_375_matmul_1_readvariableop_resource_0:	d?M
>lstm_255_while_lstm_cell_375_biasadd_readvariableop_resource_0:	?
lstm_255_while_identity
lstm_255_while_identity_1
lstm_255_while_identity_2
lstm_255_while_identity_3
lstm_255_while_identity_4
lstm_255_while_identity_5+
'lstm_255_while_lstm_255_strided_slice_1g
clstm_255_while_tensorarrayv2read_tensorlistgetitem_lstm_255_tensorarrayunstack_tensorlistfromtensorN
;lstm_255_while_lstm_cell_375_matmul_readvariableop_resource:	?P
=lstm_255_while_lstm_cell_375_matmul_1_readvariableop_resource:	d?K
<lstm_255_while_lstm_cell_375_biasadd_readvariableop_resource:	???3lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOp?2lstm_255/while/lstm_cell_375/MatMul/ReadVariableOp?4lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOp?
@lstm_255/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_255/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_255_while_tensorarrayv2read_tensorlistgetitem_lstm_255_tensorarrayunstack_tensorlistfromtensor_0lstm_255_while_placeholderIlstm_255/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_255/while/lstm_cell_375/MatMul/ReadVariableOpReadVariableOp=lstm_255_while_lstm_cell_375_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_255/while/lstm_cell_375/MatMulMatMul9lstm_255/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_255/while/lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOp?lstm_255_while_lstm_cell_375_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_255/while/lstm_cell_375/MatMul_1MatMullstm_255_while_placeholder_2<lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_255/while/lstm_cell_375/addAddV2-lstm_255/while/lstm_cell_375/MatMul:product:0/lstm_255/while/lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOp>lstm_255_while_lstm_cell_375_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_255/while/lstm_cell_375/BiasAddBiasAdd$lstm_255/while/lstm_cell_375/add:z:0;lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_255/while/lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_255/while/lstm_cell_375/splitSplit5lstm_255/while/lstm_cell_375/split/split_dim:output:0-lstm_255/while/lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_255/while/lstm_cell_375/SigmoidSigmoid+lstm_255/while/lstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_255/while/lstm_cell_375/Sigmoid_1Sigmoid+lstm_255/while/lstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_255/while/lstm_cell_375/mulMul*lstm_255/while/lstm_cell_375/Sigmoid_1:y:0lstm_255_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_255/while/lstm_cell_375/ReluRelu+lstm_255/while/lstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_255/while/lstm_cell_375/mul_1Mul(lstm_255/while/lstm_cell_375/Sigmoid:y:0/lstm_255/while/lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_255/while/lstm_cell_375/add_1AddV2$lstm_255/while/lstm_cell_375/mul:z:0&lstm_255/while/lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_255/while/lstm_cell_375/Sigmoid_2Sigmoid+lstm_255/while/lstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_255/while/lstm_cell_375/Relu_1Relu&lstm_255/while/lstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_255/while/lstm_cell_375/mul_2Mul*lstm_255/while/lstm_cell_375/Sigmoid_2:y:01lstm_255/while/lstm_cell_375/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_255/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_255_while_placeholder_1lstm_255_while_placeholder&lstm_255/while/lstm_cell_375/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_255/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_255/while/addAddV2lstm_255_while_placeholderlstm_255/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_255/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_255/while/add_1AddV2*lstm_255_while_lstm_255_while_loop_counterlstm_255/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_255/while/IdentityIdentitylstm_255/while/add_1:z:0^lstm_255/while/NoOp*
T0*
_output_shapes
: ?
lstm_255/while/Identity_1Identity0lstm_255_while_lstm_255_while_maximum_iterations^lstm_255/while/NoOp*
T0*
_output_shapes
: t
lstm_255/while/Identity_2Identitylstm_255/while/add:z:0^lstm_255/while/NoOp*
T0*
_output_shapes
: ?
lstm_255/while/Identity_3IdentityClstm_255/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_255/while/NoOp*
T0*
_output_shapes
: ?
lstm_255/while/Identity_4Identity&lstm_255/while/lstm_cell_375/mul_2:z:0^lstm_255/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_255/while/Identity_5Identity&lstm_255/while/lstm_cell_375/add_1:z:0^lstm_255/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_255/while/NoOpNoOp4^lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOp3^lstm_255/while/lstm_cell_375/MatMul/ReadVariableOp5^lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_255_while_identity lstm_255/while/Identity:output:0"?
lstm_255_while_identity_1"lstm_255/while/Identity_1:output:0"?
lstm_255_while_identity_2"lstm_255/while/Identity_2:output:0"?
lstm_255_while_identity_3"lstm_255/while/Identity_3:output:0"?
lstm_255_while_identity_4"lstm_255/while/Identity_4:output:0"?
lstm_255_while_identity_5"lstm_255/while/Identity_5:output:0"T
'lstm_255_while_lstm_255_strided_slice_1)lstm_255_while_lstm_255_strided_slice_1_0"~
<lstm_255_while_lstm_cell_375_biasadd_readvariableop_resource>lstm_255_while_lstm_cell_375_biasadd_readvariableop_resource_0"?
=lstm_255_while_lstm_cell_375_matmul_1_readvariableop_resource?lstm_255_while_lstm_cell_375_matmul_1_readvariableop_resource_0"|
;lstm_255_while_lstm_cell_375_matmul_readvariableop_resource=lstm_255_while_lstm_cell_375_matmul_readvariableop_resource_0"?
clstm_255_while_tensorarrayv2read_tensorlistgetitem_lstm_255_tensorarrayunstack_tensorlistfromtensorelstm_255_while_tensorarrayv2read_tensorlistgetitem_lstm_255_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOp3lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOp2h
2lstm_255/while/lstm_cell_375/MatMul/ReadVariableOp2lstm_255/while/lstm_cell_375/MatMul/ReadVariableOp2l
4lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOp4lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_257_while_cond_2283610.
*lstm_257_while_lstm_257_while_loop_counter4
0lstm_257_while_lstm_257_while_maximum_iterations
lstm_257_while_placeholder 
lstm_257_while_placeholder_1 
lstm_257_while_placeholder_2 
lstm_257_while_placeholder_30
,lstm_257_while_less_lstm_257_strided_slice_1G
Clstm_257_while_lstm_257_while_cond_2283610___redundant_placeholder0G
Clstm_257_while_lstm_257_while_cond_2283610___redundant_placeholder1G
Clstm_257_while_lstm_257_while_cond_2283610___redundant_placeholder2G
Clstm_257_while_lstm_257_while_cond_2283610___redundant_placeholder3
lstm_257_while_identity
?
lstm_257/while/LessLesslstm_257_while_placeholder,lstm_257_while_less_lstm_257_strided_slice_1*
T0*
_output_shapes
: ]
lstm_257/while/IdentityIdentitylstm_257/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_257_while_identity lstm_257/while/Identity:output:0*(
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
while_cond_2285132
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2285132___redundant_placeholder05
1while_while_cond_2285132___redundant_placeholder15
1while_while_cond_2285132___redundant_placeholder25
1while_while_cond_2285132___redundant_placeholder3
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
lstm_257_while_cond_2284037.
*lstm_257_while_lstm_257_while_loop_counter4
0lstm_257_while_lstm_257_while_maximum_iterations
lstm_257_while_placeholder 
lstm_257_while_placeholder_1 
lstm_257_while_placeholder_2 
lstm_257_while_placeholder_30
,lstm_257_while_less_lstm_257_strided_slice_1G
Clstm_257_while_lstm_257_while_cond_2284037___redundant_placeholder0G
Clstm_257_while_lstm_257_while_cond_2284037___redundant_placeholder1G
Clstm_257_while_lstm_257_while_cond_2284037___redundant_placeholder2G
Clstm_257_while_lstm_257_while_cond_2284037___redundant_placeholder3
lstm_257_while_identity
?
lstm_257/while/LessLesslstm_257_while_placeholder,lstm_257_while_less_lstm_257_strided_slice_1*
T0*
_output_shapes
: ]
lstm_257/while/IdentityIdentitylstm_257/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_257_while_identity lstm_257/while/Identity:output:0*(
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
J__inference_sequential_85_layer_call_and_return_conditional_losses_2283701

inputsH
5lstm_255_lstm_cell_375_matmul_readvariableop_resource:	?J
7lstm_255_lstm_cell_375_matmul_1_readvariableop_resource:	d?E
6lstm_255_lstm_cell_375_biasadd_readvariableop_resource:	?H
5lstm_256_lstm_cell_376_matmul_readvariableop_resource:	d?J
7lstm_256_lstm_cell_376_matmul_1_readvariableop_resource:	2?E
6lstm_256_lstm_cell_376_biasadd_readvariableop_resource:	?G
5lstm_257_lstm_cell_377_matmul_readvariableop_resource:2(I
7lstm_257_lstm_cell_377_matmul_1_readvariableop_resource:
(D
6lstm_257_lstm_cell_377_biasadd_readvariableop_resource:(9
'dense_85_matmul_readvariableop_resource:
6
(dense_85_biasadd_readvariableop_resource:
identity??dense_85/BiasAdd/ReadVariableOp?dense_85/MatMul/ReadVariableOp?-lstm_255/lstm_cell_375/BiasAdd/ReadVariableOp?,lstm_255/lstm_cell_375/MatMul/ReadVariableOp?.lstm_255/lstm_cell_375/MatMul_1/ReadVariableOp?lstm_255/while?-lstm_256/lstm_cell_376/BiasAdd/ReadVariableOp?,lstm_256/lstm_cell_376/MatMul/ReadVariableOp?.lstm_256/lstm_cell_376/MatMul_1/ReadVariableOp?lstm_256/while?-lstm_257/lstm_cell_377/BiasAdd/ReadVariableOp?,lstm_257/lstm_cell_377/MatMul/ReadVariableOp?.lstm_257/lstm_cell_377/MatMul_1/ReadVariableOp?lstm_257/whileD
lstm_255/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_255/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_255/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_255/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_255/strided_sliceStridedSlicelstm_255/Shape:output:0%lstm_255/strided_slice/stack:output:0'lstm_255/strided_slice/stack_1:output:0'lstm_255/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_255/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_255/zeros/packedPacklstm_255/strided_slice:output:0 lstm_255/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_255/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_255/zerosFilllstm_255/zeros/packed:output:0lstm_255/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_255/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_255/zeros_1/packedPacklstm_255/strided_slice:output:0"lstm_255/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_255/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_255/zeros_1Fill lstm_255/zeros_1/packed:output:0lstm_255/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_255/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_255/transpose	Transposeinputs lstm_255/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_255/Shape_1Shapelstm_255/transpose:y:0*
T0*
_output_shapes
:h
lstm_255/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_255/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_255/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_255/strided_slice_1StridedSlicelstm_255/Shape_1:output:0'lstm_255/strided_slice_1/stack:output:0)lstm_255/strided_slice_1/stack_1:output:0)lstm_255/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_255/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_255/TensorArrayV2TensorListReserve-lstm_255/TensorArrayV2/element_shape:output:0!lstm_255/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_255/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_255/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_255/transpose:y:0Glstm_255/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_255/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_255/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_255/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_255/strided_slice_2StridedSlicelstm_255/transpose:y:0'lstm_255/strided_slice_2/stack:output:0)lstm_255/strided_slice_2/stack_1:output:0)lstm_255/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_255/lstm_cell_375/MatMul/ReadVariableOpReadVariableOp5lstm_255_lstm_cell_375_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_255/lstm_cell_375/MatMulMatMul!lstm_255/strided_slice_2:output:04lstm_255/lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_255/lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOp7lstm_255_lstm_cell_375_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_255/lstm_cell_375/MatMul_1MatMullstm_255/zeros:output:06lstm_255/lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_255/lstm_cell_375/addAddV2'lstm_255/lstm_cell_375/MatMul:product:0)lstm_255/lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_255/lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOp6lstm_255_lstm_cell_375_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_255/lstm_cell_375/BiasAddBiasAddlstm_255/lstm_cell_375/add:z:05lstm_255/lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_255/lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_255/lstm_cell_375/splitSplit/lstm_255/lstm_cell_375/split/split_dim:output:0'lstm_255/lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_255/lstm_cell_375/SigmoidSigmoid%lstm_255/lstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_255/lstm_cell_375/Sigmoid_1Sigmoid%lstm_255/lstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_255/lstm_cell_375/mulMul$lstm_255/lstm_cell_375/Sigmoid_1:y:0lstm_255/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_255/lstm_cell_375/ReluRelu%lstm_255/lstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_255/lstm_cell_375/mul_1Mul"lstm_255/lstm_cell_375/Sigmoid:y:0)lstm_255/lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_255/lstm_cell_375/add_1AddV2lstm_255/lstm_cell_375/mul:z:0 lstm_255/lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_255/lstm_cell_375/Sigmoid_2Sigmoid%lstm_255/lstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_255/lstm_cell_375/Relu_1Relu lstm_255/lstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_255/lstm_cell_375/mul_2Mul$lstm_255/lstm_cell_375/Sigmoid_2:y:0+lstm_255/lstm_cell_375/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_255/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_255/TensorArrayV2_1TensorListReserve/lstm_255/TensorArrayV2_1/element_shape:output:0!lstm_255/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_255/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_255/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_255/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_255/whileWhile$lstm_255/while/loop_counter:output:0*lstm_255/while/maximum_iterations:output:0lstm_255/time:output:0!lstm_255/TensorArrayV2_1:handle:0lstm_255/zeros:output:0lstm_255/zeros_1:output:0!lstm_255/strided_slice_1:output:0@lstm_255/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_255_lstm_cell_375_matmul_readvariableop_resource7lstm_255_lstm_cell_375_matmul_1_readvariableop_resource6lstm_255_lstm_cell_375_biasadd_readvariableop_resource*
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
lstm_255_while_body_2283333*'
condR
lstm_255_while_cond_2283332*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_255/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_255/TensorArrayV2Stack/TensorListStackTensorListStacklstm_255/while:output:3Blstm_255/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_255/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_255/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_255/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_255/strided_slice_3StridedSlice4lstm_255/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_255/strided_slice_3/stack:output:0)lstm_255/strided_slice_3/stack_1:output:0)lstm_255/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_255/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_255/transpose_1	Transpose4lstm_255/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_255/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_255/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_256/ShapeShapelstm_255/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_256/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_256/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_256/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_256/strided_sliceStridedSlicelstm_256/Shape:output:0%lstm_256/strided_slice/stack:output:0'lstm_256/strided_slice/stack_1:output:0'lstm_256/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_256/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_256/zeros/packedPacklstm_256/strided_slice:output:0 lstm_256/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_256/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_256/zerosFilllstm_256/zeros/packed:output:0lstm_256/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_256/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_256/zeros_1/packedPacklstm_256/strided_slice:output:0"lstm_256/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_256/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_256/zeros_1Fill lstm_256/zeros_1/packed:output:0lstm_256/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_256/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_256/transpose	Transposelstm_255/transpose_1:y:0 lstm_256/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_256/Shape_1Shapelstm_256/transpose:y:0*
T0*
_output_shapes
:h
lstm_256/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_256/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_256/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_256/strided_slice_1StridedSlicelstm_256/Shape_1:output:0'lstm_256/strided_slice_1/stack:output:0)lstm_256/strided_slice_1/stack_1:output:0)lstm_256/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_256/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_256/TensorArrayV2TensorListReserve-lstm_256/TensorArrayV2/element_shape:output:0!lstm_256/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_256/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_256/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_256/transpose:y:0Glstm_256/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_256/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_256/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_256/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_256/strided_slice_2StridedSlicelstm_256/transpose:y:0'lstm_256/strided_slice_2/stack:output:0)lstm_256/strided_slice_2/stack_1:output:0)lstm_256/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_256/lstm_cell_376/MatMul/ReadVariableOpReadVariableOp5lstm_256_lstm_cell_376_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_256/lstm_cell_376/MatMulMatMul!lstm_256/strided_slice_2:output:04lstm_256/lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_256/lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOp7lstm_256_lstm_cell_376_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_256/lstm_cell_376/MatMul_1MatMullstm_256/zeros:output:06lstm_256/lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_256/lstm_cell_376/addAddV2'lstm_256/lstm_cell_376/MatMul:product:0)lstm_256/lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_256/lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOp6lstm_256_lstm_cell_376_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_256/lstm_cell_376/BiasAddBiasAddlstm_256/lstm_cell_376/add:z:05lstm_256/lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_256/lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_256/lstm_cell_376/splitSplit/lstm_256/lstm_cell_376/split/split_dim:output:0'lstm_256/lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_256/lstm_cell_376/SigmoidSigmoid%lstm_256/lstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_256/lstm_cell_376/Sigmoid_1Sigmoid%lstm_256/lstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_256/lstm_cell_376/mulMul$lstm_256/lstm_cell_376/Sigmoid_1:y:0lstm_256/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_256/lstm_cell_376/ReluRelu%lstm_256/lstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_256/lstm_cell_376/mul_1Mul"lstm_256/lstm_cell_376/Sigmoid:y:0)lstm_256/lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_256/lstm_cell_376/add_1AddV2lstm_256/lstm_cell_376/mul:z:0 lstm_256/lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_256/lstm_cell_376/Sigmoid_2Sigmoid%lstm_256/lstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_256/lstm_cell_376/Relu_1Relu lstm_256/lstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_256/lstm_cell_376/mul_2Mul$lstm_256/lstm_cell_376/Sigmoid_2:y:0+lstm_256/lstm_cell_376/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_256/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_256/TensorArrayV2_1TensorListReserve/lstm_256/TensorArrayV2_1/element_shape:output:0!lstm_256/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_256/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_256/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_256/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_256/whileWhile$lstm_256/while/loop_counter:output:0*lstm_256/while/maximum_iterations:output:0lstm_256/time:output:0!lstm_256/TensorArrayV2_1:handle:0lstm_256/zeros:output:0lstm_256/zeros_1:output:0!lstm_256/strided_slice_1:output:0@lstm_256/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_256_lstm_cell_376_matmul_readvariableop_resource7lstm_256_lstm_cell_376_matmul_1_readvariableop_resource6lstm_256_lstm_cell_376_biasadd_readvariableop_resource*
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
lstm_256_while_body_2283472*'
condR
lstm_256_while_cond_2283471*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_256/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_256/TensorArrayV2Stack/TensorListStackTensorListStacklstm_256/while:output:3Blstm_256/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_256/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_256/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_256/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_256/strided_slice_3StridedSlice4lstm_256/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_256/strided_slice_3/stack:output:0)lstm_256/strided_slice_3/stack_1:output:0)lstm_256/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_256/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_256/transpose_1	Transpose4lstm_256/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_256/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_256/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_257/ShapeShapelstm_256/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_257/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_257/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_257/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_257/strided_sliceStridedSlicelstm_257/Shape:output:0%lstm_257/strided_slice/stack:output:0'lstm_257/strided_slice/stack_1:output:0'lstm_257/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_257/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_257/zeros/packedPacklstm_257/strided_slice:output:0 lstm_257/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_257/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_257/zerosFilllstm_257/zeros/packed:output:0lstm_257/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_257/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_257/zeros_1/packedPacklstm_257/strided_slice:output:0"lstm_257/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_257/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_257/zeros_1Fill lstm_257/zeros_1/packed:output:0lstm_257/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_257/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_257/transpose	Transposelstm_256/transpose_1:y:0 lstm_257/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_257/Shape_1Shapelstm_257/transpose:y:0*
T0*
_output_shapes
:h
lstm_257/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_257/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_257/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_257/strided_slice_1StridedSlicelstm_257/Shape_1:output:0'lstm_257/strided_slice_1/stack:output:0)lstm_257/strided_slice_1/stack_1:output:0)lstm_257/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_257/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_257/TensorArrayV2TensorListReserve-lstm_257/TensorArrayV2/element_shape:output:0!lstm_257/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_257/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_257/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_257/transpose:y:0Glstm_257/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_257/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_257/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_257/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_257/strided_slice_2StridedSlicelstm_257/transpose:y:0'lstm_257/strided_slice_2/stack:output:0)lstm_257/strided_slice_2/stack_1:output:0)lstm_257/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_257/lstm_cell_377/MatMul/ReadVariableOpReadVariableOp5lstm_257_lstm_cell_377_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_257/lstm_cell_377/MatMulMatMul!lstm_257/strided_slice_2:output:04lstm_257/lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_257/lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOp7lstm_257_lstm_cell_377_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_257/lstm_cell_377/MatMul_1MatMullstm_257/zeros:output:06lstm_257/lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_257/lstm_cell_377/addAddV2'lstm_257/lstm_cell_377/MatMul:product:0)lstm_257/lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_257/lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOp6lstm_257_lstm_cell_377_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_257/lstm_cell_377/BiasAddBiasAddlstm_257/lstm_cell_377/add:z:05lstm_257/lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_257/lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_257/lstm_cell_377/splitSplit/lstm_257/lstm_cell_377/split/split_dim:output:0'lstm_257/lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_257/lstm_cell_377/SigmoidSigmoid%lstm_257/lstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_257/lstm_cell_377/Sigmoid_1Sigmoid%lstm_257/lstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_257/lstm_cell_377/mulMul$lstm_257/lstm_cell_377/Sigmoid_1:y:0lstm_257/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_257/lstm_cell_377/ReluRelu%lstm_257/lstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_257/lstm_cell_377/mul_1Mul"lstm_257/lstm_cell_377/Sigmoid:y:0)lstm_257/lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_257/lstm_cell_377/add_1AddV2lstm_257/lstm_cell_377/mul:z:0 lstm_257/lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_257/lstm_cell_377/Sigmoid_2Sigmoid%lstm_257/lstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_257/lstm_cell_377/Relu_1Relu lstm_257/lstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_257/lstm_cell_377/mul_2Mul$lstm_257/lstm_cell_377/Sigmoid_2:y:0+lstm_257/lstm_cell_377/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_257/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_257/TensorArrayV2_1TensorListReserve/lstm_257/TensorArrayV2_1/element_shape:output:0!lstm_257/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_257/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_257/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_257/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_257/whileWhile$lstm_257/while/loop_counter:output:0*lstm_257/while/maximum_iterations:output:0lstm_257/time:output:0!lstm_257/TensorArrayV2_1:handle:0lstm_257/zeros:output:0lstm_257/zeros_1:output:0!lstm_257/strided_slice_1:output:0@lstm_257/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_257_lstm_cell_377_matmul_readvariableop_resource7lstm_257_lstm_cell_377_matmul_1_readvariableop_resource6lstm_257_lstm_cell_377_biasadd_readvariableop_resource*
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
lstm_257_while_body_2283611*'
condR
lstm_257_while_cond_2283610*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_257/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_257/TensorArrayV2Stack/TensorListStackTensorListStacklstm_257/while:output:3Blstm_257/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_257/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_257/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_257/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_257/strided_slice_3StridedSlice4lstm_257/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_257/strided_slice_3/stack:output:0)lstm_257/strided_slice_3/stack_1:output:0)lstm_257/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_257/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_257/transpose_1	Transpose4lstm_257/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_257/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_257/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_85/MatMul/ReadVariableOpReadVariableOp'dense_85_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_85/MatMulMatMul!lstm_257/strided_slice_3:output:0&dense_85/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_85/BiasAdd/ReadVariableOpReadVariableOp(dense_85_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_85/BiasAddBiasAdddense_85/MatMul:product:0'dense_85/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_85/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_85/BiasAdd/ReadVariableOp^dense_85/MatMul/ReadVariableOp.^lstm_255/lstm_cell_375/BiasAdd/ReadVariableOp-^lstm_255/lstm_cell_375/MatMul/ReadVariableOp/^lstm_255/lstm_cell_375/MatMul_1/ReadVariableOp^lstm_255/while.^lstm_256/lstm_cell_376/BiasAdd/ReadVariableOp-^lstm_256/lstm_cell_376/MatMul/ReadVariableOp/^lstm_256/lstm_cell_376/MatMul_1/ReadVariableOp^lstm_256/while.^lstm_257/lstm_cell_377/BiasAdd/ReadVariableOp-^lstm_257/lstm_cell_377/MatMul/ReadVariableOp/^lstm_257/lstm_cell_377/MatMul_1/ReadVariableOp^lstm_257/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_85/BiasAdd/ReadVariableOpdense_85/BiasAdd/ReadVariableOp2@
dense_85/MatMul/ReadVariableOpdense_85/MatMul/ReadVariableOp2^
-lstm_255/lstm_cell_375/BiasAdd/ReadVariableOp-lstm_255/lstm_cell_375/BiasAdd/ReadVariableOp2\
,lstm_255/lstm_cell_375/MatMul/ReadVariableOp,lstm_255/lstm_cell_375/MatMul/ReadVariableOp2`
.lstm_255/lstm_cell_375/MatMul_1/ReadVariableOp.lstm_255/lstm_cell_375/MatMul_1/ReadVariableOp2 
lstm_255/whilelstm_255/while2^
-lstm_256/lstm_cell_376/BiasAdd/ReadVariableOp-lstm_256/lstm_cell_376/BiasAdd/ReadVariableOp2\
,lstm_256/lstm_cell_376/MatMul/ReadVariableOp,lstm_256/lstm_cell_376/MatMul/ReadVariableOp2`
.lstm_256/lstm_cell_376/MatMul_1/ReadVariableOp.lstm_256/lstm_cell_376/MatMul_1/ReadVariableOp2 
lstm_256/whilelstm_256/while2^
-lstm_257/lstm_cell_377/BiasAdd/ReadVariableOp-lstm_257/lstm_cell_377/BiasAdd/ReadVariableOp2\
,lstm_257/lstm_cell_377/MatMul/ReadVariableOp,lstm_257/lstm_cell_377/MatMul/ReadVariableOp2`
.lstm_257/lstm_cell_377/MatMul_1/ReadVariableOp.lstm_257/lstm_cell_377/MatMul_1/ReadVariableOp2 
lstm_257/whilelstm_257/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_255_layer_call_and_return_conditional_losses_2284315
inputs_0?
,lstm_cell_375_matmul_readvariableop_resource:	?A
.lstm_cell_375_matmul_1_readvariableop_resource:	d?<
-lstm_cell_375_biasadd_readvariableop_resource:	?
identity??$lstm_cell_375/BiasAdd/ReadVariableOp?#lstm_cell_375/MatMul/ReadVariableOp?%lstm_cell_375/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_375/MatMul/ReadVariableOpReadVariableOp,lstm_cell_375_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_375/MatMulMatMulstrided_slice_2:output:0+lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_375_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_375/MatMul_1MatMulzeros:output:0-lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_375/addAddV2lstm_cell_375/MatMul:product:0 lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_375_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_375/BiasAddBiasAddlstm_cell_375/add:z:0,lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_375/splitSplit&lstm_cell_375/split/split_dim:output:0lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_375/SigmoidSigmoidlstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_375/Sigmoid_1Sigmoidlstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_375/mulMullstm_cell_375/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_375/ReluRelulstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_375/mul_1Mullstm_cell_375/Sigmoid:y:0 lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_375/add_1AddV2lstm_cell_375/mul:z:0lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_375/Sigmoid_2Sigmoidlstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_375/Relu_1Relulstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_375/mul_2Mullstm_cell_375/Sigmoid_2:y:0"lstm_cell_375/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_375_matmul_readvariableop_resource.lstm_cell_375_matmul_1_readvariableop_resource-lstm_cell_375_biasadd_readvariableop_resource*
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
while_body_2284231*
condR
while_cond_2284230*K
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
NoOpNoOp%^lstm_cell_375/BiasAdd/ReadVariableOp$^lstm_cell_375/MatMul/ReadVariableOp&^lstm_cell_375/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_375/BiasAdd/ReadVariableOp$lstm_cell_375/BiasAdd/ReadVariableOp2J
#lstm_cell_375/MatMul/ReadVariableOp#lstm_cell_375/MatMul/ReadVariableOp2N
%lstm_cell_375/MatMul_1/ReadVariableOp%lstm_cell_375/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?J
?
E__inference_lstm_256_layer_call_and_return_conditional_losses_2282309

inputs?
,lstm_cell_376_matmul_readvariableop_resource:	d?A
.lstm_cell_376_matmul_1_readvariableop_resource:	2?<
-lstm_cell_376_biasadd_readvariableop_resource:	?
identity??$lstm_cell_376/BiasAdd/ReadVariableOp?#lstm_cell_376/MatMul/ReadVariableOp?%lstm_cell_376/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_376/MatMul/ReadVariableOpReadVariableOp,lstm_cell_376_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_376/MatMulMatMulstrided_slice_2:output:0+lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_376_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_376/MatMul_1MatMulzeros:output:0-lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_376/addAddV2lstm_cell_376/MatMul:product:0 lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_376_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_376/BiasAddBiasAddlstm_cell_376/add:z:0,lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_376/splitSplit&lstm_cell_376/split/split_dim:output:0lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_376/SigmoidSigmoidlstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_376/Sigmoid_1Sigmoidlstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_376/mulMullstm_cell_376/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_376/ReluRelulstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_376/mul_1Mullstm_cell_376/Sigmoid:y:0 lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_376/add_1AddV2lstm_cell_376/mul:z:0lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_376/Sigmoid_2Sigmoidlstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_376/Relu_1Relulstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_376/mul_2Mullstm_cell_376/Sigmoid_2:y:0"lstm_cell_376/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_376_matmul_readvariableop_resource.lstm_cell_376_matmul_1_readvariableop_resource-lstm_cell_376_biasadd_readvariableop_resource*
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
while_body_2282225*
condR
while_cond_2282224*K
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
NoOpNoOp%^lstm_cell_376/BiasAdd/ReadVariableOp$^lstm_cell_376/MatMul/ReadVariableOp&^lstm_cell_376/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_376/BiasAdd/ReadVariableOp$lstm_cell_376/BiasAdd/ReadVariableOp2J
#lstm_cell_376/MatMul/ReadVariableOp#lstm_cell_376/MatMul/ReadVariableOp2N
%lstm_cell_376/MatMul_1/ReadVariableOp%lstm_cell_376/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2281040
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2281040___redundant_placeholder05
1while_while_cond_2281040___redundant_placeholder15
1while_while_cond_2281040___redundant_placeholder25
1while_while_cond_2281040___redundant_placeholder3
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
while_body_2285463
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_377_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_377_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_377_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_377_matmul_readvariableop_resource:2(F
4while_lstm_cell_377_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_377_biasadd_readvariableop_resource:(??*while/lstm_cell_377/BiasAdd/ReadVariableOp?)while/lstm_cell_377/MatMul/ReadVariableOp?+while/lstm_cell_377/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_377/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_377_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_377/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_377_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_377/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_377/addAddV2$while/lstm_cell_377/MatMul:product:0&while/lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_377_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_377/BiasAddBiasAddwhile/lstm_cell_377/add:z:02while/lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_377/splitSplit,while/lstm_cell_377/split/split_dim:output:0$while/lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_377/SigmoidSigmoid"while/lstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_377/Sigmoid_1Sigmoid"while/lstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mulMul!while/lstm_cell_377/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_377/ReluRelu"while/lstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mul_1Mulwhile/lstm_cell_377/Sigmoid:y:0&while/lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/add_1AddV2while/lstm_cell_377/mul:z:0while/lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_377/Sigmoid_2Sigmoid"while/lstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_377/Relu_1Reluwhile/lstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mul_2Mul!while/lstm_cell_377/Sigmoid_2:y:0(while/lstm_cell_377/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_377/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_377/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_377/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_377/BiasAdd/ReadVariableOp*^while/lstm_cell_377/MatMul/ReadVariableOp,^while/lstm_cell_377/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_377_biasadd_readvariableop_resource5while_lstm_cell_377_biasadd_readvariableop_resource_0"n
4while_lstm_cell_377_matmul_1_readvariableop_resource6while_lstm_cell_377_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_377_matmul_readvariableop_resource4while_lstm_cell_377_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_377/BiasAdd/ReadVariableOp*while/lstm_cell_377/BiasAdd/ReadVariableOp2V
)while/lstm_cell_377/MatMul/ReadVariableOp)while/lstm_cell_377/MatMul/ReadVariableOp2Z
+while/lstm_cell_377/MatMul_1/ReadVariableOp+while/lstm_cell_377/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2285833

inputs>
,lstm_cell_377_matmul_readvariableop_resource:2(@
.lstm_cell_377_matmul_1_readvariableop_resource:
(;
-lstm_cell_377_biasadd_readvariableop_resource:(
identity??$lstm_cell_377/BiasAdd/ReadVariableOp?#lstm_cell_377/MatMul/ReadVariableOp?%lstm_cell_377/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_377/MatMul/ReadVariableOpReadVariableOp,lstm_cell_377_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_377/MatMulMatMulstrided_slice_2:output:0+lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_377_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_377/MatMul_1MatMulzeros:output:0-lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_377/addAddV2lstm_cell_377/MatMul:product:0 lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_377_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_377/BiasAddBiasAddlstm_cell_377/add:z:0,lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_377/splitSplit&lstm_cell_377/split/split_dim:output:0lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_377/SigmoidSigmoidlstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_377/Sigmoid_1Sigmoidlstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_377/mulMullstm_cell_377/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_377/ReluRelulstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_377/mul_1Mullstm_cell_377/Sigmoid:y:0 lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_377/add_1AddV2lstm_cell_377/mul:z:0lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_377/Sigmoid_2Sigmoidlstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_377/Relu_1Relulstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_377/mul_2Mullstm_cell_377/Sigmoid_2:y:0"lstm_cell_377/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_377_matmul_readvariableop_resource.lstm_cell_377_matmul_1_readvariableop_resource-lstm_cell_377_biasadd_readvariableop_resource*
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
while_body_2285749*
condR
while_cond_2285748*K
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
NoOpNoOp%^lstm_cell_377/BiasAdd/ReadVariableOp$^lstm_cell_377/MatMul/ReadVariableOp&^lstm_cell_377/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_377/BiasAdd/ReadVariableOp$lstm_cell_377/BiasAdd/ReadVariableOp2J
#lstm_cell_377/MatMul/ReadVariableOp#lstm_cell_377/MatMul/ReadVariableOp2N
%lstm_cell_377/MatMul_1/ReadVariableOp%lstm_cell_377/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
while_body_2285749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_377_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_377_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_377_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_377_matmul_readvariableop_resource:2(F
4while_lstm_cell_377_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_377_biasadd_readvariableop_resource:(??*while/lstm_cell_377/BiasAdd/ReadVariableOp?)while/lstm_cell_377/MatMul/ReadVariableOp?+while/lstm_cell_377/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_377/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_377_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_377/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_377_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_377/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_377/addAddV2$while/lstm_cell_377/MatMul:product:0&while/lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_377_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_377/BiasAddBiasAddwhile/lstm_cell_377/add:z:02while/lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_377/splitSplit,while/lstm_cell_377/split/split_dim:output:0$while/lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_377/SigmoidSigmoid"while/lstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_377/Sigmoid_1Sigmoid"while/lstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mulMul!while/lstm_cell_377/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_377/ReluRelu"while/lstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mul_1Mulwhile/lstm_cell_377/Sigmoid:y:0&while/lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/add_1AddV2while/lstm_cell_377/mul:z:0while/lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_377/Sigmoid_2Sigmoid"while/lstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_377/Relu_1Reluwhile/lstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mul_2Mul!while/lstm_cell_377/Sigmoid_2:y:0(while/lstm_cell_377/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_377/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_377/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_377/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_377/BiasAdd/ReadVariableOp*^while/lstm_cell_377/MatMul/ReadVariableOp,^while/lstm_cell_377/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_377_biasadd_readvariableop_resource5while_lstm_cell_377_biasadd_readvariableop_resource_0"n
4while_lstm_cell_377_matmul_1_readvariableop_resource6while_lstm_cell_377_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_377_matmul_readvariableop_resource4while_lstm_cell_377_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_377/BiasAdd/ReadVariableOp*while/lstm_cell_377/BiasAdd/ReadVariableOp2V
)while/lstm_cell_377/MatMul/ReadVariableOp)while/lstm_cell_377/MatMul/ReadVariableOp2Z
+while/lstm_cell_377/MatMul_1/ReadVariableOp+while/lstm_cell_377/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_dense_85_layer_call_fn_2285985

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
E__inference_dense_85_layer_call_and_return_conditional_losses_2282477o
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
??
?
"__inference__wrapped_model_2280960
lstm_255_inputV
Csequential_85_lstm_255_lstm_cell_375_matmul_readvariableop_resource:	?X
Esequential_85_lstm_255_lstm_cell_375_matmul_1_readvariableop_resource:	d?S
Dsequential_85_lstm_255_lstm_cell_375_biasadd_readvariableop_resource:	?V
Csequential_85_lstm_256_lstm_cell_376_matmul_readvariableop_resource:	d?X
Esequential_85_lstm_256_lstm_cell_376_matmul_1_readvariableop_resource:	2?S
Dsequential_85_lstm_256_lstm_cell_376_biasadd_readvariableop_resource:	?U
Csequential_85_lstm_257_lstm_cell_377_matmul_readvariableop_resource:2(W
Esequential_85_lstm_257_lstm_cell_377_matmul_1_readvariableop_resource:
(R
Dsequential_85_lstm_257_lstm_cell_377_biasadd_readvariableop_resource:(G
5sequential_85_dense_85_matmul_readvariableop_resource:
D
6sequential_85_dense_85_biasadd_readvariableop_resource:
identity??-sequential_85/dense_85/BiasAdd/ReadVariableOp?,sequential_85/dense_85/MatMul/ReadVariableOp?;sequential_85/lstm_255/lstm_cell_375/BiasAdd/ReadVariableOp?:sequential_85/lstm_255/lstm_cell_375/MatMul/ReadVariableOp?<sequential_85/lstm_255/lstm_cell_375/MatMul_1/ReadVariableOp?sequential_85/lstm_255/while?;sequential_85/lstm_256/lstm_cell_376/BiasAdd/ReadVariableOp?:sequential_85/lstm_256/lstm_cell_376/MatMul/ReadVariableOp?<sequential_85/lstm_256/lstm_cell_376/MatMul_1/ReadVariableOp?sequential_85/lstm_256/while?;sequential_85/lstm_257/lstm_cell_377/BiasAdd/ReadVariableOp?:sequential_85/lstm_257/lstm_cell_377/MatMul/ReadVariableOp?<sequential_85/lstm_257/lstm_cell_377/MatMul_1/ReadVariableOp?sequential_85/lstm_257/whileZ
sequential_85/lstm_255/ShapeShapelstm_255_input*
T0*
_output_shapes
:t
*sequential_85/lstm_255/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_85/lstm_255/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_85/lstm_255/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_85/lstm_255/strided_sliceStridedSlice%sequential_85/lstm_255/Shape:output:03sequential_85/lstm_255/strided_slice/stack:output:05sequential_85/lstm_255/strided_slice/stack_1:output:05sequential_85/lstm_255/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_85/lstm_255/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_85/lstm_255/zeros/packedPack-sequential_85/lstm_255/strided_slice:output:0.sequential_85/lstm_255/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_85/lstm_255/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_85/lstm_255/zerosFill,sequential_85/lstm_255/zeros/packed:output:0+sequential_85/lstm_255/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_85/lstm_255/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_85/lstm_255/zeros_1/packedPack-sequential_85/lstm_255/strided_slice:output:00sequential_85/lstm_255/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_85/lstm_255/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_85/lstm_255/zeros_1Fill.sequential_85/lstm_255/zeros_1/packed:output:0-sequential_85/lstm_255/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_85/lstm_255/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_85/lstm_255/transpose	Transposelstm_255_input.sequential_85/lstm_255/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_85/lstm_255/Shape_1Shape$sequential_85/lstm_255/transpose:y:0*
T0*
_output_shapes
:v
,sequential_85/lstm_255/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_85/lstm_255/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_85/lstm_255/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_85/lstm_255/strided_slice_1StridedSlice'sequential_85/lstm_255/Shape_1:output:05sequential_85/lstm_255/strided_slice_1/stack:output:07sequential_85/lstm_255/strided_slice_1/stack_1:output:07sequential_85/lstm_255/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_85/lstm_255/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_85/lstm_255/TensorArrayV2TensorListReserve;sequential_85/lstm_255/TensorArrayV2/element_shape:output:0/sequential_85/lstm_255/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_85/lstm_255/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_85/lstm_255/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_85/lstm_255/transpose:y:0Usequential_85/lstm_255/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_85/lstm_255/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_85/lstm_255/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_85/lstm_255/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_85/lstm_255/strided_slice_2StridedSlice$sequential_85/lstm_255/transpose:y:05sequential_85/lstm_255/strided_slice_2/stack:output:07sequential_85/lstm_255/strided_slice_2/stack_1:output:07sequential_85/lstm_255/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_85/lstm_255/lstm_cell_375/MatMul/ReadVariableOpReadVariableOpCsequential_85_lstm_255_lstm_cell_375_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_85/lstm_255/lstm_cell_375/MatMulMatMul/sequential_85/lstm_255/strided_slice_2:output:0Bsequential_85/lstm_255/lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_85/lstm_255/lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOpEsequential_85_lstm_255_lstm_cell_375_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_85/lstm_255/lstm_cell_375/MatMul_1MatMul%sequential_85/lstm_255/zeros:output:0Dsequential_85/lstm_255/lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_85/lstm_255/lstm_cell_375/addAddV25sequential_85/lstm_255/lstm_cell_375/MatMul:product:07sequential_85/lstm_255/lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_85/lstm_255/lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOpDsequential_85_lstm_255_lstm_cell_375_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_85/lstm_255/lstm_cell_375/BiasAddBiasAdd,sequential_85/lstm_255/lstm_cell_375/add:z:0Csequential_85/lstm_255/lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_85/lstm_255/lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_85/lstm_255/lstm_cell_375/splitSplit=sequential_85/lstm_255/lstm_cell_375/split/split_dim:output:05sequential_85/lstm_255/lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_85/lstm_255/lstm_cell_375/SigmoidSigmoid3sequential_85/lstm_255/lstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_85/lstm_255/lstm_cell_375/Sigmoid_1Sigmoid3sequential_85/lstm_255/lstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_85/lstm_255/lstm_cell_375/mulMul2sequential_85/lstm_255/lstm_cell_375/Sigmoid_1:y:0'sequential_85/lstm_255/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_85/lstm_255/lstm_cell_375/ReluRelu3sequential_85/lstm_255/lstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_85/lstm_255/lstm_cell_375/mul_1Mul0sequential_85/lstm_255/lstm_cell_375/Sigmoid:y:07sequential_85/lstm_255/lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_85/lstm_255/lstm_cell_375/add_1AddV2,sequential_85/lstm_255/lstm_cell_375/mul:z:0.sequential_85/lstm_255/lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_85/lstm_255/lstm_cell_375/Sigmoid_2Sigmoid3sequential_85/lstm_255/lstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_85/lstm_255/lstm_cell_375/Relu_1Relu.sequential_85/lstm_255/lstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_85/lstm_255/lstm_cell_375/mul_2Mul2sequential_85/lstm_255/lstm_cell_375/Sigmoid_2:y:09sequential_85/lstm_255/lstm_cell_375/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_85/lstm_255/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_85/lstm_255/TensorArrayV2_1TensorListReserve=sequential_85/lstm_255/TensorArrayV2_1/element_shape:output:0/sequential_85/lstm_255/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_85/lstm_255/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_85/lstm_255/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_85/lstm_255/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_85/lstm_255/whileWhile2sequential_85/lstm_255/while/loop_counter:output:08sequential_85/lstm_255/while/maximum_iterations:output:0$sequential_85/lstm_255/time:output:0/sequential_85/lstm_255/TensorArrayV2_1:handle:0%sequential_85/lstm_255/zeros:output:0'sequential_85/lstm_255/zeros_1:output:0/sequential_85/lstm_255/strided_slice_1:output:0Nsequential_85/lstm_255/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_85_lstm_255_lstm_cell_375_matmul_readvariableop_resourceEsequential_85_lstm_255_lstm_cell_375_matmul_1_readvariableop_resourceDsequential_85_lstm_255_lstm_cell_375_biasadd_readvariableop_resource*
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
)sequential_85_lstm_255_while_body_2280592*5
cond-R+
)sequential_85_lstm_255_while_cond_2280591*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_85/lstm_255/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_85/lstm_255/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_85/lstm_255/while:output:3Psequential_85/lstm_255/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_85/lstm_255/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_85/lstm_255/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_85/lstm_255/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_85/lstm_255/strided_slice_3StridedSliceBsequential_85/lstm_255/TensorArrayV2Stack/TensorListStack:tensor:05sequential_85/lstm_255/strided_slice_3/stack:output:07sequential_85/lstm_255/strided_slice_3/stack_1:output:07sequential_85/lstm_255/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_85/lstm_255/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_85/lstm_255/transpose_1	TransposeBsequential_85/lstm_255/TensorArrayV2Stack/TensorListStack:tensor:00sequential_85/lstm_255/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_85/lstm_255/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_85/lstm_256/ShapeShape&sequential_85/lstm_255/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_85/lstm_256/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_85/lstm_256/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_85/lstm_256/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_85/lstm_256/strided_sliceStridedSlice%sequential_85/lstm_256/Shape:output:03sequential_85/lstm_256/strided_slice/stack:output:05sequential_85/lstm_256/strided_slice/stack_1:output:05sequential_85/lstm_256/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_85/lstm_256/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_85/lstm_256/zeros/packedPack-sequential_85/lstm_256/strided_slice:output:0.sequential_85/lstm_256/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_85/lstm_256/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_85/lstm_256/zerosFill,sequential_85/lstm_256/zeros/packed:output:0+sequential_85/lstm_256/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_85/lstm_256/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_85/lstm_256/zeros_1/packedPack-sequential_85/lstm_256/strided_slice:output:00sequential_85/lstm_256/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_85/lstm_256/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_85/lstm_256/zeros_1Fill.sequential_85/lstm_256/zeros_1/packed:output:0-sequential_85/lstm_256/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_85/lstm_256/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_85/lstm_256/transpose	Transpose&sequential_85/lstm_255/transpose_1:y:0.sequential_85/lstm_256/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_85/lstm_256/Shape_1Shape$sequential_85/lstm_256/transpose:y:0*
T0*
_output_shapes
:v
,sequential_85/lstm_256/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_85/lstm_256/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_85/lstm_256/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_85/lstm_256/strided_slice_1StridedSlice'sequential_85/lstm_256/Shape_1:output:05sequential_85/lstm_256/strided_slice_1/stack:output:07sequential_85/lstm_256/strided_slice_1/stack_1:output:07sequential_85/lstm_256/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_85/lstm_256/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_85/lstm_256/TensorArrayV2TensorListReserve;sequential_85/lstm_256/TensorArrayV2/element_shape:output:0/sequential_85/lstm_256/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_85/lstm_256/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_85/lstm_256/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_85/lstm_256/transpose:y:0Usequential_85/lstm_256/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_85/lstm_256/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_85/lstm_256/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_85/lstm_256/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_85/lstm_256/strided_slice_2StridedSlice$sequential_85/lstm_256/transpose:y:05sequential_85/lstm_256/strided_slice_2/stack:output:07sequential_85/lstm_256/strided_slice_2/stack_1:output:07sequential_85/lstm_256/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_85/lstm_256/lstm_cell_376/MatMul/ReadVariableOpReadVariableOpCsequential_85_lstm_256_lstm_cell_376_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_85/lstm_256/lstm_cell_376/MatMulMatMul/sequential_85/lstm_256/strided_slice_2:output:0Bsequential_85/lstm_256/lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_85/lstm_256/lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOpEsequential_85_lstm_256_lstm_cell_376_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_85/lstm_256/lstm_cell_376/MatMul_1MatMul%sequential_85/lstm_256/zeros:output:0Dsequential_85/lstm_256/lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_85/lstm_256/lstm_cell_376/addAddV25sequential_85/lstm_256/lstm_cell_376/MatMul:product:07sequential_85/lstm_256/lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_85/lstm_256/lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOpDsequential_85_lstm_256_lstm_cell_376_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_85/lstm_256/lstm_cell_376/BiasAddBiasAdd,sequential_85/lstm_256/lstm_cell_376/add:z:0Csequential_85/lstm_256/lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_85/lstm_256/lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_85/lstm_256/lstm_cell_376/splitSplit=sequential_85/lstm_256/lstm_cell_376/split/split_dim:output:05sequential_85/lstm_256/lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_85/lstm_256/lstm_cell_376/SigmoidSigmoid3sequential_85/lstm_256/lstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_85/lstm_256/lstm_cell_376/Sigmoid_1Sigmoid3sequential_85/lstm_256/lstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_85/lstm_256/lstm_cell_376/mulMul2sequential_85/lstm_256/lstm_cell_376/Sigmoid_1:y:0'sequential_85/lstm_256/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_85/lstm_256/lstm_cell_376/ReluRelu3sequential_85/lstm_256/lstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_85/lstm_256/lstm_cell_376/mul_1Mul0sequential_85/lstm_256/lstm_cell_376/Sigmoid:y:07sequential_85/lstm_256/lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_85/lstm_256/lstm_cell_376/add_1AddV2,sequential_85/lstm_256/lstm_cell_376/mul:z:0.sequential_85/lstm_256/lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_85/lstm_256/lstm_cell_376/Sigmoid_2Sigmoid3sequential_85/lstm_256/lstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_85/lstm_256/lstm_cell_376/Relu_1Relu.sequential_85/lstm_256/lstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_85/lstm_256/lstm_cell_376/mul_2Mul2sequential_85/lstm_256/lstm_cell_376/Sigmoid_2:y:09sequential_85/lstm_256/lstm_cell_376/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_85/lstm_256/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_85/lstm_256/TensorArrayV2_1TensorListReserve=sequential_85/lstm_256/TensorArrayV2_1/element_shape:output:0/sequential_85/lstm_256/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_85/lstm_256/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_85/lstm_256/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_85/lstm_256/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_85/lstm_256/whileWhile2sequential_85/lstm_256/while/loop_counter:output:08sequential_85/lstm_256/while/maximum_iterations:output:0$sequential_85/lstm_256/time:output:0/sequential_85/lstm_256/TensorArrayV2_1:handle:0%sequential_85/lstm_256/zeros:output:0'sequential_85/lstm_256/zeros_1:output:0/sequential_85/lstm_256/strided_slice_1:output:0Nsequential_85/lstm_256/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_85_lstm_256_lstm_cell_376_matmul_readvariableop_resourceEsequential_85_lstm_256_lstm_cell_376_matmul_1_readvariableop_resourceDsequential_85_lstm_256_lstm_cell_376_biasadd_readvariableop_resource*
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
)sequential_85_lstm_256_while_body_2280731*5
cond-R+
)sequential_85_lstm_256_while_cond_2280730*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_85/lstm_256/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_85/lstm_256/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_85/lstm_256/while:output:3Psequential_85/lstm_256/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_85/lstm_256/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_85/lstm_256/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_85/lstm_256/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_85/lstm_256/strided_slice_3StridedSliceBsequential_85/lstm_256/TensorArrayV2Stack/TensorListStack:tensor:05sequential_85/lstm_256/strided_slice_3/stack:output:07sequential_85/lstm_256/strided_slice_3/stack_1:output:07sequential_85/lstm_256/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_85/lstm_256/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_85/lstm_256/transpose_1	TransposeBsequential_85/lstm_256/TensorArrayV2Stack/TensorListStack:tensor:00sequential_85/lstm_256/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_85/lstm_256/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_85/lstm_257/ShapeShape&sequential_85/lstm_256/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_85/lstm_257/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_85/lstm_257/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_85/lstm_257/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_85/lstm_257/strided_sliceStridedSlice%sequential_85/lstm_257/Shape:output:03sequential_85/lstm_257/strided_slice/stack:output:05sequential_85/lstm_257/strided_slice/stack_1:output:05sequential_85/lstm_257/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_85/lstm_257/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_85/lstm_257/zeros/packedPack-sequential_85/lstm_257/strided_slice:output:0.sequential_85/lstm_257/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_85/lstm_257/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_85/lstm_257/zerosFill,sequential_85/lstm_257/zeros/packed:output:0+sequential_85/lstm_257/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_85/lstm_257/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_85/lstm_257/zeros_1/packedPack-sequential_85/lstm_257/strided_slice:output:00sequential_85/lstm_257/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_85/lstm_257/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_85/lstm_257/zeros_1Fill.sequential_85/lstm_257/zeros_1/packed:output:0-sequential_85/lstm_257/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_85/lstm_257/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_85/lstm_257/transpose	Transpose&sequential_85/lstm_256/transpose_1:y:0.sequential_85/lstm_257/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_85/lstm_257/Shape_1Shape$sequential_85/lstm_257/transpose:y:0*
T0*
_output_shapes
:v
,sequential_85/lstm_257/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_85/lstm_257/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_85/lstm_257/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_85/lstm_257/strided_slice_1StridedSlice'sequential_85/lstm_257/Shape_1:output:05sequential_85/lstm_257/strided_slice_1/stack:output:07sequential_85/lstm_257/strided_slice_1/stack_1:output:07sequential_85/lstm_257/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_85/lstm_257/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_85/lstm_257/TensorArrayV2TensorListReserve;sequential_85/lstm_257/TensorArrayV2/element_shape:output:0/sequential_85/lstm_257/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_85/lstm_257/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_85/lstm_257/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_85/lstm_257/transpose:y:0Usequential_85/lstm_257/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_85/lstm_257/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_85/lstm_257/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_85/lstm_257/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_85/lstm_257/strided_slice_2StridedSlice$sequential_85/lstm_257/transpose:y:05sequential_85/lstm_257/strided_slice_2/stack:output:07sequential_85/lstm_257/strided_slice_2/stack_1:output:07sequential_85/lstm_257/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_85/lstm_257/lstm_cell_377/MatMul/ReadVariableOpReadVariableOpCsequential_85_lstm_257_lstm_cell_377_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_85/lstm_257/lstm_cell_377/MatMulMatMul/sequential_85/lstm_257/strided_slice_2:output:0Bsequential_85/lstm_257/lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_85/lstm_257/lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOpEsequential_85_lstm_257_lstm_cell_377_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_85/lstm_257/lstm_cell_377/MatMul_1MatMul%sequential_85/lstm_257/zeros:output:0Dsequential_85/lstm_257/lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_85/lstm_257/lstm_cell_377/addAddV25sequential_85/lstm_257/lstm_cell_377/MatMul:product:07sequential_85/lstm_257/lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_85/lstm_257/lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOpDsequential_85_lstm_257_lstm_cell_377_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_85/lstm_257/lstm_cell_377/BiasAddBiasAdd,sequential_85/lstm_257/lstm_cell_377/add:z:0Csequential_85/lstm_257/lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_85/lstm_257/lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_85/lstm_257/lstm_cell_377/splitSplit=sequential_85/lstm_257/lstm_cell_377/split/split_dim:output:05sequential_85/lstm_257/lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_85/lstm_257/lstm_cell_377/SigmoidSigmoid3sequential_85/lstm_257/lstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_85/lstm_257/lstm_cell_377/Sigmoid_1Sigmoid3sequential_85/lstm_257/lstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_85/lstm_257/lstm_cell_377/mulMul2sequential_85/lstm_257/lstm_cell_377/Sigmoid_1:y:0'sequential_85/lstm_257/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_85/lstm_257/lstm_cell_377/ReluRelu3sequential_85/lstm_257/lstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_85/lstm_257/lstm_cell_377/mul_1Mul0sequential_85/lstm_257/lstm_cell_377/Sigmoid:y:07sequential_85/lstm_257/lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_85/lstm_257/lstm_cell_377/add_1AddV2,sequential_85/lstm_257/lstm_cell_377/mul:z:0.sequential_85/lstm_257/lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_85/lstm_257/lstm_cell_377/Sigmoid_2Sigmoid3sequential_85/lstm_257/lstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_85/lstm_257/lstm_cell_377/Relu_1Relu.sequential_85/lstm_257/lstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_85/lstm_257/lstm_cell_377/mul_2Mul2sequential_85/lstm_257/lstm_cell_377/Sigmoid_2:y:09sequential_85/lstm_257/lstm_cell_377/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_85/lstm_257/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_85/lstm_257/TensorArrayV2_1TensorListReserve=sequential_85/lstm_257/TensorArrayV2_1/element_shape:output:0/sequential_85/lstm_257/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_85/lstm_257/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_85/lstm_257/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_85/lstm_257/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_85/lstm_257/whileWhile2sequential_85/lstm_257/while/loop_counter:output:08sequential_85/lstm_257/while/maximum_iterations:output:0$sequential_85/lstm_257/time:output:0/sequential_85/lstm_257/TensorArrayV2_1:handle:0%sequential_85/lstm_257/zeros:output:0'sequential_85/lstm_257/zeros_1:output:0/sequential_85/lstm_257/strided_slice_1:output:0Nsequential_85/lstm_257/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_85_lstm_257_lstm_cell_377_matmul_readvariableop_resourceEsequential_85_lstm_257_lstm_cell_377_matmul_1_readvariableop_resourceDsequential_85_lstm_257_lstm_cell_377_biasadd_readvariableop_resource*
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
)sequential_85_lstm_257_while_body_2280870*5
cond-R+
)sequential_85_lstm_257_while_cond_2280869*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_85/lstm_257/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_85/lstm_257/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_85/lstm_257/while:output:3Psequential_85/lstm_257/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_85/lstm_257/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_85/lstm_257/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_85/lstm_257/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_85/lstm_257/strided_slice_3StridedSliceBsequential_85/lstm_257/TensorArrayV2Stack/TensorListStack:tensor:05sequential_85/lstm_257/strided_slice_3/stack:output:07sequential_85/lstm_257/strided_slice_3/stack_1:output:07sequential_85/lstm_257/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_85/lstm_257/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_85/lstm_257/transpose_1	TransposeBsequential_85/lstm_257/TensorArrayV2Stack/TensorListStack:tensor:00sequential_85/lstm_257/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_85/lstm_257/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_85/dense_85/MatMul/ReadVariableOpReadVariableOp5sequential_85_dense_85_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_85/dense_85/MatMulMatMul/sequential_85/lstm_257/strided_slice_3:output:04sequential_85/dense_85/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_85/dense_85/BiasAdd/ReadVariableOpReadVariableOp6sequential_85_dense_85_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_85/dense_85/BiasAddBiasAdd'sequential_85/dense_85/MatMul:product:05sequential_85/dense_85/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_85/dense_85/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_85/dense_85/BiasAdd/ReadVariableOp-^sequential_85/dense_85/MatMul/ReadVariableOp<^sequential_85/lstm_255/lstm_cell_375/BiasAdd/ReadVariableOp;^sequential_85/lstm_255/lstm_cell_375/MatMul/ReadVariableOp=^sequential_85/lstm_255/lstm_cell_375/MatMul_1/ReadVariableOp^sequential_85/lstm_255/while<^sequential_85/lstm_256/lstm_cell_376/BiasAdd/ReadVariableOp;^sequential_85/lstm_256/lstm_cell_376/MatMul/ReadVariableOp=^sequential_85/lstm_256/lstm_cell_376/MatMul_1/ReadVariableOp^sequential_85/lstm_256/while<^sequential_85/lstm_257/lstm_cell_377/BiasAdd/ReadVariableOp;^sequential_85/lstm_257/lstm_cell_377/MatMul/ReadVariableOp=^sequential_85/lstm_257/lstm_cell_377/MatMul_1/ReadVariableOp^sequential_85/lstm_257/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_85/dense_85/BiasAdd/ReadVariableOp-sequential_85/dense_85/BiasAdd/ReadVariableOp2\
,sequential_85/dense_85/MatMul/ReadVariableOp,sequential_85/dense_85/MatMul/ReadVariableOp2z
;sequential_85/lstm_255/lstm_cell_375/BiasAdd/ReadVariableOp;sequential_85/lstm_255/lstm_cell_375/BiasAdd/ReadVariableOp2x
:sequential_85/lstm_255/lstm_cell_375/MatMul/ReadVariableOp:sequential_85/lstm_255/lstm_cell_375/MatMul/ReadVariableOp2|
<sequential_85/lstm_255/lstm_cell_375/MatMul_1/ReadVariableOp<sequential_85/lstm_255/lstm_cell_375/MatMul_1/ReadVariableOp2<
sequential_85/lstm_255/whilesequential_85/lstm_255/while2z
;sequential_85/lstm_256/lstm_cell_376/BiasAdd/ReadVariableOp;sequential_85/lstm_256/lstm_cell_376/BiasAdd/ReadVariableOp2x
:sequential_85/lstm_256/lstm_cell_376/MatMul/ReadVariableOp:sequential_85/lstm_256/lstm_cell_376/MatMul/ReadVariableOp2|
<sequential_85/lstm_256/lstm_cell_376/MatMul_1/ReadVariableOp<sequential_85/lstm_256/lstm_cell_376/MatMul_1/ReadVariableOp2<
sequential_85/lstm_256/whilesequential_85/lstm_256/while2z
;sequential_85/lstm_257/lstm_cell_377/BiasAdd/ReadVariableOp;sequential_85/lstm_257/lstm_cell_377/BiasAdd/ReadVariableOp2x
:sequential_85/lstm_257/lstm_cell_377/MatMul/ReadVariableOp:sequential_85/lstm_257/lstm_cell_377/MatMul/ReadVariableOp2|
<sequential_85/lstm_257/lstm_cell_377/MatMul_1/ReadVariableOp<sequential_85/lstm_257/lstm_cell_377/MatMul_1/ReadVariableOp2<
sequential_85/lstm_257/whilesequential_85/lstm_257/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_255_input
?

?
lstm_255_while_cond_2283332.
*lstm_255_while_lstm_255_while_loop_counter4
0lstm_255_while_lstm_255_while_maximum_iterations
lstm_255_while_placeholder 
lstm_255_while_placeholder_1 
lstm_255_while_placeholder_2 
lstm_255_while_placeholder_30
,lstm_255_while_less_lstm_255_strided_slice_1G
Clstm_255_while_lstm_255_while_cond_2283332___redundant_placeholder0G
Clstm_255_while_lstm_255_while_cond_2283332___redundant_placeholder1G
Clstm_255_while_lstm_255_while_cond_2283332___redundant_placeholder2G
Clstm_255_while_lstm_255_while_cond_2283332___redundant_placeholder3
lstm_255_while_identity
?
lstm_255/while/LessLesslstm_255_while_placeholder,lstm_255_while_less_lstm_255_strided_slice_1*
T0*
_output_shapes
: ]
lstm_255/while/IdentityIdentitylstm_255/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_255_while_identity lstm_255/while/Identity:output:0*(
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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2284744

inputs?
,lstm_cell_375_matmul_readvariableop_resource:	?A
.lstm_cell_375_matmul_1_readvariableop_resource:	d?<
-lstm_cell_375_biasadd_readvariableop_resource:	?
identity??$lstm_cell_375/BiasAdd/ReadVariableOp?#lstm_cell_375/MatMul/ReadVariableOp?%lstm_cell_375/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_375/MatMul/ReadVariableOpReadVariableOp,lstm_cell_375_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_375/MatMulMatMulstrided_slice_2:output:0+lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_375_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_375/MatMul_1MatMulzeros:output:0-lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_375/addAddV2lstm_cell_375/MatMul:product:0 lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_375_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_375/BiasAddBiasAddlstm_cell_375/add:z:0,lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_375/splitSplit&lstm_cell_375/split/split_dim:output:0lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_375/SigmoidSigmoidlstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_375/Sigmoid_1Sigmoidlstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_375/mulMullstm_cell_375/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_375/ReluRelulstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_375/mul_1Mullstm_cell_375/Sigmoid:y:0 lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_375/add_1AddV2lstm_cell_375/mul:z:0lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_375/Sigmoid_2Sigmoidlstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_375/Relu_1Relulstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_375/mul_2Mullstm_cell_375/Sigmoid_2:y:0"lstm_cell_375/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_375_matmul_readvariableop_resource.lstm_cell_375_matmul_1_readvariableop_resource-lstm_cell_375_biasadd_readvariableop_resource*
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
while_body_2284660*
condR
while_cond_2284659*K
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
NoOpNoOp%^lstm_cell_375/BiasAdd/ReadVariableOp$^lstm_cell_375/MatMul/ReadVariableOp&^lstm_cell_375/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_375/BiasAdd/ReadVariableOp$lstm_cell_375/BiasAdd/ReadVariableOp2J
#lstm_cell_375/MatMul/ReadVariableOp#lstm_cell_375/MatMul/ReadVariableOp2N
%lstm_cell_375/MatMul_1/ReadVariableOp%lstm_cell_375/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_257_layer_call_and_return_conditional_losses_2282675

inputs>
,lstm_cell_377_matmul_readvariableop_resource:2(@
.lstm_cell_377_matmul_1_readvariableop_resource:
(;
-lstm_cell_377_biasadd_readvariableop_resource:(
identity??$lstm_cell_377/BiasAdd/ReadVariableOp?#lstm_cell_377/MatMul/ReadVariableOp?%lstm_cell_377/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_377/MatMul/ReadVariableOpReadVariableOp,lstm_cell_377_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_377/MatMulMatMulstrided_slice_2:output:0+lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_377_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_377/MatMul_1MatMulzeros:output:0-lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_377/addAddV2lstm_cell_377/MatMul:product:0 lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_377_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_377/BiasAddBiasAddlstm_cell_377/add:z:0,lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_377/splitSplit&lstm_cell_377/split/split_dim:output:0lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_377/SigmoidSigmoidlstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_377/Sigmoid_1Sigmoidlstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_377/mulMullstm_cell_377/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_377/ReluRelulstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_377/mul_1Mullstm_cell_377/Sigmoid:y:0 lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_377/add_1AddV2lstm_cell_377/mul:z:0lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_377/Sigmoid_2Sigmoidlstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_377/Relu_1Relulstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_377/mul_2Mullstm_cell_377/Sigmoid_2:y:0"lstm_cell_377/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_377_matmul_readvariableop_resource.lstm_cell_377_matmul_1_readvariableop_resource-lstm_cell_377_biasadd_readvariableop_resource*
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
while_body_2282591*
condR
while_cond_2282590*K
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
NoOpNoOp%^lstm_cell_377/BiasAdd/ReadVariableOp$^lstm_cell_377/MatMul/ReadVariableOp&^lstm_cell_377/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_377/BiasAdd/ReadVariableOp$lstm_cell_377/BiasAdd/ReadVariableOp2J
#lstm_cell_377/MatMul/ReadVariableOp#lstm_cell_377/MatMul/ReadVariableOp2N
%lstm_cell_377/MatMul_1/ReadVariableOp%lstm_cell_377/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_376_layer_call_and_return_conditional_losses_2286191

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
while_cond_2282224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2282224___redundant_placeholder05
1while_while_cond_2282224___redundant_placeholder15
1while_while_cond_2282224___redundant_placeholder25
1while_while_cond_2282224___redundant_placeholder3
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
*__inference_lstm_256_layer_call_fn_2284788

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
E__inference_lstm_256_layer_call_and_return_conditional_losses_2282840s
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
)sequential_85_lstm_255_while_body_2280592J
Fsequential_85_lstm_255_while_sequential_85_lstm_255_while_loop_counterP
Lsequential_85_lstm_255_while_sequential_85_lstm_255_while_maximum_iterations,
(sequential_85_lstm_255_while_placeholder.
*sequential_85_lstm_255_while_placeholder_1.
*sequential_85_lstm_255_while_placeholder_2.
*sequential_85_lstm_255_while_placeholder_3I
Esequential_85_lstm_255_while_sequential_85_lstm_255_strided_slice_1_0?
?sequential_85_lstm_255_while_tensorarrayv2read_tensorlistgetitem_sequential_85_lstm_255_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_85_lstm_255_while_lstm_cell_375_matmul_readvariableop_resource_0:	?`
Msequential_85_lstm_255_while_lstm_cell_375_matmul_1_readvariableop_resource_0:	d?[
Lsequential_85_lstm_255_while_lstm_cell_375_biasadd_readvariableop_resource_0:	?)
%sequential_85_lstm_255_while_identity+
'sequential_85_lstm_255_while_identity_1+
'sequential_85_lstm_255_while_identity_2+
'sequential_85_lstm_255_while_identity_3+
'sequential_85_lstm_255_while_identity_4+
'sequential_85_lstm_255_while_identity_5G
Csequential_85_lstm_255_while_sequential_85_lstm_255_strided_slice_1?
sequential_85_lstm_255_while_tensorarrayv2read_tensorlistgetitem_sequential_85_lstm_255_tensorarrayunstack_tensorlistfromtensor\
Isequential_85_lstm_255_while_lstm_cell_375_matmul_readvariableop_resource:	?^
Ksequential_85_lstm_255_while_lstm_cell_375_matmul_1_readvariableop_resource:	d?Y
Jsequential_85_lstm_255_while_lstm_cell_375_biasadd_readvariableop_resource:	???Asequential_85/lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOp?@sequential_85/lstm_255/while/lstm_cell_375/MatMul/ReadVariableOp?Bsequential_85/lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOp?
Nsequential_85/lstm_255/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_85/lstm_255/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_85_lstm_255_while_tensorarrayv2read_tensorlistgetitem_sequential_85_lstm_255_tensorarrayunstack_tensorlistfromtensor_0(sequential_85_lstm_255_while_placeholderWsequential_85/lstm_255/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_85/lstm_255/while/lstm_cell_375/MatMul/ReadVariableOpReadVariableOpKsequential_85_lstm_255_while_lstm_cell_375_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_85/lstm_255/while/lstm_cell_375/MatMulMatMulGsequential_85/lstm_255/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_85/lstm_255/while/lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_85/lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOpMsequential_85_lstm_255_while_lstm_cell_375_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_85/lstm_255/while/lstm_cell_375/MatMul_1MatMul*sequential_85_lstm_255_while_placeholder_2Jsequential_85/lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_85/lstm_255/while/lstm_cell_375/addAddV2;sequential_85/lstm_255/while/lstm_cell_375/MatMul:product:0=sequential_85/lstm_255/while/lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_85/lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOpLsequential_85_lstm_255_while_lstm_cell_375_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_85/lstm_255/while/lstm_cell_375/BiasAddBiasAdd2sequential_85/lstm_255/while/lstm_cell_375/add:z:0Isequential_85/lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_85/lstm_255/while/lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_85/lstm_255/while/lstm_cell_375/splitSplitCsequential_85/lstm_255/while/lstm_cell_375/split/split_dim:output:0;sequential_85/lstm_255/while/lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_85/lstm_255/while/lstm_cell_375/SigmoidSigmoid9sequential_85/lstm_255/while/lstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_85/lstm_255/while/lstm_cell_375/Sigmoid_1Sigmoid9sequential_85/lstm_255/while/lstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_85/lstm_255/while/lstm_cell_375/mulMul8sequential_85/lstm_255/while/lstm_cell_375/Sigmoid_1:y:0*sequential_85_lstm_255_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_85/lstm_255/while/lstm_cell_375/ReluRelu9sequential_85/lstm_255/while/lstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_85/lstm_255/while/lstm_cell_375/mul_1Mul6sequential_85/lstm_255/while/lstm_cell_375/Sigmoid:y:0=sequential_85/lstm_255/while/lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_85/lstm_255/while/lstm_cell_375/add_1AddV22sequential_85/lstm_255/while/lstm_cell_375/mul:z:04sequential_85/lstm_255/while/lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_85/lstm_255/while/lstm_cell_375/Sigmoid_2Sigmoid9sequential_85/lstm_255/while/lstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_85/lstm_255/while/lstm_cell_375/Relu_1Relu4sequential_85/lstm_255/while/lstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_85/lstm_255/while/lstm_cell_375/mul_2Mul8sequential_85/lstm_255/while/lstm_cell_375/Sigmoid_2:y:0?sequential_85/lstm_255/while/lstm_cell_375/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_85/lstm_255/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_85_lstm_255_while_placeholder_1(sequential_85_lstm_255_while_placeholder4sequential_85/lstm_255/while/lstm_cell_375/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_85/lstm_255/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_85/lstm_255/while/addAddV2(sequential_85_lstm_255_while_placeholder+sequential_85/lstm_255/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_85/lstm_255/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_85/lstm_255/while/add_1AddV2Fsequential_85_lstm_255_while_sequential_85_lstm_255_while_loop_counter-sequential_85/lstm_255/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_85/lstm_255/while/IdentityIdentity&sequential_85/lstm_255/while/add_1:z:0"^sequential_85/lstm_255/while/NoOp*
T0*
_output_shapes
: ?
'sequential_85/lstm_255/while/Identity_1IdentityLsequential_85_lstm_255_while_sequential_85_lstm_255_while_maximum_iterations"^sequential_85/lstm_255/while/NoOp*
T0*
_output_shapes
: ?
'sequential_85/lstm_255/while/Identity_2Identity$sequential_85/lstm_255/while/add:z:0"^sequential_85/lstm_255/while/NoOp*
T0*
_output_shapes
: ?
'sequential_85/lstm_255/while/Identity_3IdentityQsequential_85/lstm_255/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_85/lstm_255/while/NoOp*
T0*
_output_shapes
: ?
'sequential_85/lstm_255/while/Identity_4Identity4sequential_85/lstm_255/while/lstm_cell_375/mul_2:z:0"^sequential_85/lstm_255/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_85/lstm_255/while/Identity_5Identity4sequential_85/lstm_255/while/lstm_cell_375/add_1:z:0"^sequential_85/lstm_255/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_85/lstm_255/while/NoOpNoOpB^sequential_85/lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOpA^sequential_85/lstm_255/while/lstm_cell_375/MatMul/ReadVariableOpC^sequential_85/lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_85_lstm_255_while_identity.sequential_85/lstm_255/while/Identity:output:0"[
'sequential_85_lstm_255_while_identity_10sequential_85/lstm_255/while/Identity_1:output:0"[
'sequential_85_lstm_255_while_identity_20sequential_85/lstm_255/while/Identity_2:output:0"[
'sequential_85_lstm_255_while_identity_30sequential_85/lstm_255/while/Identity_3:output:0"[
'sequential_85_lstm_255_while_identity_40sequential_85/lstm_255/while/Identity_4:output:0"[
'sequential_85_lstm_255_while_identity_50sequential_85/lstm_255/while/Identity_5:output:0"?
Jsequential_85_lstm_255_while_lstm_cell_375_biasadd_readvariableop_resourceLsequential_85_lstm_255_while_lstm_cell_375_biasadd_readvariableop_resource_0"?
Ksequential_85_lstm_255_while_lstm_cell_375_matmul_1_readvariableop_resourceMsequential_85_lstm_255_while_lstm_cell_375_matmul_1_readvariableop_resource_0"?
Isequential_85_lstm_255_while_lstm_cell_375_matmul_readvariableop_resourceKsequential_85_lstm_255_while_lstm_cell_375_matmul_readvariableop_resource_0"?
Csequential_85_lstm_255_while_sequential_85_lstm_255_strided_slice_1Esequential_85_lstm_255_while_sequential_85_lstm_255_strided_slice_1_0"?
sequential_85_lstm_255_while_tensorarrayv2read_tensorlistgetitem_sequential_85_lstm_255_tensorarrayunstack_tensorlistfromtensor?sequential_85_lstm_255_while_tensorarrayv2read_tensorlistgetitem_sequential_85_lstm_255_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_85/lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOpAsequential_85/lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOp2?
@sequential_85/lstm_255/while/lstm_cell_375/MatMul/ReadVariableOp@sequential_85/lstm_255/while/lstm_cell_375/MatMul/ReadVariableOp2?
Bsequential_85/lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOpBsequential_85/lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_256_while_cond_2283471.
*lstm_256_while_lstm_256_while_loop_counter4
0lstm_256_while_lstm_256_while_maximum_iterations
lstm_256_while_placeholder 
lstm_256_while_placeholder_1 
lstm_256_while_placeholder_2 
lstm_256_while_placeholder_30
,lstm_256_while_less_lstm_256_strided_slice_1G
Clstm_256_while_lstm_256_while_cond_2283471___redundant_placeholder0G
Clstm_256_while_lstm_256_while_cond_2283471___redundant_placeholder1G
Clstm_256_while_lstm_256_while_cond_2283471___redundant_placeholder2G
Clstm_256_while_lstm_256_while_cond_2283471___redundant_placeholder3
lstm_256_while_identity
?
lstm_256/while/LessLesslstm_256_while_placeholder,lstm_256_while_less_lstm_256_strided_slice_1*
T0*
_output_shapes
: ]
lstm_256/while/IdentityIdentitylstm_256/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_256_while_identity lstm_256/while/Identity:output:0*(
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
/__inference_lstm_cell_376_layer_call_fn_2286110

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
J__inference_lstm_cell_376_layer_call_and_return_conditional_losses_2281377o
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
?C
?

lstm_256_while_body_2283472.
*lstm_256_while_lstm_256_while_loop_counter4
0lstm_256_while_lstm_256_while_maximum_iterations
lstm_256_while_placeholder 
lstm_256_while_placeholder_1 
lstm_256_while_placeholder_2 
lstm_256_while_placeholder_3-
)lstm_256_while_lstm_256_strided_slice_1_0i
elstm_256_while_tensorarrayv2read_tensorlistgetitem_lstm_256_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_256_while_lstm_cell_376_matmul_readvariableop_resource_0:	d?R
?lstm_256_while_lstm_cell_376_matmul_1_readvariableop_resource_0:	2?M
>lstm_256_while_lstm_cell_376_biasadd_readvariableop_resource_0:	?
lstm_256_while_identity
lstm_256_while_identity_1
lstm_256_while_identity_2
lstm_256_while_identity_3
lstm_256_while_identity_4
lstm_256_while_identity_5+
'lstm_256_while_lstm_256_strided_slice_1g
clstm_256_while_tensorarrayv2read_tensorlistgetitem_lstm_256_tensorarrayunstack_tensorlistfromtensorN
;lstm_256_while_lstm_cell_376_matmul_readvariableop_resource:	d?P
=lstm_256_while_lstm_cell_376_matmul_1_readvariableop_resource:	2?K
<lstm_256_while_lstm_cell_376_biasadd_readvariableop_resource:	???3lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOp?2lstm_256/while/lstm_cell_376/MatMul/ReadVariableOp?4lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOp?
@lstm_256/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_256/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_256_while_tensorarrayv2read_tensorlistgetitem_lstm_256_tensorarrayunstack_tensorlistfromtensor_0lstm_256_while_placeholderIlstm_256/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_256/while/lstm_cell_376/MatMul/ReadVariableOpReadVariableOp=lstm_256_while_lstm_cell_376_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_256/while/lstm_cell_376/MatMulMatMul9lstm_256/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_256/while/lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOp?lstm_256_while_lstm_cell_376_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_256/while/lstm_cell_376/MatMul_1MatMullstm_256_while_placeholder_2<lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_256/while/lstm_cell_376/addAddV2-lstm_256/while/lstm_cell_376/MatMul:product:0/lstm_256/while/lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOp>lstm_256_while_lstm_cell_376_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_256/while/lstm_cell_376/BiasAddBiasAdd$lstm_256/while/lstm_cell_376/add:z:0;lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_256/while/lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_256/while/lstm_cell_376/splitSplit5lstm_256/while/lstm_cell_376/split/split_dim:output:0-lstm_256/while/lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_256/while/lstm_cell_376/SigmoidSigmoid+lstm_256/while/lstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_256/while/lstm_cell_376/Sigmoid_1Sigmoid+lstm_256/while/lstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_256/while/lstm_cell_376/mulMul*lstm_256/while/lstm_cell_376/Sigmoid_1:y:0lstm_256_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_256/while/lstm_cell_376/ReluRelu+lstm_256/while/lstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_256/while/lstm_cell_376/mul_1Mul(lstm_256/while/lstm_cell_376/Sigmoid:y:0/lstm_256/while/lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_256/while/lstm_cell_376/add_1AddV2$lstm_256/while/lstm_cell_376/mul:z:0&lstm_256/while/lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_256/while/lstm_cell_376/Sigmoid_2Sigmoid+lstm_256/while/lstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_256/while/lstm_cell_376/Relu_1Relu&lstm_256/while/lstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_256/while/lstm_cell_376/mul_2Mul*lstm_256/while/lstm_cell_376/Sigmoid_2:y:01lstm_256/while/lstm_cell_376/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_256/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_256_while_placeholder_1lstm_256_while_placeholder&lstm_256/while/lstm_cell_376/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_256/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_256/while/addAddV2lstm_256_while_placeholderlstm_256/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_256/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_256/while/add_1AddV2*lstm_256_while_lstm_256_while_loop_counterlstm_256/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_256/while/IdentityIdentitylstm_256/while/add_1:z:0^lstm_256/while/NoOp*
T0*
_output_shapes
: ?
lstm_256/while/Identity_1Identity0lstm_256_while_lstm_256_while_maximum_iterations^lstm_256/while/NoOp*
T0*
_output_shapes
: t
lstm_256/while/Identity_2Identitylstm_256/while/add:z:0^lstm_256/while/NoOp*
T0*
_output_shapes
: ?
lstm_256/while/Identity_3IdentityClstm_256/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_256/while/NoOp*
T0*
_output_shapes
: ?
lstm_256/while/Identity_4Identity&lstm_256/while/lstm_cell_376/mul_2:z:0^lstm_256/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_256/while/Identity_5Identity&lstm_256/while/lstm_cell_376/add_1:z:0^lstm_256/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_256/while/NoOpNoOp4^lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOp3^lstm_256/while/lstm_cell_376/MatMul/ReadVariableOp5^lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_256_while_identity lstm_256/while/Identity:output:0"?
lstm_256_while_identity_1"lstm_256/while/Identity_1:output:0"?
lstm_256_while_identity_2"lstm_256/while/Identity_2:output:0"?
lstm_256_while_identity_3"lstm_256/while/Identity_3:output:0"?
lstm_256_while_identity_4"lstm_256/while/Identity_4:output:0"?
lstm_256_while_identity_5"lstm_256/while/Identity_5:output:0"T
'lstm_256_while_lstm_256_strided_slice_1)lstm_256_while_lstm_256_strided_slice_1_0"~
<lstm_256_while_lstm_cell_376_biasadd_readvariableop_resource>lstm_256_while_lstm_cell_376_biasadd_readvariableop_resource_0"?
=lstm_256_while_lstm_cell_376_matmul_1_readvariableop_resource?lstm_256_while_lstm_cell_376_matmul_1_readvariableop_resource_0"|
;lstm_256_while_lstm_cell_376_matmul_readvariableop_resource=lstm_256_while_lstm_cell_376_matmul_readvariableop_resource_0"?
clstm_256_while_tensorarrayv2read_tensorlistgetitem_lstm_256_tensorarrayunstack_tensorlistfromtensorelstm_256_while_tensorarrayv2read_tensorlistgetitem_lstm_256_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOp3lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOp2h
2lstm_256/while/lstm_cell_376/MatMul/ReadVariableOp2lstm_256/while/lstm_cell_376/MatMul/ReadVariableOp2l
4lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOp4lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2282159

inputs?
,lstm_cell_375_matmul_readvariableop_resource:	?A
.lstm_cell_375_matmul_1_readvariableop_resource:	d?<
-lstm_cell_375_biasadd_readvariableop_resource:	?
identity??$lstm_cell_375/BiasAdd/ReadVariableOp?#lstm_cell_375/MatMul/ReadVariableOp?%lstm_cell_375/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_375/MatMul/ReadVariableOpReadVariableOp,lstm_cell_375_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_375/MatMulMatMulstrided_slice_2:output:0+lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_375_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_375/MatMul_1MatMulzeros:output:0-lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_375/addAddV2lstm_cell_375/MatMul:product:0 lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_375_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_375/BiasAddBiasAddlstm_cell_375/add:z:0,lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_375/splitSplit&lstm_cell_375/split/split_dim:output:0lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_375/SigmoidSigmoidlstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_375/Sigmoid_1Sigmoidlstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_375/mulMullstm_cell_375/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_375/ReluRelulstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_375/mul_1Mullstm_cell_375/Sigmoid:y:0 lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_375/add_1AddV2lstm_cell_375/mul:z:0lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_375/Sigmoid_2Sigmoidlstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_375/Relu_1Relulstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_375/mul_2Mullstm_cell_375/Sigmoid_2:y:0"lstm_cell_375/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_375_matmul_readvariableop_resource.lstm_cell_375_matmul_1_readvariableop_resource-lstm_cell_375_biasadd_readvariableop_resource*
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
while_body_2282075*
condR
while_cond_2282074*K
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
NoOpNoOp%^lstm_cell_375/BiasAdd/ReadVariableOp$^lstm_cell_375/MatMul/ReadVariableOp&^lstm_cell_375/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_375/BiasAdd/ReadVariableOp$lstm_cell_375/BiasAdd/ReadVariableOp2J
#lstm_cell_375/MatMul/ReadVariableOp#lstm_cell_375/MatMul/ReadVariableOp2N
%lstm_cell_375/MatMul_1/ReadVariableOp%lstm_cell_375/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?8
?
while_body_2282075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_375_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_375_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_375_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_375_matmul_readvariableop_resource:	?G
4while_lstm_cell_375_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_375_biasadd_readvariableop_resource:	???*while/lstm_cell_375/BiasAdd/ReadVariableOp?)while/lstm_cell_375/MatMul/ReadVariableOp?+while/lstm_cell_375/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_375/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_375_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_375/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_375_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_375/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_375/addAddV2$while/lstm_cell_375/MatMul:product:0&while/lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_375_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_375/BiasAddBiasAddwhile/lstm_cell_375/add:z:02while/lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_375/splitSplit,while/lstm_cell_375/split/split_dim:output:0$while/lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_375/SigmoidSigmoid"while/lstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_375/Sigmoid_1Sigmoid"while/lstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mulMul!while/lstm_cell_375/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_375/ReluRelu"while/lstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mul_1Mulwhile/lstm_cell_375/Sigmoid:y:0&while/lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/add_1AddV2while/lstm_cell_375/mul:z:0while/lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_375/Sigmoid_2Sigmoid"while/lstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_375/Relu_1Reluwhile/lstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mul_2Mul!while/lstm_cell_375/Sigmoid_2:y:0(while/lstm_cell_375/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_375/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_375/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_375/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_375/BiasAdd/ReadVariableOp*^while/lstm_cell_375/MatMul/ReadVariableOp,^while/lstm_cell_375/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_375_biasadd_readvariableop_resource5while_lstm_cell_375_biasadd_readvariableop_resource_0"n
4while_lstm_cell_375_matmul_1_readvariableop_resource6while_lstm_cell_375_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_375_matmul_readvariableop_resource4while_lstm_cell_375_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_375/BiasAdd/ReadVariableOp*while/lstm_cell_375/BiasAdd/ReadVariableOp2V
)while/lstm_cell_375/MatMul/ReadVariableOp)while/lstm_cell_375/MatMul/ReadVariableOp2Z
+while/lstm_cell_375/MatMul_1/ReadVariableOp+while/lstm_cell_375/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_85_layer_call_and_return_conditional_losses_2283185
lstm_255_input#
lstm_255_2283158:	?#
lstm_255_2283160:	d?
lstm_255_2283162:	?#
lstm_256_2283165:	d?#
lstm_256_2283167:	2?
lstm_256_2283169:	?"
lstm_257_2283172:2("
lstm_257_2283174:
(
lstm_257_2283176:("
dense_85_2283179:

dense_85_2283181:
identity?? dense_85/StatefulPartitionedCall? lstm_255/StatefulPartitionedCall? lstm_256/StatefulPartitionedCall? lstm_257/StatefulPartitionedCall?
 lstm_255/StatefulPartitionedCallStatefulPartitionedCalllstm_255_inputlstm_255_2283158lstm_255_2283160lstm_255_2283162*
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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2283005?
 lstm_256/StatefulPartitionedCallStatefulPartitionedCall)lstm_255/StatefulPartitionedCall:output:0lstm_256_2283165lstm_256_2283167lstm_256_2283169*
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
E__inference_lstm_256_layer_call_and_return_conditional_losses_2282840?
 lstm_257/StatefulPartitionedCallStatefulPartitionedCall)lstm_256/StatefulPartitionedCall:output:0lstm_257_2283172lstm_257_2283174lstm_257_2283176*
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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2282675?
 dense_85/StatefulPartitionedCallStatefulPartitionedCall)lstm_257/StatefulPartitionedCall:output:0dense_85_2283179dense_85_2283181*
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
E__inference_dense_85_layer_call_and_return_conditional_losses_2282477x
IdentityIdentity)dense_85/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_85/StatefulPartitionedCall!^lstm_255/StatefulPartitionedCall!^lstm_256/StatefulPartitionedCall!^lstm_257/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_85/StatefulPartitionedCall dense_85/StatefulPartitionedCall2D
 lstm_255/StatefulPartitionedCall lstm_255/StatefulPartitionedCall2D
 lstm_256/StatefulPartitionedCall lstm_256/StatefulPartitionedCall2D
 lstm_257/StatefulPartitionedCall lstm_257/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_255_input
?8
?
while_body_2282921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_375_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_375_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_375_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_375_matmul_readvariableop_resource:	?G
4while_lstm_cell_375_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_375_biasadd_readvariableop_resource:	???*while/lstm_cell_375/BiasAdd/ReadVariableOp?)while/lstm_cell_375/MatMul/ReadVariableOp?+while/lstm_cell_375/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_375/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_375_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_375/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_375_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_375/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_375/addAddV2$while/lstm_cell_375/MatMul:product:0&while/lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_375_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_375/BiasAddBiasAddwhile/lstm_cell_375/add:z:02while/lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_375/splitSplit,while/lstm_cell_375/split/split_dim:output:0$while/lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_375/SigmoidSigmoid"while/lstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_375/Sigmoid_1Sigmoid"while/lstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mulMul!while/lstm_cell_375/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_375/ReluRelu"while/lstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mul_1Mulwhile/lstm_cell_375/Sigmoid:y:0&while/lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/add_1AddV2while/lstm_cell_375/mul:z:0while/lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_375/Sigmoid_2Sigmoid"while/lstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_375/Relu_1Reluwhile/lstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mul_2Mul!while/lstm_cell_375/Sigmoid_2:y:0(while/lstm_cell_375/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_375/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_375/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_375/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_375/BiasAdd/ReadVariableOp*^while/lstm_cell_375/MatMul/ReadVariableOp,^while/lstm_cell_375/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_375_biasadd_readvariableop_resource5while_lstm_cell_375_biasadd_readvariableop_resource_0"n
4while_lstm_cell_375_matmul_1_readvariableop_resource6while_lstm_cell_375_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_375_matmul_readvariableop_resource4while_lstm_cell_375_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_375/BiasAdd/ReadVariableOp*while/lstm_cell_375/BiasAdd/ReadVariableOp2V
)while/lstm_cell_375/MatMul/ReadVariableOp)while/lstm_cell_375/MatMul/ReadVariableOp2Z
+while/lstm_cell_375/MatMul_1/ReadVariableOp+while/lstm_cell_375/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_255_layer_call_fn_2284150
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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2281301|
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
J__inference_sequential_85_layer_call_and_return_conditional_losses_2282484

inputs#
lstm_255_2282160:	?#
lstm_255_2282162:	d?
lstm_255_2282164:	?#
lstm_256_2282310:	d?#
lstm_256_2282312:	2?
lstm_256_2282314:	?"
lstm_257_2282460:2("
lstm_257_2282462:
(
lstm_257_2282464:("
dense_85_2282478:

dense_85_2282480:
identity?? dense_85/StatefulPartitionedCall? lstm_255/StatefulPartitionedCall? lstm_256/StatefulPartitionedCall? lstm_257/StatefulPartitionedCall?
 lstm_255/StatefulPartitionedCallStatefulPartitionedCallinputslstm_255_2282160lstm_255_2282162lstm_255_2282164*
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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2282159?
 lstm_256/StatefulPartitionedCallStatefulPartitionedCall)lstm_255/StatefulPartitionedCall:output:0lstm_256_2282310lstm_256_2282312lstm_256_2282314*
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
E__inference_lstm_256_layer_call_and_return_conditional_losses_2282309?
 lstm_257/StatefulPartitionedCallStatefulPartitionedCall)lstm_256/StatefulPartitionedCall:output:0lstm_257_2282460lstm_257_2282462lstm_257_2282464*
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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2282459?
 dense_85/StatefulPartitionedCallStatefulPartitionedCall)lstm_257/StatefulPartitionedCall:output:0dense_85_2282478dense_85_2282480*
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
E__inference_dense_85_layer_call_and_return_conditional_losses_2282477x
IdentityIdentity)dense_85/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_85/StatefulPartitionedCall!^lstm_255/StatefulPartitionedCall!^lstm_256/StatefulPartitionedCall!^lstm_257/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_85/StatefulPartitionedCall dense_85/StatefulPartitionedCall2D
 lstm_255/StatefulPartitionedCall lstm_255/StatefulPartitionedCall2D
 lstm_256/StatefulPartitionedCall lstm_256/StatefulPartitionedCall2D
 lstm_257/StatefulPartitionedCall lstm_257/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_376_layer_call_and_return_conditional_losses_2281377

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
?
)sequential_85_lstm_255_while_cond_2280591J
Fsequential_85_lstm_255_while_sequential_85_lstm_255_while_loop_counterP
Lsequential_85_lstm_255_while_sequential_85_lstm_255_while_maximum_iterations,
(sequential_85_lstm_255_while_placeholder.
*sequential_85_lstm_255_while_placeholder_1.
*sequential_85_lstm_255_while_placeholder_2.
*sequential_85_lstm_255_while_placeholder_3L
Hsequential_85_lstm_255_while_less_sequential_85_lstm_255_strided_slice_1c
_sequential_85_lstm_255_while_sequential_85_lstm_255_while_cond_2280591___redundant_placeholder0c
_sequential_85_lstm_255_while_sequential_85_lstm_255_while_cond_2280591___redundant_placeholder1c
_sequential_85_lstm_255_while_sequential_85_lstm_255_while_cond_2280591___redundant_placeholder2c
_sequential_85_lstm_255_while_sequential_85_lstm_255_while_cond_2280591___redundant_placeholder3)
%sequential_85_lstm_255_while_identity
?
!sequential_85/lstm_255/while/LessLess(sequential_85_lstm_255_while_placeholderHsequential_85_lstm_255_while_less_sequential_85_lstm_255_strided_slice_1*
T0*
_output_shapes
: y
%sequential_85/lstm_255/while/IdentityIdentity%sequential_85/lstm_255/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_85_lstm_255_while_identity.sequential_85/lstm_255/while/Identity:output:0*(
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
while_body_2282225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_376_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_376_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_376_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_376_matmul_readvariableop_resource:	d?G
4while_lstm_cell_376_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_376_biasadd_readvariableop_resource:	???*while/lstm_cell_376/BiasAdd/ReadVariableOp?)while/lstm_cell_376/MatMul/ReadVariableOp?+while/lstm_cell_376/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_376/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_376_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_376/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_376_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_376/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_376/addAddV2$while/lstm_cell_376/MatMul:product:0&while/lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_376_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_376/BiasAddBiasAddwhile/lstm_cell_376/add:z:02while/lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_376/splitSplit,while/lstm_cell_376/split/split_dim:output:0$while/lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_376/SigmoidSigmoid"while/lstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_376/Sigmoid_1Sigmoid"while/lstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mulMul!while/lstm_cell_376/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_376/ReluRelu"while/lstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mul_1Mulwhile/lstm_cell_376/Sigmoid:y:0&while/lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/add_1AddV2while/lstm_cell_376/mul:z:0while/lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_376/Sigmoid_2Sigmoid"while/lstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_376/Relu_1Reluwhile/lstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mul_2Mul!while/lstm_cell_376/Sigmoid_2:y:0(while/lstm_cell_376/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_376/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_376/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_376/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_376/BiasAdd/ReadVariableOp*^while/lstm_cell_376/MatMul/ReadVariableOp,^while/lstm_cell_376/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_376_biasadd_readvariableop_resource5while_lstm_cell_376_biasadd_readvariableop_resource_0"n
4while_lstm_cell_376_matmul_1_readvariableop_resource6while_lstm_cell_376_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_376_matmul_readvariableop_resource4while_lstm_cell_376_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_376/BiasAdd/ReadVariableOp*while/lstm_cell_376/BiasAdd/ReadVariableOp2V
)while/lstm_cell_376/MatMul/ReadVariableOp)while/lstm_cell_376/MatMul/ReadVariableOp2Z
+while/lstm_cell_376/MatMul_1/ReadVariableOp+while/lstm_cell_376/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2281740
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2281740___redundant_placeholder05
1while_while_cond_2281740___redundant_placeholder15
1while_while_cond_2281740___redundant_placeholder25
1while_while_cond_2281740___redundant_placeholder3
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
E__inference_lstm_256_layer_call_and_return_conditional_losses_2285074
inputs_0?
,lstm_cell_376_matmul_readvariableop_resource:	d?A
.lstm_cell_376_matmul_1_readvariableop_resource:	2?<
-lstm_cell_376_biasadd_readvariableop_resource:	?
identity??$lstm_cell_376/BiasAdd/ReadVariableOp?#lstm_cell_376/MatMul/ReadVariableOp?%lstm_cell_376/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_376/MatMul/ReadVariableOpReadVariableOp,lstm_cell_376_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_376/MatMulMatMulstrided_slice_2:output:0+lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_376_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_376/MatMul_1MatMulzeros:output:0-lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_376/addAddV2lstm_cell_376/MatMul:product:0 lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_376_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_376/BiasAddBiasAddlstm_cell_376/add:z:0,lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_376/splitSplit&lstm_cell_376/split/split_dim:output:0lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_376/SigmoidSigmoidlstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_376/Sigmoid_1Sigmoidlstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_376/mulMullstm_cell_376/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_376/ReluRelulstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_376/mul_1Mullstm_cell_376/Sigmoid:y:0 lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_376/add_1AddV2lstm_cell_376/mul:z:0lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_376/Sigmoid_2Sigmoidlstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_376/Relu_1Relulstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_376/mul_2Mullstm_cell_376/Sigmoid_2:y:0"lstm_cell_376/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_376_matmul_readvariableop_resource.lstm_cell_376_matmul_1_readvariableop_resource-lstm_cell_376_biasadd_readvariableop_resource*
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
while_body_2284990*
condR
while_cond_2284989*K
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
NoOpNoOp%^lstm_cell_376/BiasAdd/ReadVariableOp$^lstm_cell_376/MatMul/ReadVariableOp&^lstm_cell_376/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_376/BiasAdd/ReadVariableOp$lstm_cell_376/BiasAdd/ReadVariableOp2J
#lstm_cell_376/MatMul/ReadVariableOp#lstm_cell_376/MatMul/ReadVariableOp2N
%lstm_cell_376/MatMul_1/ReadVariableOp%lstm_cell_376/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_376_layer_call_and_return_conditional_losses_2286159

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
)sequential_85_lstm_257_while_body_2280870J
Fsequential_85_lstm_257_while_sequential_85_lstm_257_while_loop_counterP
Lsequential_85_lstm_257_while_sequential_85_lstm_257_while_maximum_iterations,
(sequential_85_lstm_257_while_placeholder.
*sequential_85_lstm_257_while_placeholder_1.
*sequential_85_lstm_257_while_placeholder_2.
*sequential_85_lstm_257_while_placeholder_3I
Esequential_85_lstm_257_while_sequential_85_lstm_257_strided_slice_1_0?
?sequential_85_lstm_257_while_tensorarrayv2read_tensorlistgetitem_sequential_85_lstm_257_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_85_lstm_257_while_lstm_cell_377_matmul_readvariableop_resource_0:2(_
Msequential_85_lstm_257_while_lstm_cell_377_matmul_1_readvariableop_resource_0:
(Z
Lsequential_85_lstm_257_while_lstm_cell_377_biasadd_readvariableop_resource_0:()
%sequential_85_lstm_257_while_identity+
'sequential_85_lstm_257_while_identity_1+
'sequential_85_lstm_257_while_identity_2+
'sequential_85_lstm_257_while_identity_3+
'sequential_85_lstm_257_while_identity_4+
'sequential_85_lstm_257_while_identity_5G
Csequential_85_lstm_257_while_sequential_85_lstm_257_strided_slice_1?
sequential_85_lstm_257_while_tensorarrayv2read_tensorlistgetitem_sequential_85_lstm_257_tensorarrayunstack_tensorlistfromtensor[
Isequential_85_lstm_257_while_lstm_cell_377_matmul_readvariableop_resource:2(]
Ksequential_85_lstm_257_while_lstm_cell_377_matmul_1_readvariableop_resource:
(X
Jsequential_85_lstm_257_while_lstm_cell_377_biasadd_readvariableop_resource:(??Asequential_85/lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOp?@sequential_85/lstm_257/while/lstm_cell_377/MatMul/ReadVariableOp?Bsequential_85/lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOp?
Nsequential_85/lstm_257/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_85/lstm_257/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_85_lstm_257_while_tensorarrayv2read_tensorlistgetitem_sequential_85_lstm_257_tensorarrayunstack_tensorlistfromtensor_0(sequential_85_lstm_257_while_placeholderWsequential_85/lstm_257/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_85/lstm_257/while/lstm_cell_377/MatMul/ReadVariableOpReadVariableOpKsequential_85_lstm_257_while_lstm_cell_377_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_85/lstm_257/while/lstm_cell_377/MatMulMatMulGsequential_85/lstm_257/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_85/lstm_257/while/lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_85/lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOpMsequential_85_lstm_257_while_lstm_cell_377_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_85/lstm_257/while/lstm_cell_377/MatMul_1MatMul*sequential_85_lstm_257_while_placeholder_2Jsequential_85/lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_85/lstm_257/while/lstm_cell_377/addAddV2;sequential_85/lstm_257/while/lstm_cell_377/MatMul:product:0=sequential_85/lstm_257/while/lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_85/lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOpLsequential_85_lstm_257_while_lstm_cell_377_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_85/lstm_257/while/lstm_cell_377/BiasAddBiasAdd2sequential_85/lstm_257/while/lstm_cell_377/add:z:0Isequential_85/lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_85/lstm_257/while/lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_85/lstm_257/while/lstm_cell_377/splitSplitCsequential_85/lstm_257/while/lstm_cell_377/split/split_dim:output:0;sequential_85/lstm_257/while/lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_85/lstm_257/while/lstm_cell_377/SigmoidSigmoid9sequential_85/lstm_257/while/lstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_85/lstm_257/while/lstm_cell_377/Sigmoid_1Sigmoid9sequential_85/lstm_257/while/lstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_85/lstm_257/while/lstm_cell_377/mulMul8sequential_85/lstm_257/while/lstm_cell_377/Sigmoid_1:y:0*sequential_85_lstm_257_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_85/lstm_257/while/lstm_cell_377/ReluRelu9sequential_85/lstm_257/while/lstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_85/lstm_257/while/lstm_cell_377/mul_1Mul6sequential_85/lstm_257/while/lstm_cell_377/Sigmoid:y:0=sequential_85/lstm_257/while/lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_85/lstm_257/while/lstm_cell_377/add_1AddV22sequential_85/lstm_257/while/lstm_cell_377/mul:z:04sequential_85/lstm_257/while/lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_85/lstm_257/while/lstm_cell_377/Sigmoid_2Sigmoid9sequential_85/lstm_257/while/lstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_85/lstm_257/while/lstm_cell_377/Relu_1Relu4sequential_85/lstm_257/while/lstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_85/lstm_257/while/lstm_cell_377/mul_2Mul8sequential_85/lstm_257/while/lstm_cell_377/Sigmoid_2:y:0?sequential_85/lstm_257/while/lstm_cell_377/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_85/lstm_257/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_85_lstm_257_while_placeholder_1(sequential_85_lstm_257_while_placeholder4sequential_85/lstm_257/while/lstm_cell_377/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_85/lstm_257/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_85/lstm_257/while/addAddV2(sequential_85_lstm_257_while_placeholder+sequential_85/lstm_257/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_85/lstm_257/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_85/lstm_257/while/add_1AddV2Fsequential_85_lstm_257_while_sequential_85_lstm_257_while_loop_counter-sequential_85/lstm_257/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_85/lstm_257/while/IdentityIdentity&sequential_85/lstm_257/while/add_1:z:0"^sequential_85/lstm_257/while/NoOp*
T0*
_output_shapes
: ?
'sequential_85/lstm_257/while/Identity_1IdentityLsequential_85_lstm_257_while_sequential_85_lstm_257_while_maximum_iterations"^sequential_85/lstm_257/while/NoOp*
T0*
_output_shapes
: ?
'sequential_85/lstm_257/while/Identity_2Identity$sequential_85/lstm_257/while/add:z:0"^sequential_85/lstm_257/while/NoOp*
T0*
_output_shapes
: ?
'sequential_85/lstm_257/while/Identity_3IdentityQsequential_85/lstm_257/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_85/lstm_257/while/NoOp*
T0*
_output_shapes
: ?
'sequential_85/lstm_257/while/Identity_4Identity4sequential_85/lstm_257/while/lstm_cell_377/mul_2:z:0"^sequential_85/lstm_257/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_85/lstm_257/while/Identity_5Identity4sequential_85/lstm_257/while/lstm_cell_377/add_1:z:0"^sequential_85/lstm_257/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_85/lstm_257/while/NoOpNoOpB^sequential_85/lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOpA^sequential_85/lstm_257/while/lstm_cell_377/MatMul/ReadVariableOpC^sequential_85/lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_85_lstm_257_while_identity.sequential_85/lstm_257/while/Identity:output:0"[
'sequential_85_lstm_257_while_identity_10sequential_85/lstm_257/while/Identity_1:output:0"[
'sequential_85_lstm_257_while_identity_20sequential_85/lstm_257/while/Identity_2:output:0"[
'sequential_85_lstm_257_while_identity_30sequential_85/lstm_257/while/Identity_3:output:0"[
'sequential_85_lstm_257_while_identity_40sequential_85/lstm_257/while/Identity_4:output:0"[
'sequential_85_lstm_257_while_identity_50sequential_85/lstm_257/while/Identity_5:output:0"?
Jsequential_85_lstm_257_while_lstm_cell_377_biasadd_readvariableop_resourceLsequential_85_lstm_257_while_lstm_cell_377_biasadd_readvariableop_resource_0"?
Ksequential_85_lstm_257_while_lstm_cell_377_matmul_1_readvariableop_resourceMsequential_85_lstm_257_while_lstm_cell_377_matmul_1_readvariableop_resource_0"?
Isequential_85_lstm_257_while_lstm_cell_377_matmul_readvariableop_resourceKsequential_85_lstm_257_while_lstm_cell_377_matmul_readvariableop_resource_0"?
Csequential_85_lstm_257_while_sequential_85_lstm_257_strided_slice_1Esequential_85_lstm_257_while_sequential_85_lstm_257_strided_slice_1_0"?
sequential_85_lstm_257_while_tensorarrayv2read_tensorlistgetitem_sequential_85_lstm_257_tensorarrayunstack_tensorlistfromtensor?sequential_85_lstm_257_while_tensorarrayv2read_tensorlistgetitem_sequential_85_lstm_257_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_85/lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOpAsequential_85/lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOp2?
@sequential_85/lstm_257/while/lstm_cell_377/MatMul/ReadVariableOp@sequential_85/lstm_257/while/lstm_cell_377/MatMul/ReadVariableOp2?
Bsequential_85/lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOpBsequential_85/lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2283005

inputs?
,lstm_cell_375_matmul_readvariableop_resource:	?A
.lstm_cell_375_matmul_1_readvariableop_resource:	d?<
-lstm_cell_375_biasadd_readvariableop_resource:	?
identity??$lstm_cell_375/BiasAdd/ReadVariableOp?#lstm_cell_375/MatMul/ReadVariableOp?%lstm_cell_375/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_375/MatMul/ReadVariableOpReadVariableOp,lstm_cell_375_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_375/MatMulMatMulstrided_slice_2:output:0+lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_375_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_375/MatMul_1MatMulzeros:output:0-lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_375/addAddV2lstm_cell_375/MatMul:product:0 lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_375_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_375/BiasAddBiasAddlstm_cell_375/add:z:0,lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_375/splitSplit&lstm_cell_375/split/split_dim:output:0lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_375/SigmoidSigmoidlstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_375/Sigmoid_1Sigmoidlstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_375/mulMullstm_cell_375/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_375/ReluRelulstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_375/mul_1Mullstm_cell_375/Sigmoid:y:0 lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_375/add_1AddV2lstm_cell_375/mul:z:0lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_375/Sigmoid_2Sigmoidlstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_375/Relu_1Relulstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_375/mul_2Mullstm_cell_375/Sigmoid_2:y:0"lstm_cell_375/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_375_matmul_readvariableop_resource.lstm_cell_375_matmul_1_readvariableop_resource-lstm_cell_375_biasadd_readvariableop_resource*
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
while_body_2282921*
condR
while_cond_2282920*K
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
NoOpNoOp%^lstm_cell_375/BiasAdd/ReadVariableOp$^lstm_cell_375/MatMul/ReadVariableOp&^lstm_cell_375/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_375/BiasAdd/ReadVariableOp$lstm_cell_375/BiasAdd/ReadVariableOp2J
#lstm_cell_375/MatMul/ReadVariableOp#lstm_cell_375/MatMul/ReadVariableOp2N
%lstm_cell_375/MatMul_1/ReadVariableOp%lstm_cell_375/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_375_layer_call_and_return_conditional_losses_2281027

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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2282001

inputs'
lstm_cell_377_2281919:2('
lstm_cell_377_2281921:
(#
lstm_cell_377_2281923:(
identity??%lstm_cell_377/StatefulPartitionedCall?while;
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
%lstm_cell_377/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_377_2281919lstm_cell_377_2281921lstm_cell_377_2281923*
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
J__inference_lstm_cell_377_layer_call_and_return_conditional_losses_2281873n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_377_2281919lstm_cell_377_2281921lstm_cell_377_2281923*
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
while_body_2281932*
condR
while_cond_2281931*K
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
NoOpNoOp&^lstm_cell_377/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_377/StatefulPartitionedCall%lstm_cell_377/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?
?
while_cond_2284516
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2284516___redundant_placeholder05
1while_while_cond_2284516___redundant_placeholder15
1while_while_cond_2284516___redundant_placeholder25
1while_while_cond_2284516___redundant_placeholder3
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
while_body_2284374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_375_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_375_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_375_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_375_matmul_readvariableop_resource:	?G
4while_lstm_cell_375_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_375_biasadd_readvariableop_resource:	???*while/lstm_cell_375/BiasAdd/ReadVariableOp?)while/lstm_cell_375/MatMul/ReadVariableOp?+while/lstm_cell_375/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_375/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_375_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_375/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_375_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_375/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_375/addAddV2$while/lstm_cell_375/MatMul:product:0&while/lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_375_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_375/BiasAddBiasAddwhile/lstm_cell_375/add:z:02while/lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_375/splitSplit,while/lstm_cell_375/split/split_dim:output:0$while/lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_375/SigmoidSigmoid"while/lstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_375/Sigmoid_1Sigmoid"while/lstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mulMul!while/lstm_cell_375/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_375/ReluRelu"while/lstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mul_1Mulwhile/lstm_cell_375/Sigmoid:y:0&while/lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/add_1AddV2while/lstm_cell_375/mul:z:0while/lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_375/Sigmoid_2Sigmoid"while/lstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_375/Relu_1Reluwhile/lstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mul_2Mul!while/lstm_cell_375/Sigmoid_2:y:0(while/lstm_cell_375/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_375/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_375/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_375/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_375/BiasAdd/ReadVariableOp*^while/lstm_cell_375/MatMul/ReadVariableOp,^while/lstm_cell_375/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_375_biasadd_readvariableop_resource5while_lstm_cell_375_biasadd_readvariableop_resource_0"n
4while_lstm_cell_375_matmul_1_readvariableop_resource6while_lstm_cell_375_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_375_matmul_readvariableop_resource4while_lstm_cell_375_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_375/BiasAdd/ReadVariableOp*while/lstm_cell_375/BiasAdd/ReadVariableOp2V
)while/lstm_cell_375/MatMul/ReadVariableOp)while/lstm_cell_375/MatMul/ReadVariableOp2Z
+while/lstm_cell_375/MatMul_1/ReadVariableOp+while/lstm_cell_375/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_377_layer_call_and_return_conditional_losses_2281873

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
while_cond_2284989
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2284989___redundant_placeholder05
1while_while_cond_2284989___redundant_placeholder15
1while_while_cond_2284989___redundant_placeholder25
1while_while_cond_2284989___redundant_placeholder3
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
*__inference_lstm_257_layer_call_fn_2285382
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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2282001o
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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2281810

inputs'
lstm_cell_377_2281728:2('
lstm_cell_377_2281730:
(#
lstm_cell_377_2281732:(
identity??%lstm_cell_377/StatefulPartitionedCall?while;
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
%lstm_cell_377/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_377_2281728lstm_cell_377_2281730lstm_cell_377_2281732*
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
J__inference_lstm_cell_377_layer_call_and_return_conditional_losses_2281727n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_377_2281728lstm_cell_377_2281730lstm_cell_377_2281732*
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
while_body_2281741*
condR
while_cond_2281740*K
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
NoOpNoOp&^lstm_cell_377/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_377/StatefulPartitionedCall%lstm_cell_377/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?C
?

lstm_257_while_body_2283611.
*lstm_257_while_lstm_257_while_loop_counter4
0lstm_257_while_lstm_257_while_maximum_iterations
lstm_257_while_placeholder 
lstm_257_while_placeholder_1 
lstm_257_while_placeholder_2 
lstm_257_while_placeholder_3-
)lstm_257_while_lstm_257_strided_slice_1_0i
elstm_257_while_tensorarrayv2read_tensorlistgetitem_lstm_257_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_257_while_lstm_cell_377_matmul_readvariableop_resource_0:2(Q
?lstm_257_while_lstm_cell_377_matmul_1_readvariableop_resource_0:
(L
>lstm_257_while_lstm_cell_377_biasadd_readvariableop_resource_0:(
lstm_257_while_identity
lstm_257_while_identity_1
lstm_257_while_identity_2
lstm_257_while_identity_3
lstm_257_while_identity_4
lstm_257_while_identity_5+
'lstm_257_while_lstm_257_strided_slice_1g
clstm_257_while_tensorarrayv2read_tensorlistgetitem_lstm_257_tensorarrayunstack_tensorlistfromtensorM
;lstm_257_while_lstm_cell_377_matmul_readvariableop_resource:2(O
=lstm_257_while_lstm_cell_377_matmul_1_readvariableop_resource:
(J
<lstm_257_while_lstm_cell_377_biasadd_readvariableop_resource:(??3lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOp?2lstm_257/while/lstm_cell_377/MatMul/ReadVariableOp?4lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOp?
@lstm_257/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_257/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_257_while_tensorarrayv2read_tensorlistgetitem_lstm_257_tensorarrayunstack_tensorlistfromtensor_0lstm_257_while_placeholderIlstm_257/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_257/while/lstm_cell_377/MatMul/ReadVariableOpReadVariableOp=lstm_257_while_lstm_cell_377_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_257/while/lstm_cell_377/MatMulMatMul9lstm_257/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_257/while/lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOp?lstm_257_while_lstm_cell_377_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_257/while/lstm_cell_377/MatMul_1MatMullstm_257_while_placeholder_2<lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_257/while/lstm_cell_377/addAddV2-lstm_257/while/lstm_cell_377/MatMul:product:0/lstm_257/while/lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOp>lstm_257_while_lstm_cell_377_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_257/while/lstm_cell_377/BiasAddBiasAdd$lstm_257/while/lstm_cell_377/add:z:0;lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_257/while/lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_257/while/lstm_cell_377/splitSplit5lstm_257/while/lstm_cell_377/split/split_dim:output:0-lstm_257/while/lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_257/while/lstm_cell_377/SigmoidSigmoid+lstm_257/while/lstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_257/while/lstm_cell_377/Sigmoid_1Sigmoid+lstm_257/while/lstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_257/while/lstm_cell_377/mulMul*lstm_257/while/lstm_cell_377/Sigmoid_1:y:0lstm_257_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_257/while/lstm_cell_377/ReluRelu+lstm_257/while/lstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_257/while/lstm_cell_377/mul_1Mul(lstm_257/while/lstm_cell_377/Sigmoid:y:0/lstm_257/while/lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_257/while/lstm_cell_377/add_1AddV2$lstm_257/while/lstm_cell_377/mul:z:0&lstm_257/while/lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_257/while/lstm_cell_377/Sigmoid_2Sigmoid+lstm_257/while/lstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_257/while/lstm_cell_377/Relu_1Relu&lstm_257/while/lstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_257/while/lstm_cell_377/mul_2Mul*lstm_257/while/lstm_cell_377/Sigmoid_2:y:01lstm_257/while/lstm_cell_377/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_257/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_257_while_placeholder_1lstm_257_while_placeholder&lstm_257/while/lstm_cell_377/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_257/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_257/while/addAddV2lstm_257_while_placeholderlstm_257/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_257/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_257/while/add_1AddV2*lstm_257_while_lstm_257_while_loop_counterlstm_257/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_257/while/IdentityIdentitylstm_257/while/add_1:z:0^lstm_257/while/NoOp*
T0*
_output_shapes
: ?
lstm_257/while/Identity_1Identity0lstm_257_while_lstm_257_while_maximum_iterations^lstm_257/while/NoOp*
T0*
_output_shapes
: t
lstm_257/while/Identity_2Identitylstm_257/while/add:z:0^lstm_257/while/NoOp*
T0*
_output_shapes
: ?
lstm_257/while/Identity_3IdentityClstm_257/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_257/while/NoOp*
T0*
_output_shapes
: ?
lstm_257/while/Identity_4Identity&lstm_257/while/lstm_cell_377/mul_2:z:0^lstm_257/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_257/while/Identity_5Identity&lstm_257/while/lstm_cell_377/add_1:z:0^lstm_257/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_257/while/NoOpNoOp4^lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOp3^lstm_257/while/lstm_cell_377/MatMul/ReadVariableOp5^lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_257_while_identity lstm_257/while/Identity:output:0"?
lstm_257_while_identity_1"lstm_257/while/Identity_1:output:0"?
lstm_257_while_identity_2"lstm_257/while/Identity_2:output:0"?
lstm_257_while_identity_3"lstm_257/while/Identity_3:output:0"?
lstm_257_while_identity_4"lstm_257/while/Identity_4:output:0"?
lstm_257_while_identity_5"lstm_257/while/Identity_5:output:0"T
'lstm_257_while_lstm_257_strided_slice_1)lstm_257_while_lstm_257_strided_slice_1_0"~
<lstm_257_while_lstm_cell_377_biasadd_readvariableop_resource>lstm_257_while_lstm_cell_377_biasadd_readvariableop_resource_0"?
=lstm_257_while_lstm_cell_377_matmul_1_readvariableop_resource?lstm_257_while_lstm_cell_377_matmul_1_readvariableop_resource_0"|
;lstm_257_while_lstm_cell_377_matmul_readvariableop_resource=lstm_257_while_lstm_cell_377_matmul_readvariableop_resource_0"?
clstm_257_while_tensorarrayv2read_tensorlistgetitem_lstm_257_tensorarrayunstack_tensorlistfromtensorelstm_257_while_tensorarrayv2read_tensorlistgetitem_lstm_257_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOp3lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOp2h
2lstm_257/while/lstm_cell_377/MatMul/ReadVariableOp2lstm_257/while/lstm_cell_377/MatMul/ReadVariableOp2l
4lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOp4lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_377_layer_call_fn_2286225

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
J__inference_lstm_cell_377_layer_call_and_return_conditional_losses_2281873o
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
while_body_2285133
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_376_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_376_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_376_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_376_matmul_readvariableop_resource:	d?G
4while_lstm_cell_376_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_376_biasadd_readvariableop_resource:	???*while/lstm_cell_376/BiasAdd/ReadVariableOp?)while/lstm_cell_376/MatMul/ReadVariableOp?+while/lstm_cell_376/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_376/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_376_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_376/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_376_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_376/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_376/addAddV2$while/lstm_cell_376/MatMul:product:0&while/lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_376_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_376/BiasAddBiasAddwhile/lstm_cell_376/add:z:02while/lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_376/splitSplit,while/lstm_cell_376/split/split_dim:output:0$while/lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_376/SigmoidSigmoid"while/lstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_376/Sigmoid_1Sigmoid"while/lstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mulMul!while/lstm_cell_376/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_376/ReluRelu"while/lstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mul_1Mulwhile/lstm_cell_376/Sigmoid:y:0&while/lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/add_1AddV2while/lstm_cell_376/mul:z:0while/lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_376/Sigmoid_2Sigmoid"while/lstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_376/Relu_1Reluwhile/lstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mul_2Mul!while/lstm_cell_376/Sigmoid_2:y:0(while/lstm_cell_376/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_376/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_376/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_376/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_376/BiasAdd/ReadVariableOp*^while/lstm_cell_376/MatMul/ReadVariableOp,^while/lstm_cell_376/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_376_biasadd_readvariableop_resource5while_lstm_cell_376_biasadd_readvariableop_resource_0"n
4while_lstm_cell_376_matmul_1_readvariableop_resource6while_lstm_cell_376_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_376_matmul_readvariableop_resource4while_lstm_cell_376_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_376/BiasAdd/ReadVariableOp*while/lstm_cell_376/BiasAdd/ReadVariableOp2V
)while/lstm_cell_376/MatMul/ReadVariableOp)while/lstm_cell_376/MatMul/ReadVariableOp2Z
+while/lstm_cell_376/MatMul_1/ReadVariableOp+while/lstm_cell_376/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2281582
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_376_2281606_0:	d?0
while_lstm_cell_376_2281608_0:	2?,
while_lstm_cell_376_2281610_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_376_2281606:	d?.
while_lstm_cell_376_2281608:	2?*
while_lstm_cell_376_2281610:	???+while/lstm_cell_376/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_376/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_376_2281606_0while_lstm_cell_376_2281608_0while_lstm_cell_376_2281610_0*
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
J__inference_lstm_cell_376_layer_call_and_return_conditional_losses_2281523?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_376/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_376/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_376/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_376/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_376_2281606while_lstm_cell_376_2281606_0"<
while_lstm_cell_376_2281608while_lstm_cell_376_2281608_0"<
while_lstm_cell_376_2281610while_lstm_cell_376_2281610_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_376/StatefulPartitionedCall+while/lstm_cell_376/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2282074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2282074___redundant_placeholder05
1while_while_cond_2282074___redundant_placeholder15
1while_while_cond_2282074___redundant_placeholder25
1while_while_cond_2282074___redundant_placeholder3
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
while_body_2281932
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_377_2281956_0:2(/
while_lstm_cell_377_2281958_0:
(+
while_lstm_cell_377_2281960_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_377_2281956:2(-
while_lstm_cell_377_2281958:
()
while_lstm_cell_377_2281960:(??+while/lstm_cell_377/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_377/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_377_2281956_0while_lstm_cell_377_2281958_0while_lstm_cell_377_2281960_0*
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
J__inference_lstm_cell_377_layer_call_and_return_conditional_losses_2281873?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_377/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_377/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_377/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_377/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_377_2281956while_lstm_cell_377_2281956_0"<
while_lstm_cell_377_2281958while_lstm_cell_377_2281958_0"<
while_lstm_cell_377_2281960while_lstm_cell_377_2281960_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_377/StatefulPartitionedCall+while/lstm_cell_377/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_377_layer_call_and_return_conditional_losses_2286257

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
E__inference_lstm_256_layer_call_and_return_conditional_losses_2281651

inputs(
lstm_cell_376_2281569:	d?(
lstm_cell_376_2281571:	2?$
lstm_cell_376_2281573:	?
identity??%lstm_cell_376/StatefulPartitionedCall?while;
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
%lstm_cell_376/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_376_2281569lstm_cell_376_2281571lstm_cell_376_2281573*
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
J__inference_lstm_cell_376_layer_call_and_return_conditional_losses_2281523n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_376_2281569lstm_cell_376_2281571lstm_cell_376_2281573*
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
while_body_2281582*
condR
while_cond_2281581*K
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
NoOpNoOp&^lstm_cell_376/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_376/StatefulPartitionedCall%lstm_cell_376/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
E__inference_lstm_255_layer_call_and_return_conditional_losses_2281110

inputs(
lstm_cell_375_2281028:	?(
lstm_cell_375_2281030:	d?$
lstm_cell_375_2281032:	?
identity??%lstm_cell_375/StatefulPartitionedCall?while;
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
%lstm_cell_375/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_375_2281028lstm_cell_375_2281030lstm_cell_375_2281032*
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
J__inference_lstm_cell_375_layer_call_and_return_conditional_losses_2281027n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_375_2281028lstm_cell_375_2281030lstm_cell_375_2281032*
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
while_body_2281041*
condR
while_cond_2281040*K
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
NoOpNoOp&^lstm_cell_375/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_375/StatefulPartitionedCall%lstm_cell_375/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_257_layer_call_and_return_conditional_losses_2282459

inputs>
,lstm_cell_377_matmul_readvariableop_resource:2(@
.lstm_cell_377_matmul_1_readvariableop_resource:
(;
-lstm_cell_377_biasadd_readvariableop_resource:(
identity??$lstm_cell_377/BiasAdd/ReadVariableOp?#lstm_cell_377/MatMul/ReadVariableOp?%lstm_cell_377/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_377/MatMul/ReadVariableOpReadVariableOp,lstm_cell_377_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_377/MatMulMatMulstrided_slice_2:output:0+lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_377_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_377/MatMul_1MatMulzeros:output:0-lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_377/addAddV2lstm_cell_377/MatMul:product:0 lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_377_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_377/BiasAddBiasAddlstm_cell_377/add:z:0,lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_377/splitSplit&lstm_cell_377/split/split_dim:output:0lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_377/SigmoidSigmoidlstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_377/Sigmoid_1Sigmoidlstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_377/mulMullstm_cell_377/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_377/ReluRelulstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_377/mul_1Mullstm_cell_377/Sigmoid:y:0 lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_377/add_1AddV2lstm_cell_377/mul:z:0lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_377/Sigmoid_2Sigmoidlstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_377/Relu_1Relulstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_377/mul_2Mullstm_cell_377/Sigmoid_2:y:0"lstm_cell_377/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_377_matmul_readvariableop_resource.lstm_cell_377_matmul_1_readvariableop_resource-lstm_cell_377_biasadd_readvariableop_resource*
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
while_body_2282375*
condR
while_cond_2282374*K
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
NoOpNoOp%^lstm_cell_377/BiasAdd/ReadVariableOp$^lstm_cell_377/MatMul/ReadVariableOp&^lstm_cell_377/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_377/BiasAdd/ReadVariableOp$lstm_cell_377/BiasAdd/ReadVariableOp2J
#lstm_cell_377/MatMul/ReadVariableOp#lstm_cell_377/MatMul/ReadVariableOp2N
%lstm_cell_377/MatMul_1/ReadVariableOp%lstm_cell_377/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_376_layer_call_fn_2286127

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
J__inference_lstm_cell_376_layer_call_and_return_conditional_losses_2281523o
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
while_body_2285276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_376_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_376_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_376_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_376_matmul_readvariableop_resource:	d?G
4while_lstm_cell_376_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_376_biasadd_readvariableop_resource:	???*while/lstm_cell_376/BiasAdd/ReadVariableOp?)while/lstm_cell_376/MatMul/ReadVariableOp?+while/lstm_cell_376/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_376/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_376_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_376/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_376_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_376/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_376/addAddV2$while/lstm_cell_376/MatMul:product:0&while/lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_376_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_376/BiasAddBiasAddwhile/lstm_cell_376/add:z:02while/lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_376/splitSplit,while/lstm_cell_376/split/split_dim:output:0$while/lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_376/SigmoidSigmoid"while/lstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_376/Sigmoid_1Sigmoid"while/lstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mulMul!while/lstm_cell_376/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_376/ReluRelu"while/lstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mul_1Mulwhile/lstm_cell_376/Sigmoid:y:0&while/lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/add_1AddV2while/lstm_cell_376/mul:z:0while/lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_376/Sigmoid_2Sigmoid"while/lstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_376/Relu_1Reluwhile/lstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mul_2Mul!while/lstm_cell_376/Sigmoid_2:y:0(while/lstm_cell_376/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_376/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_376/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_376/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_376/BiasAdd/ReadVariableOp*^while/lstm_cell_376/MatMul/ReadVariableOp,^while/lstm_cell_376/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_376_biasadd_readvariableop_resource5while_lstm_cell_376_biasadd_readvariableop_resource_0"n
4while_lstm_cell_376_matmul_1_readvariableop_resource6while_lstm_cell_376_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_376_matmul_readvariableop_resource4while_lstm_cell_376_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_376/BiasAdd/ReadVariableOp*while/lstm_cell_376/BiasAdd/ReadVariableOp2V
)while/lstm_cell_376/MatMul/ReadVariableOp)while/lstm_cell_376/MatMul/ReadVariableOp2Z
+while/lstm_cell_376/MatMul_1/ReadVariableOp+while/lstm_cell_376/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2281931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2281931___redundant_placeholder05
1while_while_cond_2281931___redundant_placeholder15
1while_while_cond_2281931___redundant_placeholder25
1while_while_cond_2281931___redundant_placeholder3
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
/__inference_sequential_85_layer_call_fn_2283247

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
J__inference_sequential_85_layer_call_and_return_conditional_losses_2282484o
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
?C
?

lstm_256_while_body_2283899.
*lstm_256_while_lstm_256_while_loop_counter4
0lstm_256_while_lstm_256_while_maximum_iterations
lstm_256_while_placeholder 
lstm_256_while_placeholder_1 
lstm_256_while_placeholder_2 
lstm_256_while_placeholder_3-
)lstm_256_while_lstm_256_strided_slice_1_0i
elstm_256_while_tensorarrayv2read_tensorlistgetitem_lstm_256_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_256_while_lstm_cell_376_matmul_readvariableop_resource_0:	d?R
?lstm_256_while_lstm_cell_376_matmul_1_readvariableop_resource_0:	2?M
>lstm_256_while_lstm_cell_376_biasadd_readvariableop_resource_0:	?
lstm_256_while_identity
lstm_256_while_identity_1
lstm_256_while_identity_2
lstm_256_while_identity_3
lstm_256_while_identity_4
lstm_256_while_identity_5+
'lstm_256_while_lstm_256_strided_slice_1g
clstm_256_while_tensorarrayv2read_tensorlistgetitem_lstm_256_tensorarrayunstack_tensorlistfromtensorN
;lstm_256_while_lstm_cell_376_matmul_readvariableop_resource:	d?P
=lstm_256_while_lstm_cell_376_matmul_1_readvariableop_resource:	2?K
<lstm_256_while_lstm_cell_376_biasadd_readvariableop_resource:	???3lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOp?2lstm_256/while/lstm_cell_376/MatMul/ReadVariableOp?4lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOp?
@lstm_256/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_256/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_256_while_tensorarrayv2read_tensorlistgetitem_lstm_256_tensorarrayunstack_tensorlistfromtensor_0lstm_256_while_placeholderIlstm_256/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_256/while/lstm_cell_376/MatMul/ReadVariableOpReadVariableOp=lstm_256_while_lstm_cell_376_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_256/while/lstm_cell_376/MatMulMatMul9lstm_256/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_256/while/lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOp?lstm_256_while_lstm_cell_376_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_256/while/lstm_cell_376/MatMul_1MatMullstm_256_while_placeholder_2<lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_256/while/lstm_cell_376/addAddV2-lstm_256/while/lstm_cell_376/MatMul:product:0/lstm_256/while/lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOp>lstm_256_while_lstm_cell_376_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_256/while/lstm_cell_376/BiasAddBiasAdd$lstm_256/while/lstm_cell_376/add:z:0;lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_256/while/lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_256/while/lstm_cell_376/splitSplit5lstm_256/while/lstm_cell_376/split/split_dim:output:0-lstm_256/while/lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_256/while/lstm_cell_376/SigmoidSigmoid+lstm_256/while/lstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_256/while/lstm_cell_376/Sigmoid_1Sigmoid+lstm_256/while/lstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_256/while/lstm_cell_376/mulMul*lstm_256/while/lstm_cell_376/Sigmoid_1:y:0lstm_256_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_256/while/lstm_cell_376/ReluRelu+lstm_256/while/lstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_256/while/lstm_cell_376/mul_1Mul(lstm_256/while/lstm_cell_376/Sigmoid:y:0/lstm_256/while/lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_256/while/lstm_cell_376/add_1AddV2$lstm_256/while/lstm_cell_376/mul:z:0&lstm_256/while/lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_256/while/lstm_cell_376/Sigmoid_2Sigmoid+lstm_256/while/lstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_256/while/lstm_cell_376/Relu_1Relu&lstm_256/while/lstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_256/while/lstm_cell_376/mul_2Mul*lstm_256/while/lstm_cell_376/Sigmoid_2:y:01lstm_256/while/lstm_cell_376/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_256/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_256_while_placeholder_1lstm_256_while_placeholder&lstm_256/while/lstm_cell_376/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_256/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_256/while/addAddV2lstm_256_while_placeholderlstm_256/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_256/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_256/while/add_1AddV2*lstm_256_while_lstm_256_while_loop_counterlstm_256/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_256/while/IdentityIdentitylstm_256/while/add_1:z:0^lstm_256/while/NoOp*
T0*
_output_shapes
: ?
lstm_256/while/Identity_1Identity0lstm_256_while_lstm_256_while_maximum_iterations^lstm_256/while/NoOp*
T0*
_output_shapes
: t
lstm_256/while/Identity_2Identitylstm_256/while/add:z:0^lstm_256/while/NoOp*
T0*
_output_shapes
: ?
lstm_256/while/Identity_3IdentityClstm_256/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_256/while/NoOp*
T0*
_output_shapes
: ?
lstm_256/while/Identity_4Identity&lstm_256/while/lstm_cell_376/mul_2:z:0^lstm_256/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_256/while/Identity_5Identity&lstm_256/while/lstm_cell_376/add_1:z:0^lstm_256/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_256/while/NoOpNoOp4^lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOp3^lstm_256/while/lstm_cell_376/MatMul/ReadVariableOp5^lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_256_while_identity lstm_256/while/Identity:output:0"?
lstm_256_while_identity_1"lstm_256/while/Identity_1:output:0"?
lstm_256_while_identity_2"lstm_256/while/Identity_2:output:0"?
lstm_256_while_identity_3"lstm_256/while/Identity_3:output:0"?
lstm_256_while_identity_4"lstm_256/while/Identity_4:output:0"?
lstm_256_while_identity_5"lstm_256/while/Identity_5:output:0"T
'lstm_256_while_lstm_256_strided_slice_1)lstm_256_while_lstm_256_strided_slice_1_0"~
<lstm_256_while_lstm_cell_376_biasadd_readvariableop_resource>lstm_256_while_lstm_cell_376_biasadd_readvariableop_resource_0"?
=lstm_256_while_lstm_cell_376_matmul_1_readvariableop_resource?lstm_256_while_lstm_cell_376_matmul_1_readvariableop_resource_0"|
;lstm_256_while_lstm_cell_376_matmul_readvariableop_resource=lstm_256_while_lstm_cell_376_matmul_readvariableop_resource_0"?
clstm_256_while_tensorarrayv2read_tensorlistgetitem_lstm_256_tensorarrayunstack_tensorlistfromtensorelstm_256_while_tensorarrayv2read_tensorlistgetitem_lstm_256_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOp3lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOp2h
2lstm_256/while/lstm_cell_376/MatMul/ReadVariableOp2lstm_256/while/lstm_cell_376/MatMul/ReadVariableOp2l
4lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOp4lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2281581
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2281581___redundant_placeholder05
1while_while_cond_2281581___redundant_placeholder15
1while_while_cond_2281581___redundant_placeholder25
1while_while_cond_2281581___redundant_placeholder3
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
/__inference_lstm_cell_377_layer_call_fn_2286208

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
J__inference_lstm_cell_377_layer_call_and_return_conditional_losses_2281727o
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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2285976

inputs>
,lstm_cell_377_matmul_readvariableop_resource:2(@
.lstm_cell_377_matmul_1_readvariableop_resource:
(;
-lstm_cell_377_biasadd_readvariableop_resource:(
identity??$lstm_cell_377/BiasAdd/ReadVariableOp?#lstm_cell_377/MatMul/ReadVariableOp?%lstm_cell_377/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_377/MatMul/ReadVariableOpReadVariableOp,lstm_cell_377_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_377/MatMulMatMulstrided_slice_2:output:0+lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_377_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_377/MatMul_1MatMulzeros:output:0-lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_377/addAddV2lstm_cell_377/MatMul:product:0 lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_377_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_377/BiasAddBiasAddlstm_cell_377/add:z:0,lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_377/splitSplit&lstm_cell_377/split/split_dim:output:0lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_377/SigmoidSigmoidlstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_377/Sigmoid_1Sigmoidlstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_377/mulMullstm_cell_377/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_377/ReluRelulstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_377/mul_1Mullstm_cell_377/Sigmoid:y:0 lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_377/add_1AddV2lstm_cell_377/mul:z:0lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_377/Sigmoid_2Sigmoidlstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_377/Relu_1Relulstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_377/mul_2Mullstm_cell_377/Sigmoid_2:y:0"lstm_cell_377/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_377_matmul_readvariableop_resource.lstm_cell_377_matmul_1_readvariableop_resource-lstm_cell_377_biasadd_readvariableop_resource*
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
while_body_2285892*
condR
while_cond_2285891*K
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
NoOpNoOp%^lstm_cell_377/BiasAdd/ReadVariableOp$^lstm_cell_377/MatMul/ReadVariableOp&^lstm_cell_377/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_377/BiasAdd/ReadVariableOp$lstm_cell_377/BiasAdd/ReadVariableOp2J
#lstm_cell_377/MatMul/ReadVariableOp#lstm_cell_377/MatMul/ReadVariableOp2N
%lstm_cell_377/MatMul_1/ReadVariableOp%lstm_cell_377/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?S
?
)sequential_85_lstm_256_while_body_2280731J
Fsequential_85_lstm_256_while_sequential_85_lstm_256_while_loop_counterP
Lsequential_85_lstm_256_while_sequential_85_lstm_256_while_maximum_iterations,
(sequential_85_lstm_256_while_placeholder.
*sequential_85_lstm_256_while_placeholder_1.
*sequential_85_lstm_256_while_placeholder_2.
*sequential_85_lstm_256_while_placeholder_3I
Esequential_85_lstm_256_while_sequential_85_lstm_256_strided_slice_1_0?
?sequential_85_lstm_256_while_tensorarrayv2read_tensorlistgetitem_sequential_85_lstm_256_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_85_lstm_256_while_lstm_cell_376_matmul_readvariableop_resource_0:	d?`
Msequential_85_lstm_256_while_lstm_cell_376_matmul_1_readvariableop_resource_0:	2?[
Lsequential_85_lstm_256_while_lstm_cell_376_biasadd_readvariableop_resource_0:	?)
%sequential_85_lstm_256_while_identity+
'sequential_85_lstm_256_while_identity_1+
'sequential_85_lstm_256_while_identity_2+
'sequential_85_lstm_256_while_identity_3+
'sequential_85_lstm_256_while_identity_4+
'sequential_85_lstm_256_while_identity_5G
Csequential_85_lstm_256_while_sequential_85_lstm_256_strided_slice_1?
sequential_85_lstm_256_while_tensorarrayv2read_tensorlistgetitem_sequential_85_lstm_256_tensorarrayunstack_tensorlistfromtensor\
Isequential_85_lstm_256_while_lstm_cell_376_matmul_readvariableop_resource:	d?^
Ksequential_85_lstm_256_while_lstm_cell_376_matmul_1_readvariableop_resource:	2?Y
Jsequential_85_lstm_256_while_lstm_cell_376_biasadd_readvariableop_resource:	???Asequential_85/lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOp?@sequential_85/lstm_256/while/lstm_cell_376/MatMul/ReadVariableOp?Bsequential_85/lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOp?
Nsequential_85/lstm_256/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_85/lstm_256/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_85_lstm_256_while_tensorarrayv2read_tensorlistgetitem_sequential_85_lstm_256_tensorarrayunstack_tensorlistfromtensor_0(sequential_85_lstm_256_while_placeholderWsequential_85/lstm_256/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_85/lstm_256/while/lstm_cell_376/MatMul/ReadVariableOpReadVariableOpKsequential_85_lstm_256_while_lstm_cell_376_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_85/lstm_256/while/lstm_cell_376/MatMulMatMulGsequential_85/lstm_256/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_85/lstm_256/while/lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_85/lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOpMsequential_85_lstm_256_while_lstm_cell_376_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_85/lstm_256/while/lstm_cell_376/MatMul_1MatMul*sequential_85_lstm_256_while_placeholder_2Jsequential_85/lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_85/lstm_256/while/lstm_cell_376/addAddV2;sequential_85/lstm_256/while/lstm_cell_376/MatMul:product:0=sequential_85/lstm_256/while/lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_85/lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOpLsequential_85_lstm_256_while_lstm_cell_376_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_85/lstm_256/while/lstm_cell_376/BiasAddBiasAdd2sequential_85/lstm_256/while/lstm_cell_376/add:z:0Isequential_85/lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_85/lstm_256/while/lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_85/lstm_256/while/lstm_cell_376/splitSplitCsequential_85/lstm_256/while/lstm_cell_376/split/split_dim:output:0;sequential_85/lstm_256/while/lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_85/lstm_256/while/lstm_cell_376/SigmoidSigmoid9sequential_85/lstm_256/while/lstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_85/lstm_256/while/lstm_cell_376/Sigmoid_1Sigmoid9sequential_85/lstm_256/while/lstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_85/lstm_256/while/lstm_cell_376/mulMul8sequential_85/lstm_256/while/lstm_cell_376/Sigmoid_1:y:0*sequential_85_lstm_256_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_85/lstm_256/while/lstm_cell_376/ReluRelu9sequential_85/lstm_256/while/lstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_85/lstm_256/while/lstm_cell_376/mul_1Mul6sequential_85/lstm_256/while/lstm_cell_376/Sigmoid:y:0=sequential_85/lstm_256/while/lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_85/lstm_256/while/lstm_cell_376/add_1AddV22sequential_85/lstm_256/while/lstm_cell_376/mul:z:04sequential_85/lstm_256/while/lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_85/lstm_256/while/lstm_cell_376/Sigmoid_2Sigmoid9sequential_85/lstm_256/while/lstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_85/lstm_256/while/lstm_cell_376/Relu_1Relu4sequential_85/lstm_256/while/lstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_85/lstm_256/while/lstm_cell_376/mul_2Mul8sequential_85/lstm_256/while/lstm_cell_376/Sigmoid_2:y:0?sequential_85/lstm_256/while/lstm_cell_376/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_85/lstm_256/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_85_lstm_256_while_placeholder_1(sequential_85_lstm_256_while_placeholder4sequential_85/lstm_256/while/lstm_cell_376/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_85/lstm_256/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_85/lstm_256/while/addAddV2(sequential_85_lstm_256_while_placeholder+sequential_85/lstm_256/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_85/lstm_256/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_85/lstm_256/while/add_1AddV2Fsequential_85_lstm_256_while_sequential_85_lstm_256_while_loop_counter-sequential_85/lstm_256/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_85/lstm_256/while/IdentityIdentity&sequential_85/lstm_256/while/add_1:z:0"^sequential_85/lstm_256/while/NoOp*
T0*
_output_shapes
: ?
'sequential_85/lstm_256/while/Identity_1IdentityLsequential_85_lstm_256_while_sequential_85_lstm_256_while_maximum_iterations"^sequential_85/lstm_256/while/NoOp*
T0*
_output_shapes
: ?
'sequential_85/lstm_256/while/Identity_2Identity$sequential_85/lstm_256/while/add:z:0"^sequential_85/lstm_256/while/NoOp*
T0*
_output_shapes
: ?
'sequential_85/lstm_256/while/Identity_3IdentityQsequential_85/lstm_256/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_85/lstm_256/while/NoOp*
T0*
_output_shapes
: ?
'sequential_85/lstm_256/while/Identity_4Identity4sequential_85/lstm_256/while/lstm_cell_376/mul_2:z:0"^sequential_85/lstm_256/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_85/lstm_256/while/Identity_5Identity4sequential_85/lstm_256/while/lstm_cell_376/add_1:z:0"^sequential_85/lstm_256/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_85/lstm_256/while/NoOpNoOpB^sequential_85/lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOpA^sequential_85/lstm_256/while/lstm_cell_376/MatMul/ReadVariableOpC^sequential_85/lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_85_lstm_256_while_identity.sequential_85/lstm_256/while/Identity:output:0"[
'sequential_85_lstm_256_while_identity_10sequential_85/lstm_256/while/Identity_1:output:0"[
'sequential_85_lstm_256_while_identity_20sequential_85/lstm_256/while/Identity_2:output:0"[
'sequential_85_lstm_256_while_identity_30sequential_85/lstm_256/while/Identity_3:output:0"[
'sequential_85_lstm_256_while_identity_40sequential_85/lstm_256/while/Identity_4:output:0"[
'sequential_85_lstm_256_while_identity_50sequential_85/lstm_256/while/Identity_5:output:0"?
Jsequential_85_lstm_256_while_lstm_cell_376_biasadd_readvariableop_resourceLsequential_85_lstm_256_while_lstm_cell_376_biasadd_readvariableop_resource_0"?
Ksequential_85_lstm_256_while_lstm_cell_376_matmul_1_readvariableop_resourceMsequential_85_lstm_256_while_lstm_cell_376_matmul_1_readvariableop_resource_0"?
Isequential_85_lstm_256_while_lstm_cell_376_matmul_readvariableop_resourceKsequential_85_lstm_256_while_lstm_cell_376_matmul_readvariableop_resource_0"?
Csequential_85_lstm_256_while_sequential_85_lstm_256_strided_slice_1Esequential_85_lstm_256_while_sequential_85_lstm_256_strided_slice_1_0"?
sequential_85_lstm_256_while_tensorarrayv2read_tensorlistgetitem_sequential_85_lstm_256_tensorarrayunstack_tensorlistfromtensor?sequential_85_lstm_256_while_tensorarrayv2read_tensorlistgetitem_sequential_85_lstm_256_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_85/lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOpAsequential_85/lstm_256/while/lstm_cell_376/BiasAdd/ReadVariableOp2?
@sequential_85/lstm_256/while/lstm_cell_376/MatMul/ReadVariableOp@sequential_85/lstm_256/while/lstm_cell_376/MatMul/ReadVariableOp2?
Bsequential_85/lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOpBsequential_85/lstm_256/while/lstm_cell_376/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_257_layer_call_fn_2285371
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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2281810o
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
E__inference_dense_85_layer_call_and_return_conditional_losses_2285995

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
E__inference_lstm_256_layer_call_and_return_conditional_losses_2284931
inputs_0?
,lstm_cell_376_matmul_readvariableop_resource:	d?A
.lstm_cell_376_matmul_1_readvariableop_resource:	2?<
-lstm_cell_376_biasadd_readvariableop_resource:	?
identity??$lstm_cell_376/BiasAdd/ReadVariableOp?#lstm_cell_376/MatMul/ReadVariableOp?%lstm_cell_376/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_376/MatMul/ReadVariableOpReadVariableOp,lstm_cell_376_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_376/MatMulMatMulstrided_slice_2:output:0+lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_376_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_376/MatMul_1MatMulzeros:output:0-lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_376/addAddV2lstm_cell_376/MatMul:product:0 lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_376_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_376/BiasAddBiasAddlstm_cell_376/add:z:0,lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_376/splitSplit&lstm_cell_376/split/split_dim:output:0lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_376/SigmoidSigmoidlstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_376/Sigmoid_1Sigmoidlstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_376/mulMullstm_cell_376/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_376/ReluRelulstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_376/mul_1Mullstm_cell_376/Sigmoid:y:0 lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_376/add_1AddV2lstm_cell_376/mul:z:0lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_376/Sigmoid_2Sigmoidlstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_376/Relu_1Relulstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_376/mul_2Mullstm_cell_376/Sigmoid_2:y:0"lstm_cell_376/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_376_matmul_readvariableop_resource.lstm_cell_376_matmul_1_readvariableop_resource-lstm_cell_376_biasadd_readvariableop_resource*
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
while_body_2284847*
condR
while_cond_2284846*K
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
NoOpNoOp%^lstm_cell_376/BiasAdd/ReadVariableOp$^lstm_cell_376/MatMul/ReadVariableOp&^lstm_cell_376/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_376/BiasAdd/ReadVariableOp$lstm_cell_376/BiasAdd/ReadVariableOp2J
#lstm_cell_376/MatMul/ReadVariableOp#lstm_cell_376/MatMul/ReadVariableOp2N
%lstm_cell_376/MatMul_1/ReadVariableOp%lstm_cell_376/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_375_layer_call_and_return_conditional_losses_2281173

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
while_body_2284660
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_375_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_375_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_375_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_375_matmul_readvariableop_resource:	?G
4while_lstm_cell_375_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_375_biasadd_readvariableop_resource:	???*while/lstm_cell_375/BiasAdd/ReadVariableOp?)while/lstm_cell_375/MatMul/ReadVariableOp?+while/lstm_cell_375/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_375/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_375_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_375/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_375_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_375/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_375/addAddV2$while/lstm_cell_375/MatMul:product:0&while/lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_375_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_375/BiasAddBiasAddwhile/lstm_cell_375/add:z:02while/lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_375/splitSplit,while/lstm_cell_375/split/split_dim:output:0$while/lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_375/SigmoidSigmoid"while/lstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_375/Sigmoid_1Sigmoid"while/lstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mulMul!while/lstm_cell_375/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_375/ReluRelu"while/lstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mul_1Mulwhile/lstm_cell_375/Sigmoid:y:0&while/lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/add_1AddV2while/lstm_cell_375/mul:z:0while/lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_375/Sigmoid_2Sigmoid"while/lstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_375/Relu_1Reluwhile/lstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mul_2Mul!while/lstm_cell_375/Sigmoid_2:y:0(while/lstm_cell_375/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_375/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_375/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_375/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_375/BiasAdd/ReadVariableOp*^while/lstm_cell_375/MatMul/ReadVariableOp,^while/lstm_cell_375/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_375_biasadd_readvariableop_resource5while_lstm_cell_375_biasadd_readvariableop_resource_0"n
4while_lstm_cell_375_matmul_1_readvariableop_resource6while_lstm_cell_375_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_375_matmul_readvariableop_resource4while_lstm_cell_375_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_375/BiasAdd/ReadVariableOp*while/lstm_cell_375/BiasAdd/ReadVariableOp2V
)while/lstm_cell_375/MatMul/ReadVariableOp)while/lstm_cell_375/MatMul/ReadVariableOp2Z
+while/lstm_cell_375/MatMul_1/ReadVariableOp+while/lstm_cell_375/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
?W
?
 __inference__traced_save_2286432
file_prefix.
*savev2_dense_85_kernel_read_readvariableop,
(savev2_dense_85_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_255_lstm_cell_255_kernel_read_readvariableopF
Bsavev2_lstm_255_lstm_cell_255_recurrent_kernel_read_readvariableop:
6savev2_lstm_255_lstm_cell_255_bias_read_readvariableop<
8savev2_lstm_256_lstm_cell_256_kernel_read_readvariableopF
Bsavev2_lstm_256_lstm_cell_256_recurrent_kernel_read_readvariableop:
6savev2_lstm_256_lstm_cell_256_bias_read_readvariableop<
8savev2_lstm_257_lstm_cell_257_kernel_read_readvariableopF
Bsavev2_lstm_257_lstm_cell_257_recurrent_kernel_read_readvariableop:
6savev2_lstm_257_lstm_cell_257_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_85_kernel_m_read_readvariableop3
/savev2_adam_dense_85_bias_m_read_readvariableopC
?savev2_adam_lstm_255_lstm_cell_255_kernel_m_read_readvariableopM
Isavev2_adam_lstm_255_lstm_cell_255_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_255_lstm_cell_255_bias_m_read_readvariableopC
?savev2_adam_lstm_256_lstm_cell_256_kernel_m_read_readvariableopM
Isavev2_adam_lstm_256_lstm_cell_256_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_256_lstm_cell_256_bias_m_read_readvariableopC
?savev2_adam_lstm_257_lstm_cell_257_kernel_m_read_readvariableopM
Isavev2_adam_lstm_257_lstm_cell_257_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_257_lstm_cell_257_bias_m_read_readvariableop5
1savev2_adam_dense_85_kernel_v_read_readvariableop3
/savev2_adam_dense_85_bias_v_read_readvariableopC
?savev2_adam_lstm_255_lstm_cell_255_kernel_v_read_readvariableopM
Isavev2_adam_lstm_255_lstm_cell_255_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_255_lstm_cell_255_bias_v_read_readvariableopC
?savev2_adam_lstm_256_lstm_cell_256_kernel_v_read_readvariableopM
Isavev2_adam_lstm_256_lstm_cell_256_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_256_lstm_cell_256_bias_v_read_readvariableopC
?savev2_adam_lstm_257_lstm_cell_257_kernel_v_read_readvariableopM
Isavev2_adam_lstm_257_lstm_cell_257_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_257_lstm_cell_257_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_85_kernel_read_readvariableop(savev2_dense_85_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_255_lstm_cell_255_kernel_read_readvariableopBsavev2_lstm_255_lstm_cell_255_recurrent_kernel_read_readvariableop6savev2_lstm_255_lstm_cell_255_bias_read_readvariableop8savev2_lstm_256_lstm_cell_256_kernel_read_readvariableopBsavev2_lstm_256_lstm_cell_256_recurrent_kernel_read_readvariableop6savev2_lstm_256_lstm_cell_256_bias_read_readvariableop8savev2_lstm_257_lstm_cell_257_kernel_read_readvariableopBsavev2_lstm_257_lstm_cell_257_recurrent_kernel_read_readvariableop6savev2_lstm_257_lstm_cell_257_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_85_kernel_m_read_readvariableop/savev2_adam_dense_85_bias_m_read_readvariableop?savev2_adam_lstm_255_lstm_cell_255_kernel_m_read_readvariableopIsavev2_adam_lstm_255_lstm_cell_255_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_255_lstm_cell_255_bias_m_read_readvariableop?savev2_adam_lstm_256_lstm_cell_256_kernel_m_read_readvariableopIsavev2_adam_lstm_256_lstm_cell_256_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_256_lstm_cell_256_bias_m_read_readvariableop?savev2_adam_lstm_257_lstm_cell_257_kernel_m_read_readvariableopIsavev2_adam_lstm_257_lstm_cell_257_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_257_lstm_cell_257_bias_m_read_readvariableop1savev2_adam_dense_85_kernel_v_read_readvariableop/savev2_adam_dense_85_bias_v_read_readvariableop?savev2_adam_lstm_255_lstm_cell_255_kernel_v_read_readvariableopIsavev2_adam_lstm_255_lstm_cell_255_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_255_lstm_cell_255_bias_v_read_readvariableop?savev2_adam_lstm_256_lstm_cell_256_kernel_v_read_readvariableopIsavev2_adam_lstm_256_lstm_cell_256_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_256_lstm_cell_256_bias_v_read_readvariableop?savev2_adam_lstm_257_lstm_cell_257_kernel_v_read_readvariableopIsavev2_adam_lstm_257_lstm_cell_257_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_257_lstm_cell_257_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_2284846
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2284846___redundant_placeholder05
1while_while_cond_2284846___redundant_placeholder15
1while_while_cond_2284846___redundant_placeholder25
1while_while_cond_2284846___redundant_placeholder3
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
)sequential_85_lstm_257_while_cond_2280869J
Fsequential_85_lstm_257_while_sequential_85_lstm_257_while_loop_counterP
Lsequential_85_lstm_257_while_sequential_85_lstm_257_while_maximum_iterations,
(sequential_85_lstm_257_while_placeholder.
*sequential_85_lstm_257_while_placeholder_1.
*sequential_85_lstm_257_while_placeholder_2.
*sequential_85_lstm_257_while_placeholder_3L
Hsequential_85_lstm_257_while_less_sequential_85_lstm_257_strided_slice_1c
_sequential_85_lstm_257_while_sequential_85_lstm_257_while_cond_2280869___redundant_placeholder0c
_sequential_85_lstm_257_while_sequential_85_lstm_257_while_cond_2280869___redundant_placeholder1c
_sequential_85_lstm_257_while_sequential_85_lstm_257_while_cond_2280869___redundant_placeholder2c
_sequential_85_lstm_257_while_sequential_85_lstm_257_while_cond_2280869___redundant_placeholder3)
%sequential_85_lstm_257_while_identity
?
!sequential_85/lstm_257/while/LessLess(sequential_85_lstm_257_while_placeholderHsequential_85_lstm_257_while_less_sequential_85_lstm_257_strided_slice_1*
T0*
_output_shapes
: y
%sequential_85/lstm_257/while/IdentityIdentity%sequential_85/lstm_257/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_85_lstm_257_while_identity.sequential_85/lstm_257/while/Identity:output:0*(
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
*__inference_lstm_255_layer_call_fn_2284139
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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2281110|
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
while_body_2282591
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_377_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_377_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_377_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_377_matmul_readvariableop_resource:2(F
4while_lstm_cell_377_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_377_biasadd_readvariableop_resource:(??*while/lstm_cell_377/BiasAdd/ReadVariableOp?)while/lstm_cell_377/MatMul/ReadVariableOp?+while/lstm_cell_377/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_377/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_377_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_377/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_377_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_377/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_377/addAddV2$while/lstm_cell_377/MatMul:product:0&while/lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_377_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_377/BiasAddBiasAddwhile/lstm_cell_377/add:z:02while/lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_377/splitSplit,while/lstm_cell_377/split/split_dim:output:0$while/lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_377/SigmoidSigmoid"while/lstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_377/Sigmoid_1Sigmoid"while/lstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mulMul!while/lstm_cell_377/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_377/ReluRelu"while/lstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mul_1Mulwhile/lstm_cell_377/Sigmoid:y:0&while/lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/add_1AddV2while/lstm_cell_377/mul:z:0while/lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_377/Sigmoid_2Sigmoid"while/lstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_377/Relu_1Reluwhile/lstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mul_2Mul!while/lstm_cell_377/Sigmoid_2:y:0(while/lstm_cell_377/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_377/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_377/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_377/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_377/BiasAdd/ReadVariableOp*^while/lstm_cell_377/MatMul/ReadVariableOp,^while/lstm_cell_377/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_377_biasadd_readvariableop_resource5while_lstm_cell_377_biasadd_readvariableop_resource_0"n
4while_lstm_cell_377_matmul_1_readvariableop_resource6while_lstm_cell_377_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_377_matmul_readvariableop_resource4while_lstm_cell_377_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_377/BiasAdd/ReadVariableOp*while/lstm_cell_377/BiasAdd/ReadVariableOp2V
)while/lstm_cell_377/MatMul/ReadVariableOp)while/lstm_cell_377/MatMul/ReadVariableOp2Z
+while/lstm_cell_377/MatMul_1/ReadVariableOp+while/lstm_cell_377/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2285891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2285891___redundant_placeholder05
1while_while_cond_2285891___redundant_placeholder15
1while_while_cond_2285891___redundant_placeholder25
1while_while_cond_2285891___redundant_placeholder3
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

lstm_255_while_body_2283760.
*lstm_255_while_lstm_255_while_loop_counter4
0lstm_255_while_lstm_255_while_maximum_iterations
lstm_255_while_placeholder 
lstm_255_while_placeholder_1 
lstm_255_while_placeholder_2 
lstm_255_while_placeholder_3-
)lstm_255_while_lstm_255_strided_slice_1_0i
elstm_255_while_tensorarrayv2read_tensorlistgetitem_lstm_255_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_255_while_lstm_cell_375_matmul_readvariableop_resource_0:	?R
?lstm_255_while_lstm_cell_375_matmul_1_readvariableop_resource_0:	d?M
>lstm_255_while_lstm_cell_375_biasadd_readvariableop_resource_0:	?
lstm_255_while_identity
lstm_255_while_identity_1
lstm_255_while_identity_2
lstm_255_while_identity_3
lstm_255_while_identity_4
lstm_255_while_identity_5+
'lstm_255_while_lstm_255_strided_slice_1g
clstm_255_while_tensorarrayv2read_tensorlistgetitem_lstm_255_tensorarrayunstack_tensorlistfromtensorN
;lstm_255_while_lstm_cell_375_matmul_readvariableop_resource:	?P
=lstm_255_while_lstm_cell_375_matmul_1_readvariableop_resource:	d?K
<lstm_255_while_lstm_cell_375_biasadd_readvariableop_resource:	???3lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOp?2lstm_255/while/lstm_cell_375/MatMul/ReadVariableOp?4lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOp?
@lstm_255/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_255/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_255_while_tensorarrayv2read_tensorlistgetitem_lstm_255_tensorarrayunstack_tensorlistfromtensor_0lstm_255_while_placeholderIlstm_255/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_255/while/lstm_cell_375/MatMul/ReadVariableOpReadVariableOp=lstm_255_while_lstm_cell_375_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_255/while/lstm_cell_375/MatMulMatMul9lstm_255/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_255/while/lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOp?lstm_255_while_lstm_cell_375_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_255/while/lstm_cell_375/MatMul_1MatMullstm_255_while_placeholder_2<lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_255/while/lstm_cell_375/addAddV2-lstm_255/while/lstm_cell_375/MatMul:product:0/lstm_255/while/lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOp>lstm_255_while_lstm_cell_375_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_255/while/lstm_cell_375/BiasAddBiasAdd$lstm_255/while/lstm_cell_375/add:z:0;lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_255/while/lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_255/while/lstm_cell_375/splitSplit5lstm_255/while/lstm_cell_375/split/split_dim:output:0-lstm_255/while/lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_255/while/lstm_cell_375/SigmoidSigmoid+lstm_255/while/lstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_255/while/lstm_cell_375/Sigmoid_1Sigmoid+lstm_255/while/lstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_255/while/lstm_cell_375/mulMul*lstm_255/while/lstm_cell_375/Sigmoid_1:y:0lstm_255_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_255/while/lstm_cell_375/ReluRelu+lstm_255/while/lstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_255/while/lstm_cell_375/mul_1Mul(lstm_255/while/lstm_cell_375/Sigmoid:y:0/lstm_255/while/lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_255/while/lstm_cell_375/add_1AddV2$lstm_255/while/lstm_cell_375/mul:z:0&lstm_255/while/lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_255/while/lstm_cell_375/Sigmoid_2Sigmoid+lstm_255/while/lstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_255/while/lstm_cell_375/Relu_1Relu&lstm_255/while/lstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_255/while/lstm_cell_375/mul_2Mul*lstm_255/while/lstm_cell_375/Sigmoid_2:y:01lstm_255/while/lstm_cell_375/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_255/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_255_while_placeholder_1lstm_255_while_placeholder&lstm_255/while/lstm_cell_375/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_255/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_255/while/addAddV2lstm_255_while_placeholderlstm_255/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_255/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_255/while/add_1AddV2*lstm_255_while_lstm_255_while_loop_counterlstm_255/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_255/while/IdentityIdentitylstm_255/while/add_1:z:0^lstm_255/while/NoOp*
T0*
_output_shapes
: ?
lstm_255/while/Identity_1Identity0lstm_255_while_lstm_255_while_maximum_iterations^lstm_255/while/NoOp*
T0*
_output_shapes
: t
lstm_255/while/Identity_2Identitylstm_255/while/add:z:0^lstm_255/while/NoOp*
T0*
_output_shapes
: ?
lstm_255/while/Identity_3IdentityClstm_255/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_255/while/NoOp*
T0*
_output_shapes
: ?
lstm_255/while/Identity_4Identity&lstm_255/while/lstm_cell_375/mul_2:z:0^lstm_255/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_255/while/Identity_5Identity&lstm_255/while/lstm_cell_375/add_1:z:0^lstm_255/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_255/while/NoOpNoOp4^lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOp3^lstm_255/while/lstm_cell_375/MatMul/ReadVariableOp5^lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_255_while_identity lstm_255/while/Identity:output:0"?
lstm_255_while_identity_1"lstm_255/while/Identity_1:output:0"?
lstm_255_while_identity_2"lstm_255/while/Identity_2:output:0"?
lstm_255_while_identity_3"lstm_255/while/Identity_3:output:0"?
lstm_255_while_identity_4"lstm_255/while/Identity_4:output:0"?
lstm_255_while_identity_5"lstm_255/while/Identity_5:output:0"T
'lstm_255_while_lstm_255_strided_slice_1)lstm_255_while_lstm_255_strided_slice_1_0"~
<lstm_255_while_lstm_cell_375_biasadd_readvariableop_resource>lstm_255_while_lstm_cell_375_biasadd_readvariableop_resource_0"?
=lstm_255_while_lstm_cell_375_matmul_1_readvariableop_resource?lstm_255_while_lstm_cell_375_matmul_1_readvariableop_resource_0"|
;lstm_255_while_lstm_cell_375_matmul_readvariableop_resource=lstm_255_while_lstm_cell_375_matmul_readvariableop_resource_0"?
clstm_255_while_tensorarrayv2read_tensorlistgetitem_lstm_255_tensorarrayunstack_tensorlistfromtensorelstm_255_while_tensorarrayv2read_tensorlistgetitem_lstm_255_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOp3lstm_255/while/lstm_cell_375/BiasAdd/ReadVariableOp2h
2lstm_255/while/lstm_cell_375/MatMul/ReadVariableOp2lstm_255/while/lstm_cell_375/MatMul/ReadVariableOp2l
4lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOp4lstm_255/while/lstm_cell_375/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2282590
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2282590___redundant_placeholder05
1while_while_cond_2282590___redundant_placeholder15
1while_while_cond_2282590___redundant_placeholder25
1while_while_cond_2282590___redundant_placeholder3
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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2285690
inputs_0>
,lstm_cell_377_matmul_readvariableop_resource:2(@
.lstm_cell_377_matmul_1_readvariableop_resource:
(;
-lstm_cell_377_biasadd_readvariableop_resource:(
identity??$lstm_cell_377/BiasAdd/ReadVariableOp?#lstm_cell_377/MatMul/ReadVariableOp?%lstm_cell_377/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_377/MatMul/ReadVariableOpReadVariableOp,lstm_cell_377_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_377/MatMulMatMulstrided_slice_2:output:0+lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_377_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_377/MatMul_1MatMulzeros:output:0-lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_377/addAddV2lstm_cell_377/MatMul:product:0 lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_377_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_377/BiasAddBiasAddlstm_cell_377/add:z:0,lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_377/splitSplit&lstm_cell_377/split/split_dim:output:0lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_377/SigmoidSigmoidlstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_377/Sigmoid_1Sigmoidlstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_377/mulMullstm_cell_377/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_377/ReluRelulstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_377/mul_1Mullstm_cell_377/Sigmoid:y:0 lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_377/add_1AddV2lstm_cell_377/mul:z:0lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_377/Sigmoid_2Sigmoidlstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_377/Relu_1Relulstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_377/mul_2Mullstm_cell_377/Sigmoid_2:y:0"lstm_cell_377/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_377_matmul_readvariableop_resource.lstm_cell_377_matmul_1_readvariableop_resource-lstm_cell_377_biasadd_readvariableop_resource*
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
while_body_2285606*
condR
while_cond_2285605*K
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
NoOpNoOp%^lstm_cell_377/BiasAdd/ReadVariableOp$^lstm_cell_377/MatMul/ReadVariableOp&^lstm_cell_377/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_377/BiasAdd/ReadVariableOp$lstm_cell_377/BiasAdd/ReadVariableOp2J
#lstm_cell_377/MatMul/ReadVariableOp#lstm_cell_377/MatMul/ReadVariableOp2N
%lstm_cell_377/MatMul_1/ReadVariableOp%lstm_cell_377/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?8
?
while_body_2285606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_377_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_377_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_377_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_377_matmul_readvariableop_resource:2(F
4while_lstm_cell_377_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_377_biasadd_readvariableop_resource:(??*while/lstm_cell_377/BiasAdd/ReadVariableOp?)while/lstm_cell_377/MatMul/ReadVariableOp?+while/lstm_cell_377/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_377/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_377_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_377/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_377_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_377/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_377/addAddV2$while/lstm_cell_377/MatMul:product:0&while/lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_377_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_377/BiasAddBiasAddwhile/lstm_cell_377/add:z:02while/lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_377/splitSplit,while/lstm_cell_377/split/split_dim:output:0$while/lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_377/SigmoidSigmoid"while/lstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_377/Sigmoid_1Sigmoid"while/lstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mulMul!while/lstm_cell_377/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_377/ReluRelu"while/lstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mul_1Mulwhile/lstm_cell_377/Sigmoid:y:0&while/lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/add_1AddV2while/lstm_cell_377/mul:z:0while/lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_377/Sigmoid_2Sigmoid"while/lstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_377/Relu_1Reluwhile/lstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mul_2Mul!while/lstm_cell_377/Sigmoid_2:y:0(while/lstm_cell_377/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_377/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_377/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_377/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_377/BiasAdd/ReadVariableOp*^while/lstm_cell_377/MatMul/ReadVariableOp,^while/lstm_cell_377/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_377_biasadd_readvariableop_resource5while_lstm_cell_377_biasadd_readvariableop_resource_0"n
4while_lstm_cell_377_matmul_1_readvariableop_resource6while_lstm_cell_377_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_377_matmul_readvariableop_resource4while_lstm_cell_377_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_377/BiasAdd/ReadVariableOp*while/lstm_cell_377/BiasAdd/ReadVariableOp2V
)while/lstm_cell_377/MatMul/ReadVariableOp)while/lstm_cell_377/MatMul/ReadVariableOp2Z
+while/lstm_cell_377/MatMul_1/ReadVariableOp+while/lstm_cell_377/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_85_layer_call_and_return_conditional_losses_2283073

inputs#
lstm_255_2283046:	?#
lstm_255_2283048:	d?
lstm_255_2283050:	?#
lstm_256_2283053:	d?#
lstm_256_2283055:	2?
lstm_256_2283057:	?"
lstm_257_2283060:2("
lstm_257_2283062:
(
lstm_257_2283064:("
dense_85_2283067:

dense_85_2283069:
identity?? dense_85/StatefulPartitionedCall? lstm_255/StatefulPartitionedCall? lstm_256/StatefulPartitionedCall? lstm_257/StatefulPartitionedCall?
 lstm_255/StatefulPartitionedCallStatefulPartitionedCallinputslstm_255_2283046lstm_255_2283048lstm_255_2283050*
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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2283005?
 lstm_256/StatefulPartitionedCallStatefulPartitionedCall)lstm_255/StatefulPartitionedCall:output:0lstm_256_2283053lstm_256_2283055lstm_256_2283057*
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
E__inference_lstm_256_layer_call_and_return_conditional_losses_2282840?
 lstm_257/StatefulPartitionedCallStatefulPartitionedCall)lstm_256/StatefulPartitionedCall:output:0lstm_257_2283060lstm_257_2283062lstm_257_2283064*
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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2282675?
 dense_85/StatefulPartitionedCallStatefulPartitionedCall)lstm_257/StatefulPartitionedCall:output:0dense_85_2283067dense_85_2283069*
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
E__inference_dense_85_layer_call_and_return_conditional_losses_2282477x
IdentityIdentity)dense_85/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_85/StatefulPartitionedCall!^lstm_255/StatefulPartitionedCall!^lstm_256/StatefulPartitionedCall!^lstm_257/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_85/StatefulPartitionedCall dense_85/StatefulPartitionedCall2D
 lstm_255/StatefulPartitionedCall lstm_255/StatefulPartitionedCall2D
 lstm_256/StatefulPartitionedCall lstm_256/StatefulPartitionedCall2D
 lstm_257/StatefulPartitionedCall lstm_257/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
/__inference_sequential_85_layer_call_fn_2283125
lstm_255_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_255_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_85_layer_call_and_return_conditional_losses_2283073o
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
_user_specified_namelstm_255_input
?J
?
E__inference_lstm_256_layer_call_and_return_conditional_losses_2285217

inputs?
,lstm_cell_376_matmul_readvariableop_resource:	d?A
.lstm_cell_376_matmul_1_readvariableop_resource:	2?<
-lstm_cell_376_biasadd_readvariableop_resource:	?
identity??$lstm_cell_376/BiasAdd/ReadVariableOp?#lstm_cell_376/MatMul/ReadVariableOp?%lstm_cell_376/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_376/MatMul/ReadVariableOpReadVariableOp,lstm_cell_376_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_376/MatMulMatMulstrided_slice_2:output:0+lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_376_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_376/MatMul_1MatMulzeros:output:0-lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_376/addAddV2lstm_cell_376/MatMul:product:0 lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_376_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_376/BiasAddBiasAddlstm_cell_376/add:z:0,lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_376/splitSplit&lstm_cell_376/split/split_dim:output:0lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_376/SigmoidSigmoidlstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_376/Sigmoid_1Sigmoidlstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_376/mulMullstm_cell_376/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_376/ReluRelulstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_376/mul_1Mullstm_cell_376/Sigmoid:y:0 lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_376/add_1AddV2lstm_cell_376/mul:z:0lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_376/Sigmoid_2Sigmoidlstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_376/Relu_1Relulstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_376/mul_2Mullstm_cell_376/Sigmoid_2:y:0"lstm_cell_376/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_376_matmul_readvariableop_resource.lstm_cell_376_matmul_1_readvariableop_resource-lstm_cell_376_biasadd_readvariableop_resource*
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
while_body_2285133*
condR
while_cond_2285132*K
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
NoOpNoOp%^lstm_cell_376/BiasAdd/ReadVariableOp$^lstm_cell_376/MatMul/ReadVariableOp&^lstm_cell_376/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_376/BiasAdd/ReadVariableOp$lstm_cell_376/BiasAdd/ReadVariableOp2J
#lstm_cell_376/MatMul/ReadVariableOp#lstm_cell_376/MatMul/ReadVariableOp2N
%lstm_cell_376/MatMul_1/ReadVariableOp%lstm_cell_376/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?8
?
while_body_2285892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_377_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_377_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_377_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_377_matmul_readvariableop_resource:2(F
4while_lstm_cell_377_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_377_biasadd_readvariableop_resource:(??*while/lstm_cell_377/BiasAdd/ReadVariableOp?)while/lstm_cell_377/MatMul/ReadVariableOp?+while/lstm_cell_377/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_377/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_377_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_377/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_377_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_377/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_377/addAddV2$while/lstm_cell_377/MatMul:product:0&while/lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_377_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_377/BiasAddBiasAddwhile/lstm_cell_377/add:z:02while/lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_377/splitSplit,while/lstm_cell_377/split/split_dim:output:0$while/lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_377/SigmoidSigmoid"while/lstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_377/Sigmoid_1Sigmoid"while/lstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mulMul!while/lstm_cell_377/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_377/ReluRelu"while/lstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mul_1Mulwhile/lstm_cell_377/Sigmoid:y:0&while/lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/add_1AddV2while/lstm_cell_377/mul:z:0while/lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_377/Sigmoid_2Sigmoid"while/lstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_377/Relu_1Reluwhile/lstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mul_2Mul!while/lstm_cell_377/Sigmoid_2:y:0(while/lstm_cell_377/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_377/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_377/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_377/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_377/BiasAdd/ReadVariableOp*^while/lstm_cell_377/MatMul/ReadVariableOp,^while/lstm_cell_377/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_377_biasadd_readvariableop_resource5while_lstm_cell_377_biasadd_readvariableop_resource_0"n
4while_lstm_cell_377_matmul_1_readvariableop_resource6while_lstm_cell_377_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_377_matmul_readvariableop_resource4while_lstm_cell_377_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_377/BiasAdd/ReadVariableOp*while/lstm_cell_377/BiasAdd/ReadVariableOp2V
)while/lstm_cell_377/MatMul/ReadVariableOp)while/lstm_cell_377/MatMul/ReadVariableOp2Z
+while/lstm_cell_377/MatMul_1/ReadVariableOp+while/lstm_cell_377/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_257_while_body_2284038.
*lstm_257_while_lstm_257_while_loop_counter4
0lstm_257_while_lstm_257_while_maximum_iterations
lstm_257_while_placeholder 
lstm_257_while_placeholder_1 
lstm_257_while_placeholder_2 
lstm_257_while_placeholder_3-
)lstm_257_while_lstm_257_strided_slice_1_0i
elstm_257_while_tensorarrayv2read_tensorlistgetitem_lstm_257_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_257_while_lstm_cell_377_matmul_readvariableop_resource_0:2(Q
?lstm_257_while_lstm_cell_377_matmul_1_readvariableop_resource_0:
(L
>lstm_257_while_lstm_cell_377_biasadd_readvariableop_resource_0:(
lstm_257_while_identity
lstm_257_while_identity_1
lstm_257_while_identity_2
lstm_257_while_identity_3
lstm_257_while_identity_4
lstm_257_while_identity_5+
'lstm_257_while_lstm_257_strided_slice_1g
clstm_257_while_tensorarrayv2read_tensorlistgetitem_lstm_257_tensorarrayunstack_tensorlistfromtensorM
;lstm_257_while_lstm_cell_377_matmul_readvariableop_resource:2(O
=lstm_257_while_lstm_cell_377_matmul_1_readvariableop_resource:
(J
<lstm_257_while_lstm_cell_377_biasadd_readvariableop_resource:(??3lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOp?2lstm_257/while/lstm_cell_377/MatMul/ReadVariableOp?4lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOp?
@lstm_257/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_257/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_257_while_tensorarrayv2read_tensorlistgetitem_lstm_257_tensorarrayunstack_tensorlistfromtensor_0lstm_257_while_placeholderIlstm_257/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_257/while/lstm_cell_377/MatMul/ReadVariableOpReadVariableOp=lstm_257_while_lstm_cell_377_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_257/while/lstm_cell_377/MatMulMatMul9lstm_257/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_257/while/lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOp?lstm_257_while_lstm_cell_377_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_257/while/lstm_cell_377/MatMul_1MatMullstm_257_while_placeholder_2<lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_257/while/lstm_cell_377/addAddV2-lstm_257/while/lstm_cell_377/MatMul:product:0/lstm_257/while/lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOp>lstm_257_while_lstm_cell_377_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_257/while/lstm_cell_377/BiasAddBiasAdd$lstm_257/while/lstm_cell_377/add:z:0;lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_257/while/lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_257/while/lstm_cell_377/splitSplit5lstm_257/while/lstm_cell_377/split/split_dim:output:0-lstm_257/while/lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_257/while/lstm_cell_377/SigmoidSigmoid+lstm_257/while/lstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_257/while/lstm_cell_377/Sigmoid_1Sigmoid+lstm_257/while/lstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_257/while/lstm_cell_377/mulMul*lstm_257/while/lstm_cell_377/Sigmoid_1:y:0lstm_257_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_257/while/lstm_cell_377/ReluRelu+lstm_257/while/lstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_257/while/lstm_cell_377/mul_1Mul(lstm_257/while/lstm_cell_377/Sigmoid:y:0/lstm_257/while/lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_257/while/lstm_cell_377/add_1AddV2$lstm_257/while/lstm_cell_377/mul:z:0&lstm_257/while/lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_257/while/lstm_cell_377/Sigmoid_2Sigmoid+lstm_257/while/lstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_257/while/lstm_cell_377/Relu_1Relu&lstm_257/while/lstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_257/while/lstm_cell_377/mul_2Mul*lstm_257/while/lstm_cell_377/Sigmoid_2:y:01lstm_257/while/lstm_cell_377/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_257/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_257_while_placeholder_1lstm_257_while_placeholder&lstm_257/while/lstm_cell_377/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_257/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_257/while/addAddV2lstm_257_while_placeholderlstm_257/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_257/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_257/while/add_1AddV2*lstm_257_while_lstm_257_while_loop_counterlstm_257/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_257/while/IdentityIdentitylstm_257/while/add_1:z:0^lstm_257/while/NoOp*
T0*
_output_shapes
: ?
lstm_257/while/Identity_1Identity0lstm_257_while_lstm_257_while_maximum_iterations^lstm_257/while/NoOp*
T0*
_output_shapes
: t
lstm_257/while/Identity_2Identitylstm_257/while/add:z:0^lstm_257/while/NoOp*
T0*
_output_shapes
: ?
lstm_257/while/Identity_3IdentityClstm_257/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_257/while/NoOp*
T0*
_output_shapes
: ?
lstm_257/while/Identity_4Identity&lstm_257/while/lstm_cell_377/mul_2:z:0^lstm_257/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_257/while/Identity_5Identity&lstm_257/while/lstm_cell_377/add_1:z:0^lstm_257/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_257/while/NoOpNoOp4^lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOp3^lstm_257/while/lstm_cell_377/MatMul/ReadVariableOp5^lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_257_while_identity lstm_257/while/Identity:output:0"?
lstm_257_while_identity_1"lstm_257/while/Identity_1:output:0"?
lstm_257_while_identity_2"lstm_257/while/Identity_2:output:0"?
lstm_257_while_identity_3"lstm_257/while/Identity_3:output:0"?
lstm_257_while_identity_4"lstm_257/while/Identity_4:output:0"?
lstm_257_while_identity_5"lstm_257/while/Identity_5:output:0"T
'lstm_257_while_lstm_257_strided_slice_1)lstm_257_while_lstm_257_strided_slice_1_0"~
<lstm_257_while_lstm_cell_377_biasadd_readvariableop_resource>lstm_257_while_lstm_cell_377_biasadd_readvariableop_resource_0"?
=lstm_257_while_lstm_cell_377_matmul_1_readvariableop_resource?lstm_257_while_lstm_cell_377_matmul_1_readvariableop_resource_0"|
;lstm_257_while_lstm_cell_377_matmul_readvariableop_resource=lstm_257_while_lstm_cell_377_matmul_readvariableop_resource_0"?
clstm_257_while_tensorarrayv2read_tensorlistgetitem_lstm_257_tensorarrayunstack_tensorlistfromtensorelstm_257_while_tensorarrayv2read_tensorlistgetitem_lstm_257_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOp3lstm_257/while/lstm_cell_377/BiasAdd/ReadVariableOp2h
2lstm_257/while/lstm_cell_377/MatMul/ReadVariableOp2lstm_257/while/lstm_cell_377/MatMul/ReadVariableOp2l
4lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOp4lstm_257/while/lstm_cell_377/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_2282374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2282374___redundant_placeholder05
1while_while_cond_2282374___redundant_placeholder15
1while_while_cond_2282374___redundant_placeholder25
1while_while_cond_2282374___redundant_placeholder3
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
while_cond_2281231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2281231___redundant_placeholder05
1while_while_cond_2281231___redundant_placeholder15
1while_while_cond_2281231___redundant_placeholder25
1while_while_cond_2281231___redundant_placeholder3
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
while_body_2284231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_375_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_375_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_375_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_375_matmul_readvariableop_resource:	?G
4while_lstm_cell_375_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_375_biasadd_readvariableop_resource:	???*while/lstm_cell_375/BiasAdd/ReadVariableOp?)while/lstm_cell_375/MatMul/ReadVariableOp?+while/lstm_cell_375/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_375/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_375_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_375/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_375_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_375/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_375/addAddV2$while/lstm_cell_375/MatMul:product:0&while/lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_375_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_375/BiasAddBiasAddwhile/lstm_cell_375/add:z:02while/lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_375/splitSplit,while/lstm_cell_375/split/split_dim:output:0$while/lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_375/SigmoidSigmoid"while/lstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_375/Sigmoid_1Sigmoid"while/lstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mulMul!while/lstm_cell_375/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_375/ReluRelu"while/lstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mul_1Mulwhile/lstm_cell_375/Sigmoid:y:0&while/lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/add_1AddV2while/lstm_cell_375/mul:z:0while/lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_375/Sigmoid_2Sigmoid"while/lstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_375/Relu_1Reluwhile/lstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mul_2Mul!while/lstm_cell_375/Sigmoid_2:y:0(while/lstm_cell_375/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_375/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_375/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_375/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_375/BiasAdd/ReadVariableOp*^while/lstm_cell_375/MatMul/ReadVariableOp,^while/lstm_cell_375/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_375_biasadd_readvariableop_resource5while_lstm_cell_375_biasadd_readvariableop_resource_0"n
4while_lstm_cell_375_matmul_1_readvariableop_resource6while_lstm_cell_375_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_375_matmul_readvariableop_resource4while_lstm_cell_375_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_375/BiasAdd/ReadVariableOp*while/lstm_cell_375/BiasAdd/ReadVariableOp2V
)while/lstm_cell_375/MatMul/ReadVariableOp)while/lstm_cell_375/MatMul/ReadVariableOp2Z
+while/lstm_cell_375/MatMul_1/ReadVariableOp+while/lstm_cell_375/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_257_layer_call_fn_2285404

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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2282675o
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
lstm_256_while_cond_2283898.
*lstm_256_while_lstm_256_while_loop_counter4
0lstm_256_while_lstm_256_while_maximum_iterations
lstm_256_while_placeholder 
lstm_256_while_placeholder_1 
lstm_256_while_placeholder_2 
lstm_256_while_placeholder_30
,lstm_256_while_less_lstm_256_strided_slice_1G
Clstm_256_while_lstm_256_while_cond_2283898___redundant_placeholder0G
Clstm_256_while_lstm_256_while_cond_2283898___redundant_placeholder1G
Clstm_256_while_lstm_256_while_cond_2283898___redundant_placeholder2G
Clstm_256_while_lstm_256_while_cond_2283898___redundant_placeholder3
lstm_256_while_identity
?
lstm_256/while/LessLesslstm_256_while_placeholder,lstm_256_while_less_lstm_256_strided_slice_1*
T0*
_output_shapes
: ]
lstm_256/while/IdentityIdentitylstm_256/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_256_while_identity lstm_256/while/Identity:output:0*(
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
while_cond_2285275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2285275___redundant_placeholder05
1while_while_cond_2285275___redundant_placeholder15
1while_while_cond_2285275___redundant_placeholder25
1while_while_cond_2285275___redundant_placeholder3
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
while_cond_2284373
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2284373___redundant_placeholder05
1while_while_cond_2284373___redundant_placeholder15
1while_while_cond_2284373___redundant_placeholder25
1while_while_cond_2284373___redundant_placeholder3
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
while_body_2282756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_376_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_376_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_376_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_376_matmul_readvariableop_resource:	d?G
4while_lstm_cell_376_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_376_biasadd_readvariableop_resource:	???*while/lstm_cell_376/BiasAdd/ReadVariableOp?)while/lstm_cell_376/MatMul/ReadVariableOp?+while/lstm_cell_376/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_376/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_376_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_376/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_376_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_376/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_376/addAddV2$while/lstm_cell_376/MatMul:product:0&while/lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_376_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_376/BiasAddBiasAddwhile/lstm_cell_376/add:z:02while/lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_376/splitSplit,while/lstm_cell_376/split/split_dim:output:0$while/lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_376/SigmoidSigmoid"while/lstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_376/Sigmoid_1Sigmoid"while/lstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mulMul!while/lstm_cell_376/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_376/ReluRelu"while/lstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mul_1Mulwhile/lstm_cell_376/Sigmoid:y:0&while/lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/add_1AddV2while/lstm_cell_376/mul:z:0while/lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_376/Sigmoid_2Sigmoid"while/lstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_376/Relu_1Reluwhile/lstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mul_2Mul!while/lstm_cell_376/Sigmoid_2:y:0(while/lstm_cell_376/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_376/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_376/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_376/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_376/BiasAdd/ReadVariableOp*^while/lstm_cell_376/MatMul/ReadVariableOp,^while/lstm_cell_376/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_376_biasadd_readvariableop_resource5while_lstm_cell_376_biasadd_readvariableop_resource_0"n
4while_lstm_cell_376_matmul_1_readvariableop_resource6while_lstm_cell_376_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_376_matmul_readvariableop_resource4while_lstm_cell_376_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_376/BiasAdd/ReadVariableOp*while/lstm_cell_376/BiasAdd/ReadVariableOp2V
)while/lstm_cell_376/MatMul/ReadVariableOp)while/lstm_cell_376/MatMul/ReadVariableOp2Z
+while/lstm_cell_376/MatMul_1/ReadVariableOp+while/lstm_cell_376/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2282375
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_377_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_377_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_377_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_377_matmul_readvariableop_resource:2(F
4while_lstm_cell_377_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_377_biasadd_readvariableop_resource:(??*while/lstm_cell_377/BiasAdd/ReadVariableOp?)while/lstm_cell_377/MatMul/ReadVariableOp?+while/lstm_cell_377/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_377/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_377_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_377/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_377_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_377/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_377/addAddV2$while/lstm_cell_377/MatMul:product:0&while/lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_377_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_377/BiasAddBiasAddwhile/lstm_cell_377/add:z:02while/lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_377/splitSplit,while/lstm_cell_377/split/split_dim:output:0$while/lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_377/SigmoidSigmoid"while/lstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_377/Sigmoid_1Sigmoid"while/lstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mulMul!while/lstm_cell_377/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_377/ReluRelu"while/lstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mul_1Mulwhile/lstm_cell_377/Sigmoid:y:0&while/lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/add_1AddV2while/lstm_cell_377/mul:z:0while/lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_377/Sigmoid_2Sigmoid"while/lstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_377/Relu_1Reluwhile/lstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_377/mul_2Mul!while/lstm_cell_377/Sigmoid_2:y:0(while/lstm_cell_377/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_377/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_377/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_377/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_377/BiasAdd/ReadVariableOp*^while/lstm_cell_377/MatMul/ReadVariableOp,^while/lstm_cell_377/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_377_biasadd_readvariableop_resource5while_lstm_cell_377_biasadd_readvariableop_resource_0"n
4while_lstm_cell_377_matmul_1_readvariableop_resource6while_lstm_cell_377_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_377_matmul_readvariableop_resource4while_lstm_cell_377_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_377/BiasAdd/ReadVariableOp*while/lstm_cell_377/BiasAdd/ReadVariableOp2V
)while/lstm_cell_377/MatMul/ReadVariableOp)while/lstm_cell_377/MatMul/ReadVariableOp2Z
+while/lstm_cell_377/MatMul_1/ReadVariableOp+while/lstm_cell_377/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_256_layer_call_fn_2284755
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
E__inference_lstm_256_layer_call_and_return_conditional_losses_2281460|
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
?
E__inference_dense_85_layer_call_and_return_conditional_losses_2282477

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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2284458
inputs_0?
,lstm_cell_375_matmul_readvariableop_resource:	?A
.lstm_cell_375_matmul_1_readvariableop_resource:	d?<
-lstm_cell_375_biasadd_readvariableop_resource:	?
identity??$lstm_cell_375/BiasAdd/ReadVariableOp?#lstm_cell_375/MatMul/ReadVariableOp?%lstm_cell_375/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_375/MatMul/ReadVariableOpReadVariableOp,lstm_cell_375_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_375/MatMulMatMulstrided_slice_2:output:0+lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_375_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_375/MatMul_1MatMulzeros:output:0-lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_375/addAddV2lstm_cell_375/MatMul:product:0 lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_375_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_375/BiasAddBiasAddlstm_cell_375/add:z:0,lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_375/splitSplit&lstm_cell_375/split/split_dim:output:0lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_375/SigmoidSigmoidlstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_375/Sigmoid_1Sigmoidlstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_375/mulMullstm_cell_375/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_375/ReluRelulstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_375/mul_1Mullstm_cell_375/Sigmoid:y:0 lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_375/add_1AddV2lstm_cell_375/mul:z:0lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_375/Sigmoid_2Sigmoidlstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_375/Relu_1Relulstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_375/mul_2Mullstm_cell_375/Sigmoid_2:y:0"lstm_cell_375/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_375_matmul_readvariableop_resource.lstm_cell_375_matmul_1_readvariableop_resource-lstm_cell_375_biasadd_readvariableop_resource*
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
while_body_2284374*
condR
while_cond_2284373*K
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
NoOpNoOp%^lstm_cell_375/BiasAdd/ReadVariableOp$^lstm_cell_375/MatMul/ReadVariableOp&^lstm_cell_375/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_375/BiasAdd/ReadVariableOp$lstm_cell_375/BiasAdd/ReadVariableOp2J
#lstm_cell_375/MatMul/ReadVariableOp#lstm_cell_375/MatMul/ReadVariableOp2N
%lstm_cell_375/MatMul_1/ReadVariableOp%lstm_cell_375/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?

?
%__inference_signature_wrapper_2283220
lstm_255_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_255_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_2280960o
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
_user_specified_namelstm_255_input
?8
?
while_body_2284517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_375_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_375_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_375_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_375_matmul_readvariableop_resource:	?G
4while_lstm_cell_375_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_375_biasadd_readvariableop_resource:	???*while/lstm_cell_375/BiasAdd/ReadVariableOp?)while/lstm_cell_375/MatMul/ReadVariableOp?+while/lstm_cell_375/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_375/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_375_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_375/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_375_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_375/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_375/addAddV2$while/lstm_cell_375/MatMul:product:0&while/lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_375_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_375/BiasAddBiasAddwhile/lstm_cell_375/add:z:02while/lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_375/splitSplit,while/lstm_cell_375/split/split_dim:output:0$while/lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_375/SigmoidSigmoid"while/lstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_375/Sigmoid_1Sigmoid"while/lstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mulMul!while/lstm_cell_375/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_375/ReluRelu"while/lstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mul_1Mulwhile/lstm_cell_375/Sigmoid:y:0&while/lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/add_1AddV2while/lstm_cell_375/mul:z:0while/lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_375/Sigmoid_2Sigmoid"while/lstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_375/Relu_1Reluwhile/lstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_375/mul_2Mul!while/lstm_cell_375/Sigmoid_2:y:0(while/lstm_cell_375/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_375/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_375/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_375/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_375/BiasAdd/ReadVariableOp*^while/lstm_cell_375/MatMul/ReadVariableOp,^while/lstm_cell_375/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_375_biasadd_readvariableop_resource5while_lstm_cell_375_biasadd_readvariableop_resource_0"n
4while_lstm_cell_375_matmul_1_readvariableop_resource6while_lstm_cell_375_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_375_matmul_readvariableop_resource4while_lstm_cell_375_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_375/BiasAdd/ReadVariableOp*while/lstm_cell_375/BiasAdd/ReadVariableOp2V
)while/lstm_cell_375/MatMul/ReadVariableOp)while/lstm_cell_375/MatMul/ReadVariableOp2Z
+while/lstm_cell_375/MatMul_1/ReadVariableOp+while/lstm_cell_375/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_375_layer_call_fn_2286012

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
J__inference_lstm_cell_375_layer_call_and_return_conditional_losses_2281027o
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
while_cond_2285748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2285748___redundant_placeholder05
1while_while_cond_2285748___redundant_placeholder15
1while_while_cond_2285748___redundant_placeholder25
1while_while_cond_2285748___redundant_placeholder3
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
J__inference_lstm_cell_377_layer_call_and_return_conditional_losses_2286289

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
J__inference_lstm_cell_376_layer_call_and_return_conditional_losses_2281523

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

?
/__inference_sequential_85_layer_call_fn_2283274

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
J__inference_sequential_85_layer_call_and_return_conditional_losses_2283073o
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
*__inference_lstm_256_layer_call_fn_2284766
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
E__inference_lstm_256_layer_call_and_return_conditional_losses_2281651|
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
while_body_2284847
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_376_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_376_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_376_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_376_matmul_readvariableop_resource:	d?G
4while_lstm_cell_376_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_376_biasadd_readvariableop_resource:	???*while/lstm_cell_376/BiasAdd/ReadVariableOp?)while/lstm_cell_376/MatMul/ReadVariableOp?+while/lstm_cell_376/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_376/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_376_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_376/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_376_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_376/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_376/addAddV2$while/lstm_cell_376/MatMul:product:0&while/lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_376_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_376/BiasAddBiasAddwhile/lstm_cell_376/add:z:02while/lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_376/splitSplit,while/lstm_cell_376/split/split_dim:output:0$while/lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_376/SigmoidSigmoid"while/lstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_376/Sigmoid_1Sigmoid"while/lstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mulMul!while/lstm_cell_376/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_376/ReluRelu"while/lstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mul_1Mulwhile/lstm_cell_376/Sigmoid:y:0&while/lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/add_1AddV2while/lstm_cell_376/mul:z:0while/lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_376/Sigmoid_2Sigmoid"while/lstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_376/Relu_1Reluwhile/lstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mul_2Mul!while/lstm_cell_376/Sigmoid_2:y:0(while/lstm_cell_376/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_376/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_376/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_376/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_376/BiasAdd/ReadVariableOp*^while/lstm_cell_376/MatMul/ReadVariableOp,^while/lstm_cell_376/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_376_biasadd_readvariableop_resource5while_lstm_cell_376_biasadd_readvariableop_resource_0"n
4while_lstm_cell_376_matmul_1_readvariableop_resource6while_lstm_cell_376_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_376_matmul_readvariableop_resource4while_lstm_cell_376_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_376/BiasAdd/ReadVariableOp*while/lstm_cell_376/BiasAdd/ReadVariableOp2V
)while/lstm_cell_376/MatMul/ReadVariableOp)while/lstm_cell_376/MatMul/ReadVariableOp2Z
+while/lstm_cell_376/MatMul_1/ReadVariableOp+while/lstm_cell_376/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_2281041
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_375_2281065_0:	?0
while_lstm_cell_375_2281067_0:	d?,
while_lstm_cell_375_2281069_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_375_2281065:	?.
while_lstm_cell_375_2281067:	d?*
while_lstm_cell_375_2281069:	???+while/lstm_cell_375/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_375/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_375_2281065_0while_lstm_cell_375_2281067_0while_lstm_cell_375_2281069_0*
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
J__inference_lstm_cell_375_layer_call_and_return_conditional_losses_2281027?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_375/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_375/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_375/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_375/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_375_2281065while_lstm_cell_375_2281065_0"<
while_lstm_cell_375_2281067while_lstm_cell_375_2281067_0"<
while_lstm_cell_375_2281069while_lstm_cell_375_2281069_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_375/StatefulPartitionedCall+while/lstm_cell_375/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_2284659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2284659___redundant_placeholder05
1while_while_cond_2284659___redundant_placeholder15
1while_while_cond_2284659___redundant_placeholder25
1while_while_cond_2284659___redundant_placeholder3
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
*__inference_lstm_255_layer_call_fn_2284161

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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2282159s
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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2284601

inputs?
,lstm_cell_375_matmul_readvariableop_resource:	?A
.lstm_cell_375_matmul_1_readvariableop_resource:	d?<
-lstm_cell_375_biasadd_readvariableop_resource:	?
identity??$lstm_cell_375/BiasAdd/ReadVariableOp?#lstm_cell_375/MatMul/ReadVariableOp?%lstm_cell_375/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_375/MatMul/ReadVariableOpReadVariableOp,lstm_cell_375_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_375/MatMulMatMulstrided_slice_2:output:0+lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_375_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_375/MatMul_1MatMulzeros:output:0-lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_375/addAddV2lstm_cell_375/MatMul:product:0 lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_375_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_375/BiasAddBiasAddlstm_cell_375/add:z:0,lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_375/splitSplit&lstm_cell_375/split/split_dim:output:0lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_375/SigmoidSigmoidlstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_375/Sigmoid_1Sigmoidlstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_375/mulMullstm_cell_375/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_375/ReluRelulstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_375/mul_1Mullstm_cell_375/Sigmoid:y:0 lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_375/add_1AddV2lstm_cell_375/mul:z:0lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_375/Sigmoid_2Sigmoidlstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_375/Relu_1Relulstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_375/mul_2Mullstm_cell_375/Sigmoid_2:y:0"lstm_cell_375/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_375_matmul_readvariableop_resource.lstm_cell_375_matmul_1_readvariableop_resource-lstm_cell_375_biasadd_readvariableop_resource*
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
while_body_2284517*
condR
while_cond_2284516*K
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
NoOpNoOp%^lstm_cell_375/BiasAdd/ReadVariableOp$^lstm_cell_375/MatMul/ReadVariableOp&^lstm_cell_375/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_375/BiasAdd/ReadVariableOp$lstm_cell_375/BiasAdd/ReadVariableOp2J
#lstm_cell_375/MatMul/ReadVariableOp#lstm_cell_375/MatMul/ReadVariableOp2N
%lstm_cell_375/MatMul_1/ReadVariableOp%lstm_cell_375/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_2284230
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2284230___redundant_placeholder05
1while_while_cond_2284230___redundant_placeholder15
1while_while_cond_2284230___redundant_placeholder25
1while_while_cond_2284230___redundant_placeholder3
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
*__inference_lstm_257_layer_call_fn_2285393

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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2282459o
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
?
/__inference_lstm_cell_375_layer_call_fn_2286029

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
J__inference_lstm_cell_375_layer_call_and_return_conditional_losses_2281173o
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
/__inference_sequential_85_layer_call_fn_2282509
lstm_255_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_255_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_85_layer_call_and_return_conditional_losses_2282484o
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
_user_specified_namelstm_255_input
?
?
*__inference_lstm_256_layer_call_fn_2284777

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
E__inference_lstm_256_layer_call_and_return_conditional_losses_2282309s
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
while_cond_2282755
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2282755___redundant_placeholder05
1while_while_cond_2282755___redundant_placeholder15
1while_while_cond_2282755___redundant_placeholder25
1while_while_cond_2282755___redundant_placeholder3
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
J__inference_lstm_cell_375_layer_call_and_return_conditional_losses_2286061

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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2285547
inputs_0>
,lstm_cell_377_matmul_readvariableop_resource:2(@
.lstm_cell_377_matmul_1_readvariableop_resource:
(;
-lstm_cell_377_biasadd_readvariableop_resource:(
identity??$lstm_cell_377/BiasAdd/ReadVariableOp?#lstm_cell_377/MatMul/ReadVariableOp?%lstm_cell_377/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_377/MatMul/ReadVariableOpReadVariableOp,lstm_cell_377_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_377/MatMulMatMulstrided_slice_2:output:0+lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_377_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_377/MatMul_1MatMulzeros:output:0-lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_377/addAddV2lstm_cell_377/MatMul:product:0 lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_377_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_377/BiasAddBiasAddlstm_cell_377/add:z:0,lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_377/splitSplit&lstm_cell_377/split/split_dim:output:0lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_377/SigmoidSigmoidlstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_377/Sigmoid_1Sigmoidlstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_377/mulMullstm_cell_377/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_377/ReluRelulstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_377/mul_1Mullstm_cell_377/Sigmoid:y:0 lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_377/add_1AddV2lstm_cell_377/mul:z:0lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_377/Sigmoid_2Sigmoidlstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_377/Relu_1Relulstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_377/mul_2Mullstm_cell_377/Sigmoid_2:y:0"lstm_cell_377/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_377_matmul_readvariableop_resource.lstm_cell_377_matmul_1_readvariableop_resource-lstm_cell_377_biasadd_readvariableop_resource*
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
while_body_2285463*
condR
while_cond_2285462*K
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
NoOpNoOp%^lstm_cell_377/BiasAdd/ReadVariableOp$^lstm_cell_377/MatMul/ReadVariableOp&^lstm_cell_377/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_377/BiasAdd/ReadVariableOp$lstm_cell_377/BiasAdd/ReadVariableOp2J
#lstm_cell_377/MatMul/ReadVariableOp#lstm_cell_377/MatMul/ReadVariableOp2N
%lstm_cell_377/MatMul_1/ReadVariableOp%lstm_cell_377/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
while_cond_2281390
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2281390___redundant_placeholder05
1while_while_cond_2281390___redundant_placeholder15
1while_while_cond_2281390___redundant_placeholder25
1while_while_cond_2281390___redundant_placeholder3
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
E__inference_lstm_256_layer_call_and_return_conditional_losses_2282840

inputs?
,lstm_cell_376_matmul_readvariableop_resource:	d?A
.lstm_cell_376_matmul_1_readvariableop_resource:	2?<
-lstm_cell_376_biasadd_readvariableop_resource:	?
identity??$lstm_cell_376/BiasAdd/ReadVariableOp?#lstm_cell_376/MatMul/ReadVariableOp?%lstm_cell_376/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_376/MatMul/ReadVariableOpReadVariableOp,lstm_cell_376_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_376/MatMulMatMulstrided_slice_2:output:0+lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_376_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_376/MatMul_1MatMulzeros:output:0-lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_376/addAddV2lstm_cell_376/MatMul:product:0 lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_376_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_376/BiasAddBiasAddlstm_cell_376/add:z:0,lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_376/splitSplit&lstm_cell_376/split/split_dim:output:0lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_376/SigmoidSigmoidlstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_376/Sigmoid_1Sigmoidlstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_376/mulMullstm_cell_376/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_376/ReluRelulstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_376/mul_1Mullstm_cell_376/Sigmoid:y:0 lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_376/add_1AddV2lstm_cell_376/mul:z:0lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_376/Sigmoid_2Sigmoidlstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_376/Relu_1Relulstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_376/mul_2Mullstm_cell_376/Sigmoid_2:y:0"lstm_cell_376/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_376_matmul_readvariableop_resource.lstm_cell_376_matmul_1_readvariableop_resource-lstm_cell_376_biasadd_readvariableop_resource*
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
while_body_2282756*
condR
while_cond_2282755*K
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
NoOpNoOp%^lstm_cell_376/BiasAdd/ReadVariableOp$^lstm_cell_376/MatMul/ReadVariableOp&^lstm_cell_376/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_376/BiasAdd/ReadVariableOp$lstm_cell_376/BiasAdd/ReadVariableOp2J
#lstm_cell_376/MatMul/ReadVariableOp#lstm_cell_376/MatMul/ReadVariableOp2N
%lstm_cell_376/MatMul_1/ReadVariableOp%lstm_cell_376/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_sequential_85_layer_call_and_return_conditional_losses_2283155
lstm_255_input#
lstm_255_2283128:	?#
lstm_255_2283130:	d?
lstm_255_2283132:	?#
lstm_256_2283135:	d?#
lstm_256_2283137:	2?
lstm_256_2283139:	?"
lstm_257_2283142:2("
lstm_257_2283144:
(
lstm_257_2283146:("
dense_85_2283149:

dense_85_2283151:
identity?? dense_85/StatefulPartitionedCall? lstm_255/StatefulPartitionedCall? lstm_256/StatefulPartitionedCall? lstm_257/StatefulPartitionedCall?
 lstm_255/StatefulPartitionedCallStatefulPartitionedCalllstm_255_inputlstm_255_2283128lstm_255_2283130lstm_255_2283132*
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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2282159?
 lstm_256/StatefulPartitionedCallStatefulPartitionedCall)lstm_255/StatefulPartitionedCall:output:0lstm_256_2283135lstm_256_2283137lstm_256_2283139*
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
E__inference_lstm_256_layer_call_and_return_conditional_losses_2282309?
 lstm_257/StatefulPartitionedCallStatefulPartitionedCall)lstm_256/StatefulPartitionedCall:output:0lstm_257_2283142lstm_257_2283144lstm_257_2283146*
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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2282459?
 dense_85/StatefulPartitionedCallStatefulPartitionedCall)lstm_257/StatefulPartitionedCall:output:0dense_85_2283149dense_85_2283151*
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
E__inference_dense_85_layer_call_and_return_conditional_losses_2282477x
IdentityIdentity)dense_85/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_85/StatefulPartitionedCall!^lstm_255/StatefulPartitionedCall!^lstm_256/StatefulPartitionedCall!^lstm_257/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_85/StatefulPartitionedCall dense_85/StatefulPartitionedCall2D
 lstm_255/StatefulPartitionedCall lstm_255/StatefulPartitionedCall2D
 lstm_256/StatefulPartitionedCall lstm_256/StatefulPartitionedCall2D
 lstm_257/StatefulPartitionedCall lstm_257/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_255_input
?
?
while_cond_2285462
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2285462___redundant_placeholder05
1while_while_cond_2285462___redundant_placeholder15
1while_while_cond_2285462___redundant_placeholder25
1while_while_cond_2285462___redundant_placeholder3
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
while_body_2281232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_375_2281256_0:	?0
while_lstm_cell_375_2281258_0:	d?,
while_lstm_cell_375_2281260_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_375_2281256:	?.
while_lstm_cell_375_2281258:	d?*
while_lstm_cell_375_2281260:	???+while/lstm_cell_375/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_375/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_375_2281256_0while_lstm_cell_375_2281258_0while_lstm_cell_375_2281260_0*
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
J__inference_lstm_cell_375_layer_call_and_return_conditional_losses_2281173?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_375/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_375/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_375/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_375/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_375_2281256while_lstm_cell_375_2281256_0"<
while_lstm_cell_375_2281258while_lstm_cell_375_2281258_0"<
while_lstm_cell_375_2281260while_lstm_cell_375_2281260_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_375/StatefulPartitionedCall+while/lstm_cell_375/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_85_layer_call_and_return_conditional_losses_2284128

inputsH
5lstm_255_lstm_cell_375_matmul_readvariableop_resource:	?J
7lstm_255_lstm_cell_375_matmul_1_readvariableop_resource:	d?E
6lstm_255_lstm_cell_375_biasadd_readvariableop_resource:	?H
5lstm_256_lstm_cell_376_matmul_readvariableop_resource:	d?J
7lstm_256_lstm_cell_376_matmul_1_readvariableop_resource:	2?E
6lstm_256_lstm_cell_376_biasadd_readvariableop_resource:	?G
5lstm_257_lstm_cell_377_matmul_readvariableop_resource:2(I
7lstm_257_lstm_cell_377_matmul_1_readvariableop_resource:
(D
6lstm_257_lstm_cell_377_biasadd_readvariableop_resource:(9
'dense_85_matmul_readvariableop_resource:
6
(dense_85_biasadd_readvariableop_resource:
identity??dense_85/BiasAdd/ReadVariableOp?dense_85/MatMul/ReadVariableOp?-lstm_255/lstm_cell_375/BiasAdd/ReadVariableOp?,lstm_255/lstm_cell_375/MatMul/ReadVariableOp?.lstm_255/lstm_cell_375/MatMul_1/ReadVariableOp?lstm_255/while?-lstm_256/lstm_cell_376/BiasAdd/ReadVariableOp?,lstm_256/lstm_cell_376/MatMul/ReadVariableOp?.lstm_256/lstm_cell_376/MatMul_1/ReadVariableOp?lstm_256/while?-lstm_257/lstm_cell_377/BiasAdd/ReadVariableOp?,lstm_257/lstm_cell_377/MatMul/ReadVariableOp?.lstm_257/lstm_cell_377/MatMul_1/ReadVariableOp?lstm_257/whileD
lstm_255/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_255/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_255/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_255/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_255/strided_sliceStridedSlicelstm_255/Shape:output:0%lstm_255/strided_slice/stack:output:0'lstm_255/strided_slice/stack_1:output:0'lstm_255/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_255/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_255/zeros/packedPacklstm_255/strided_slice:output:0 lstm_255/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_255/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_255/zerosFilllstm_255/zeros/packed:output:0lstm_255/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_255/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_255/zeros_1/packedPacklstm_255/strided_slice:output:0"lstm_255/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_255/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_255/zeros_1Fill lstm_255/zeros_1/packed:output:0lstm_255/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_255/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_255/transpose	Transposeinputs lstm_255/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_255/Shape_1Shapelstm_255/transpose:y:0*
T0*
_output_shapes
:h
lstm_255/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_255/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_255/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_255/strided_slice_1StridedSlicelstm_255/Shape_1:output:0'lstm_255/strided_slice_1/stack:output:0)lstm_255/strided_slice_1/stack_1:output:0)lstm_255/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_255/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_255/TensorArrayV2TensorListReserve-lstm_255/TensorArrayV2/element_shape:output:0!lstm_255/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_255/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_255/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_255/transpose:y:0Glstm_255/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_255/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_255/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_255/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_255/strided_slice_2StridedSlicelstm_255/transpose:y:0'lstm_255/strided_slice_2/stack:output:0)lstm_255/strided_slice_2/stack_1:output:0)lstm_255/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_255/lstm_cell_375/MatMul/ReadVariableOpReadVariableOp5lstm_255_lstm_cell_375_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_255/lstm_cell_375/MatMulMatMul!lstm_255/strided_slice_2:output:04lstm_255/lstm_cell_375/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_255/lstm_cell_375/MatMul_1/ReadVariableOpReadVariableOp7lstm_255_lstm_cell_375_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_255/lstm_cell_375/MatMul_1MatMullstm_255/zeros:output:06lstm_255/lstm_cell_375/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_255/lstm_cell_375/addAddV2'lstm_255/lstm_cell_375/MatMul:product:0)lstm_255/lstm_cell_375/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_255/lstm_cell_375/BiasAdd/ReadVariableOpReadVariableOp6lstm_255_lstm_cell_375_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_255/lstm_cell_375/BiasAddBiasAddlstm_255/lstm_cell_375/add:z:05lstm_255/lstm_cell_375/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_255/lstm_cell_375/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_255/lstm_cell_375/splitSplit/lstm_255/lstm_cell_375/split/split_dim:output:0'lstm_255/lstm_cell_375/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_255/lstm_cell_375/SigmoidSigmoid%lstm_255/lstm_cell_375/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_255/lstm_cell_375/Sigmoid_1Sigmoid%lstm_255/lstm_cell_375/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_255/lstm_cell_375/mulMul$lstm_255/lstm_cell_375/Sigmoid_1:y:0lstm_255/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_255/lstm_cell_375/ReluRelu%lstm_255/lstm_cell_375/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_255/lstm_cell_375/mul_1Mul"lstm_255/lstm_cell_375/Sigmoid:y:0)lstm_255/lstm_cell_375/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_255/lstm_cell_375/add_1AddV2lstm_255/lstm_cell_375/mul:z:0 lstm_255/lstm_cell_375/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_255/lstm_cell_375/Sigmoid_2Sigmoid%lstm_255/lstm_cell_375/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_255/lstm_cell_375/Relu_1Relu lstm_255/lstm_cell_375/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_255/lstm_cell_375/mul_2Mul$lstm_255/lstm_cell_375/Sigmoid_2:y:0+lstm_255/lstm_cell_375/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_255/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_255/TensorArrayV2_1TensorListReserve/lstm_255/TensorArrayV2_1/element_shape:output:0!lstm_255/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_255/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_255/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_255/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_255/whileWhile$lstm_255/while/loop_counter:output:0*lstm_255/while/maximum_iterations:output:0lstm_255/time:output:0!lstm_255/TensorArrayV2_1:handle:0lstm_255/zeros:output:0lstm_255/zeros_1:output:0!lstm_255/strided_slice_1:output:0@lstm_255/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_255_lstm_cell_375_matmul_readvariableop_resource7lstm_255_lstm_cell_375_matmul_1_readvariableop_resource6lstm_255_lstm_cell_375_biasadd_readvariableop_resource*
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
lstm_255_while_body_2283760*'
condR
lstm_255_while_cond_2283759*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_255/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_255/TensorArrayV2Stack/TensorListStackTensorListStacklstm_255/while:output:3Blstm_255/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_255/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_255/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_255/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_255/strided_slice_3StridedSlice4lstm_255/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_255/strided_slice_3/stack:output:0)lstm_255/strided_slice_3/stack_1:output:0)lstm_255/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_255/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_255/transpose_1	Transpose4lstm_255/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_255/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_255/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_256/ShapeShapelstm_255/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_256/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_256/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_256/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_256/strided_sliceStridedSlicelstm_256/Shape:output:0%lstm_256/strided_slice/stack:output:0'lstm_256/strided_slice/stack_1:output:0'lstm_256/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_256/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_256/zeros/packedPacklstm_256/strided_slice:output:0 lstm_256/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_256/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_256/zerosFilllstm_256/zeros/packed:output:0lstm_256/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_256/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_256/zeros_1/packedPacklstm_256/strided_slice:output:0"lstm_256/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_256/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_256/zeros_1Fill lstm_256/zeros_1/packed:output:0lstm_256/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_256/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_256/transpose	Transposelstm_255/transpose_1:y:0 lstm_256/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_256/Shape_1Shapelstm_256/transpose:y:0*
T0*
_output_shapes
:h
lstm_256/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_256/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_256/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_256/strided_slice_1StridedSlicelstm_256/Shape_1:output:0'lstm_256/strided_slice_1/stack:output:0)lstm_256/strided_slice_1/stack_1:output:0)lstm_256/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_256/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_256/TensorArrayV2TensorListReserve-lstm_256/TensorArrayV2/element_shape:output:0!lstm_256/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_256/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_256/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_256/transpose:y:0Glstm_256/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_256/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_256/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_256/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_256/strided_slice_2StridedSlicelstm_256/transpose:y:0'lstm_256/strided_slice_2/stack:output:0)lstm_256/strided_slice_2/stack_1:output:0)lstm_256/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_256/lstm_cell_376/MatMul/ReadVariableOpReadVariableOp5lstm_256_lstm_cell_376_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_256/lstm_cell_376/MatMulMatMul!lstm_256/strided_slice_2:output:04lstm_256/lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_256/lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOp7lstm_256_lstm_cell_376_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_256/lstm_cell_376/MatMul_1MatMullstm_256/zeros:output:06lstm_256/lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_256/lstm_cell_376/addAddV2'lstm_256/lstm_cell_376/MatMul:product:0)lstm_256/lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_256/lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOp6lstm_256_lstm_cell_376_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_256/lstm_cell_376/BiasAddBiasAddlstm_256/lstm_cell_376/add:z:05lstm_256/lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_256/lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_256/lstm_cell_376/splitSplit/lstm_256/lstm_cell_376/split/split_dim:output:0'lstm_256/lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_256/lstm_cell_376/SigmoidSigmoid%lstm_256/lstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_256/lstm_cell_376/Sigmoid_1Sigmoid%lstm_256/lstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_256/lstm_cell_376/mulMul$lstm_256/lstm_cell_376/Sigmoid_1:y:0lstm_256/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_256/lstm_cell_376/ReluRelu%lstm_256/lstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_256/lstm_cell_376/mul_1Mul"lstm_256/lstm_cell_376/Sigmoid:y:0)lstm_256/lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_256/lstm_cell_376/add_1AddV2lstm_256/lstm_cell_376/mul:z:0 lstm_256/lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_256/lstm_cell_376/Sigmoid_2Sigmoid%lstm_256/lstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_256/lstm_cell_376/Relu_1Relu lstm_256/lstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_256/lstm_cell_376/mul_2Mul$lstm_256/lstm_cell_376/Sigmoid_2:y:0+lstm_256/lstm_cell_376/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_256/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_256/TensorArrayV2_1TensorListReserve/lstm_256/TensorArrayV2_1/element_shape:output:0!lstm_256/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_256/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_256/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_256/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_256/whileWhile$lstm_256/while/loop_counter:output:0*lstm_256/while/maximum_iterations:output:0lstm_256/time:output:0!lstm_256/TensorArrayV2_1:handle:0lstm_256/zeros:output:0lstm_256/zeros_1:output:0!lstm_256/strided_slice_1:output:0@lstm_256/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_256_lstm_cell_376_matmul_readvariableop_resource7lstm_256_lstm_cell_376_matmul_1_readvariableop_resource6lstm_256_lstm_cell_376_biasadd_readvariableop_resource*
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
lstm_256_while_body_2283899*'
condR
lstm_256_while_cond_2283898*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_256/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_256/TensorArrayV2Stack/TensorListStackTensorListStacklstm_256/while:output:3Blstm_256/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_256/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_256/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_256/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_256/strided_slice_3StridedSlice4lstm_256/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_256/strided_slice_3/stack:output:0)lstm_256/strided_slice_3/stack_1:output:0)lstm_256/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_256/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_256/transpose_1	Transpose4lstm_256/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_256/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_256/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_257/ShapeShapelstm_256/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_257/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_257/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_257/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_257/strided_sliceStridedSlicelstm_257/Shape:output:0%lstm_257/strided_slice/stack:output:0'lstm_257/strided_slice/stack_1:output:0'lstm_257/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_257/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_257/zeros/packedPacklstm_257/strided_slice:output:0 lstm_257/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_257/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_257/zerosFilllstm_257/zeros/packed:output:0lstm_257/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_257/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_257/zeros_1/packedPacklstm_257/strided_slice:output:0"lstm_257/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_257/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_257/zeros_1Fill lstm_257/zeros_1/packed:output:0lstm_257/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_257/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_257/transpose	Transposelstm_256/transpose_1:y:0 lstm_257/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_257/Shape_1Shapelstm_257/transpose:y:0*
T0*
_output_shapes
:h
lstm_257/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_257/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_257/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_257/strided_slice_1StridedSlicelstm_257/Shape_1:output:0'lstm_257/strided_slice_1/stack:output:0)lstm_257/strided_slice_1/stack_1:output:0)lstm_257/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_257/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_257/TensorArrayV2TensorListReserve-lstm_257/TensorArrayV2/element_shape:output:0!lstm_257/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_257/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_257/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_257/transpose:y:0Glstm_257/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_257/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_257/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_257/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_257/strided_slice_2StridedSlicelstm_257/transpose:y:0'lstm_257/strided_slice_2/stack:output:0)lstm_257/strided_slice_2/stack_1:output:0)lstm_257/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_257/lstm_cell_377/MatMul/ReadVariableOpReadVariableOp5lstm_257_lstm_cell_377_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_257/lstm_cell_377/MatMulMatMul!lstm_257/strided_slice_2:output:04lstm_257/lstm_cell_377/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_257/lstm_cell_377/MatMul_1/ReadVariableOpReadVariableOp7lstm_257_lstm_cell_377_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_257/lstm_cell_377/MatMul_1MatMullstm_257/zeros:output:06lstm_257/lstm_cell_377/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_257/lstm_cell_377/addAddV2'lstm_257/lstm_cell_377/MatMul:product:0)lstm_257/lstm_cell_377/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_257/lstm_cell_377/BiasAdd/ReadVariableOpReadVariableOp6lstm_257_lstm_cell_377_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_257/lstm_cell_377/BiasAddBiasAddlstm_257/lstm_cell_377/add:z:05lstm_257/lstm_cell_377/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_257/lstm_cell_377/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_257/lstm_cell_377/splitSplit/lstm_257/lstm_cell_377/split/split_dim:output:0'lstm_257/lstm_cell_377/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_257/lstm_cell_377/SigmoidSigmoid%lstm_257/lstm_cell_377/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_257/lstm_cell_377/Sigmoid_1Sigmoid%lstm_257/lstm_cell_377/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_257/lstm_cell_377/mulMul$lstm_257/lstm_cell_377/Sigmoid_1:y:0lstm_257/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_257/lstm_cell_377/ReluRelu%lstm_257/lstm_cell_377/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_257/lstm_cell_377/mul_1Mul"lstm_257/lstm_cell_377/Sigmoid:y:0)lstm_257/lstm_cell_377/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_257/lstm_cell_377/add_1AddV2lstm_257/lstm_cell_377/mul:z:0 lstm_257/lstm_cell_377/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_257/lstm_cell_377/Sigmoid_2Sigmoid%lstm_257/lstm_cell_377/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_257/lstm_cell_377/Relu_1Relu lstm_257/lstm_cell_377/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_257/lstm_cell_377/mul_2Mul$lstm_257/lstm_cell_377/Sigmoid_2:y:0+lstm_257/lstm_cell_377/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_257/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_257/TensorArrayV2_1TensorListReserve/lstm_257/TensorArrayV2_1/element_shape:output:0!lstm_257/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_257/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_257/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_257/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_257/whileWhile$lstm_257/while/loop_counter:output:0*lstm_257/while/maximum_iterations:output:0lstm_257/time:output:0!lstm_257/TensorArrayV2_1:handle:0lstm_257/zeros:output:0lstm_257/zeros_1:output:0!lstm_257/strided_slice_1:output:0@lstm_257/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_257_lstm_cell_377_matmul_readvariableop_resource7lstm_257_lstm_cell_377_matmul_1_readvariableop_resource6lstm_257_lstm_cell_377_biasadd_readvariableop_resource*
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
lstm_257_while_body_2284038*'
condR
lstm_257_while_cond_2284037*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_257/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_257/TensorArrayV2Stack/TensorListStackTensorListStacklstm_257/while:output:3Blstm_257/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_257/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_257/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_257/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_257/strided_slice_3StridedSlice4lstm_257/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_257/strided_slice_3/stack:output:0)lstm_257/strided_slice_3/stack_1:output:0)lstm_257/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_257/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_257/transpose_1	Transpose4lstm_257/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_257/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_257/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_85/MatMul/ReadVariableOpReadVariableOp'dense_85_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_85/MatMulMatMul!lstm_257/strided_slice_3:output:0&dense_85/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_85/BiasAdd/ReadVariableOpReadVariableOp(dense_85_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_85/BiasAddBiasAdddense_85/MatMul:product:0'dense_85/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_85/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_85/BiasAdd/ReadVariableOp^dense_85/MatMul/ReadVariableOp.^lstm_255/lstm_cell_375/BiasAdd/ReadVariableOp-^lstm_255/lstm_cell_375/MatMul/ReadVariableOp/^lstm_255/lstm_cell_375/MatMul_1/ReadVariableOp^lstm_255/while.^lstm_256/lstm_cell_376/BiasAdd/ReadVariableOp-^lstm_256/lstm_cell_376/MatMul/ReadVariableOp/^lstm_256/lstm_cell_376/MatMul_1/ReadVariableOp^lstm_256/while.^lstm_257/lstm_cell_377/BiasAdd/ReadVariableOp-^lstm_257/lstm_cell_377/MatMul/ReadVariableOp/^lstm_257/lstm_cell_377/MatMul_1/ReadVariableOp^lstm_257/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_85/BiasAdd/ReadVariableOpdense_85/BiasAdd/ReadVariableOp2@
dense_85/MatMul/ReadVariableOpdense_85/MatMul/ReadVariableOp2^
-lstm_255/lstm_cell_375/BiasAdd/ReadVariableOp-lstm_255/lstm_cell_375/BiasAdd/ReadVariableOp2\
,lstm_255/lstm_cell_375/MatMul/ReadVariableOp,lstm_255/lstm_cell_375/MatMul/ReadVariableOp2`
.lstm_255/lstm_cell_375/MatMul_1/ReadVariableOp.lstm_255/lstm_cell_375/MatMul_1/ReadVariableOp2 
lstm_255/whilelstm_255/while2^
-lstm_256/lstm_cell_376/BiasAdd/ReadVariableOp-lstm_256/lstm_cell_376/BiasAdd/ReadVariableOp2\
,lstm_256/lstm_cell_376/MatMul/ReadVariableOp,lstm_256/lstm_cell_376/MatMul/ReadVariableOp2`
.lstm_256/lstm_cell_376/MatMul_1/ReadVariableOp.lstm_256/lstm_cell_376/MatMul_1/ReadVariableOp2 
lstm_256/whilelstm_256/while2^
-lstm_257/lstm_cell_377/BiasAdd/ReadVariableOp-lstm_257/lstm_cell_377/BiasAdd/ReadVariableOp2\
,lstm_257/lstm_cell_377/MatMul/ReadVariableOp,lstm_257/lstm_cell_377/MatMul/ReadVariableOp2`
.lstm_257/lstm_cell_377/MatMul_1/ReadVariableOp.lstm_257/lstm_cell_377/MatMul_1/ReadVariableOp2 
lstm_257/whilelstm_257/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
while_body_2281391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_376_2281415_0:	d?0
while_lstm_cell_376_2281417_0:	2?,
while_lstm_cell_376_2281419_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_376_2281415:	d?.
while_lstm_cell_376_2281417:	2?*
while_lstm_cell_376_2281419:	???+while/lstm_cell_376/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_376/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_376_2281415_0while_lstm_cell_376_2281417_0while_lstm_cell_376_2281419_0*
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
J__inference_lstm_cell_376_layer_call_and_return_conditional_losses_2281377?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_376/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_376/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_376/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_376/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_376_2281415while_lstm_cell_376_2281415_0"<
while_lstm_cell_376_2281417while_lstm_cell_376_2281417_0"<
while_lstm_cell_376_2281419while_lstm_cell_376_2281419_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_376/StatefulPartitionedCall+while/lstm_cell_376/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
lstm_255_while_cond_2283759.
*lstm_255_while_lstm_255_while_loop_counter4
0lstm_255_while_lstm_255_while_maximum_iterations
lstm_255_while_placeholder 
lstm_255_while_placeholder_1 
lstm_255_while_placeholder_2 
lstm_255_while_placeholder_30
,lstm_255_while_less_lstm_255_strided_slice_1G
Clstm_255_while_lstm_255_while_cond_2283759___redundant_placeholder0G
Clstm_255_while_lstm_255_while_cond_2283759___redundant_placeholder1G
Clstm_255_while_lstm_255_while_cond_2283759___redundant_placeholder2G
Clstm_255_while_lstm_255_while_cond_2283759___redundant_placeholder3
lstm_255_while_identity
?
lstm_255/while/LessLesslstm_255_while_placeholder,lstm_255_while_less_lstm_255_strided_slice_1*
T0*
_output_shapes
: ]
lstm_255/while/IdentityIdentitylstm_255/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_255_while_identity lstm_255/while/Identity:output:0*(
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
J__inference_lstm_cell_377_layer_call_and_return_conditional_losses_2281727

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
while_body_2284990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_376_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_376_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_376_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_376_matmul_readvariableop_resource:	d?G
4while_lstm_cell_376_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_376_biasadd_readvariableop_resource:	???*while/lstm_cell_376/BiasAdd/ReadVariableOp?)while/lstm_cell_376/MatMul/ReadVariableOp?+while/lstm_cell_376/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_376/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_376_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_376/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_376_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_376/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_376/addAddV2$while/lstm_cell_376/MatMul:product:0&while/lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_376_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_376/BiasAddBiasAddwhile/lstm_cell_376/add:z:02while/lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_376/splitSplit,while/lstm_cell_376/split/split_dim:output:0$while/lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_376/SigmoidSigmoid"while/lstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_376/Sigmoid_1Sigmoid"while/lstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mulMul!while/lstm_cell_376/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_376/ReluRelu"while/lstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mul_1Mulwhile/lstm_cell_376/Sigmoid:y:0&while/lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/add_1AddV2while/lstm_cell_376/mul:z:0while/lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_376/Sigmoid_2Sigmoid"while/lstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_376/Relu_1Reluwhile/lstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_376/mul_2Mul!while/lstm_cell_376/Sigmoid_2:y:0(while/lstm_cell_376/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_376/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_376/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_376/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_376/BiasAdd/ReadVariableOp*^while/lstm_cell_376/MatMul/ReadVariableOp,^while/lstm_cell_376/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_376_biasadd_readvariableop_resource5while_lstm_cell_376_biasadd_readvariableop_resource_0"n
4while_lstm_cell_376_matmul_1_readvariableop_resource6while_lstm_cell_376_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_376_matmul_readvariableop_resource4while_lstm_cell_376_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_376/BiasAdd/ReadVariableOp*while/lstm_cell_376/BiasAdd/ReadVariableOp2V
)while/lstm_cell_376/MatMul/ReadVariableOp)while/lstm_cell_376/MatMul/ReadVariableOp2Z
+while/lstm_cell_376/MatMul_1/ReadVariableOp+while/lstm_cell_376/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_85_lstm_256_while_cond_2280730J
Fsequential_85_lstm_256_while_sequential_85_lstm_256_while_loop_counterP
Lsequential_85_lstm_256_while_sequential_85_lstm_256_while_maximum_iterations,
(sequential_85_lstm_256_while_placeholder.
*sequential_85_lstm_256_while_placeholder_1.
*sequential_85_lstm_256_while_placeholder_2.
*sequential_85_lstm_256_while_placeholder_3L
Hsequential_85_lstm_256_while_less_sequential_85_lstm_256_strided_slice_1c
_sequential_85_lstm_256_while_sequential_85_lstm_256_while_cond_2280730___redundant_placeholder0c
_sequential_85_lstm_256_while_sequential_85_lstm_256_while_cond_2280730___redundant_placeholder1c
_sequential_85_lstm_256_while_sequential_85_lstm_256_while_cond_2280730___redundant_placeholder2c
_sequential_85_lstm_256_while_sequential_85_lstm_256_while_cond_2280730___redundant_placeholder3)
%sequential_85_lstm_256_while_identity
?
!sequential_85/lstm_256/while/LessLess(sequential_85_lstm_256_while_placeholderHsequential_85_lstm_256_while_less_sequential_85_lstm_256_strided_slice_1*
T0*
_output_shapes
: y
%sequential_85/lstm_256/while/IdentityIdentity%sequential_85/lstm_256/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_85_lstm_256_while_identity.sequential_85/lstm_256/while/Identity:output:0*(
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
??
?
#__inference__traced_restore_2286562
file_prefix2
 assignvariableop_dense_85_kernel:
.
 assignvariableop_1_dense_85_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_255_lstm_cell_255_kernel:	?M
:assignvariableop_8_lstm_255_lstm_cell_255_recurrent_kernel:	d?=
.assignvariableop_9_lstm_255_lstm_cell_255_bias:	?D
1assignvariableop_10_lstm_256_lstm_cell_256_kernel:	d?N
;assignvariableop_11_lstm_256_lstm_cell_256_recurrent_kernel:	2?>
/assignvariableop_12_lstm_256_lstm_cell_256_bias:	?C
1assignvariableop_13_lstm_257_lstm_cell_257_kernel:2(M
;assignvariableop_14_lstm_257_lstm_cell_257_recurrent_kernel:
(=
/assignvariableop_15_lstm_257_lstm_cell_257_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_85_kernel_m:
6
(assignvariableop_19_adam_dense_85_bias_m:K
8assignvariableop_20_adam_lstm_255_lstm_cell_255_kernel_m:	?U
Bassignvariableop_21_adam_lstm_255_lstm_cell_255_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_255_lstm_cell_255_bias_m:	?K
8assignvariableop_23_adam_lstm_256_lstm_cell_256_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_256_lstm_cell_256_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_256_lstm_cell_256_bias_m:	?J
8assignvariableop_26_adam_lstm_257_lstm_cell_257_kernel_m:2(T
Bassignvariableop_27_adam_lstm_257_lstm_cell_257_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_257_lstm_cell_257_bias_m:(<
*assignvariableop_29_adam_dense_85_kernel_v:
6
(assignvariableop_30_adam_dense_85_bias_v:K
8assignvariableop_31_adam_lstm_255_lstm_cell_255_kernel_v:	?U
Bassignvariableop_32_adam_lstm_255_lstm_cell_255_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_255_lstm_cell_255_bias_v:	?K
8assignvariableop_34_adam_lstm_256_lstm_cell_256_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_256_lstm_cell_256_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_256_lstm_cell_256_bias_v:	?J
8assignvariableop_37_adam_lstm_257_lstm_cell_257_kernel_v:2(T
Bassignvariableop_38_adam_lstm_257_lstm_cell_257_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_257_lstm_cell_257_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_85_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_85_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_255_lstm_cell_255_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_255_lstm_cell_255_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_255_lstm_cell_255_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_256_lstm_cell_256_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_256_lstm_cell_256_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_256_lstm_cell_256_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_257_lstm_cell_257_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_257_lstm_cell_257_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_257_lstm_cell_257_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_85_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_85_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_255_lstm_cell_255_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_255_lstm_cell_255_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_255_lstm_cell_255_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_256_lstm_cell_256_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_256_lstm_cell_256_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_256_lstm_cell_256_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_257_lstm_cell_257_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_257_lstm_cell_257_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_257_lstm_cell_257_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_85_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_85_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_255_lstm_cell_255_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_255_lstm_cell_255_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_255_lstm_cell_255_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_256_lstm_cell_256_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_256_lstm_cell_256_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_256_lstm_cell_256_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_257_lstm_cell_257_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_257_lstm_cell_257_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_257_lstm_cell_257_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_2285605
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2285605___redundant_placeholder05
1while_while_cond_2285605___redundant_placeholder15
1while_while_cond_2285605___redundant_placeholder25
1while_while_cond_2285605___redundant_placeholder3
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
J__inference_lstm_cell_375_layer_call_and_return_conditional_losses_2286093

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
?
E__inference_lstm_256_layer_call_and_return_conditional_losses_2281460

inputs(
lstm_cell_376_2281378:	d?(
lstm_cell_376_2281380:	2?$
lstm_cell_376_2281382:	?
identity??%lstm_cell_376/StatefulPartitionedCall?while;
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
%lstm_cell_376/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_376_2281378lstm_cell_376_2281380lstm_cell_376_2281382*
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
J__inference_lstm_cell_376_layer_call_and_return_conditional_losses_2281377n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_376_2281378lstm_cell_376_2281380lstm_cell_376_2281382*
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
while_body_2281391*
condR
while_cond_2281390*K
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
NoOpNoOp&^lstm_cell_376/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_376/StatefulPartitionedCall%lstm_cell_376/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?#
?
while_body_2281741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_377_2281765_0:2(/
while_lstm_cell_377_2281767_0:
(+
while_lstm_cell_377_2281769_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_377_2281765:2(-
while_lstm_cell_377_2281767:
()
while_lstm_cell_377_2281769:(??+while/lstm_cell_377/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_377/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_377_2281765_0while_lstm_cell_377_2281767_0while_lstm_cell_377_2281769_0*
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
J__inference_lstm_cell_377_layer_call_and_return_conditional_losses_2281727?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_377/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_377/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_377/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_377/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_377_2281765while_lstm_cell_377_2281765_0"<
while_lstm_cell_377_2281767while_lstm_cell_377_2281767_0"<
while_lstm_cell_377_2281769while_lstm_cell_377_2281769_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_377/StatefulPartitionedCall+while/lstm_cell_377/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_256_layer_call_and_return_conditional_losses_2285360

inputs?
,lstm_cell_376_matmul_readvariableop_resource:	d?A
.lstm_cell_376_matmul_1_readvariableop_resource:	2?<
-lstm_cell_376_biasadd_readvariableop_resource:	?
identity??$lstm_cell_376/BiasAdd/ReadVariableOp?#lstm_cell_376/MatMul/ReadVariableOp?%lstm_cell_376/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_376/MatMul/ReadVariableOpReadVariableOp,lstm_cell_376_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_376/MatMulMatMulstrided_slice_2:output:0+lstm_cell_376/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_376/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_376_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_376/MatMul_1MatMulzeros:output:0-lstm_cell_376/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_376/addAddV2lstm_cell_376/MatMul:product:0 lstm_cell_376/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_376/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_376_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_376/BiasAddBiasAddlstm_cell_376/add:z:0,lstm_cell_376/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_376/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_376/splitSplit&lstm_cell_376/split/split_dim:output:0lstm_cell_376/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_376/SigmoidSigmoidlstm_cell_376/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_376/Sigmoid_1Sigmoidlstm_cell_376/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_376/mulMullstm_cell_376/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_376/ReluRelulstm_cell_376/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_376/mul_1Mullstm_cell_376/Sigmoid:y:0 lstm_cell_376/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_376/add_1AddV2lstm_cell_376/mul:z:0lstm_cell_376/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_376/Sigmoid_2Sigmoidlstm_cell_376/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_376/Relu_1Relulstm_cell_376/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_376/mul_2Mullstm_cell_376/Sigmoid_2:y:0"lstm_cell_376/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_376_matmul_readvariableop_resource.lstm_cell_376_matmul_1_readvariableop_resource-lstm_cell_376_biasadd_readvariableop_resource*
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
while_body_2285276*
condR
while_cond_2285275*K
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
NoOpNoOp%^lstm_cell_376/BiasAdd/ReadVariableOp$^lstm_cell_376/MatMul/ReadVariableOp&^lstm_cell_376/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_376/BiasAdd/ReadVariableOp$lstm_cell_376/BiasAdd/ReadVariableOp2J
#lstm_cell_376/MatMul/ReadVariableOp#lstm_cell_376/MatMul/ReadVariableOp2N
%lstm_cell_376/MatMul_1/ReadVariableOp%lstm_cell_376/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_2282920
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2282920___redundant_placeholder05
1while_while_cond_2282920___redundant_placeholder15
1while_while_cond_2282920___redundant_placeholder25
1while_while_cond_2282920___redundant_placeholder3
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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2281301

inputs(
lstm_cell_375_2281219:	?(
lstm_cell_375_2281221:	d?$
lstm_cell_375_2281223:	?
identity??%lstm_cell_375/StatefulPartitionedCall?while;
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
%lstm_cell_375/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_375_2281219lstm_cell_375_2281221lstm_cell_375_2281223*
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
J__inference_lstm_cell_375_layer_call_and_return_conditional_losses_2281173n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_375_2281219lstm_cell_375_2281221lstm_cell_375_2281223*
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
while_body_2281232*
condR
while_cond_2281231*K
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
NoOpNoOp&^lstm_cell_375/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_375/StatefulPartitionedCall%lstm_cell_375/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
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
lstm_255_input;
 serving_default_lstm_255_input:0?????????<
dense_850
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
2dense_85/kernel
:2dense_85/bias
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
0:.	?2lstm_255/lstm_cell_255/kernel
::8	d?2'lstm_255/lstm_cell_255/recurrent_kernel
*:(?2lstm_255/lstm_cell_255/bias
0:.	d?2lstm_256/lstm_cell_256/kernel
::8	2?2'lstm_256/lstm_cell_256/recurrent_kernel
*:(?2lstm_256/lstm_cell_256/bias
/:-2(2lstm_257/lstm_cell_257/kernel
9:7
(2'lstm_257/lstm_cell_257/recurrent_kernel
):'(2lstm_257/lstm_cell_257/bias
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
2Adam/dense_85/kernel/m
 :2Adam/dense_85/bias/m
5:3	?2$Adam/lstm_255/lstm_cell_255/kernel/m
?:=	d?2.Adam/lstm_255/lstm_cell_255/recurrent_kernel/m
/:-?2"Adam/lstm_255/lstm_cell_255/bias/m
5:3	d?2$Adam/lstm_256/lstm_cell_256/kernel/m
?:=	2?2.Adam/lstm_256/lstm_cell_256/recurrent_kernel/m
/:-?2"Adam/lstm_256/lstm_cell_256/bias/m
4:22(2$Adam/lstm_257/lstm_cell_257/kernel/m
>:<
(2.Adam/lstm_257/lstm_cell_257/recurrent_kernel/m
.:,(2"Adam/lstm_257/lstm_cell_257/bias/m
&:$
2Adam/dense_85/kernel/v
 :2Adam/dense_85/bias/v
5:3	?2$Adam/lstm_255/lstm_cell_255/kernel/v
?:=	d?2.Adam/lstm_255/lstm_cell_255/recurrent_kernel/v
/:-?2"Adam/lstm_255/lstm_cell_255/bias/v
5:3	d?2$Adam/lstm_256/lstm_cell_256/kernel/v
?:=	2?2.Adam/lstm_256/lstm_cell_256/recurrent_kernel/v
/:-?2"Adam/lstm_256/lstm_cell_256/bias/v
4:22(2$Adam/lstm_257/lstm_cell_257/kernel/v
>:<
(2.Adam/lstm_257/lstm_cell_257/recurrent_kernel/v
.:,(2"Adam/lstm_257/lstm_cell_257/bias/v
?2?
/__inference_sequential_85_layer_call_fn_2282509
/__inference_sequential_85_layer_call_fn_2283247
/__inference_sequential_85_layer_call_fn_2283274
/__inference_sequential_85_layer_call_fn_2283125?
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
J__inference_sequential_85_layer_call_and_return_conditional_losses_2283701
J__inference_sequential_85_layer_call_and_return_conditional_losses_2284128
J__inference_sequential_85_layer_call_and_return_conditional_losses_2283155
J__inference_sequential_85_layer_call_and_return_conditional_losses_2283185?
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
"__inference__wrapped_model_2280960lstm_255_input"?
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
*__inference_lstm_255_layer_call_fn_2284139
*__inference_lstm_255_layer_call_fn_2284150
*__inference_lstm_255_layer_call_fn_2284161
*__inference_lstm_255_layer_call_fn_2284172?
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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2284315
E__inference_lstm_255_layer_call_and_return_conditional_losses_2284458
E__inference_lstm_255_layer_call_and_return_conditional_losses_2284601
E__inference_lstm_255_layer_call_and_return_conditional_losses_2284744?
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
*__inference_lstm_256_layer_call_fn_2284755
*__inference_lstm_256_layer_call_fn_2284766
*__inference_lstm_256_layer_call_fn_2284777
*__inference_lstm_256_layer_call_fn_2284788?
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
E__inference_lstm_256_layer_call_and_return_conditional_losses_2284931
E__inference_lstm_256_layer_call_and_return_conditional_losses_2285074
E__inference_lstm_256_layer_call_and_return_conditional_losses_2285217
E__inference_lstm_256_layer_call_and_return_conditional_losses_2285360?
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
*__inference_lstm_257_layer_call_fn_2285371
*__inference_lstm_257_layer_call_fn_2285382
*__inference_lstm_257_layer_call_fn_2285393
*__inference_lstm_257_layer_call_fn_2285404?
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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2285547
E__inference_lstm_257_layer_call_and_return_conditional_losses_2285690
E__inference_lstm_257_layer_call_and_return_conditional_losses_2285833
E__inference_lstm_257_layer_call_and_return_conditional_losses_2285976?
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
*__inference_dense_85_layer_call_fn_2285985?
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
E__inference_dense_85_layer_call_and_return_conditional_losses_2285995?
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
%__inference_signature_wrapper_2283220lstm_255_input"?
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
/__inference_lstm_cell_375_layer_call_fn_2286012
/__inference_lstm_cell_375_layer_call_fn_2286029?
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
J__inference_lstm_cell_375_layer_call_and_return_conditional_losses_2286061
J__inference_lstm_cell_375_layer_call_and_return_conditional_losses_2286093?
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
/__inference_lstm_cell_376_layer_call_fn_2286110
/__inference_lstm_cell_376_layer_call_fn_2286127?
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
J__inference_lstm_cell_376_layer_call_and_return_conditional_losses_2286159
J__inference_lstm_cell_376_layer_call_and_return_conditional_losses_2286191?
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
/__inference_lstm_cell_377_layer_call_fn_2286208
/__inference_lstm_cell_377_layer_call_fn_2286225?
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
J__inference_lstm_cell_377_layer_call_and_return_conditional_losses_2286257
J__inference_lstm_cell_377_layer_call_and_return_conditional_losses_2286289?
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
"__inference__wrapped_model_2280960-./012345!";?8
1?.
,?)
lstm_255_input?????????
? "3?0
.
dense_85"?
dense_85??????????
E__inference_dense_85_layer_call_and_return_conditional_losses_2285995\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_85_layer_call_fn_2285985O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_255_layer_call_and_return_conditional_losses_2284315?-./O?L
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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2284458?-./O?L
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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2284601q-./??<
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
E__inference_lstm_255_layer_call_and_return_conditional_losses_2284744q-./??<
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
*__inference_lstm_255_layer_call_fn_2284139}-./O?L
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
*__inference_lstm_255_layer_call_fn_2284150}-./O?L
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
*__inference_lstm_255_layer_call_fn_2284161d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_255_layer_call_fn_2284172d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_256_layer_call_and_return_conditional_losses_2284931?012O?L
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
E__inference_lstm_256_layer_call_and_return_conditional_losses_2285074?012O?L
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
E__inference_lstm_256_layer_call_and_return_conditional_losses_2285217q012??<
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
E__inference_lstm_256_layer_call_and_return_conditional_losses_2285360q012??<
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
*__inference_lstm_256_layer_call_fn_2284755}012O?L
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
*__inference_lstm_256_layer_call_fn_2284766}012O?L
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
*__inference_lstm_256_layer_call_fn_2284777d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_256_layer_call_fn_2284788d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_257_layer_call_and_return_conditional_losses_2285547}345O?L
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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2285690}345O?L
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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2285833m345??<
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
E__inference_lstm_257_layer_call_and_return_conditional_losses_2285976m345??<
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
*__inference_lstm_257_layer_call_fn_2285371p345O?L
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
*__inference_lstm_257_layer_call_fn_2285382p345O?L
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
*__inference_lstm_257_layer_call_fn_2285393`345??<
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
*__inference_lstm_257_layer_call_fn_2285404`345??<
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
J__inference_lstm_cell_375_layer_call_and_return_conditional_losses_2286061?-./??}
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
J__inference_lstm_cell_375_layer_call_and_return_conditional_losses_2286093?-./??}
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
/__inference_lstm_cell_375_layer_call_fn_2286012?-./??}
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
/__inference_lstm_cell_375_layer_call_fn_2286029?-./??}
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
J__inference_lstm_cell_376_layer_call_and_return_conditional_losses_2286159?012??}
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
J__inference_lstm_cell_376_layer_call_and_return_conditional_losses_2286191?012??}
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
/__inference_lstm_cell_376_layer_call_fn_2286110?012??}
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
/__inference_lstm_cell_376_layer_call_fn_2286127?012??}
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
J__inference_lstm_cell_377_layer_call_and_return_conditional_losses_2286257?345??}
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
J__inference_lstm_cell_377_layer_call_and_return_conditional_losses_2286289?345??}
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
/__inference_lstm_cell_377_layer_call_fn_2286208?345??}
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
/__inference_lstm_cell_377_layer_call_fn_2286225?345??}
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
J__inference_sequential_85_layer_call_and_return_conditional_losses_2283155y-./012345!"C?@
9?6
,?)
lstm_255_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_85_layer_call_and_return_conditional_losses_2283185y-./012345!"C?@
9?6
,?)
lstm_255_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_85_layer_call_and_return_conditional_losses_2283701q-./012345!";?8
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
J__inference_sequential_85_layer_call_and_return_conditional_losses_2284128q-./012345!";?8
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
/__inference_sequential_85_layer_call_fn_2282509l-./012345!"C?@
9?6
,?)
lstm_255_input?????????
p 

 
? "???????????
/__inference_sequential_85_layer_call_fn_2283125l-./012345!"C?@
9?6
,?)
lstm_255_input?????????
p

 
? "???????????
/__inference_sequential_85_layer_call_fn_2283247d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_85_layer_call_fn_2283274d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_2283220?-./012345!"M?J
? 
C?@
>
lstm_255_input,?)
lstm_255_input?????????"3?0
.
dense_85"?
dense_85?????????