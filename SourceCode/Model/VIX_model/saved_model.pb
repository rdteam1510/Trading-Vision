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
dense_93/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_93/kernel
s
#dense_93/kernel/Read/ReadVariableOpReadVariableOpdense_93/kernel*
_output_shapes

:
*
dtype0
r
dense_93/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_93/bias
k
!dense_93/bias/Read/ReadVariableOpReadVariableOpdense_93/bias*
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
lstm_279/lstm_cell_279/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_279/lstm_cell_279/kernel
?
1lstm_279/lstm_cell_279/kernel/Read/ReadVariableOpReadVariableOplstm_279/lstm_cell_279/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_279/lstm_cell_279/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*8
shared_name)'lstm_279/lstm_cell_279/recurrent_kernel
?
;lstm_279/lstm_cell_279/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_279/lstm_cell_279/recurrent_kernel*
_output_shapes
:	d?*
dtype0
?
lstm_279/lstm_cell_279/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_279/lstm_cell_279/bias
?
/lstm_279/lstm_cell_279/bias/Read/ReadVariableOpReadVariableOplstm_279/lstm_cell_279/bias*
_output_shapes	
:?*
dtype0
?
lstm_280/lstm_cell_280/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*.
shared_namelstm_280/lstm_cell_280/kernel
?
1lstm_280/lstm_cell_280/kernel/Read/ReadVariableOpReadVariableOplstm_280/lstm_cell_280/kernel*
_output_shapes
:	d?*
dtype0
?
'lstm_280/lstm_cell_280/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*8
shared_name)'lstm_280/lstm_cell_280/recurrent_kernel
?
;lstm_280/lstm_cell_280/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_280/lstm_cell_280/recurrent_kernel*
_output_shapes
:	2?*
dtype0
?
lstm_280/lstm_cell_280/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_280/lstm_cell_280/bias
?
/lstm_280/lstm_cell_280/bias/Read/ReadVariableOpReadVariableOplstm_280/lstm_cell_280/bias*
_output_shapes	
:?*
dtype0
?
lstm_281/lstm_cell_281/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_281/lstm_cell_281/kernel
?
1lstm_281/lstm_cell_281/kernel/Read/ReadVariableOpReadVariableOplstm_281/lstm_cell_281/kernel*
_output_shapes

:2(*
dtype0
?
'lstm_281/lstm_cell_281/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_281/lstm_cell_281/recurrent_kernel
?
;lstm_281/lstm_cell_281/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_281/lstm_cell_281/recurrent_kernel*
_output_shapes

:
(*
dtype0
?
lstm_281/lstm_cell_281/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_281/lstm_cell_281/bias
?
/lstm_281/lstm_cell_281/bias/Read/ReadVariableOpReadVariableOplstm_281/lstm_cell_281/bias*
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
Adam/dense_93/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_93/kernel/m
?
*Adam/dense_93/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_93/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/dense_93/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_93/bias/m
y
(Adam/dense_93/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_93/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_279/lstm_cell_279/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_279/lstm_cell_279/kernel/m
?
8Adam/lstm_279/lstm_cell_279/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_279/lstm_cell_279/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_279/lstm_cell_279/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_279/lstm_cell_279/recurrent_kernel/m
?
BAdam/lstm_279/lstm_cell_279/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_279/lstm_cell_279/recurrent_kernel/m*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_279/lstm_cell_279/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_279/lstm_cell_279/bias/m
?
6Adam/lstm_279/lstm_cell_279/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_279/lstm_cell_279/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_280/lstm_cell_280/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_280/lstm_cell_280/kernel/m
?
8Adam/lstm_280/lstm_cell_280/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_280/lstm_cell_280/kernel/m*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_280/lstm_cell_280/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_280/lstm_cell_280/recurrent_kernel/m
?
BAdam/lstm_280/lstm_cell_280/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_280/lstm_cell_280/recurrent_kernel/m*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_280/lstm_cell_280/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_280/lstm_cell_280/bias/m
?
6Adam/lstm_280/lstm_cell_280/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_280/lstm_cell_280/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_281/lstm_cell_281/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_281/lstm_cell_281/kernel/m
?
8Adam/lstm_281/lstm_cell_281/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_281/lstm_cell_281/kernel/m*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_281/lstm_cell_281/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_281/lstm_cell_281/recurrent_kernel/m
?
BAdam/lstm_281/lstm_cell_281/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_281/lstm_cell_281/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_281/lstm_cell_281/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_281/lstm_cell_281/bias/m
?
6Adam/lstm_281/lstm_cell_281/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_281/lstm_cell_281/bias/m*
_output_shapes
:(*
dtype0
?
Adam/dense_93/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_93/kernel/v
?
*Adam/dense_93/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_93/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/dense_93/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_93/bias/v
y
(Adam/dense_93/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_93/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_279/lstm_cell_279/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_279/lstm_cell_279/kernel/v
?
8Adam/lstm_279/lstm_cell_279/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_279/lstm_cell_279/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_279/lstm_cell_279/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*?
shared_name0.Adam/lstm_279/lstm_cell_279/recurrent_kernel/v
?
BAdam/lstm_279/lstm_cell_279/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_279/lstm_cell_279/recurrent_kernel/v*
_output_shapes
:	d?*
dtype0
?
"Adam/lstm_279/lstm_cell_279/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_279/lstm_cell_279/bias/v
?
6Adam/lstm_279/lstm_cell_279/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_279/lstm_cell_279/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_280/lstm_cell_280/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?*5
shared_name&$Adam/lstm_280/lstm_cell_280/kernel/v
?
8Adam/lstm_280/lstm_cell_280/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_280/lstm_cell_280/kernel/v*
_output_shapes
:	d?*
dtype0
?
.Adam/lstm_280/lstm_cell_280/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2?*?
shared_name0.Adam/lstm_280/lstm_cell_280/recurrent_kernel/v
?
BAdam/lstm_280/lstm_cell_280/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_280/lstm_cell_280/recurrent_kernel/v*
_output_shapes
:	2?*
dtype0
?
"Adam/lstm_280/lstm_cell_280/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_280/lstm_cell_280/bias/v
?
6Adam/lstm_280/lstm_cell_280/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_280/lstm_cell_280/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/lstm_281/lstm_cell_281/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_281/lstm_cell_281/kernel/v
?
8Adam/lstm_281/lstm_cell_281/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_281/lstm_cell_281/kernel/v*
_output_shapes

:2(*
dtype0
?
.Adam/lstm_281/lstm_cell_281/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_281/lstm_cell_281/recurrent_kernel/v
?
BAdam/lstm_281/lstm_cell_281/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_281/lstm_cell_281/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
?
"Adam/lstm_281/lstm_cell_281/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_281/lstm_cell_281/bias/v
?
6Adam/lstm_281/lstm_cell_281/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_281/lstm_cell_281/bias/v*
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
VARIABLE_VALUEdense_93/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_93/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_279/lstm_cell_279/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_279/lstm_cell_279/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_279/lstm_cell_279/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_280/lstm_cell_280/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_280/lstm_cell_280/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_280/lstm_cell_280/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_281/lstm_cell_281/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_281/lstm_cell_281/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_281/lstm_cell_281/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_93/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_93/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_279/lstm_cell_279/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_279/lstm_cell_279/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_279/lstm_cell_279/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_280/lstm_cell_280/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_280/lstm_cell_280/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_280/lstm_cell_280/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_281/lstm_cell_281/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_281/lstm_cell_281/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_281/lstm_cell_281/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_93/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_93/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_279/lstm_cell_279/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_279/lstm_cell_279/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_279/lstm_cell_279/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_280/lstm_cell_280/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_280/lstm_cell_280/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_280/lstm_cell_280/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_281/lstm_cell_281/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_281/lstm_cell_281/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_281/lstm_cell_281/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_279_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_279_inputlstm_279/lstm_cell_279/kernel'lstm_279/lstm_cell_279/recurrent_kernellstm_279/lstm_cell_279/biaslstm_280/lstm_cell_280/kernel'lstm_280/lstm_cell_280/recurrent_kernellstm_280/lstm_cell_280/biaslstm_281/lstm_cell_281/kernel'lstm_281/lstm_cell_281/recurrent_kernellstm_281/lstm_cell_281/biasdense_93/kerneldense_93/bias*
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
%__inference_signature_wrapper_1448471
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_93/kernel/Read/ReadVariableOp!dense_93/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_279/lstm_cell_279/kernel/Read/ReadVariableOp;lstm_279/lstm_cell_279/recurrent_kernel/Read/ReadVariableOp/lstm_279/lstm_cell_279/bias/Read/ReadVariableOp1lstm_280/lstm_cell_280/kernel/Read/ReadVariableOp;lstm_280/lstm_cell_280/recurrent_kernel/Read/ReadVariableOp/lstm_280/lstm_cell_280/bias/Read/ReadVariableOp1lstm_281/lstm_cell_281/kernel/Read/ReadVariableOp;lstm_281/lstm_cell_281/recurrent_kernel/Read/ReadVariableOp/lstm_281/lstm_cell_281/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_93/kernel/m/Read/ReadVariableOp(Adam/dense_93/bias/m/Read/ReadVariableOp8Adam/lstm_279/lstm_cell_279/kernel/m/Read/ReadVariableOpBAdam/lstm_279/lstm_cell_279/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_279/lstm_cell_279/bias/m/Read/ReadVariableOp8Adam/lstm_280/lstm_cell_280/kernel/m/Read/ReadVariableOpBAdam/lstm_280/lstm_cell_280/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_280/lstm_cell_280/bias/m/Read/ReadVariableOp8Adam/lstm_281/lstm_cell_281/kernel/m/Read/ReadVariableOpBAdam/lstm_281/lstm_cell_281/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_281/lstm_cell_281/bias/m/Read/ReadVariableOp*Adam/dense_93/kernel/v/Read/ReadVariableOp(Adam/dense_93/bias/v/Read/ReadVariableOp8Adam/lstm_279/lstm_cell_279/kernel/v/Read/ReadVariableOpBAdam/lstm_279/lstm_cell_279/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_279/lstm_cell_279/bias/v/Read/ReadVariableOp8Adam/lstm_280/lstm_cell_280/kernel/v/Read/ReadVariableOpBAdam/lstm_280/lstm_cell_280/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_280/lstm_cell_280/bias/v/Read/ReadVariableOp8Adam/lstm_281/lstm_cell_281/kernel/v/Read/ReadVariableOpBAdam/lstm_281/lstm_cell_281/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_281/lstm_cell_281/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_1451683
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_93/kerneldense_93/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_279/lstm_cell_279/kernel'lstm_279/lstm_cell_279/recurrent_kernellstm_279/lstm_cell_279/biaslstm_280/lstm_cell_280/kernel'lstm_280/lstm_cell_280/recurrent_kernellstm_280/lstm_cell_280/biaslstm_281/lstm_cell_281/kernel'lstm_281/lstm_cell_281/recurrent_kernellstm_281/lstm_cell_281/biastotalcountAdam/dense_93/kernel/mAdam/dense_93/bias/m$Adam/lstm_279/lstm_cell_279/kernel/m.Adam/lstm_279/lstm_cell_279/recurrent_kernel/m"Adam/lstm_279/lstm_cell_279/bias/m$Adam/lstm_280/lstm_cell_280/kernel/m.Adam/lstm_280/lstm_cell_280/recurrent_kernel/m"Adam/lstm_280/lstm_cell_280/bias/m$Adam/lstm_281/lstm_cell_281/kernel/m.Adam/lstm_281/lstm_cell_281/recurrent_kernel/m"Adam/lstm_281/lstm_cell_281/bias/mAdam/dense_93/kernel/vAdam/dense_93/bias/v$Adam/lstm_279/lstm_cell_279/kernel/v.Adam/lstm_279/lstm_cell_279/recurrent_kernel/v"Adam/lstm_279/lstm_cell_279/bias/v$Adam/lstm_280/lstm_cell_280/kernel/v.Adam/lstm_280/lstm_cell_280/recurrent_kernel/v"Adam/lstm_280/lstm_cell_280/bias/v$Adam/lstm_281/lstm_cell_281/kernel/v.Adam/lstm_281/lstm_cell_281/recurrent_kernel/v"Adam/lstm_281/lstm_cell_281/bias/v*4
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
#__inference__traced_restore_1451813??+
?J
?
E__inference_lstm_281_layer_call_and_return_conditional_losses_1451227

inputs>
,lstm_cell_239_matmul_readvariableop_resource:2(@
.lstm_cell_239_matmul_1_readvariableop_resource:
(;
-lstm_cell_239_biasadd_readvariableop_resource:(
identity??$lstm_cell_239/BiasAdd/ReadVariableOp?#lstm_cell_239/MatMul/ReadVariableOp?%lstm_cell_239/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_239/MatMul/ReadVariableOpReadVariableOp,lstm_cell_239_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_239/MatMulMatMulstrided_slice_2:output:0+lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_239_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_239/MatMul_1MatMulzeros:output:0-lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_239/addAddV2lstm_cell_239/MatMul:product:0 lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_239_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_239/BiasAddBiasAddlstm_cell_239/add:z:0,lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_239/splitSplit&lstm_cell_239/split/split_dim:output:0lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_239/SigmoidSigmoidlstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_239/Sigmoid_1Sigmoidlstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_239/mulMullstm_cell_239/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_239/ReluRelulstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_239/mul_1Mullstm_cell_239/Sigmoid:y:0 lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_239/add_1AddV2lstm_cell_239/mul:z:0lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_239/Sigmoid_2Sigmoidlstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_239/Relu_1Relulstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_239/mul_2Mullstm_cell_239/Sigmoid_2:y:0"lstm_cell_239/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_239_matmul_readvariableop_resource.lstm_cell_239_matmul_1_readvariableop_resource-lstm_cell_239_biasadd_readvariableop_resource*
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
while_body_1451143*
condR
while_cond_1451142*K
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
NoOpNoOp%^lstm_cell_239/BiasAdd/ReadVariableOp$^lstm_cell_239/MatMul/ReadVariableOp&^lstm_cell_239/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_239/BiasAdd/ReadVariableOp$lstm_cell_239/BiasAdd/ReadVariableOp2J
#lstm_cell_239/MatMul/ReadVariableOp#lstm_cell_239/MatMul/ReadVariableOp2N
%lstm_cell_239/MatMul_1/ReadVariableOp%lstm_cell_239/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?8
?
E__inference_lstm_280_layer_call_and_return_conditional_losses_1446711

inputs(
lstm_cell_238_1446629:	d?(
lstm_cell_238_1446631:	2?$
lstm_cell_238_1446633:	?
identity??%lstm_cell_238/StatefulPartitionedCall?while;
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
%lstm_cell_238/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_238_1446629lstm_cell_238_1446631lstm_cell_238_1446633*
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
J__inference_lstm_cell_238_layer_call_and_return_conditional_losses_1446628n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_238_1446629lstm_cell_238_1446631lstm_cell_238_1446633*
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
while_body_1446642*
condR
while_cond_1446641*K
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
NoOpNoOp&^lstm_cell_238/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_238/StatefulPartitionedCall%lstm_cell_238/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?C
?

lstm_281_while_body_1448862.
*lstm_281_while_lstm_281_while_loop_counter4
0lstm_281_while_lstm_281_while_maximum_iterations
lstm_281_while_placeholder 
lstm_281_while_placeholder_1 
lstm_281_while_placeholder_2 
lstm_281_while_placeholder_3-
)lstm_281_while_lstm_281_strided_slice_1_0i
elstm_281_while_tensorarrayv2read_tensorlistgetitem_lstm_281_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_281_while_lstm_cell_239_matmul_readvariableop_resource_0:2(Q
?lstm_281_while_lstm_cell_239_matmul_1_readvariableop_resource_0:
(L
>lstm_281_while_lstm_cell_239_biasadd_readvariableop_resource_0:(
lstm_281_while_identity
lstm_281_while_identity_1
lstm_281_while_identity_2
lstm_281_while_identity_3
lstm_281_while_identity_4
lstm_281_while_identity_5+
'lstm_281_while_lstm_281_strided_slice_1g
clstm_281_while_tensorarrayv2read_tensorlistgetitem_lstm_281_tensorarrayunstack_tensorlistfromtensorM
;lstm_281_while_lstm_cell_239_matmul_readvariableop_resource:2(O
=lstm_281_while_lstm_cell_239_matmul_1_readvariableop_resource:
(J
<lstm_281_while_lstm_cell_239_biasadd_readvariableop_resource:(??3lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOp?2lstm_281/while/lstm_cell_239/MatMul/ReadVariableOp?4lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOp?
@lstm_281/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_281/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_281_while_tensorarrayv2read_tensorlistgetitem_lstm_281_tensorarrayunstack_tensorlistfromtensor_0lstm_281_while_placeholderIlstm_281/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_281/while/lstm_cell_239/MatMul/ReadVariableOpReadVariableOp=lstm_281_while_lstm_cell_239_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_281/while/lstm_cell_239/MatMulMatMul9lstm_281/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_281/while/lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOp?lstm_281_while_lstm_cell_239_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_281/while/lstm_cell_239/MatMul_1MatMullstm_281_while_placeholder_2<lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_281/while/lstm_cell_239/addAddV2-lstm_281/while/lstm_cell_239/MatMul:product:0/lstm_281/while/lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOp>lstm_281_while_lstm_cell_239_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_281/while/lstm_cell_239/BiasAddBiasAdd$lstm_281/while/lstm_cell_239/add:z:0;lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_281/while/lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_281/while/lstm_cell_239/splitSplit5lstm_281/while/lstm_cell_239/split/split_dim:output:0-lstm_281/while/lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_281/while/lstm_cell_239/SigmoidSigmoid+lstm_281/while/lstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_281/while/lstm_cell_239/Sigmoid_1Sigmoid+lstm_281/while/lstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_281/while/lstm_cell_239/mulMul*lstm_281/while/lstm_cell_239/Sigmoid_1:y:0lstm_281_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_281/while/lstm_cell_239/ReluRelu+lstm_281/while/lstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_281/while/lstm_cell_239/mul_1Mul(lstm_281/while/lstm_cell_239/Sigmoid:y:0/lstm_281/while/lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_281/while/lstm_cell_239/add_1AddV2$lstm_281/while/lstm_cell_239/mul:z:0&lstm_281/while/lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_281/while/lstm_cell_239/Sigmoid_2Sigmoid+lstm_281/while/lstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_281/while/lstm_cell_239/Relu_1Relu&lstm_281/while/lstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_281/while/lstm_cell_239/mul_2Mul*lstm_281/while/lstm_cell_239/Sigmoid_2:y:01lstm_281/while/lstm_cell_239/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_281/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_281_while_placeholder_1lstm_281_while_placeholder&lstm_281/while/lstm_cell_239/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_281/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_281/while/addAddV2lstm_281_while_placeholderlstm_281/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_281/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_281/while/add_1AddV2*lstm_281_while_lstm_281_while_loop_counterlstm_281/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_281/while/IdentityIdentitylstm_281/while/add_1:z:0^lstm_281/while/NoOp*
T0*
_output_shapes
: ?
lstm_281/while/Identity_1Identity0lstm_281_while_lstm_281_while_maximum_iterations^lstm_281/while/NoOp*
T0*
_output_shapes
: t
lstm_281/while/Identity_2Identitylstm_281/while/add:z:0^lstm_281/while/NoOp*
T0*
_output_shapes
: ?
lstm_281/while/Identity_3IdentityClstm_281/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_281/while/NoOp*
T0*
_output_shapes
: ?
lstm_281/while/Identity_4Identity&lstm_281/while/lstm_cell_239/mul_2:z:0^lstm_281/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_281/while/Identity_5Identity&lstm_281/while/lstm_cell_239/add_1:z:0^lstm_281/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_281/while/NoOpNoOp4^lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOp3^lstm_281/while/lstm_cell_239/MatMul/ReadVariableOp5^lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_281_while_identity lstm_281/while/Identity:output:0"?
lstm_281_while_identity_1"lstm_281/while/Identity_1:output:0"?
lstm_281_while_identity_2"lstm_281/while/Identity_2:output:0"?
lstm_281_while_identity_3"lstm_281/while/Identity_3:output:0"?
lstm_281_while_identity_4"lstm_281/while/Identity_4:output:0"?
lstm_281_while_identity_5"lstm_281/while/Identity_5:output:0"T
'lstm_281_while_lstm_281_strided_slice_1)lstm_281_while_lstm_281_strided_slice_1_0"~
<lstm_281_while_lstm_cell_239_biasadd_readvariableop_resource>lstm_281_while_lstm_cell_239_biasadd_readvariableop_resource_0"?
=lstm_281_while_lstm_cell_239_matmul_1_readvariableop_resource?lstm_281_while_lstm_cell_239_matmul_1_readvariableop_resource_0"|
;lstm_281_while_lstm_cell_239_matmul_readvariableop_resource=lstm_281_while_lstm_cell_239_matmul_readvariableop_resource_0"?
clstm_281_while_tensorarrayv2read_tensorlistgetitem_lstm_281_tensorarrayunstack_tensorlistfromtensorelstm_281_while_tensorarrayv2read_tensorlistgetitem_lstm_281_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOp3lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOp2h
2lstm_281/while/lstm_cell_239/MatMul/ReadVariableOp2lstm_281/while/lstm_cell_239/MatMul/ReadVariableOp2l
4lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOp4lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1448007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_238_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_238_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_238_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_238_matmul_readvariableop_resource:	d?G
4while_lstm_cell_238_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_238_biasadd_readvariableop_resource:	???*while/lstm_cell_238/BiasAdd/ReadVariableOp?)while/lstm_cell_238/MatMul/ReadVariableOp?+while/lstm_cell_238/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_238/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_238_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_238/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_238_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_238/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_238/addAddV2$while/lstm_cell_238/MatMul:product:0&while/lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_238_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_238/BiasAddBiasAddwhile/lstm_cell_238/add:z:02while/lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_238/splitSplit,while/lstm_cell_238/split/split_dim:output:0$while/lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_238/SigmoidSigmoid"while/lstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_238/Sigmoid_1Sigmoid"while/lstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mulMul!while/lstm_cell_238/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_238/ReluRelu"while/lstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mul_1Mulwhile/lstm_cell_238/Sigmoid:y:0&while/lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/add_1AddV2while/lstm_cell_238/mul:z:0while/lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_238/Sigmoid_2Sigmoid"while/lstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_238/Relu_1Reluwhile/lstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mul_2Mul!while/lstm_cell_238/Sigmoid_2:y:0(while/lstm_cell_238/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_238/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_238/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_238/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_238/BiasAdd/ReadVariableOp*^while/lstm_cell_238/MatMul/ReadVariableOp,^while/lstm_cell_238/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_238_biasadd_readvariableop_resource5while_lstm_cell_238_biasadd_readvariableop_resource_0"n
4while_lstm_cell_238_matmul_1_readvariableop_resource6while_lstm_cell_238_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_238_matmul_readvariableop_resource4while_lstm_cell_238_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_238/BiasAdd/ReadVariableOp*while/lstm_cell_238/BiasAdd/ReadVariableOp2V
)while/lstm_cell_238/MatMul/ReadVariableOp)while/lstm_cell_238/MatMul/ReadVariableOp2Z
+while/lstm_cell_238/MatMul_1/ReadVariableOp+while/lstm_cell_238/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1451143
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_239_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_239_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_239_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_239_matmul_readvariableop_resource:2(F
4while_lstm_cell_239_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_239_biasadd_readvariableop_resource:(??*while/lstm_cell_239/BiasAdd/ReadVariableOp?)while/lstm_cell_239/MatMul/ReadVariableOp?+while/lstm_cell_239/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_239/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_239_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_239/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_239_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_239/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_239/addAddV2$while/lstm_cell_239/MatMul:product:0&while/lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_239_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_239/BiasAddBiasAddwhile/lstm_cell_239/add:z:02while/lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_239/splitSplit,while/lstm_cell_239/split/split_dim:output:0$while/lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_239/SigmoidSigmoid"while/lstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_239/Sigmoid_1Sigmoid"while/lstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mulMul!while/lstm_cell_239/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_239/ReluRelu"while/lstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mul_1Mulwhile/lstm_cell_239/Sigmoid:y:0&while/lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/add_1AddV2while/lstm_cell_239/mul:z:0while/lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_239/Sigmoid_2Sigmoid"while/lstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_239/Relu_1Reluwhile/lstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mul_2Mul!while/lstm_cell_239/Sigmoid_2:y:0(while/lstm_cell_239/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_239/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_239/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_239/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_239/BiasAdd/ReadVariableOp*^while/lstm_cell_239/MatMul/ReadVariableOp,^while/lstm_cell_239/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_239_biasadd_readvariableop_resource5while_lstm_cell_239_biasadd_readvariableop_resource_0"n
4while_lstm_cell_239_matmul_1_readvariableop_resource6while_lstm_cell_239_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_239_matmul_readvariableop_resource4while_lstm_cell_239_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_239/BiasAdd/ReadVariableOp*while/lstm_cell_239/BiasAdd/ReadVariableOp2V
)while/lstm_cell_239/MatMul/ReadVariableOp)while/lstm_cell_239/MatMul/ReadVariableOp2Z
+while/lstm_cell_239/MatMul_1/ReadVariableOp+while/lstm_cell_239/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_237_layer_call_and_return_conditional_losses_1446278

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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1450798
inputs_0>
,lstm_cell_239_matmul_readvariableop_resource:2(@
.lstm_cell_239_matmul_1_readvariableop_resource:
(;
-lstm_cell_239_biasadd_readvariableop_resource:(
identity??$lstm_cell_239/BiasAdd/ReadVariableOp?#lstm_cell_239/MatMul/ReadVariableOp?%lstm_cell_239/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_239/MatMul/ReadVariableOpReadVariableOp,lstm_cell_239_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_239/MatMulMatMulstrided_slice_2:output:0+lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_239_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_239/MatMul_1MatMulzeros:output:0-lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_239/addAddV2lstm_cell_239/MatMul:product:0 lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_239_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_239/BiasAddBiasAddlstm_cell_239/add:z:0,lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_239/splitSplit&lstm_cell_239/split/split_dim:output:0lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_239/SigmoidSigmoidlstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_239/Sigmoid_1Sigmoidlstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_239/mulMullstm_cell_239/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_239/ReluRelulstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_239/mul_1Mullstm_cell_239/Sigmoid:y:0 lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_239/add_1AddV2lstm_cell_239/mul:z:0lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_239/Sigmoid_2Sigmoidlstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_239/Relu_1Relulstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_239/mul_2Mullstm_cell_239/Sigmoid_2:y:0"lstm_cell_239/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_239_matmul_readvariableop_resource.lstm_cell_239_matmul_1_readvariableop_resource-lstm_cell_239_biasadd_readvariableop_resource*
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
while_body_1450714*
condR
while_cond_1450713*K
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
NoOpNoOp%^lstm_cell_239/BiasAdd/ReadVariableOp$^lstm_cell_239/MatMul/ReadVariableOp&^lstm_cell_239/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_239/BiasAdd/ReadVariableOp$lstm_cell_239/BiasAdd/ReadVariableOp2J
#lstm_cell_239/MatMul/ReadVariableOp#lstm_cell_239/MatMul/ReadVariableOp2N
%lstm_cell_239/MatMul_1/ReadVariableOp%lstm_cell_239/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_sequential_93_layer_call_and_return_conditional_losses_1448406
lstm_279_input#
lstm_279_1448379:	?#
lstm_279_1448381:	d?
lstm_279_1448383:	?#
lstm_280_1448386:	d?#
lstm_280_1448388:	2?
lstm_280_1448390:	?"
lstm_281_1448393:2("
lstm_281_1448395:
(
lstm_281_1448397:("
dense_93_1448400:

dense_93_1448402:
identity?? dense_93/StatefulPartitionedCall? lstm_279/StatefulPartitionedCall? lstm_280/StatefulPartitionedCall? lstm_281/StatefulPartitionedCall?
 lstm_279/StatefulPartitionedCallStatefulPartitionedCalllstm_279_inputlstm_279_1448379lstm_279_1448381lstm_279_1448383*
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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1447410?
 lstm_280/StatefulPartitionedCallStatefulPartitionedCall)lstm_279/StatefulPartitionedCall:output:0lstm_280_1448386lstm_280_1448388lstm_280_1448390*
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
E__inference_lstm_280_layer_call_and_return_conditional_losses_1447560?
 lstm_281/StatefulPartitionedCallStatefulPartitionedCall)lstm_280/StatefulPartitionedCall:output:0lstm_281_1448393lstm_281_1448395lstm_281_1448397*
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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1447710?
 dense_93/StatefulPartitionedCallStatefulPartitionedCall)lstm_281/StatefulPartitionedCall:output:0dense_93_1448400dense_93_1448402*
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
E__inference_dense_93_layer_call_and_return_conditional_losses_1447728x
IdentityIdentity)dense_93/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_93/StatefulPartitionedCall!^lstm_279/StatefulPartitionedCall!^lstm_280/StatefulPartitionedCall!^lstm_281/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_93/StatefulPartitionedCall dense_93/StatefulPartitionedCall2D
 lstm_279/StatefulPartitionedCall lstm_279/StatefulPartitionedCall2D
 lstm_280/StatefulPartitionedCall lstm_280/StatefulPartitionedCall2D
 lstm_281/StatefulPartitionedCall lstm_281/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_279_input
?C
?

lstm_280_while_body_1449150.
*lstm_280_while_lstm_280_while_loop_counter4
0lstm_280_while_lstm_280_while_maximum_iterations
lstm_280_while_placeholder 
lstm_280_while_placeholder_1 
lstm_280_while_placeholder_2 
lstm_280_while_placeholder_3-
)lstm_280_while_lstm_280_strided_slice_1_0i
elstm_280_while_tensorarrayv2read_tensorlistgetitem_lstm_280_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_280_while_lstm_cell_238_matmul_readvariableop_resource_0:	d?R
?lstm_280_while_lstm_cell_238_matmul_1_readvariableop_resource_0:	2?M
>lstm_280_while_lstm_cell_238_biasadd_readvariableop_resource_0:	?
lstm_280_while_identity
lstm_280_while_identity_1
lstm_280_while_identity_2
lstm_280_while_identity_3
lstm_280_while_identity_4
lstm_280_while_identity_5+
'lstm_280_while_lstm_280_strided_slice_1g
clstm_280_while_tensorarrayv2read_tensorlistgetitem_lstm_280_tensorarrayunstack_tensorlistfromtensorN
;lstm_280_while_lstm_cell_238_matmul_readvariableop_resource:	d?P
=lstm_280_while_lstm_cell_238_matmul_1_readvariableop_resource:	2?K
<lstm_280_while_lstm_cell_238_biasadd_readvariableop_resource:	???3lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOp?2lstm_280/while/lstm_cell_238/MatMul/ReadVariableOp?4lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOp?
@lstm_280/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_280/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_280_while_tensorarrayv2read_tensorlistgetitem_lstm_280_tensorarrayunstack_tensorlistfromtensor_0lstm_280_while_placeholderIlstm_280/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_280/while/lstm_cell_238/MatMul/ReadVariableOpReadVariableOp=lstm_280_while_lstm_cell_238_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_280/while/lstm_cell_238/MatMulMatMul9lstm_280/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_280/while/lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOp?lstm_280_while_lstm_cell_238_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_280/while/lstm_cell_238/MatMul_1MatMullstm_280_while_placeholder_2<lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_280/while/lstm_cell_238/addAddV2-lstm_280/while/lstm_cell_238/MatMul:product:0/lstm_280/while/lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOp>lstm_280_while_lstm_cell_238_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_280/while/lstm_cell_238/BiasAddBiasAdd$lstm_280/while/lstm_cell_238/add:z:0;lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_280/while/lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_280/while/lstm_cell_238/splitSplit5lstm_280/while/lstm_cell_238/split/split_dim:output:0-lstm_280/while/lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_280/while/lstm_cell_238/SigmoidSigmoid+lstm_280/while/lstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_280/while/lstm_cell_238/Sigmoid_1Sigmoid+lstm_280/while/lstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_280/while/lstm_cell_238/mulMul*lstm_280/while/lstm_cell_238/Sigmoid_1:y:0lstm_280_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_280/while/lstm_cell_238/ReluRelu+lstm_280/while/lstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_280/while/lstm_cell_238/mul_1Mul(lstm_280/while/lstm_cell_238/Sigmoid:y:0/lstm_280/while/lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_280/while/lstm_cell_238/add_1AddV2$lstm_280/while/lstm_cell_238/mul:z:0&lstm_280/while/lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_280/while/lstm_cell_238/Sigmoid_2Sigmoid+lstm_280/while/lstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_280/while/lstm_cell_238/Relu_1Relu&lstm_280/while/lstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_280/while/lstm_cell_238/mul_2Mul*lstm_280/while/lstm_cell_238/Sigmoid_2:y:01lstm_280/while/lstm_cell_238/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_280/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_280_while_placeholder_1lstm_280_while_placeholder&lstm_280/while/lstm_cell_238/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_280/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_280/while/addAddV2lstm_280_while_placeholderlstm_280/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_280/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_280/while/add_1AddV2*lstm_280_while_lstm_280_while_loop_counterlstm_280/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_280/while/IdentityIdentitylstm_280/while/add_1:z:0^lstm_280/while/NoOp*
T0*
_output_shapes
: ?
lstm_280/while/Identity_1Identity0lstm_280_while_lstm_280_while_maximum_iterations^lstm_280/while/NoOp*
T0*
_output_shapes
: t
lstm_280/while/Identity_2Identitylstm_280/while/add:z:0^lstm_280/while/NoOp*
T0*
_output_shapes
: ?
lstm_280/while/Identity_3IdentityClstm_280/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_280/while/NoOp*
T0*
_output_shapes
: ?
lstm_280/while/Identity_4Identity&lstm_280/while/lstm_cell_238/mul_2:z:0^lstm_280/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_280/while/Identity_5Identity&lstm_280/while/lstm_cell_238/add_1:z:0^lstm_280/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_280/while/NoOpNoOp4^lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOp3^lstm_280/while/lstm_cell_238/MatMul/ReadVariableOp5^lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_280_while_identity lstm_280/while/Identity:output:0"?
lstm_280_while_identity_1"lstm_280/while/Identity_1:output:0"?
lstm_280_while_identity_2"lstm_280/while/Identity_2:output:0"?
lstm_280_while_identity_3"lstm_280/while/Identity_3:output:0"?
lstm_280_while_identity_4"lstm_280/while/Identity_4:output:0"?
lstm_280_while_identity_5"lstm_280/while/Identity_5:output:0"T
'lstm_280_while_lstm_280_strided_slice_1)lstm_280_while_lstm_280_strided_slice_1_0"~
<lstm_280_while_lstm_cell_238_biasadd_readvariableop_resource>lstm_280_while_lstm_cell_238_biasadd_readvariableop_resource_0"?
=lstm_280_while_lstm_cell_238_matmul_1_readvariableop_resource?lstm_280_while_lstm_cell_238_matmul_1_readvariableop_resource_0"|
;lstm_280_while_lstm_cell_238_matmul_readvariableop_resource=lstm_280_while_lstm_cell_238_matmul_readvariableop_resource_0"?
clstm_280_while_tensorarrayv2read_tensorlistgetitem_lstm_280_tensorarrayunstack_tensorlistfromtensorelstm_280_while_tensorarrayv2read_tensorlistgetitem_lstm_280_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOp3lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOp2h
2lstm_280/while/lstm_cell_238/MatMul/ReadVariableOp2lstm_280/while/lstm_cell_238/MatMul/ReadVariableOp2l
4lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOp4lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_280_layer_call_and_return_conditional_losses_1450611

inputs?
,lstm_cell_238_matmul_readvariableop_resource:	d?A
.lstm_cell_238_matmul_1_readvariableop_resource:	2?<
-lstm_cell_238_biasadd_readvariableop_resource:	?
identity??$lstm_cell_238/BiasAdd/ReadVariableOp?#lstm_cell_238/MatMul/ReadVariableOp?%lstm_cell_238/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_238/MatMul/ReadVariableOpReadVariableOp,lstm_cell_238_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_238/MatMulMatMulstrided_slice_2:output:0+lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_238_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_238/MatMul_1MatMulzeros:output:0-lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_238/addAddV2lstm_cell_238/MatMul:product:0 lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_238_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_238/BiasAddBiasAddlstm_cell_238/add:z:0,lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_238/splitSplit&lstm_cell_238/split/split_dim:output:0lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_238/SigmoidSigmoidlstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_238/Sigmoid_1Sigmoidlstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_238/mulMullstm_cell_238/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_238/ReluRelulstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_238/mul_1Mullstm_cell_238/Sigmoid:y:0 lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_238/add_1AddV2lstm_cell_238/mul:z:0lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_238/Sigmoid_2Sigmoidlstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_238/Relu_1Relulstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_238/mul_2Mullstm_cell_238/Sigmoid_2:y:0"lstm_cell_238/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_238_matmul_readvariableop_resource.lstm_cell_238_matmul_1_readvariableop_resource-lstm_cell_238_biasadd_readvariableop_resource*
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
while_body_1450527*
condR
while_cond_1450526*K
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
NoOpNoOp%^lstm_cell_238/BiasAdd/ReadVariableOp$^lstm_cell_238/MatMul/ReadVariableOp&^lstm_cell_238/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_238/BiasAdd/ReadVariableOp$lstm_cell_238/BiasAdd/ReadVariableOp2J
#lstm_cell_238/MatMul/ReadVariableOp#lstm_cell_238/MatMul/ReadVariableOp2N
%lstm_cell_238/MatMul_1/ReadVariableOp%lstm_cell_238/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
)sequential_93_lstm_279_while_cond_1445842J
Fsequential_93_lstm_279_while_sequential_93_lstm_279_while_loop_counterP
Lsequential_93_lstm_279_while_sequential_93_lstm_279_while_maximum_iterations,
(sequential_93_lstm_279_while_placeholder.
*sequential_93_lstm_279_while_placeholder_1.
*sequential_93_lstm_279_while_placeholder_2.
*sequential_93_lstm_279_while_placeholder_3L
Hsequential_93_lstm_279_while_less_sequential_93_lstm_279_strided_slice_1c
_sequential_93_lstm_279_while_sequential_93_lstm_279_while_cond_1445842___redundant_placeholder0c
_sequential_93_lstm_279_while_sequential_93_lstm_279_while_cond_1445842___redundant_placeholder1c
_sequential_93_lstm_279_while_sequential_93_lstm_279_while_cond_1445842___redundant_placeholder2c
_sequential_93_lstm_279_while_sequential_93_lstm_279_while_cond_1445842___redundant_placeholder3)
%sequential_93_lstm_279_while_identity
?
!sequential_93/lstm_279/while/LessLess(sequential_93_lstm_279_while_placeholderHsequential_93_lstm_279_while_less_sequential_93_lstm_279_strided_slice_1*
T0*
_output_shapes
: y
%sequential_93/lstm_279/while/IdentityIdentity%sequential_93/lstm_279/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_93_lstm_279_while_identity.sequential_93/lstm_279/while/Identity:output:0*(
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
while_body_1450857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_239_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_239_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_239_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_239_matmul_readvariableop_resource:2(F
4while_lstm_cell_239_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_239_biasadd_readvariableop_resource:(??*while/lstm_cell_239/BiasAdd/ReadVariableOp?)while/lstm_cell_239/MatMul/ReadVariableOp?+while/lstm_cell_239/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_239/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_239_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_239/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_239_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_239/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_239/addAddV2$while/lstm_cell_239/MatMul:product:0&while/lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_239_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_239/BiasAddBiasAddwhile/lstm_cell_239/add:z:02while/lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_239/splitSplit,while/lstm_cell_239/split/split_dim:output:0$while/lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_239/SigmoidSigmoid"while/lstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_239/Sigmoid_1Sigmoid"while/lstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mulMul!while/lstm_cell_239/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_239/ReluRelu"while/lstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mul_1Mulwhile/lstm_cell_239/Sigmoid:y:0&while/lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/add_1AddV2while/lstm_cell_239/mul:z:0while/lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_239/Sigmoid_2Sigmoid"while/lstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_239/Relu_1Reluwhile/lstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mul_2Mul!while/lstm_cell_239/Sigmoid_2:y:0(while/lstm_cell_239/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_239/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_239/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_239/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_239/BiasAdd/ReadVariableOp*^while/lstm_cell_239/MatMul/ReadVariableOp,^while/lstm_cell_239/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_239_biasadd_readvariableop_resource5while_lstm_cell_239_biasadd_readvariableop_resource_0"n
4while_lstm_cell_239_matmul_1_readvariableop_resource6while_lstm_cell_239_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_239_matmul_readvariableop_resource4while_lstm_cell_239_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_239/BiasAdd/ReadVariableOp*while/lstm_cell_239/BiasAdd/ReadVariableOp2V
)while/lstm_cell_239/MatMul/ReadVariableOp)while/lstm_cell_239/MatMul/ReadVariableOp2Z
+while/lstm_cell_239/MatMul_1/ReadVariableOp+while/lstm_cell_239/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
%__inference_signature_wrapper_1448471
lstm_279_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_279_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_1446211o
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
_user_specified_namelstm_279_input
?
?
/__inference_lstm_cell_237_layer_call_fn_1451263

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
J__inference_lstm_cell_237_layer_call_and_return_conditional_losses_1446278o
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
while_cond_1451142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1451142___redundant_placeholder05
1while_while_cond_1451142___redundant_placeholder15
1while_while_cond_1451142___redundant_placeholder25
1while_while_cond_1451142___redundant_placeholder3
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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1447710

inputs>
,lstm_cell_239_matmul_readvariableop_resource:2(@
.lstm_cell_239_matmul_1_readvariableop_resource:
(;
-lstm_cell_239_biasadd_readvariableop_resource:(
identity??$lstm_cell_239/BiasAdd/ReadVariableOp?#lstm_cell_239/MatMul/ReadVariableOp?%lstm_cell_239/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_239/MatMul/ReadVariableOpReadVariableOp,lstm_cell_239_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_239/MatMulMatMulstrided_slice_2:output:0+lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_239_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_239/MatMul_1MatMulzeros:output:0-lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_239/addAddV2lstm_cell_239/MatMul:product:0 lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_239_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_239/BiasAddBiasAddlstm_cell_239/add:z:0,lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_239/splitSplit&lstm_cell_239/split/split_dim:output:0lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_239/SigmoidSigmoidlstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_239/Sigmoid_1Sigmoidlstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_239/mulMullstm_cell_239/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_239/ReluRelulstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_239/mul_1Mullstm_cell_239/Sigmoid:y:0 lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_239/add_1AddV2lstm_cell_239/mul:z:0lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_239/Sigmoid_2Sigmoidlstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_239/Relu_1Relulstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_239/mul_2Mullstm_cell_239/Sigmoid_2:y:0"lstm_cell_239/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_239_matmul_readvariableop_resource.lstm_cell_239_matmul_1_readvariableop_resource-lstm_cell_239_biasadd_readvariableop_resource*
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
while_body_1447626*
condR
while_cond_1447625*K
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
NoOpNoOp%^lstm_cell_239/BiasAdd/ReadVariableOp$^lstm_cell_239/MatMul/ReadVariableOp&^lstm_cell_239/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_239/BiasAdd/ReadVariableOp$lstm_cell_239/BiasAdd/ReadVariableOp2J
#lstm_cell_239/MatMul/ReadVariableOp#lstm_cell_239/MatMul/ReadVariableOp2N
%lstm_cell_239/MatMul_1/ReadVariableOp%lstm_cell_239/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
J__inference_sequential_93_layer_call_and_return_conditional_losses_1448324

inputs#
lstm_279_1448297:	?#
lstm_279_1448299:	d?
lstm_279_1448301:	?#
lstm_280_1448304:	d?#
lstm_280_1448306:	2?
lstm_280_1448308:	?"
lstm_281_1448311:2("
lstm_281_1448313:
(
lstm_281_1448315:("
dense_93_1448318:

dense_93_1448320:
identity?? dense_93/StatefulPartitionedCall? lstm_279/StatefulPartitionedCall? lstm_280/StatefulPartitionedCall? lstm_281/StatefulPartitionedCall?
 lstm_279/StatefulPartitionedCallStatefulPartitionedCallinputslstm_279_1448297lstm_279_1448299lstm_279_1448301*
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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1448256?
 lstm_280/StatefulPartitionedCallStatefulPartitionedCall)lstm_279/StatefulPartitionedCall:output:0lstm_280_1448304lstm_280_1448306lstm_280_1448308*
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
E__inference_lstm_280_layer_call_and_return_conditional_losses_1448091?
 lstm_281/StatefulPartitionedCallStatefulPartitionedCall)lstm_280/StatefulPartitionedCall:output:0lstm_281_1448311lstm_281_1448313lstm_281_1448315*
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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1447926?
 dense_93/StatefulPartitionedCallStatefulPartitionedCall)lstm_281/StatefulPartitionedCall:output:0dense_93_1448318dense_93_1448320*
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
E__inference_dense_93_layer_call_and_return_conditional_losses_1447728x
IdentityIdentity)dense_93/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_93/StatefulPartitionedCall!^lstm_279/StatefulPartitionedCall!^lstm_280/StatefulPartitionedCall!^lstm_281/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_93/StatefulPartitionedCall dense_93/StatefulPartitionedCall2D
 lstm_279/StatefulPartitionedCall lstm_279/StatefulPartitionedCall2D
 lstm_280/StatefulPartitionedCall lstm_280/StatefulPartitionedCall2D
 lstm_281/StatefulPartitionedCall lstm_281/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_279_while_body_1449011.
*lstm_279_while_lstm_279_while_loop_counter4
0lstm_279_while_lstm_279_while_maximum_iterations
lstm_279_while_placeholder 
lstm_279_while_placeholder_1 
lstm_279_while_placeholder_2 
lstm_279_while_placeholder_3-
)lstm_279_while_lstm_279_strided_slice_1_0i
elstm_279_while_tensorarrayv2read_tensorlistgetitem_lstm_279_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_279_while_lstm_cell_237_matmul_readvariableop_resource_0:	?R
?lstm_279_while_lstm_cell_237_matmul_1_readvariableop_resource_0:	d?M
>lstm_279_while_lstm_cell_237_biasadd_readvariableop_resource_0:	?
lstm_279_while_identity
lstm_279_while_identity_1
lstm_279_while_identity_2
lstm_279_while_identity_3
lstm_279_while_identity_4
lstm_279_while_identity_5+
'lstm_279_while_lstm_279_strided_slice_1g
clstm_279_while_tensorarrayv2read_tensorlistgetitem_lstm_279_tensorarrayunstack_tensorlistfromtensorN
;lstm_279_while_lstm_cell_237_matmul_readvariableop_resource:	?P
=lstm_279_while_lstm_cell_237_matmul_1_readvariableop_resource:	d?K
<lstm_279_while_lstm_cell_237_biasadd_readvariableop_resource:	???3lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOp?2lstm_279/while/lstm_cell_237/MatMul/ReadVariableOp?4lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOp?
@lstm_279/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_279/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_279_while_tensorarrayv2read_tensorlistgetitem_lstm_279_tensorarrayunstack_tensorlistfromtensor_0lstm_279_while_placeholderIlstm_279/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_279/while/lstm_cell_237/MatMul/ReadVariableOpReadVariableOp=lstm_279_while_lstm_cell_237_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_279/while/lstm_cell_237/MatMulMatMul9lstm_279/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_279/while/lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOp?lstm_279_while_lstm_cell_237_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_279/while/lstm_cell_237/MatMul_1MatMullstm_279_while_placeholder_2<lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_279/while/lstm_cell_237/addAddV2-lstm_279/while/lstm_cell_237/MatMul:product:0/lstm_279/while/lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOp>lstm_279_while_lstm_cell_237_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_279/while/lstm_cell_237/BiasAddBiasAdd$lstm_279/while/lstm_cell_237/add:z:0;lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_279/while/lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_279/while/lstm_cell_237/splitSplit5lstm_279/while/lstm_cell_237/split/split_dim:output:0-lstm_279/while/lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_279/while/lstm_cell_237/SigmoidSigmoid+lstm_279/while/lstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_279/while/lstm_cell_237/Sigmoid_1Sigmoid+lstm_279/while/lstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_279/while/lstm_cell_237/mulMul*lstm_279/while/lstm_cell_237/Sigmoid_1:y:0lstm_279_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_279/while/lstm_cell_237/ReluRelu+lstm_279/while/lstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_279/while/lstm_cell_237/mul_1Mul(lstm_279/while/lstm_cell_237/Sigmoid:y:0/lstm_279/while/lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_279/while/lstm_cell_237/add_1AddV2$lstm_279/while/lstm_cell_237/mul:z:0&lstm_279/while/lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_279/while/lstm_cell_237/Sigmoid_2Sigmoid+lstm_279/while/lstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_279/while/lstm_cell_237/Relu_1Relu&lstm_279/while/lstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_279/while/lstm_cell_237/mul_2Mul*lstm_279/while/lstm_cell_237/Sigmoid_2:y:01lstm_279/while/lstm_cell_237/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_279/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_279_while_placeholder_1lstm_279_while_placeholder&lstm_279/while/lstm_cell_237/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_279/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_279/while/addAddV2lstm_279_while_placeholderlstm_279/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_279/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_279/while/add_1AddV2*lstm_279_while_lstm_279_while_loop_counterlstm_279/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_279/while/IdentityIdentitylstm_279/while/add_1:z:0^lstm_279/while/NoOp*
T0*
_output_shapes
: ?
lstm_279/while/Identity_1Identity0lstm_279_while_lstm_279_while_maximum_iterations^lstm_279/while/NoOp*
T0*
_output_shapes
: t
lstm_279/while/Identity_2Identitylstm_279/while/add:z:0^lstm_279/while/NoOp*
T0*
_output_shapes
: ?
lstm_279/while/Identity_3IdentityClstm_279/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_279/while/NoOp*
T0*
_output_shapes
: ?
lstm_279/while/Identity_4Identity&lstm_279/while/lstm_cell_237/mul_2:z:0^lstm_279/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_279/while/Identity_5Identity&lstm_279/while/lstm_cell_237/add_1:z:0^lstm_279/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_279/while/NoOpNoOp4^lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOp3^lstm_279/while/lstm_cell_237/MatMul/ReadVariableOp5^lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_279_while_identity lstm_279/while/Identity:output:0"?
lstm_279_while_identity_1"lstm_279/while/Identity_1:output:0"?
lstm_279_while_identity_2"lstm_279/while/Identity_2:output:0"?
lstm_279_while_identity_3"lstm_279/while/Identity_3:output:0"?
lstm_279_while_identity_4"lstm_279/while/Identity_4:output:0"?
lstm_279_while_identity_5"lstm_279/while/Identity_5:output:0"T
'lstm_279_while_lstm_279_strided_slice_1)lstm_279_while_lstm_279_strided_slice_1_0"~
<lstm_279_while_lstm_cell_237_biasadd_readvariableop_resource>lstm_279_while_lstm_cell_237_biasadd_readvariableop_resource_0"?
=lstm_279_while_lstm_cell_237_matmul_1_readvariableop_resource?lstm_279_while_lstm_cell_237_matmul_1_readvariableop_resource_0"|
;lstm_279_while_lstm_cell_237_matmul_readvariableop_resource=lstm_279_while_lstm_cell_237_matmul_readvariableop_resource_0"?
clstm_279_while_tensorarrayv2read_tensorlistgetitem_lstm_279_tensorarrayunstack_tensorlistfromtensorelstm_279_while_tensorarrayv2read_tensorlistgetitem_lstm_279_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOp3lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOp2h
2lstm_279/while/lstm_cell_237/MatMul/ReadVariableOp2lstm_279/while/lstm_cell_237/MatMul/ReadVariableOp2l
4lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOp4lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_dense_93_layer_call_and_return_conditional_losses_1447728

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
while_cond_1446641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1446641___redundant_placeholder05
1while_while_cond_1446641___redundant_placeholder15
1while_while_cond_1446641___redundant_placeholder25
1while_while_cond_1446641___redundant_placeholder3
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
while_cond_1446832
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1446832___redundant_placeholder05
1while_while_cond_1446832___redundant_placeholder15
1while_while_cond_1446832___redundant_placeholder25
1while_while_cond_1446832___redundant_placeholder3
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
 __inference__traced_save_1451683
file_prefix.
*savev2_dense_93_kernel_read_readvariableop,
(savev2_dense_93_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_279_lstm_cell_279_kernel_read_readvariableopF
Bsavev2_lstm_279_lstm_cell_279_recurrent_kernel_read_readvariableop:
6savev2_lstm_279_lstm_cell_279_bias_read_readvariableop<
8savev2_lstm_280_lstm_cell_280_kernel_read_readvariableopF
Bsavev2_lstm_280_lstm_cell_280_recurrent_kernel_read_readvariableop:
6savev2_lstm_280_lstm_cell_280_bias_read_readvariableop<
8savev2_lstm_281_lstm_cell_281_kernel_read_readvariableopF
Bsavev2_lstm_281_lstm_cell_281_recurrent_kernel_read_readvariableop:
6savev2_lstm_281_lstm_cell_281_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_93_kernel_m_read_readvariableop3
/savev2_adam_dense_93_bias_m_read_readvariableopC
?savev2_adam_lstm_279_lstm_cell_279_kernel_m_read_readvariableopM
Isavev2_adam_lstm_279_lstm_cell_279_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_279_lstm_cell_279_bias_m_read_readvariableopC
?savev2_adam_lstm_280_lstm_cell_280_kernel_m_read_readvariableopM
Isavev2_adam_lstm_280_lstm_cell_280_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_280_lstm_cell_280_bias_m_read_readvariableopC
?savev2_adam_lstm_281_lstm_cell_281_kernel_m_read_readvariableopM
Isavev2_adam_lstm_281_lstm_cell_281_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_281_lstm_cell_281_bias_m_read_readvariableop5
1savev2_adam_dense_93_kernel_v_read_readvariableop3
/savev2_adam_dense_93_bias_v_read_readvariableopC
?savev2_adam_lstm_279_lstm_cell_279_kernel_v_read_readvariableopM
Isavev2_adam_lstm_279_lstm_cell_279_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_279_lstm_cell_279_bias_v_read_readvariableopC
?savev2_adam_lstm_280_lstm_cell_280_kernel_v_read_readvariableopM
Isavev2_adam_lstm_280_lstm_cell_280_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_280_lstm_cell_280_bias_v_read_readvariableopC
?savev2_adam_lstm_281_lstm_cell_281_kernel_v_read_readvariableopM
Isavev2_adam_lstm_281_lstm_cell_281_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_281_lstm_cell_281_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_93_kernel_read_readvariableop(savev2_dense_93_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_279_lstm_cell_279_kernel_read_readvariableopBsavev2_lstm_279_lstm_cell_279_recurrent_kernel_read_readvariableop6savev2_lstm_279_lstm_cell_279_bias_read_readvariableop8savev2_lstm_280_lstm_cell_280_kernel_read_readvariableopBsavev2_lstm_280_lstm_cell_280_recurrent_kernel_read_readvariableop6savev2_lstm_280_lstm_cell_280_bias_read_readvariableop8savev2_lstm_281_lstm_cell_281_kernel_read_readvariableopBsavev2_lstm_281_lstm_cell_281_recurrent_kernel_read_readvariableop6savev2_lstm_281_lstm_cell_281_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_93_kernel_m_read_readvariableop/savev2_adam_dense_93_bias_m_read_readvariableop?savev2_adam_lstm_279_lstm_cell_279_kernel_m_read_readvariableopIsavev2_adam_lstm_279_lstm_cell_279_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_279_lstm_cell_279_bias_m_read_readvariableop?savev2_adam_lstm_280_lstm_cell_280_kernel_m_read_readvariableopIsavev2_adam_lstm_280_lstm_cell_280_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_280_lstm_cell_280_bias_m_read_readvariableop?savev2_adam_lstm_281_lstm_cell_281_kernel_m_read_readvariableopIsavev2_adam_lstm_281_lstm_cell_281_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_281_lstm_cell_281_bias_m_read_readvariableop1savev2_adam_dense_93_kernel_v_read_readvariableop/savev2_adam_dense_93_bias_v_read_readvariableop?savev2_adam_lstm_279_lstm_cell_279_kernel_v_read_readvariableopIsavev2_adam_lstm_279_lstm_cell_279_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_279_lstm_cell_279_bias_v_read_readvariableop?savev2_adam_lstm_280_lstm_cell_280_kernel_v_read_readvariableopIsavev2_adam_lstm_280_lstm_cell_280_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_280_lstm_cell_280_bias_v_read_readvariableop?savev2_adam_lstm_281_lstm_cell_281_kernel_v_read_readvariableopIsavev2_adam_lstm_281_lstm_cell_281_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_281_lstm_cell_281_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
while_body_1449625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_237_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_237_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_237_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_237_matmul_readvariableop_resource:	?G
4while_lstm_cell_237_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_237_biasadd_readvariableop_resource:	???*while/lstm_cell_237/BiasAdd/ReadVariableOp?)while/lstm_cell_237/MatMul/ReadVariableOp?+while/lstm_cell_237/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_237/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_237_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_237/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_237_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_237/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_237/addAddV2$while/lstm_cell_237/MatMul:product:0&while/lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_237_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_237/BiasAddBiasAddwhile/lstm_cell_237/add:z:02while/lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_237/splitSplit,while/lstm_cell_237/split/split_dim:output:0$while/lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_237/SigmoidSigmoid"while/lstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_237/Sigmoid_1Sigmoid"while/lstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mulMul!while/lstm_cell_237/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_237/ReluRelu"while/lstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mul_1Mulwhile/lstm_cell_237/Sigmoid:y:0&while/lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/add_1AddV2while/lstm_cell_237/mul:z:0while/lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_237/Sigmoid_2Sigmoid"while/lstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_237/Relu_1Reluwhile/lstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mul_2Mul!while/lstm_cell_237/Sigmoid_2:y:0(while/lstm_cell_237/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_237/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_237/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_237/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_237/BiasAdd/ReadVariableOp*^while/lstm_cell_237/MatMul/ReadVariableOp,^while/lstm_cell_237/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_237_biasadd_readvariableop_resource5while_lstm_cell_237_biasadd_readvariableop_resource_0"n
4while_lstm_cell_237_matmul_1_readvariableop_resource6while_lstm_cell_237_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_237_matmul_readvariableop_resource4while_lstm_cell_237_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_237/BiasAdd/ReadVariableOp*while/lstm_cell_237/BiasAdd/ReadVariableOp2V
)while/lstm_cell_237/MatMul/ReadVariableOp)while/lstm_cell_237/MatMul/ReadVariableOp2Z
+while/lstm_cell_237/MatMul_1/ReadVariableOp+while/lstm_cell_237/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1449995

inputs?
,lstm_cell_237_matmul_readvariableop_resource:	?A
.lstm_cell_237_matmul_1_readvariableop_resource:	d?<
-lstm_cell_237_biasadd_readvariableop_resource:	?
identity??$lstm_cell_237/BiasAdd/ReadVariableOp?#lstm_cell_237/MatMul/ReadVariableOp?%lstm_cell_237/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_237/MatMul/ReadVariableOpReadVariableOp,lstm_cell_237_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_237/MatMulMatMulstrided_slice_2:output:0+lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_237_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_237/MatMul_1MatMulzeros:output:0-lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_237/addAddV2lstm_cell_237/MatMul:product:0 lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_237_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_237/BiasAddBiasAddlstm_cell_237/add:z:0,lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_237/splitSplit&lstm_cell_237/split/split_dim:output:0lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_237/SigmoidSigmoidlstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_237/Sigmoid_1Sigmoidlstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_237/mulMullstm_cell_237/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_237/ReluRelulstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_237/mul_1Mullstm_cell_237/Sigmoid:y:0 lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_237/add_1AddV2lstm_cell_237/mul:z:0lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_237/Sigmoid_2Sigmoidlstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_237/Relu_1Relulstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_237/mul_2Mullstm_cell_237/Sigmoid_2:y:0"lstm_cell_237/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_237_matmul_readvariableop_resource.lstm_cell_237_matmul_1_readvariableop_resource-lstm_cell_237_biasadd_readvariableop_resource*
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
while_body_1449911*
condR
while_cond_1449910*K
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
NoOpNoOp%^lstm_cell_237/BiasAdd/ReadVariableOp$^lstm_cell_237/MatMul/ReadVariableOp&^lstm_cell_237/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_237/BiasAdd/ReadVariableOp$lstm_cell_237/BiasAdd/ReadVariableOp2J
#lstm_cell_237/MatMul/ReadVariableOp#lstm_cell_237/MatMul/ReadVariableOp2N
%lstm_cell_237/MatMul_1/ReadVariableOp%lstm_cell_237/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?J
?
E__inference_lstm_281_layer_call_and_return_conditional_losses_1447926

inputs>
,lstm_cell_239_matmul_readvariableop_resource:2(@
.lstm_cell_239_matmul_1_readvariableop_resource:
(;
-lstm_cell_239_biasadd_readvariableop_resource:(
identity??$lstm_cell_239/BiasAdd/ReadVariableOp?#lstm_cell_239/MatMul/ReadVariableOp?%lstm_cell_239/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_239/MatMul/ReadVariableOpReadVariableOp,lstm_cell_239_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_239/MatMulMatMulstrided_slice_2:output:0+lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_239_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_239/MatMul_1MatMulzeros:output:0-lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_239/addAddV2lstm_cell_239/MatMul:product:0 lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_239_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_239/BiasAddBiasAddlstm_cell_239/add:z:0,lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_239/splitSplit&lstm_cell_239/split/split_dim:output:0lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_239/SigmoidSigmoidlstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_239/Sigmoid_1Sigmoidlstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_239/mulMullstm_cell_239/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_239/ReluRelulstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_239/mul_1Mullstm_cell_239/Sigmoid:y:0 lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_239/add_1AddV2lstm_cell_239/mul:z:0lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_239/Sigmoid_2Sigmoidlstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_239/Relu_1Relulstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_239/mul_2Mullstm_cell_239/Sigmoid_2:y:0"lstm_cell_239/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_239_matmul_readvariableop_resource.lstm_cell_239_matmul_1_readvariableop_resource-lstm_cell_239_biasadd_readvariableop_resource*
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
while_body_1447842*
condR
while_cond_1447841*K
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
NoOpNoOp%^lstm_cell_239/BiasAdd/ReadVariableOp$^lstm_cell_239/MatMul/ReadVariableOp&^lstm_cell_239/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_239/BiasAdd/ReadVariableOp$lstm_cell_239/BiasAdd/ReadVariableOp2J
#lstm_cell_239/MatMul/ReadVariableOp#lstm_cell_239/MatMul/ReadVariableOp2N
%lstm_cell_239/MatMul_1/ReadVariableOp%lstm_cell_239/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?J
?
E__inference_lstm_279_layer_call_and_return_conditional_losses_1449852

inputs?
,lstm_cell_237_matmul_readvariableop_resource:	?A
.lstm_cell_237_matmul_1_readvariableop_resource:	d?<
-lstm_cell_237_biasadd_readvariableop_resource:	?
identity??$lstm_cell_237/BiasAdd/ReadVariableOp?#lstm_cell_237/MatMul/ReadVariableOp?%lstm_cell_237/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_237/MatMul/ReadVariableOpReadVariableOp,lstm_cell_237_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_237/MatMulMatMulstrided_slice_2:output:0+lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_237_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_237/MatMul_1MatMulzeros:output:0-lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_237/addAddV2lstm_cell_237/MatMul:product:0 lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_237_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_237/BiasAddBiasAddlstm_cell_237/add:z:0,lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_237/splitSplit&lstm_cell_237/split/split_dim:output:0lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_237/SigmoidSigmoidlstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_237/Sigmoid_1Sigmoidlstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_237/mulMullstm_cell_237/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_237/ReluRelulstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_237/mul_1Mullstm_cell_237/Sigmoid:y:0 lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_237/add_1AddV2lstm_cell_237/mul:z:0lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_237/Sigmoid_2Sigmoidlstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_237/Relu_1Relulstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_237/mul_2Mullstm_cell_237/Sigmoid_2:y:0"lstm_cell_237/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_237_matmul_readvariableop_resource.lstm_cell_237_matmul_1_readvariableop_resource-lstm_cell_237_biasadd_readvariableop_resource*
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
while_body_1449768*
condR
while_cond_1449767*K
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
NoOpNoOp%^lstm_cell_237/BiasAdd/ReadVariableOp$^lstm_cell_237/MatMul/ReadVariableOp&^lstm_cell_237/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_237/BiasAdd/ReadVariableOp$lstm_cell_237/BiasAdd/ReadVariableOp2J
#lstm_cell_237/MatMul/ReadVariableOp#lstm_cell_237/MatMul/ReadVariableOp2N
%lstm_cell_237/MatMul_1/ReadVariableOp%lstm_cell_237/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_1447841
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1447841___redundant_placeholder05
1while_while_cond_1447841___redundant_placeholder15
1while_while_cond_1447841___redundant_placeholder25
1while_while_cond_1447841___redundant_placeholder3
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
*__inference_dense_93_layer_call_fn_1451236

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
E__inference_dense_93_layer_call_and_return_conditional_losses_1447728o
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
lstm_281_while_cond_1449288.
*lstm_281_while_lstm_281_while_loop_counter4
0lstm_281_while_lstm_281_while_maximum_iterations
lstm_281_while_placeholder 
lstm_281_while_placeholder_1 
lstm_281_while_placeholder_2 
lstm_281_while_placeholder_30
,lstm_281_while_less_lstm_281_strided_slice_1G
Clstm_281_while_lstm_281_while_cond_1449288___redundant_placeholder0G
Clstm_281_while_lstm_281_while_cond_1449288___redundant_placeholder1G
Clstm_281_while_lstm_281_while_cond_1449288___redundant_placeholder2G
Clstm_281_while_lstm_281_while_cond_1449288___redundant_placeholder3
lstm_281_while_identity
?
lstm_281/while/LessLesslstm_281_while_placeholder,lstm_281_while_less_lstm_281_strided_slice_1*
T0*
_output_shapes
: ]
lstm_281/while/IdentityIdentitylstm_281/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_281_while_identity lstm_281/while/Identity:output:0*(
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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1446552

inputs(
lstm_cell_237_1446470:	?(
lstm_cell_237_1446472:	d?$
lstm_cell_237_1446474:	?
identity??%lstm_cell_237/StatefulPartitionedCall?while;
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
%lstm_cell_237/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_237_1446470lstm_cell_237_1446472lstm_cell_237_1446474*
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
J__inference_lstm_cell_237_layer_call_and_return_conditional_losses_1446424n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_237_1446470lstm_cell_237_1446472lstm_cell_237_1446474*
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
while_body_1446483*
condR
while_cond_1446482*K
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
NoOpNoOp&^lstm_cell_237/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_237/StatefulPartitionedCall%lstm_cell_237/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?C
?

lstm_280_while_body_1448723.
*lstm_280_while_lstm_280_while_loop_counter4
0lstm_280_while_lstm_280_while_maximum_iterations
lstm_280_while_placeholder 
lstm_280_while_placeholder_1 
lstm_280_while_placeholder_2 
lstm_280_while_placeholder_3-
)lstm_280_while_lstm_280_strided_slice_1_0i
elstm_280_while_tensorarrayv2read_tensorlistgetitem_lstm_280_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_280_while_lstm_cell_238_matmul_readvariableop_resource_0:	d?R
?lstm_280_while_lstm_cell_238_matmul_1_readvariableop_resource_0:	2?M
>lstm_280_while_lstm_cell_238_biasadd_readvariableop_resource_0:	?
lstm_280_while_identity
lstm_280_while_identity_1
lstm_280_while_identity_2
lstm_280_while_identity_3
lstm_280_while_identity_4
lstm_280_while_identity_5+
'lstm_280_while_lstm_280_strided_slice_1g
clstm_280_while_tensorarrayv2read_tensorlistgetitem_lstm_280_tensorarrayunstack_tensorlistfromtensorN
;lstm_280_while_lstm_cell_238_matmul_readvariableop_resource:	d?P
=lstm_280_while_lstm_cell_238_matmul_1_readvariableop_resource:	2?K
<lstm_280_while_lstm_cell_238_biasadd_readvariableop_resource:	???3lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOp?2lstm_280/while/lstm_cell_238/MatMul/ReadVariableOp?4lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOp?
@lstm_280/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
2lstm_280/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_280_while_tensorarrayv2read_tensorlistgetitem_lstm_280_tensorarrayunstack_tensorlistfromtensor_0lstm_280_while_placeholderIlstm_280/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
2lstm_280/while/lstm_cell_238/MatMul/ReadVariableOpReadVariableOp=lstm_280_while_lstm_cell_238_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
#lstm_280/while/lstm_cell_238/MatMulMatMul9lstm_280/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_280/while/lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOp?lstm_280_while_lstm_cell_238_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
%lstm_280/while/lstm_cell_238/MatMul_1MatMullstm_280_while_placeholder_2<lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_280/while/lstm_cell_238/addAddV2-lstm_280/while/lstm_cell_238/MatMul:product:0/lstm_280/while/lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOp>lstm_280_while_lstm_cell_238_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_280/while/lstm_cell_238/BiasAddBiasAdd$lstm_280/while/lstm_cell_238/add:z:0;lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_280/while/lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_280/while/lstm_cell_238/splitSplit5lstm_280/while/lstm_cell_238/split/split_dim:output:0-lstm_280/while/lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
$lstm_280/while/lstm_cell_238/SigmoidSigmoid+lstm_280/while/lstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2?
&lstm_280/while/lstm_cell_238/Sigmoid_1Sigmoid+lstm_280/while/lstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2?
 lstm_280/while/lstm_cell_238/mulMul*lstm_280/while/lstm_cell_238/Sigmoid_1:y:0lstm_280_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
!lstm_280/while/lstm_cell_238/ReluRelu+lstm_280/while/lstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
"lstm_280/while/lstm_cell_238/mul_1Mul(lstm_280/while/lstm_cell_238/Sigmoid:y:0/lstm_280/while/lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
"lstm_280/while/lstm_cell_238/add_1AddV2$lstm_280/while/lstm_cell_238/mul:z:0&lstm_280/while/lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
&lstm_280/while/lstm_cell_238/Sigmoid_2Sigmoid+lstm_280/while/lstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2?
#lstm_280/while/lstm_cell_238/Relu_1Relu&lstm_280/while/lstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
"lstm_280/while/lstm_cell_238/mul_2Mul*lstm_280/while/lstm_cell_238/Sigmoid_2:y:01lstm_280/while/lstm_cell_238/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
3lstm_280/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_280_while_placeholder_1lstm_280_while_placeholder&lstm_280/while/lstm_cell_238/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_280/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_280/while/addAddV2lstm_280_while_placeholderlstm_280/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_280/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_280/while/add_1AddV2*lstm_280_while_lstm_280_while_loop_counterlstm_280/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_280/while/IdentityIdentitylstm_280/while/add_1:z:0^lstm_280/while/NoOp*
T0*
_output_shapes
: ?
lstm_280/while/Identity_1Identity0lstm_280_while_lstm_280_while_maximum_iterations^lstm_280/while/NoOp*
T0*
_output_shapes
: t
lstm_280/while/Identity_2Identitylstm_280/while/add:z:0^lstm_280/while/NoOp*
T0*
_output_shapes
: ?
lstm_280/while/Identity_3IdentityClstm_280/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_280/while/NoOp*
T0*
_output_shapes
: ?
lstm_280/while/Identity_4Identity&lstm_280/while/lstm_cell_238/mul_2:z:0^lstm_280/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_280/while/Identity_5Identity&lstm_280/while/lstm_cell_238/add_1:z:0^lstm_280/while/NoOp*
T0*'
_output_shapes
:?????????2?
lstm_280/while/NoOpNoOp4^lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOp3^lstm_280/while/lstm_cell_238/MatMul/ReadVariableOp5^lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_280_while_identity lstm_280/while/Identity:output:0"?
lstm_280_while_identity_1"lstm_280/while/Identity_1:output:0"?
lstm_280_while_identity_2"lstm_280/while/Identity_2:output:0"?
lstm_280_while_identity_3"lstm_280/while/Identity_3:output:0"?
lstm_280_while_identity_4"lstm_280/while/Identity_4:output:0"?
lstm_280_while_identity_5"lstm_280/while/Identity_5:output:0"T
'lstm_280_while_lstm_280_strided_slice_1)lstm_280_while_lstm_280_strided_slice_1_0"~
<lstm_280_while_lstm_cell_238_biasadd_readvariableop_resource>lstm_280_while_lstm_cell_238_biasadd_readvariableop_resource_0"?
=lstm_280_while_lstm_cell_238_matmul_1_readvariableop_resource?lstm_280_while_lstm_cell_238_matmul_1_readvariableop_resource_0"|
;lstm_280_while_lstm_cell_238_matmul_readvariableop_resource=lstm_280_while_lstm_cell_238_matmul_readvariableop_resource_0"?
clstm_280_while_tensorarrayv2read_tensorlistgetitem_lstm_280_tensorarrayunstack_tensorlistfromtensorelstm_280_while_tensorarrayv2read_tensorlistgetitem_lstm_280_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2j
3lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOp3lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOp2h
2lstm_280/while/lstm_cell_238/MatMul/ReadVariableOp2lstm_280/while/lstm_cell_238/MatMul/ReadVariableOp2l
4lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOp4lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_93_layer_call_and_return_conditional_losses_1448952

inputsH
5lstm_279_lstm_cell_237_matmul_readvariableop_resource:	?J
7lstm_279_lstm_cell_237_matmul_1_readvariableop_resource:	d?E
6lstm_279_lstm_cell_237_biasadd_readvariableop_resource:	?H
5lstm_280_lstm_cell_238_matmul_readvariableop_resource:	d?J
7lstm_280_lstm_cell_238_matmul_1_readvariableop_resource:	2?E
6lstm_280_lstm_cell_238_biasadd_readvariableop_resource:	?G
5lstm_281_lstm_cell_239_matmul_readvariableop_resource:2(I
7lstm_281_lstm_cell_239_matmul_1_readvariableop_resource:
(D
6lstm_281_lstm_cell_239_biasadd_readvariableop_resource:(9
'dense_93_matmul_readvariableop_resource:
6
(dense_93_biasadd_readvariableop_resource:
identity??dense_93/BiasAdd/ReadVariableOp?dense_93/MatMul/ReadVariableOp?-lstm_279/lstm_cell_237/BiasAdd/ReadVariableOp?,lstm_279/lstm_cell_237/MatMul/ReadVariableOp?.lstm_279/lstm_cell_237/MatMul_1/ReadVariableOp?lstm_279/while?-lstm_280/lstm_cell_238/BiasAdd/ReadVariableOp?,lstm_280/lstm_cell_238/MatMul/ReadVariableOp?.lstm_280/lstm_cell_238/MatMul_1/ReadVariableOp?lstm_280/while?-lstm_281/lstm_cell_239/BiasAdd/ReadVariableOp?,lstm_281/lstm_cell_239/MatMul/ReadVariableOp?.lstm_281/lstm_cell_239/MatMul_1/ReadVariableOp?lstm_281/whileD
lstm_279/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_279/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_279/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_279/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_279/strided_sliceStridedSlicelstm_279/Shape:output:0%lstm_279/strided_slice/stack:output:0'lstm_279/strided_slice/stack_1:output:0'lstm_279/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_279/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_279/zeros/packedPacklstm_279/strided_slice:output:0 lstm_279/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_279/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_279/zerosFilllstm_279/zeros/packed:output:0lstm_279/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_279/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_279/zeros_1/packedPacklstm_279/strided_slice:output:0"lstm_279/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_279/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_279/zeros_1Fill lstm_279/zeros_1/packed:output:0lstm_279/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_279/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_279/transpose	Transposeinputs lstm_279/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_279/Shape_1Shapelstm_279/transpose:y:0*
T0*
_output_shapes
:h
lstm_279/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_279/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_279/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_279/strided_slice_1StridedSlicelstm_279/Shape_1:output:0'lstm_279/strided_slice_1/stack:output:0)lstm_279/strided_slice_1/stack_1:output:0)lstm_279/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_279/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_279/TensorArrayV2TensorListReserve-lstm_279/TensorArrayV2/element_shape:output:0!lstm_279/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_279/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_279/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_279/transpose:y:0Glstm_279/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_279/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_279/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_279/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_279/strided_slice_2StridedSlicelstm_279/transpose:y:0'lstm_279/strided_slice_2/stack:output:0)lstm_279/strided_slice_2/stack_1:output:0)lstm_279/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_279/lstm_cell_237/MatMul/ReadVariableOpReadVariableOp5lstm_279_lstm_cell_237_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_279/lstm_cell_237/MatMulMatMul!lstm_279/strided_slice_2:output:04lstm_279/lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_279/lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOp7lstm_279_lstm_cell_237_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_279/lstm_cell_237/MatMul_1MatMullstm_279/zeros:output:06lstm_279/lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_279/lstm_cell_237/addAddV2'lstm_279/lstm_cell_237/MatMul:product:0)lstm_279/lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_279/lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOp6lstm_279_lstm_cell_237_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_279/lstm_cell_237/BiasAddBiasAddlstm_279/lstm_cell_237/add:z:05lstm_279/lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_279/lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_279/lstm_cell_237/splitSplit/lstm_279/lstm_cell_237/split/split_dim:output:0'lstm_279/lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_279/lstm_cell_237/SigmoidSigmoid%lstm_279/lstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_279/lstm_cell_237/Sigmoid_1Sigmoid%lstm_279/lstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_279/lstm_cell_237/mulMul$lstm_279/lstm_cell_237/Sigmoid_1:y:0lstm_279/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_279/lstm_cell_237/ReluRelu%lstm_279/lstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_279/lstm_cell_237/mul_1Mul"lstm_279/lstm_cell_237/Sigmoid:y:0)lstm_279/lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_279/lstm_cell_237/add_1AddV2lstm_279/lstm_cell_237/mul:z:0 lstm_279/lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_279/lstm_cell_237/Sigmoid_2Sigmoid%lstm_279/lstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_279/lstm_cell_237/Relu_1Relu lstm_279/lstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_279/lstm_cell_237/mul_2Mul$lstm_279/lstm_cell_237/Sigmoid_2:y:0+lstm_279/lstm_cell_237/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_279/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_279/TensorArrayV2_1TensorListReserve/lstm_279/TensorArrayV2_1/element_shape:output:0!lstm_279/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_279/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_279/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_279/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_279/whileWhile$lstm_279/while/loop_counter:output:0*lstm_279/while/maximum_iterations:output:0lstm_279/time:output:0!lstm_279/TensorArrayV2_1:handle:0lstm_279/zeros:output:0lstm_279/zeros_1:output:0!lstm_279/strided_slice_1:output:0@lstm_279/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_279_lstm_cell_237_matmul_readvariableop_resource7lstm_279_lstm_cell_237_matmul_1_readvariableop_resource6lstm_279_lstm_cell_237_biasadd_readvariableop_resource*
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
lstm_279_while_body_1448584*'
condR
lstm_279_while_cond_1448583*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_279/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_279/TensorArrayV2Stack/TensorListStackTensorListStacklstm_279/while:output:3Blstm_279/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_279/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_279/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_279/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_279/strided_slice_3StridedSlice4lstm_279/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_279/strided_slice_3/stack:output:0)lstm_279/strided_slice_3/stack_1:output:0)lstm_279/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_279/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_279/transpose_1	Transpose4lstm_279/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_279/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_279/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_280/ShapeShapelstm_279/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_280/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_280/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_280/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_280/strided_sliceStridedSlicelstm_280/Shape:output:0%lstm_280/strided_slice/stack:output:0'lstm_280/strided_slice/stack_1:output:0'lstm_280/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_280/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_280/zeros/packedPacklstm_280/strided_slice:output:0 lstm_280/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_280/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_280/zerosFilllstm_280/zeros/packed:output:0lstm_280/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_280/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_280/zeros_1/packedPacklstm_280/strided_slice:output:0"lstm_280/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_280/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_280/zeros_1Fill lstm_280/zeros_1/packed:output:0lstm_280/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_280/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_280/transpose	Transposelstm_279/transpose_1:y:0 lstm_280/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_280/Shape_1Shapelstm_280/transpose:y:0*
T0*
_output_shapes
:h
lstm_280/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_280/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_280/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_280/strided_slice_1StridedSlicelstm_280/Shape_1:output:0'lstm_280/strided_slice_1/stack:output:0)lstm_280/strided_slice_1/stack_1:output:0)lstm_280/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_280/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_280/TensorArrayV2TensorListReserve-lstm_280/TensorArrayV2/element_shape:output:0!lstm_280/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_280/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_280/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_280/transpose:y:0Glstm_280/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_280/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_280/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_280/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_280/strided_slice_2StridedSlicelstm_280/transpose:y:0'lstm_280/strided_slice_2/stack:output:0)lstm_280/strided_slice_2/stack_1:output:0)lstm_280/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_280/lstm_cell_238/MatMul/ReadVariableOpReadVariableOp5lstm_280_lstm_cell_238_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_280/lstm_cell_238/MatMulMatMul!lstm_280/strided_slice_2:output:04lstm_280/lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_280/lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOp7lstm_280_lstm_cell_238_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_280/lstm_cell_238/MatMul_1MatMullstm_280/zeros:output:06lstm_280/lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_280/lstm_cell_238/addAddV2'lstm_280/lstm_cell_238/MatMul:product:0)lstm_280/lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_280/lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOp6lstm_280_lstm_cell_238_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_280/lstm_cell_238/BiasAddBiasAddlstm_280/lstm_cell_238/add:z:05lstm_280/lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_280/lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_280/lstm_cell_238/splitSplit/lstm_280/lstm_cell_238/split/split_dim:output:0'lstm_280/lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_280/lstm_cell_238/SigmoidSigmoid%lstm_280/lstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_280/lstm_cell_238/Sigmoid_1Sigmoid%lstm_280/lstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_280/lstm_cell_238/mulMul$lstm_280/lstm_cell_238/Sigmoid_1:y:0lstm_280/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_280/lstm_cell_238/ReluRelu%lstm_280/lstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_280/lstm_cell_238/mul_1Mul"lstm_280/lstm_cell_238/Sigmoid:y:0)lstm_280/lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_280/lstm_cell_238/add_1AddV2lstm_280/lstm_cell_238/mul:z:0 lstm_280/lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_280/lstm_cell_238/Sigmoid_2Sigmoid%lstm_280/lstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_280/lstm_cell_238/Relu_1Relu lstm_280/lstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_280/lstm_cell_238/mul_2Mul$lstm_280/lstm_cell_238/Sigmoid_2:y:0+lstm_280/lstm_cell_238/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_280/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_280/TensorArrayV2_1TensorListReserve/lstm_280/TensorArrayV2_1/element_shape:output:0!lstm_280/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_280/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_280/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_280/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_280/whileWhile$lstm_280/while/loop_counter:output:0*lstm_280/while/maximum_iterations:output:0lstm_280/time:output:0!lstm_280/TensorArrayV2_1:handle:0lstm_280/zeros:output:0lstm_280/zeros_1:output:0!lstm_280/strided_slice_1:output:0@lstm_280/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_280_lstm_cell_238_matmul_readvariableop_resource7lstm_280_lstm_cell_238_matmul_1_readvariableop_resource6lstm_280_lstm_cell_238_biasadd_readvariableop_resource*
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
lstm_280_while_body_1448723*'
condR
lstm_280_while_cond_1448722*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_280/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_280/TensorArrayV2Stack/TensorListStackTensorListStacklstm_280/while:output:3Blstm_280/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_280/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_280/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_280/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_280/strided_slice_3StridedSlice4lstm_280/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_280/strided_slice_3/stack:output:0)lstm_280/strided_slice_3/stack_1:output:0)lstm_280/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_280/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_280/transpose_1	Transpose4lstm_280/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_280/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_280/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_281/ShapeShapelstm_280/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_281/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_281/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_281/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_281/strided_sliceStridedSlicelstm_281/Shape:output:0%lstm_281/strided_slice/stack:output:0'lstm_281/strided_slice/stack_1:output:0'lstm_281/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_281/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_281/zeros/packedPacklstm_281/strided_slice:output:0 lstm_281/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_281/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_281/zerosFilllstm_281/zeros/packed:output:0lstm_281/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_281/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_281/zeros_1/packedPacklstm_281/strided_slice:output:0"lstm_281/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_281/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_281/zeros_1Fill lstm_281/zeros_1/packed:output:0lstm_281/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_281/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_281/transpose	Transposelstm_280/transpose_1:y:0 lstm_281/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_281/Shape_1Shapelstm_281/transpose:y:0*
T0*
_output_shapes
:h
lstm_281/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_281/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_281/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_281/strided_slice_1StridedSlicelstm_281/Shape_1:output:0'lstm_281/strided_slice_1/stack:output:0)lstm_281/strided_slice_1/stack_1:output:0)lstm_281/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_281/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_281/TensorArrayV2TensorListReserve-lstm_281/TensorArrayV2/element_shape:output:0!lstm_281/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_281/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_281/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_281/transpose:y:0Glstm_281/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_281/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_281/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_281/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_281/strided_slice_2StridedSlicelstm_281/transpose:y:0'lstm_281/strided_slice_2/stack:output:0)lstm_281/strided_slice_2/stack_1:output:0)lstm_281/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_281/lstm_cell_239/MatMul/ReadVariableOpReadVariableOp5lstm_281_lstm_cell_239_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_281/lstm_cell_239/MatMulMatMul!lstm_281/strided_slice_2:output:04lstm_281/lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_281/lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOp7lstm_281_lstm_cell_239_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_281/lstm_cell_239/MatMul_1MatMullstm_281/zeros:output:06lstm_281/lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_281/lstm_cell_239/addAddV2'lstm_281/lstm_cell_239/MatMul:product:0)lstm_281/lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_281/lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOp6lstm_281_lstm_cell_239_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_281/lstm_cell_239/BiasAddBiasAddlstm_281/lstm_cell_239/add:z:05lstm_281/lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_281/lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_281/lstm_cell_239/splitSplit/lstm_281/lstm_cell_239/split/split_dim:output:0'lstm_281/lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_281/lstm_cell_239/SigmoidSigmoid%lstm_281/lstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_281/lstm_cell_239/Sigmoid_1Sigmoid%lstm_281/lstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_281/lstm_cell_239/mulMul$lstm_281/lstm_cell_239/Sigmoid_1:y:0lstm_281/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_281/lstm_cell_239/ReluRelu%lstm_281/lstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_281/lstm_cell_239/mul_1Mul"lstm_281/lstm_cell_239/Sigmoid:y:0)lstm_281/lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_281/lstm_cell_239/add_1AddV2lstm_281/lstm_cell_239/mul:z:0 lstm_281/lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_281/lstm_cell_239/Sigmoid_2Sigmoid%lstm_281/lstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_281/lstm_cell_239/Relu_1Relu lstm_281/lstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_281/lstm_cell_239/mul_2Mul$lstm_281/lstm_cell_239/Sigmoid_2:y:0+lstm_281/lstm_cell_239/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_281/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_281/TensorArrayV2_1TensorListReserve/lstm_281/TensorArrayV2_1/element_shape:output:0!lstm_281/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_281/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_281/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_281/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_281/whileWhile$lstm_281/while/loop_counter:output:0*lstm_281/while/maximum_iterations:output:0lstm_281/time:output:0!lstm_281/TensorArrayV2_1:handle:0lstm_281/zeros:output:0lstm_281/zeros_1:output:0!lstm_281/strided_slice_1:output:0@lstm_281/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_281_lstm_cell_239_matmul_readvariableop_resource7lstm_281_lstm_cell_239_matmul_1_readvariableop_resource6lstm_281_lstm_cell_239_biasadd_readvariableop_resource*
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
lstm_281_while_body_1448862*'
condR
lstm_281_while_cond_1448861*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_281/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_281/TensorArrayV2Stack/TensorListStackTensorListStacklstm_281/while:output:3Blstm_281/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_281/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_281/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_281/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_281/strided_slice_3StridedSlice4lstm_281/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_281/strided_slice_3/stack:output:0)lstm_281/strided_slice_3/stack_1:output:0)lstm_281/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_281/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_281/transpose_1	Transpose4lstm_281/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_281/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_281/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_93/MatMul/ReadVariableOpReadVariableOp'dense_93_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_93/MatMulMatMul!lstm_281/strided_slice_3:output:0&dense_93/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_93/BiasAdd/ReadVariableOpReadVariableOp(dense_93_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_93/BiasAddBiasAdddense_93/MatMul:product:0'dense_93/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_93/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_93/BiasAdd/ReadVariableOp^dense_93/MatMul/ReadVariableOp.^lstm_279/lstm_cell_237/BiasAdd/ReadVariableOp-^lstm_279/lstm_cell_237/MatMul/ReadVariableOp/^lstm_279/lstm_cell_237/MatMul_1/ReadVariableOp^lstm_279/while.^lstm_280/lstm_cell_238/BiasAdd/ReadVariableOp-^lstm_280/lstm_cell_238/MatMul/ReadVariableOp/^lstm_280/lstm_cell_238/MatMul_1/ReadVariableOp^lstm_280/while.^lstm_281/lstm_cell_239/BiasAdd/ReadVariableOp-^lstm_281/lstm_cell_239/MatMul/ReadVariableOp/^lstm_281/lstm_cell_239/MatMul_1/ReadVariableOp^lstm_281/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_93/BiasAdd/ReadVariableOpdense_93/BiasAdd/ReadVariableOp2@
dense_93/MatMul/ReadVariableOpdense_93/MatMul/ReadVariableOp2^
-lstm_279/lstm_cell_237/BiasAdd/ReadVariableOp-lstm_279/lstm_cell_237/BiasAdd/ReadVariableOp2\
,lstm_279/lstm_cell_237/MatMul/ReadVariableOp,lstm_279/lstm_cell_237/MatMul/ReadVariableOp2`
.lstm_279/lstm_cell_237/MatMul_1/ReadVariableOp.lstm_279/lstm_cell_237/MatMul_1/ReadVariableOp2 
lstm_279/whilelstm_279/while2^
-lstm_280/lstm_cell_238/BiasAdd/ReadVariableOp-lstm_280/lstm_cell_238/BiasAdd/ReadVariableOp2\
,lstm_280/lstm_cell_238/MatMul/ReadVariableOp,lstm_280/lstm_cell_238/MatMul/ReadVariableOp2`
.lstm_280/lstm_cell_238/MatMul_1/ReadVariableOp.lstm_280/lstm_cell_238/MatMul_1/ReadVariableOp2 
lstm_280/whilelstm_280/while2^
-lstm_281/lstm_cell_239/BiasAdd/ReadVariableOp-lstm_281/lstm_cell_239/BiasAdd/ReadVariableOp2\
,lstm_281/lstm_cell_239/MatMul/ReadVariableOp,lstm_281/lstm_cell_239/MatMul/ReadVariableOp2`
.lstm_281/lstm_cell_239/MatMul_1/ReadVariableOp.lstm_281/lstm_cell_239/MatMul_1/ReadVariableOp2 
lstm_281/whilelstm_281/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_279_while_body_1448584.
*lstm_279_while_lstm_279_while_loop_counter4
0lstm_279_while_lstm_279_while_maximum_iterations
lstm_279_while_placeholder 
lstm_279_while_placeholder_1 
lstm_279_while_placeholder_2 
lstm_279_while_placeholder_3-
)lstm_279_while_lstm_279_strided_slice_1_0i
elstm_279_while_tensorarrayv2read_tensorlistgetitem_lstm_279_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_279_while_lstm_cell_237_matmul_readvariableop_resource_0:	?R
?lstm_279_while_lstm_cell_237_matmul_1_readvariableop_resource_0:	d?M
>lstm_279_while_lstm_cell_237_biasadd_readvariableop_resource_0:	?
lstm_279_while_identity
lstm_279_while_identity_1
lstm_279_while_identity_2
lstm_279_while_identity_3
lstm_279_while_identity_4
lstm_279_while_identity_5+
'lstm_279_while_lstm_279_strided_slice_1g
clstm_279_while_tensorarrayv2read_tensorlistgetitem_lstm_279_tensorarrayunstack_tensorlistfromtensorN
;lstm_279_while_lstm_cell_237_matmul_readvariableop_resource:	?P
=lstm_279_while_lstm_cell_237_matmul_1_readvariableop_resource:	d?K
<lstm_279_while_lstm_cell_237_biasadd_readvariableop_resource:	???3lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOp?2lstm_279/while/lstm_cell_237/MatMul/ReadVariableOp?4lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOp?
@lstm_279/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
2lstm_279/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_279_while_tensorarrayv2read_tensorlistgetitem_lstm_279_tensorarrayunstack_tensorlistfromtensor_0lstm_279_while_placeholderIlstm_279/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
2lstm_279/while/lstm_cell_237/MatMul/ReadVariableOpReadVariableOp=lstm_279_while_lstm_cell_237_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
#lstm_279/while/lstm_cell_237/MatMulMatMul9lstm_279/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_279/while/lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
4lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOp?lstm_279_while_lstm_cell_237_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
%lstm_279/while/lstm_cell_237/MatMul_1MatMullstm_279_while_placeholder_2<lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 lstm_279/while/lstm_cell_237/addAddV2-lstm_279/while/lstm_cell_237/MatMul:product:0/lstm_279/while/lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
3lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOp>lstm_279_while_lstm_cell_237_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
$lstm_279/while/lstm_cell_237/BiasAddBiasAdd$lstm_279/while/lstm_cell_237/add:z:0;lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????n
,lstm_279/while/lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_279/while/lstm_cell_237/splitSplit5lstm_279/while/lstm_cell_237/split/split_dim:output:0-lstm_279/while/lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
$lstm_279/while/lstm_cell_237/SigmoidSigmoid+lstm_279/while/lstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????d?
&lstm_279/while/lstm_cell_237/Sigmoid_1Sigmoid+lstm_279/while/lstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????d?
 lstm_279/while/lstm_cell_237/mulMul*lstm_279/while/lstm_cell_237/Sigmoid_1:y:0lstm_279_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
!lstm_279/while/lstm_cell_237/ReluRelu+lstm_279/while/lstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
"lstm_279/while/lstm_cell_237/mul_1Mul(lstm_279/while/lstm_cell_237/Sigmoid:y:0/lstm_279/while/lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
"lstm_279/while/lstm_cell_237/add_1AddV2$lstm_279/while/lstm_cell_237/mul:z:0&lstm_279/while/lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
&lstm_279/while/lstm_cell_237/Sigmoid_2Sigmoid+lstm_279/while/lstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????d?
#lstm_279/while/lstm_cell_237/Relu_1Relu&lstm_279/while/lstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
"lstm_279/while/lstm_cell_237/mul_2Mul*lstm_279/while/lstm_cell_237/Sigmoid_2:y:01lstm_279/while/lstm_cell_237/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
3lstm_279/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_279_while_placeholder_1lstm_279_while_placeholder&lstm_279/while/lstm_cell_237/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_279/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_279/while/addAddV2lstm_279_while_placeholderlstm_279/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_279/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_279/while/add_1AddV2*lstm_279_while_lstm_279_while_loop_counterlstm_279/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_279/while/IdentityIdentitylstm_279/while/add_1:z:0^lstm_279/while/NoOp*
T0*
_output_shapes
: ?
lstm_279/while/Identity_1Identity0lstm_279_while_lstm_279_while_maximum_iterations^lstm_279/while/NoOp*
T0*
_output_shapes
: t
lstm_279/while/Identity_2Identitylstm_279/while/add:z:0^lstm_279/while/NoOp*
T0*
_output_shapes
: ?
lstm_279/while/Identity_3IdentityClstm_279/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_279/while/NoOp*
T0*
_output_shapes
: ?
lstm_279/while/Identity_4Identity&lstm_279/while/lstm_cell_237/mul_2:z:0^lstm_279/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_279/while/Identity_5Identity&lstm_279/while/lstm_cell_237/add_1:z:0^lstm_279/while/NoOp*
T0*'
_output_shapes
:?????????d?
lstm_279/while/NoOpNoOp4^lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOp3^lstm_279/while/lstm_cell_237/MatMul/ReadVariableOp5^lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_279_while_identity lstm_279/while/Identity:output:0"?
lstm_279_while_identity_1"lstm_279/while/Identity_1:output:0"?
lstm_279_while_identity_2"lstm_279/while/Identity_2:output:0"?
lstm_279_while_identity_3"lstm_279/while/Identity_3:output:0"?
lstm_279_while_identity_4"lstm_279/while/Identity_4:output:0"?
lstm_279_while_identity_5"lstm_279/while/Identity_5:output:0"T
'lstm_279_while_lstm_279_strided_slice_1)lstm_279_while_lstm_279_strided_slice_1_0"~
<lstm_279_while_lstm_cell_237_biasadd_readvariableop_resource>lstm_279_while_lstm_cell_237_biasadd_readvariableop_resource_0"?
=lstm_279_while_lstm_cell_237_matmul_1_readvariableop_resource?lstm_279_while_lstm_cell_237_matmul_1_readvariableop_resource_0"|
;lstm_279_while_lstm_cell_237_matmul_readvariableop_resource=lstm_279_while_lstm_cell_237_matmul_readvariableop_resource_0"?
clstm_279_while_tensorarrayv2read_tensorlistgetitem_lstm_279_tensorarrayunstack_tensorlistfromtensorelstm_279_while_tensorarrayv2read_tensorlistgetitem_lstm_279_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2j
3lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOp3lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOp2h
2lstm_279/while/lstm_cell_237/MatMul/ReadVariableOp2lstm_279/while/lstm_cell_237/MatMul/ReadVariableOp2l
4lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOp4lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1447625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1447625___redundant_placeholder05
1while_while_cond_1447625___redundant_placeholder15
1while_while_cond_1447625___redundant_placeholder25
1while_while_cond_1447625___redundant_placeholder3
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
*__inference_lstm_279_layer_call_fn_1449412

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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1447410s
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
E__inference_lstm_280_layer_call_and_return_conditional_losses_1446902

inputs(
lstm_cell_238_1446820:	d?(
lstm_cell_238_1446822:	2?$
lstm_cell_238_1446824:	?
identity??%lstm_cell_238/StatefulPartitionedCall?while;
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
%lstm_cell_238/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_238_1446820lstm_cell_238_1446822lstm_cell_238_1446824*
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
J__inference_lstm_cell_238_layer_call_and_return_conditional_losses_1446774n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_238_1446820lstm_cell_238_1446822lstm_cell_238_1446824*
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
while_body_1446833*
condR
while_cond_1446832*K
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
NoOpNoOp&^lstm_cell_238/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2N
%lstm_cell_238/StatefulPartitionedCall%lstm_cell_238/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????d
 
_user_specified_nameinputs
?8
?
while_body_1450241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_238_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_238_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_238_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_238_matmul_readvariableop_resource:	d?G
4while_lstm_cell_238_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_238_biasadd_readvariableop_resource:	???*while/lstm_cell_238/BiasAdd/ReadVariableOp?)while/lstm_cell_238/MatMul/ReadVariableOp?+while/lstm_cell_238/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_238/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_238_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_238/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_238_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_238/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_238/addAddV2$while/lstm_cell_238/MatMul:product:0&while/lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_238_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_238/BiasAddBiasAddwhile/lstm_cell_238/add:z:02while/lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_238/splitSplit,while/lstm_cell_238/split/split_dim:output:0$while/lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_238/SigmoidSigmoid"while/lstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_238/Sigmoid_1Sigmoid"while/lstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mulMul!while/lstm_cell_238/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_238/ReluRelu"while/lstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mul_1Mulwhile/lstm_cell_238/Sigmoid:y:0&while/lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/add_1AddV2while/lstm_cell_238/mul:z:0while/lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_238/Sigmoid_2Sigmoid"while/lstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_238/Relu_1Reluwhile/lstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mul_2Mul!while/lstm_cell_238/Sigmoid_2:y:0(while/lstm_cell_238/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_238/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_238/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_238/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_238/BiasAdd/ReadVariableOp*^while/lstm_cell_238/MatMul/ReadVariableOp,^while/lstm_cell_238/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_238_biasadd_readvariableop_resource5while_lstm_cell_238_biasadd_readvariableop_resource_0"n
4while_lstm_cell_238_matmul_1_readvariableop_resource6while_lstm_cell_238_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_238_matmul_readvariableop_resource4while_lstm_cell_238_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_238/BiasAdd/ReadVariableOp*while/lstm_cell_238/BiasAdd/ReadVariableOp2V
)while/lstm_cell_238/MatMul/ReadVariableOp)while/lstm_cell_238/MatMul/ReadVariableOp2Z
+while/lstm_cell_238/MatMul_1/ReadVariableOp+while/lstm_cell_238/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1447475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1447475___redundant_placeholder05
1while_while_cond_1447475___redundant_placeholder15
1while_while_cond_1447475___redundant_placeholder25
1while_while_cond_1447475___redundant_placeholder3
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
while_body_1450384
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_238_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_238_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_238_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_238_matmul_readvariableop_resource:	d?G
4while_lstm_cell_238_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_238_biasadd_readvariableop_resource:	???*while/lstm_cell_238/BiasAdd/ReadVariableOp?)while/lstm_cell_238/MatMul/ReadVariableOp?+while/lstm_cell_238/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_238/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_238_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_238/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_238_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_238/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_238/addAddV2$while/lstm_cell_238/MatMul:product:0&while/lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_238_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_238/BiasAddBiasAddwhile/lstm_cell_238/add:z:02while/lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_238/splitSplit,while/lstm_cell_238/split/split_dim:output:0$while/lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_238/SigmoidSigmoid"while/lstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_238/Sigmoid_1Sigmoid"while/lstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mulMul!while/lstm_cell_238/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_238/ReluRelu"while/lstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mul_1Mulwhile/lstm_cell_238/Sigmoid:y:0&while/lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/add_1AddV2while/lstm_cell_238/mul:z:0while/lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_238/Sigmoid_2Sigmoid"while/lstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_238/Relu_1Reluwhile/lstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mul_2Mul!while/lstm_cell_238/Sigmoid_2:y:0(while/lstm_cell_238/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_238/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_238/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_238/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_238/BiasAdd/ReadVariableOp*^while/lstm_cell_238/MatMul/ReadVariableOp,^while/lstm_cell_238/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_238_biasadd_readvariableop_resource5while_lstm_cell_238_biasadd_readvariableop_resource_0"n
4while_lstm_cell_238_matmul_1_readvariableop_resource6while_lstm_cell_238_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_238_matmul_readvariableop_resource4while_lstm_cell_238_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_238/BiasAdd/ReadVariableOp*while/lstm_cell_238/BiasAdd/ReadVariableOp2V
)while/lstm_cell_238/MatMul/ReadVariableOp)while/lstm_cell_238/MatMul/ReadVariableOp2Z
+while/lstm_cell_238/MatMul_1/ReadVariableOp+while/lstm_cell_238/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1446292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_237_1446316_0:	?0
while_lstm_cell_237_1446318_0:	d?,
while_lstm_cell_237_1446320_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_237_1446316:	?.
while_lstm_cell_237_1446318:	d?*
while_lstm_cell_237_1446320:	???+while/lstm_cell_237/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_237/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_237_1446316_0while_lstm_cell_237_1446318_0while_lstm_cell_237_1446320_0*
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
J__inference_lstm_cell_237_layer_call_and_return_conditional_losses_1446278?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_237/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_237/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_237/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_237/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_237_1446316while_lstm_cell_237_1446316_0"<
while_lstm_cell_237_1446318while_lstm_cell_237_1446318_0"<
while_lstm_cell_237_1446320while_lstm_cell_237_1446320_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_237/StatefulPartitionedCall+while/lstm_cell_237/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1447626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_239_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_239_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_239_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_239_matmul_readvariableop_resource:2(F
4while_lstm_cell_239_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_239_biasadd_readvariableop_resource:(??*while/lstm_cell_239/BiasAdd/ReadVariableOp?)while/lstm_cell_239/MatMul/ReadVariableOp?+while/lstm_cell_239/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_239/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_239_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_239/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_239_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_239/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_239/addAddV2$while/lstm_cell_239/MatMul:product:0&while/lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_239_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_239/BiasAddBiasAddwhile/lstm_cell_239/add:z:02while/lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_239/splitSplit,while/lstm_cell_239/split/split_dim:output:0$while/lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_239/SigmoidSigmoid"while/lstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_239/Sigmoid_1Sigmoid"while/lstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mulMul!while/lstm_cell_239/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_239/ReluRelu"while/lstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mul_1Mulwhile/lstm_cell_239/Sigmoid:y:0&while/lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/add_1AddV2while/lstm_cell_239/mul:z:0while/lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_239/Sigmoid_2Sigmoid"while/lstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_239/Relu_1Reluwhile/lstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mul_2Mul!while/lstm_cell_239/Sigmoid_2:y:0(while/lstm_cell_239/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_239/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_239/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_239/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_239/BiasAdd/ReadVariableOp*^while/lstm_cell_239/MatMul/ReadVariableOp,^while/lstm_cell_239/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_239_biasadd_readvariableop_resource5while_lstm_cell_239_biasadd_readvariableop_resource_0"n
4while_lstm_cell_239_matmul_1_readvariableop_resource6while_lstm_cell_239_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_239_matmul_readvariableop_resource4while_lstm_cell_239_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_239/BiasAdd/ReadVariableOp*while/lstm_cell_239/BiasAdd/ReadVariableOp2V
)while/lstm_cell_239/MatMul/ReadVariableOp)while/lstm_cell_239/MatMul/ReadVariableOp2Z
+while/lstm_cell_239/MatMul_1/ReadVariableOp+while/lstm_cell_239/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1446361

inputs(
lstm_cell_237_1446279:	?(
lstm_cell_237_1446281:	d?$
lstm_cell_237_1446283:	?
identity??%lstm_cell_237/StatefulPartitionedCall?while;
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
%lstm_cell_237/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_237_1446279lstm_cell_237_1446281lstm_cell_237_1446283*
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
J__inference_lstm_cell_237_layer_call_and_return_conditional_losses_1446278n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_237_1446279lstm_cell_237_1446281lstm_cell_237_1446283*
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
while_body_1446292*
condR
while_cond_1446291*K
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
NoOpNoOp&^lstm_cell_237/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_237/StatefulPartitionedCall%lstm_cell_237/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_1448006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1448006___redundant_placeholder05
1while_while_cond_1448006___redundant_placeholder15
1while_while_cond_1448006___redundant_placeholder25
1while_while_cond_1448006___redundant_placeholder3
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
/__inference_lstm_cell_237_layer_call_fn_1451280

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
J__inference_lstm_cell_237_layer_call_and_return_conditional_losses_1446424o
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
?
*__inference_lstm_279_layer_call_fn_1449423

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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1448256s
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
while_body_1447842
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_239_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_239_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_239_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_239_matmul_readvariableop_resource:2(F
4while_lstm_cell_239_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_239_biasadd_readvariableop_resource:(??*while/lstm_cell_239/BiasAdd/ReadVariableOp?)while/lstm_cell_239/MatMul/ReadVariableOp?+while/lstm_cell_239/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_239/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_239_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_239/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_239_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_239/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_239/addAddV2$while/lstm_cell_239/MatMul:product:0&while/lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_239_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_239/BiasAddBiasAddwhile/lstm_cell_239/add:z:02while/lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_239/splitSplit,while/lstm_cell_239/split/split_dim:output:0$while/lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_239/SigmoidSigmoid"while/lstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_239/Sigmoid_1Sigmoid"while/lstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mulMul!while/lstm_cell_239/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_239/ReluRelu"while/lstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mul_1Mulwhile/lstm_cell_239/Sigmoid:y:0&while/lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/add_1AddV2while/lstm_cell_239/mul:z:0while/lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_239/Sigmoid_2Sigmoid"while/lstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_239/Relu_1Reluwhile/lstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mul_2Mul!while/lstm_cell_239/Sigmoid_2:y:0(while/lstm_cell_239/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_239/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_239/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_239/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_239/BiasAdd/ReadVariableOp*^while/lstm_cell_239/MatMul/ReadVariableOp,^while/lstm_cell_239/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_239_biasadd_readvariableop_resource5while_lstm_cell_239_biasadd_readvariableop_resource_0"n
4while_lstm_cell_239_matmul_1_readvariableop_resource6while_lstm_cell_239_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_239_matmul_readvariableop_resource4while_lstm_cell_239_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_239/BiasAdd/ReadVariableOp*while/lstm_cell_239/BiasAdd/ReadVariableOp2V
)while/lstm_cell_239/MatMul/ReadVariableOp)while/lstm_cell_239/MatMul/ReadVariableOp2Z
+while/lstm_cell_239/MatMul_1/ReadVariableOp+while/lstm_cell_239/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_280_layer_call_fn_1450039

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
E__inference_lstm_280_layer_call_and_return_conditional_losses_1448091s
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
while_cond_1448171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1448171___redundant_placeholder05
1while_while_cond_1448171___redundant_placeholder15
1while_while_cond_1448171___redundant_placeholder25
1while_while_cond_1448171___redundant_placeholder3
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
"__inference__wrapped_model_1446211
lstm_279_inputV
Csequential_93_lstm_279_lstm_cell_237_matmul_readvariableop_resource:	?X
Esequential_93_lstm_279_lstm_cell_237_matmul_1_readvariableop_resource:	d?S
Dsequential_93_lstm_279_lstm_cell_237_biasadd_readvariableop_resource:	?V
Csequential_93_lstm_280_lstm_cell_238_matmul_readvariableop_resource:	d?X
Esequential_93_lstm_280_lstm_cell_238_matmul_1_readvariableop_resource:	2?S
Dsequential_93_lstm_280_lstm_cell_238_biasadd_readvariableop_resource:	?U
Csequential_93_lstm_281_lstm_cell_239_matmul_readvariableop_resource:2(W
Esequential_93_lstm_281_lstm_cell_239_matmul_1_readvariableop_resource:
(R
Dsequential_93_lstm_281_lstm_cell_239_biasadd_readvariableop_resource:(G
5sequential_93_dense_93_matmul_readvariableop_resource:
D
6sequential_93_dense_93_biasadd_readvariableop_resource:
identity??-sequential_93/dense_93/BiasAdd/ReadVariableOp?,sequential_93/dense_93/MatMul/ReadVariableOp?;sequential_93/lstm_279/lstm_cell_237/BiasAdd/ReadVariableOp?:sequential_93/lstm_279/lstm_cell_237/MatMul/ReadVariableOp?<sequential_93/lstm_279/lstm_cell_237/MatMul_1/ReadVariableOp?sequential_93/lstm_279/while?;sequential_93/lstm_280/lstm_cell_238/BiasAdd/ReadVariableOp?:sequential_93/lstm_280/lstm_cell_238/MatMul/ReadVariableOp?<sequential_93/lstm_280/lstm_cell_238/MatMul_1/ReadVariableOp?sequential_93/lstm_280/while?;sequential_93/lstm_281/lstm_cell_239/BiasAdd/ReadVariableOp?:sequential_93/lstm_281/lstm_cell_239/MatMul/ReadVariableOp?<sequential_93/lstm_281/lstm_cell_239/MatMul_1/ReadVariableOp?sequential_93/lstm_281/whileZ
sequential_93/lstm_279/ShapeShapelstm_279_input*
T0*
_output_shapes
:t
*sequential_93/lstm_279/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_93/lstm_279/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_93/lstm_279/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_93/lstm_279/strided_sliceStridedSlice%sequential_93/lstm_279/Shape:output:03sequential_93/lstm_279/strided_slice/stack:output:05sequential_93/lstm_279/strided_slice/stack_1:output:05sequential_93/lstm_279/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_93/lstm_279/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
#sequential_93/lstm_279/zeros/packedPack-sequential_93/lstm_279/strided_slice:output:0.sequential_93/lstm_279/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_93/lstm_279/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_93/lstm_279/zerosFill,sequential_93/lstm_279/zeros/packed:output:0+sequential_93/lstm_279/zeros/Const:output:0*
T0*'
_output_shapes
:?????????di
'sequential_93/lstm_279/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
%sequential_93/lstm_279/zeros_1/packedPack-sequential_93/lstm_279/strided_slice:output:00sequential_93/lstm_279/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_93/lstm_279/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_93/lstm_279/zeros_1Fill.sequential_93/lstm_279/zeros_1/packed:output:0-sequential_93/lstm_279/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dz
%sequential_93/lstm_279/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_93/lstm_279/transpose	Transposelstm_279_input.sequential_93/lstm_279/transpose/perm:output:0*
T0*+
_output_shapes
:?????????r
sequential_93/lstm_279/Shape_1Shape$sequential_93/lstm_279/transpose:y:0*
T0*
_output_shapes
:v
,sequential_93/lstm_279/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_93/lstm_279/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_93/lstm_279/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_93/lstm_279/strided_slice_1StridedSlice'sequential_93/lstm_279/Shape_1:output:05sequential_93/lstm_279/strided_slice_1/stack:output:07sequential_93/lstm_279/strided_slice_1/stack_1:output:07sequential_93/lstm_279/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_93/lstm_279/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_93/lstm_279/TensorArrayV2TensorListReserve;sequential_93/lstm_279/TensorArrayV2/element_shape:output:0/sequential_93/lstm_279/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_93/lstm_279/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
>sequential_93/lstm_279/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_93/lstm_279/transpose:y:0Usequential_93/lstm_279/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_93/lstm_279/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_93/lstm_279/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_93/lstm_279/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_93/lstm_279/strided_slice_2StridedSlice$sequential_93/lstm_279/transpose:y:05sequential_93/lstm_279/strided_slice_2/stack:output:07sequential_93/lstm_279/strided_slice_2/stack_1:output:07sequential_93/lstm_279/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
:sequential_93/lstm_279/lstm_cell_237/MatMul/ReadVariableOpReadVariableOpCsequential_93_lstm_279_lstm_cell_237_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
+sequential_93/lstm_279/lstm_cell_237/MatMulMatMul/sequential_93/lstm_279/strided_slice_2:output:0Bsequential_93/lstm_279/lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_93/lstm_279/lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOpEsequential_93_lstm_279_lstm_cell_237_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
-sequential_93/lstm_279/lstm_cell_237/MatMul_1MatMul%sequential_93/lstm_279/zeros:output:0Dsequential_93/lstm_279/lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_93/lstm_279/lstm_cell_237/addAddV25sequential_93/lstm_279/lstm_cell_237/MatMul:product:07sequential_93/lstm_279/lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_93/lstm_279/lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOpDsequential_93_lstm_279_lstm_cell_237_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_93/lstm_279/lstm_cell_237/BiasAddBiasAdd,sequential_93/lstm_279/lstm_cell_237/add:z:0Csequential_93/lstm_279/lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_93/lstm_279/lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_93/lstm_279/lstm_cell_237/splitSplit=sequential_93/lstm_279/lstm_cell_237/split/split_dim:output:05sequential_93/lstm_279/lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
,sequential_93/lstm_279/lstm_cell_237/SigmoidSigmoid3sequential_93/lstm_279/lstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????d?
.sequential_93/lstm_279/lstm_cell_237/Sigmoid_1Sigmoid3sequential_93/lstm_279/lstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????d?
(sequential_93/lstm_279/lstm_cell_237/mulMul2sequential_93/lstm_279/lstm_cell_237/Sigmoid_1:y:0'sequential_93/lstm_279/zeros_1:output:0*
T0*'
_output_shapes
:?????????d?
)sequential_93/lstm_279/lstm_cell_237/ReluRelu3sequential_93/lstm_279/lstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
*sequential_93/lstm_279/lstm_cell_237/mul_1Mul0sequential_93/lstm_279/lstm_cell_237/Sigmoid:y:07sequential_93/lstm_279/lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
*sequential_93/lstm_279/lstm_cell_237/add_1AddV2,sequential_93/lstm_279/lstm_cell_237/mul:z:0.sequential_93/lstm_279/lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
.sequential_93/lstm_279/lstm_cell_237/Sigmoid_2Sigmoid3sequential_93/lstm_279/lstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????d?
+sequential_93/lstm_279/lstm_cell_237/Relu_1Relu.sequential_93/lstm_279/lstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
*sequential_93/lstm_279/lstm_cell_237/mul_2Mul2sequential_93/lstm_279/lstm_cell_237/Sigmoid_2:y:09sequential_93/lstm_279/lstm_cell_237/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
4sequential_93/lstm_279/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
&sequential_93/lstm_279/TensorArrayV2_1TensorListReserve=sequential_93/lstm_279/TensorArrayV2_1/element_shape:output:0/sequential_93/lstm_279/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_93/lstm_279/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_93/lstm_279/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_93/lstm_279/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_93/lstm_279/whileWhile2sequential_93/lstm_279/while/loop_counter:output:08sequential_93/lstm_279/while/maximum_iterations:output:0$sequential_93/lstm_279/time:output:0/sequential_93/lstm_279/TensorArrayV2_1:handle:0%sequential_93/lstm_279/zeros:output:0'sequential_93/lstm_279/zeros_1:output:0/sequential_93/lstm_279/strided_slice_1:output:0Nsequential_93/lstm_279/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_93_lstm_279_lstm_cell_237_matmul_readvariableop_resourceEsequential_93_lstm_279_lstm_cell_237_matmul_1_readvariableop_resourceDsequential_93_lstm_279_lstm_cell_237_biasadd_readvariableop_resource*
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
)sequential_93_lstm_279_while_body_1445843*5
cond-R+
)sequential_93_lstm_279_while_cond_1445842*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
Gsequential_93/lstm_279/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
9sequential_93/lstm_279/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_93/lstm_279/while:output:3Psequential_93/lstm_279/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0
,sequential_93/lstm_279/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_93/lstm_279/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_93/lstm_279/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_93/lstm_279/strided_slice_3StridedSliceBsequential_93/lstm_279/TensorArrayV2Stack/TensorListStack:tensor:05sequential_93/lstm_279/strided_slice_3/stack:output:07sequential_93/lstm_279/strided_slice_3/stack_1:output:07sequential_93/lstm_279/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask|
'sequential_93/lstm_279/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_93/lstm_279/transpose_1	TransposeBsequential_93/lstm_279/TensorArrayV2Stack/TensorListStack:tensor:00sequential_93/lstm_279/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_93/lstm_279/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_93/lstm_280/ShapeShape&sequential_93/lstm_279/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_93/lstm_280/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_93/lstm_280/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_93/lstm_280/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_93/lstm_280/strided_sliceStridedSlice%sequential_93/lstm_280/Shape:output:03sequential_93/lstm_280/strided_slice/stack:output:05sequential_93/lstm_280/strided_slice/stack_1:output:05sequential_93/lstm_280/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_93/lstm_280/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
#sequential_93/lstm_280/zeros/packedPack-sequential_93/lstm_280/strided_slice:output:0.sequential_93/lstm_280/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_93/lstm_280/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_93/lstm_280/zerosFill,sequential_93/lstm_280/zeros/packed:output:0+sequential_93/lstm_280/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2i
'sequential_93/lstm_280/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
%sequential_93/lstm_280/zeros_1/packedPack-sequential_93/lstm_280/strided_slice:output:00sequential_93/lstm_280/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_93/lstm_280/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_93/lstm_280/zeros_1Fill.sequential_93/lstm_280/zeros_1/packed:output:0-sequential_93/lstm_280/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2z
%sequential_93/lstm_280/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_93/lstm_280/transpose	Transpose&sequential_93/lstm_279/transpose_1:y:0.sequential_93/lstm_280/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dr
sequential_93/lstm_280/Shape_1Shape$sequential_93/lstm_280/transpose:y:0*
T0*
_output_shapes
:v
,sequential_93/lstm_280/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_93/lstm_280/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_93/lstm_280/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_93/lstm_280/strided_slice_1StridedSlice'sequential_93/lstm_280/Shape_1:output:05sequential_93/lstm_280/strided_slice_1/stack:output:07sequential_93/lstm_280/strided_slice_1/stack_1:output:07sequential_93/lstm_280/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_93/lstm_280/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_93/lstm_280/TensorArrayV2TensorListReserve;sequential_93/lstm_280/TensorArrayV2/element_shape:output:0/sequential_93/lstm_280/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_93/lstm_280/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
>sequential_93/lstm_280/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_93/lstm_280/transpose:y:0Usequential_93/lstm_280/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_93/lstm_280/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_93/lstm_280/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_93/lstm_280/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_93/lstm_280/strided_slice_2StridedSlice$sequential_93/lstm_280/transpose:y:05sequential_93/lstm_280/strided_slice_2/stack:output:07sequential_93/lstm_280/strided_slice_2/stack_1:output:07sequential_93/lstm_280/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
:sequential_93/lstm_280/lstm_cell_238/MatMul/ReadVariableOpReadVariableOpCsequential_93_lstm_280_lstm_cell_238_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
+sequential_93/lstm_280/lstm_cell_238/MatMulMatMul/sequential_93/lstm_280/strided_slice_2:output:0Bsequential_93/lstm_280/lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
<sequential_93/lstm_280/lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOpEsequential_93_lstm_280_lstm_cell_238_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
-sequential_93/lstm_280/lstm_cell_238/MatMul_1MatMul%sequential_93/lstm_280/zeros:output:0Dsequential_93/lstm_280/lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
(sequential_93/lstm_280/lstm_cell_238/addAddV25sequential_93/lstm_280/lstm_cell_238/MatMul:product:07sequential_93/lstm_280/lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
;sequential_93/lstm_280/lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOpDsequential_93_lstm_280_lstm_cell_238_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,sequential_93/lstm_280/lstm_cell_238/BiasAddBiasAdd,sequential_93/lstm_280/lstm_cell_238/add:z:0Csequential_93/lstm_280/lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????v
4sequential_93/lstm_280/lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_93/lstm_280/lstm_cell_238/splitSplit=sequential_93/lstm_280/lstm_cell_238/split/split_dim:output:05sequential_93/lstm_280/lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
,sequential_93/lstm_280/lstm_cell_238/SigmoidSigmoid3sequential_93/lstm_280/lstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2?
.sequential_93/lstm_280/lstm_cell_238/Sigmoid_1Sigmoid3sequential_93/lstm_280/lstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2?
(sequential_93/lstm_280/lstm_cell_238/mulMul2sequential_93/lstm_280/lstm_cell_238/Sigmoid_1:y:0'sequential_93/lstm_280/zeros_1:output:0*
T0*'
_output_shapes
:?????????2?
)sequential_93/lstm_280/lstm_cell_238/ReluRelu3sequential_93/lstm_280/lstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
*sequential_93/lstm_280/lstm_cell_238/mul_1Mul0sequential_93/lstm_280/lstm_cell_238/Sigmoid:y:07sequential_93/lstm_280/lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
*sequential_93/lstm_280/lstm_cell_238/add_1AddV2,sequential_93/lstm_280/lstm_cell_238/mul:z:0.sequential_93/lstm_280/lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
.sequential_93/lstm_280/lstm_cell_238/Sigmoid_2Sigmoid3sequential_93/lstm_280/lstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2?
+sequential_93/lstm_280/lstm_cell_238/Relu_1Relu.sequential_93/lstm_280/lstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
*sequential_93/lstm_280/lstm_cell_238/mul_2Mul2sequential_93/lstm_280/lstm_cell_238/Sigmoid_2:y:09sequential_93/lstm_280/lstm_cell_238/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
4sequential_93/lstm_280/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
&sequential_93/lstm_280/TensorArrayV2_1TensorListReserve=sequential_93/lstm_280/TensorArrayV2_1/element_shape:output:0/sequential_93/lstm_280/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_93/lstm_280/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_93/lstm_280/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_93/lstm_280/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_93/lstm_280/whileWhile2sequential_93/lstm_280/while/loop_counter:output:08sequential_93/lstm_280/while/maximum_iterations:output:0$sequential_93/lstm_280/time:output:0/sequential_93/lstm_280/TensorArrayV2_1:handle:0%sequential_93/lstm_280/zeros:output:0'sequential_93/lstm_280/zeros_1:output:0/sequential_93/lstm_280/strided_slice_1:output:0Nsequential_93/lstm_280/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_93_lstm_280_lstm_cell_238_matmul_readvariableop_resourceEsequential_93_lstm_280_lstm_cell_238_matmul_1_readvariableop_resourceDsequential_93_lstm_280_lstm_cell_238_biasadd_readvariableop_resource*
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
)sequential_93_lstm_280_while_body_1445982*5
cond-R+
)sequential_93_lstm_280_while_cond_1445981*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
Gsequential_93/lstm_280/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
9sequential_93/lstm_280/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_93/lstm_280/while:output:3Psequential_93/lstm_280/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0
,sequential_93/lstm_280/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_93/lstm_280/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_93/lstm_280/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_93/lstm_280/strided_slice_3StridedSliceBsequential_93/lstm_280/TensorArrayV2Stack/TensorListStack:tensor:05sequential_93/lstm_280/strided_slice_3/stack:output:07sequential_93/lstm_280/strided_slice_3/stack_1:output:07sequential_93/lstm_280/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask|
'sequential_93/lstm_280/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_93/lstm_280/transpose_1	TransposeBsequential_93/lstm_280/TensorArrayV2Stack/TensorListStack:tensor:00sequential_93/lstm_280/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_93/lstm_280/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_93/lstm_281/ShapeShape&sequential_93/lstm_280/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_93/lstm_281/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_93/lstm_281/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_93/lstm_281/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$sequential_93/lstm_281/strided_sliceStridedSlice%sequential_93/lstm_281/Shape:output:03sequential_93/lstm_281/strided_slice/stack:output:05sequential_93/lstm_281/strided_slice/stack_1:output:05sequential_93/lstm_281/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_93/lstm_281/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
#sequential_93/lstm_281/zeros/packedPack-sequential_93/lstm_281/strided_slice:output:0.sequential_93/lstm_281/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_93/lstm_281/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_93/lstm_281/zerosFill,sequential_93/lstm_281/zeros/packed:output:0+sequential_93/lstm_281/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
i
'sequential_93/lstm_281/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
%sequential_93/lstm_281/zeros_1/packedPack-sequential_93/lstm_281/strided_slice:output:00sequential_93/lstm_281/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_93/lstm_281/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
sequential_93/lstm_281/zeros_1Fill.sequential_93/lstm_281/zeros_1/packed:output:0-sequential_93/lstm_281/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
z
%sequential_93/lstm_281/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 sequential_93/lstm_281/transpose	Transpose&sequential_93/lstm_280/transpose_1:y:0.sequential_93/lstm_281/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2r
sequential_93/lstm_281/Shape_1Shape$sequential_93/lstm_281/transpose:y:0*
T0*
_output_shapes
:v
,sequential_93/lstm_281/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_93/lstm_281/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_93/lstm_281/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_93/lstm_281/strided_slice_1StridedSlice'sequential_93/lstm_281/Shape_1:output:05sequential_93/lstm_281/strided_slice_1/stack:output:07sequential_93/lstm_281/strided_slice_1/stack_1:output:07sequential_93/lstm_281/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_93/lstm_281/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
$sequential_93/lstm_281/TensorArrayV2TensorListReserve;sequential_93/lstm_281/TensorArrayV2/element_shape:output:0/sequential_93/lstm_281/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
Lsequential_93/lstm_281/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
>sequential_93/lstm_281/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_93/lstm_281/transpose:y:0Usequential_93/lstm_281/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???v
,sequential_93/lstm_281/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_93/lstm_281/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_93/lstm_281/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_93/lstm_281/strided_slice_2StridedSlice$sequential_93/lstm_281/transpose:y:05sequential_93/lstm_281/strided_slice_2/stack:output:07sequential_93/lstm_281/strided_slice_2/stack_1:output:07sequential_93/lstm_281/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
:sequential_93/lstm_281/lstm_cell_239/MatMul/ReadVariableOpReadVariableOpCsequential_93_lstm_281_lstm_cell_239_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
+sequential_93/lstm_281/lstm_cell_239/MatMulMatMul/sequential_93/lstm_281/strided_slice_2:output:0Bsequential_93/lstm_281/lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
<sequential_93/lstm_281/lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOpEsequential_93_lstm_281_lstm_cell_239_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
-sequential_93/lstm_281/lstm_cell_239/MatMul_1MatMul%sequential_93/lstm_281/zeros:output:0Dsequential_93/lstm_281/lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
(sequential_93/lstm_281/lstm_cell_239/addAddV25sequential_93/lstm_281/lstm_cell_239/MatMul:product:07sequential_93/lstm_281/lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
;sequential_93/lstm_281/lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOpDsequential_93_lstm_281_lstm_cell_239_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
,sequential_93/lstm_281/lstm_cell_239/BiasAddBiasAdd,sequential_93/lstm_281/lstm_cell_239/add:z:0Csequential_93/lstm_281/lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(v
4sequential_93/lstm_281/lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
*sequential_93/lstm_281/lstm_cell_239/splitSplit=sequential_93/lstm_281/lstm_cell_239/split/split_dim:output:05sequential_93/lstm_281/lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
,sequential_93/lstm_281/lstm_cell_239/SigmoidSigmoid3sequential_93/lstm_281/lstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
?
.sequential_93/lstm_281/lstm_cell_239/Sigmoid_1Sigmoid3sequential_93/lstm_281/lstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
?
(sequential_93/lstm_281/lstm_cell_239/mulMul2sequential_93/lstm_281/lstm_cell_239/Sigmoid_1:y:0'sequential_93/lstm_281/zeros_1:output:0*
T0*'
_output_shapes
:?????????
?
)sequential_93/lstm_281/lstm_cell_239/ReluRelu3sequential_93/lstm_281/lstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
*sequential_93/lstm_281/lstm_cell_239/mul_1Mul0sequential_93/lstm_281/lstm_cell_239/Sigmoid:y:07sequential_93/lstm_281/lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
*sequential_93/lstm_281/lstm_cell_239/add_1AddV2,sequential_93/lstm_281/lstm_cell_239/mul:z:0.sequential_93/lstm_281/lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
.sequential_93/lstm_281/lstm_cell_239/Sigmoid_2Sigmoid3sequential_93/lstm_281/lstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
?
+sequential_93/lstm_281/lstm_cell_239/Relu_1Relu.sequential_93/lstm_281/lstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
*sequential_93/lstm_281/lstm_cell_239/mul_2Mul2sequential_93/lstm_281/lstm_cell_239/Sigmoid_2:y:09sequential_93/lstm_281/lstm_cell_239/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
4sequential_93/lstm_281/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
&sequential_93/lstm_281/TensorArrayV2_1TensorListReserve=sequential_93/lstm_281/TensorArrayV2_1/element_shape:output:0/sequential_93/lstm_281/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???]
sequential_93/lstm_281/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_93/lstm_281/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????k
)sequential_93/lstm_281/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
sequential_93/lstm_281/whileWhile2sequential_93/lstm_281/while/loop_counter:output:08sequential_93/lstm_281/while/maximum_iterations:output:0$sequential_93/lstm_281/time:output:0/sequential_93/lstm_281/TensorArrayV2_1:handle:0%sequential_93/lstm_281/zeros:output:0'sequential_93/lstm_281/zeros_1:output:0/sequential_93/lstm_281/strided_slice_1:output:0Nsequential_93/lstm_281/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_93_lstm_281_lstm_cell_239_matmul_readvariableop_resourceEsequential_93_lstm_281_lstm_cell_239_matmul_1_readvariableop_resourceDsequential_93_lstm_281_lstm_cell_239_biasadd_readvariableop_resource*
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
)sequential_93_lstm_281_while_body_1446121*5
cond-R+
)sequential_93_lstm_281_while_cond_1446120*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
Gsequential_93/lstm_281/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
9sequential_93/lstm_281/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_93/lstm_281/while:output:3Psequential_93/lstm_281/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0
,sequential_93/lstm_281/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????x
.sequential_93/lstm_281/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_93/lstm_281/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&sequential_93/lstm_281/strided_slice_3StridedSliceBsequential_93/lstm_281/TensorArrayV2Stack/TensorListStack:tensor:05sequential_93/lstm_281/strided_slice_3/stack:output:07sequential_93/lstm_281/strided_slice_3/stack_1:output:07sequential_93/lstm_281/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_mask|
'sequential_93/lstm_281/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
"sequential_93/lstm_281/transpose_1	TransposeBsequential_93/lstm_281/TensorArrayV2Stack/TensorListStack:tensor:00sequential_93/lstm_281/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
r
sequential_93/lstm_281/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_93/dense_93/MatMul/ReadVariableOpReadVariableOp5sequential_93_dense_93_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
sequential_93/dense_93/MatMulMatMul/sequential_93/lstm_281/strided_slice_3:output:04sequential_93/dense_93/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_93/dense_93/BiasAdd/ReadVariableOpReadVariableOp6sequential_93_dense_93_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_93/dense_93/BiasAddBiasAdd'sequential_93/dense_93/MatMul:product:05sequential_93/dense_93/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
IdentityIdentity'sequential_93/dense_93/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp.^sequential_93/dense_93/BiasAdd/ReadVariableOp-^sequential_93/dense_93/MatMul/ReadVariableOp<^sequential_93/lstm_279/lstm_cell_237/BiasAdd/ReadVariableOp;^sequential_93/lstm_279/lstm_cell_237/MatMul/ReadVariableOp=^sequential_93/lstm_279/lstm_cell_237/MatMul_1/ReadVariableOp^sequential_93/lstm_279/while<^sequential_93/lstm_280/lstm_cell_238/BiasAdd/ReadVariableOp;^sequential_93/lstm_280/lstm_cell_238/MatMul/ReadVariableOp=^sequential_93/lstm_280/lstm_cell_238/MatMul_1/ReadVariableOp^sequential_93/lstm_280/while<^sequential_93/lstm_281/lstm_cell_239/BiasAdd/ReadVariableOp;^sequential_93/lstm_281/lstm_cell_239/MatMul/ReadVariableOp=^sequential_93/lstm_281/lstm_cell_239/MatMul_1/ReadVariableOp^sequential_93/lstm_281/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2^
-sequential_93/dense_93/BiasAdd/ReadVariableOp-sequential_93/dense_93/BiasAdd/ReadVariableOp2\
,sequential_93/dense_93/MatMul/ReadVariableOp,sequential_93/dense_93/MatMul/ReadVariableOp2z
;sequential_93/lstm_279/lstm_cell_237/BiasAdd/ReadVariableOp;sequential_93/lstm_279/lstm_cell_237/BiasAdd/ReadVariableOp2x
:sequential_93/lstm_279/lstm_cell_237/MatMul/ReadVariableOp:sequential_93/lstm_279/lstm_cell_237/MatMul/ReadVariableOp2|
<sequential_93/lstm_279/lstm_cell_237/MatMul_1/ReadVariableOp<sequential_93/lstm_279/lstm_cell_237/MatMul_1/ReadVariableOp2<
sequential_93/lstm_279/whilesequential_93/lstm_279/while2z
;sequential_93/lstm_280/lstm_cell_238/BiasAdd/ReadVariableOp;sequential_93/lstm_280/lstm_cell_238/BiasAdd/ReadVariableOp2x
:sequential_93/lstm_280/lstm_cell_238/MatMul/ReadVariableOp:sequential_93/lstm_280/lstm_cell_238/MatMul/ReadVariableOp2|
<sequential_93/lstm_280/lstm_cell_238/MatMul_1/ReadVariableOp<sequential_93/lstm_280/lstm_cell_238/MatMul_1/ReadVariableOp2<
sequential_93/lstm_280/whilesequential_93/lstm_280/while2z
;sequential_93/lstm_281/lstm_cell_239/BiasAdd/ReadVariableOp;sequential_93/lstm_281/lstm_cell_239/BiasAdd/ReadVariableOp2x
:sequential_93/lstm_281/lstm_cell_239/MatMul/ReadVariableOp:sequential_93/lstm_281/lstm_cell_239/MatMul/ReadVariableOp2|
<sequential_93/lstm_281/lstm_cell_239/MatMul_1/ReadVariableOp<sequential_93/lstm_281/lstm_cell_239/MatMul_1/ReadVariableOp2<
sequential_93/lstm_281/whilesequential_93/lstm_281/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_279_input
?
?
)sequential_93_lstm_280_while_cond_1445981J
Fsequential_93_lstm_280_while_sequential_93_lstm_280_while_loop_counterP
Lsequential_93_lstm_280_while_sequential_93_lstm_280_while_maximum_iterations,
(sequential_93_lstm_280_while_placeholder.
*sequential_93_lstm_280_while_placeholder_1.
*sequential_93_lstm_280_while_placeholder_2.
*sequential_93_lstm_280_while_placeholder_3L
Hsequential_93_lstm_280_while_less_sequential_93_lstm_280_strided_slice_1c
_sequential_93_lstm_280_while_sequential_93_lstm_280_while_cond_1445981___redundant_placeholder0c
_sequential_93_lstm_280_while_sequential_93_lstm_280_while_cond_1445981___redundant_placeholder1c
_sequential_93_lstm_280_while_sequential_93_lstm_280_while_cond_1445981___redundant_placeholder2c
_sequential_93_lstm_280_while_sequential_93_lstm_280_while_cond_1445981___redundant_placeholder3)
%sequential_93_lstm_280_while_identity
?
!sequential_93/lstm_280/while/LessLess(sequential_93_lstm_280_while_placeholderHsequential_93_lstm_280_while_less_sequential_93_lstm_280_strided_slice_1*
T0*
_output_shapes
: y
%sequential_93/lstm_280/while/IdentityIdentity%sequential_93/lstm_280/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_93_lstm_280_while_identity.sequential_93/lstm_280/while/Identity:output:0*(
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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1447061

inputs'
lstm_cell_239_1446979:2('
lstm_cell_239_1446981:
(#
lstm_cell_239_1446983:(
identity??%lstm_cell_239/StatefulPartitionedCall?while;
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
%lstm_cell_239/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_239_1446979lstm_cell_239_1446981lstm_cell_239_1446983*
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
J__inference_lstm_cell_239_layer_call_and_return_conditional_losses_1446978n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_239_1446979lstm_cell_239_1446981lstm_cell_239_1446983*
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
while_body_1446992*
condR
while_cond_1446991*K
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
NoOpNoOp&^lstm_cell_239/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_239/StatefulPartitionedCall%lstm_cell_239/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
lstm_280_while_cond_1449149.
*lstm_280_while_lstm_280_while_loop_counter4
0lstm_280_while_lstm_280_while_maximum_iterations
lstm_280_while_placeholder 
lstm_280_while_placeholder_1 
lstm_280_while_placeholder_2 
lstm_280_while_placeholder_30
,lstm_280_while_less_lstm_280_strided_slice_1G
Clstm_280_while_lstm_280_while_cond_1449149___redundant_placeholder0G
Clstm_280_while_lstm_280_while_cond_1449149___redundant_placeholder1G
Clstm_280_while_lstm_280_while_cond_1449149___redundant_placeholder2G
Clstm_280_while_lstm_280_while_cond_1449149___redundant_placeholder3
lstm_280_while_identity
?
lstm_280/while/LessLesslstm_280_while_placeholder,lstm_280_while_less_lstm_280_strided_slice_1*
T0*
_output_shapes
: ]
lstm_280/while/IdentityIdentitylstm_280/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_280_while_identity lstm_280/while/Identity:output:0*(
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
lstm_281_while_cond_1448861.
*lstm_281_while_lstm_281_while_loop_counter4
0lstm_281_while_lstm_281_while_maximum_iterations
lstm_281_while_placeholder 
lstm_281_while_placeholder_1 
lstm_281_while_placeholder_2 
lstm_281_while_placeholder_30
,lstm_281_while_less_lstm_281_strided_slice_1G
Clstm_281_while_lstm_281_while_cond_1448861___redundant_placeholder0G
Clstm_281_while_lstm_281_while_cond_1448861___redundant_placeholder1G
Clstm_281_while_lstm_281_while_cond_1448861___redundant_placeholder2G
Clstm_281_while_lstm_281_while_cond_1448861___redundant_placeholder3
lstm_281_while_identity
?
lstm_281/while/LessLesslstm_281_while_placeholder,lstm_281_while_less_lstm_281_strided_slice_1*
T0*
_output_shapes
: ]
lstm_281/while/IdentityIdentitylstm_281/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_281_while_identity lstm_281/while/Identity:output:0*(
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
while_cond_1450999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1450999___redundant_placeholder05
1while_while_cond_1450999___redundant_placeholder15
1while_while_cond_1450999___redundant_placeholder25
1while_while_cond_1450999___redundant_placeholder3
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
E__inference_dense_93_layer_call_and_return_conditional_losses_1451246

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
while_body_1449482
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_237_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_237_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_237_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_237_matmul_readvariableop_resource:	?G
4while_lstm_cell_237_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_237_biasadd_readvariableop_resource:	???*while/lstm_cell_237/BiasAdd/ReadVariableOp?)while/lstm_cell_237/MatMul/ReadVariableOp?+while/lstm_cell_237/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_237/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_237_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_237/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_237_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_237/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_237/addAddV2$while/lstm_cell_237/MatMul:product:0&while/lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_237_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_237/BiasAddBiasAddwhile/lstm_cell_237/add:z:02while/lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_237/splitSplit,while/lstm_cell_237/split/split_dim:output:0$while/lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_237/SigmoidSigmoid"while/lstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_237/Sigmoid_1Sigmoid"while/lstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mulMul!while/lstm_cell_237/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_237/ReluRelu"while/lstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mul_1Mulwhile/lstm_cell_237/Sigmoid:y:0&while/lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/add_1AddV2while/lstm_cell_237/mul:z:0while/lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_237/Sigmoid_2Sigmoid"while/lstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_237/Relu_1Reluwhile/lstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mul_2Mul!while/lstm_cell_237/Sigmoid_2:y:0(while/lstm_cell_237/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_237/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_237/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_237/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_237/BiasAdd/ReadVariableOp*^while/lstm_cell_237/MatMul/ReadVariableOp,^while/lstm_cell_237/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_237_biasadd_readvariableop_resource5while_lstm_cell_237_biasadd_readvariableop_resource_0"n
4while_lstm_cell_237_matmul_1_readvariableop_resource6while_lstm_cell_237_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_237_matmul_readvariableop_resource4while_lstm_cell_237_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_237/BiasAdd/ReadVariableOp*while/lstm_cell_237/BiasAdd/ReadVariableOp2V
)while/lstm_cell_237/MatMul/ReadVariableOp)while/lstm_cell_237/MatMul/ReadVariableOp2Z
+while/lstm_cell_237/MatMul_1/ReadVariableOp+while/lstm_cell_237/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1446482
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1446482___redundant_placeholder05
1while_while_cond_1446482___redundant_placeholder15
1while_while_cond_1446482___redundant_placeholder25
1while_while_cond_1446482___redundant_placeholder3
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
*__inference_lstm_279_layer_call_fn_1449390
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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1446361|
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
*__inference_lstm_280_layer_call_fn_1450006
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
E__inference_lstm_280_layer_call_and_return_conditional_losses_1446711|
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
while_cond_1446991
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1446991___redundant_placeholder05
1while_while_cond_1446991___redundant_placeholder15
1while_while_cond_1446991___redundant_placeholder25
1while_while_cond_1446991___redundant_placeholder3
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
while_body_1446992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_239_1447016_0:2(/
while_lstm_cell_239_1447018_0:
(+
while_lstm_cell_239_1447020_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_239_1447016:2(-
while_lstm_cell_239_1447018:
()
while_lstm_cell_239_1447020:(??+while/lstm_cell_239/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_239/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_239_1447016_0while_lstm_cell_239_1447018_0while_lstm_cell_239_1447020_0*
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
J__inference_lstm_cell_239_layer_call_and_return_conditional_losses_1446978?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_239/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_239/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_239/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_239/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_239_1447016while_lstm_cell_239_1447016_0"<
while_lstm_cell_239_1447018while_lstm_cell_239_1447018_0"<
while_lstm_cell_239_1447020while_lstm_cell_239_1447020_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_239/StatefulPartitionedCall+while/lstm_cell_239/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_1450098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_238_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_238_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_238_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_238_matmul_readvariableop_resource:	d?G
4while_lstm_cell_238_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_238_biasadd_readvariableop_resource:	???*while/lstm_cell_238/BiasAdd/ReadVariableOp?)while/lstm_cell_238/MatMul/ReadVariableOp?+while/lstm_cell_238/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_238/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_238_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_238/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_238_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_238/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_238/addAddV2$while/lstm_cell_238/MatMul:product:0&while/lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_238_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_238/BiasAddBiasAddwhile/lstm_cell_238/add:z:02while/lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_238/splitSplit,while/lstm_cell_238/split/split_dim:output:0$while/lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_238/SigmoidSigmoid"while/lstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_238/Sigmoid_1Sigmoid"while/lstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mulMul!while/lstm_cell_238/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_238/ReluRelu"while/lstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mul_1Mulwhile/lstm_cell_238/Sigmoid:y:0&while/lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/add_1AddV2while/lstm_cell_238/mul:z:0while/lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_238/Sigmoid_2Sigmoid"while/lstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_238/Relu_1Reluwhile/lstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mul_2Mul!while/lstm_cell_238/Sigmoid_2:y:0(while/lstm_cell_238/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_238/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_238/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_238/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_238/BiasAdd/ReadVariableOp*^while/lstm_cell_238/MatMul/ReadVariableOp,^while/lstm_cell_238/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_238_biasadd_readvariableop_resource5while_lstm_cell_238_biasadd_readvariableop_resource_0"n
4while_lstm_cell_238_matmul_1_readvariableop_resource6while_lstm_cell_238_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_238_matmul_readvariableop_resource4while_lstm_cell_238_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_238/BiasAdd/ReadVariableOp*while/lstm_cell_238/BiasAdd/ReadVariableOp2V
)while/lstm_cell_238/MatMul/ReadVariableOp)while/lstm_cell_238/MatMul/ReadVariableOp2Z
+while/lstm_cell_238/MatMul_1/ReadVariableOp+while/lstm_cell_238/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_sequential_93_layer_call_fn_1448498

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
J__inference_sequential_93_layer_call_and_return_conditional_losses_1447735o
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
while_body_1447183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_239_1447207_0:2(/
while_lstm_cell_239_1447209_0:
(+
while_lstm_cell_239_1447211_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_239_1447207:2(-
while_lstm_cell_239_1447209:
()
while_lstm_cell_239_1447211:(??+while/lstm_cell_239/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
+while/lstm_cell_239/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_239_1447207_0while_lstm_cell_239_1447209_0while_lstm_cell_239_1447211_0*
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
J__inference_lstm_cell_239_layer_call_and_return_conditional_losses_1447124?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_239/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_239/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????
?
while/Identity_5Identity4while/lstm_cell_239/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????
z

while/NoOpNoOp,^while/lstm_cell_239/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_239_1447207while_lstm_cell_239_1447207_0"<
while_lstm_cell_239_1447209while_lstm_cell_239_1447209_0"<
while_lstm_cell_239_1447211while_lstm_cell_239_1447211_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2Z
+while/lstm_cell_239/StatefulPartitionedCall+while/lstm_cell_239/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_238_layer_call_fn_1451378

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
J__inference_lstm_cell_238_layer_call_and_return_conditional_losses_1446774o
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
while_cond_1450383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1450383___redundant_placeholder05
1while_while_cond_1450383___redundant_placeholder15
1while_while_cond_1450383___redundant_placeholder25
1while_while_cond_1450383___redundant_placeholder3
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
while_body_1448172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_237_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_237_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_237_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_237_matmul_readvariableop_resource:	?G
4while_lstm_cell_237_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_237_biasadd_readvariableop_resource:	???*while/lstm_cell_237/BiasAdd/ReadVariableOp?)while/lstm_cell_237/MatMul/ReadVariableOp?+while/lstm_cell_237/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_237/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_237_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_237/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_237_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_237/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_237/addAddV2$while/lstm_cell_237/MatMul:product:0&while/lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_237_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_237/BiasAddBiasAddwhile/lstm_cell_237/add:z:02while/lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_237/splitSplit,while/lstm_cell_237/split/split_dim:output:0$while/lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_237/SigmoidSigmoid"while/lstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_237/Sigmoid_1Sigmoid"while/lstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mulMul!while/lstm_cell_237/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_237/ReluRelu"while/lstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mul_1Mulwhile/lstm_cell_237/Sigmoid:y:0&while/lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/add_1AddV2while/lstm_cell_237/mul:z:0while/lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_237/Sigmoid_2Sigmoid"while/lstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_237/Relu_1Reluwhile/lstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mul_2Mul!while/lstm_cell_237/Sigmoid_2:y:0(while/lstm_cell_237/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_237/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_237/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_237/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_237/BiasAdd/ReadVariableOp*^while/lstm_cell_237/MatMul/ReadVariableOp,^while/lstm_cell_237/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_237_biasadd_readvariableop_resource5while_lstm_cell_237_biasadd_readvariableop_resource_0"n
4while_lstm_cell_237_matmul_1_readvariableop_resource6while_lstm_cell_237_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_237_matmul_readvariableop_resource4while_lstm_cell_237_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_237/BiasAdd/ReadVariableOp*while/lstm_cell_237/BiasAdd/ReadVariableOp2V
)while/lstm_cell_237/MatMul/ReadVariableOp)while/lstm_cell_237/MatMul/ReadVariableOp2Z
+while/lstm_cell_237/MatMul_1/ReadVariableOp+while/lstm_cell_237/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_238_layer_call_and_return_conditional_losses_1451442

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
?#
?
while_body_1446483
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_237_1446507_0:	?0
while_lstm_cell_237_1446509_0:	d?,
while_lstm_cell_237_1446511_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_237_1446507:	?.
while_lstm_cell_237_1446509:	d?*
while_lstm_cell_237_1446511:	???+while/lstm_cell_237/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
+while/lstm_cell_237/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_237_1446507_0while_lstm_cell_237_1446509_0while_lstm_cell_237_1446511_0*
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
J__inference_lstm_cell_237_layer_call_and_return_conditional_losses_1446424?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_237/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_237/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????d?
while/Identity_5Identity4while/lstm_cell_237/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????dz

while/NoOpNoOp,^while/lstm_cell_237/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_237_1446507while_lstm_cell_237_1446507_0"<
while_lstm_cell_237_1446509while_lstm_cell_237_1446509_0"<
while_lstm_cell_237_1446511while_lstm_cell_237_1446511_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2Z
+while/lstm_cell_237/StatefulPartitionedCall+while/lstm_cell_237/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_281_layer_call_fn_1450655

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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1447926o
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
J__inference_lstm_cell_239_layer_call_and_return_conditional_losses_1446978

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
?S
?
)sequential_93_lstm_281_while_body_1446121J
Fsequential_93_lstm_281_while_sequential_93_lstm_281_while_loop_counterP
Lsequential_93_lstm_281_while_sequential_93_lstm_281_while_maximum_iterations,
(sequential_93_lstm_281_while_placeholder.
*sequential_93_lstm_281_while_placeholder_1.
*sequential_93_lstm_281_while_placeholder_2.
*sequential_93_lstm_281_while_placeholder_3I
Esequential_93_lstm_281_while_sequential_93_lstm_281_strided_slice_1_0?
?sequential_93_lstm_281_while_tensorarrayv2read_tensorlistgetitem_sequential_93_lstm_281_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_93_lstm_281_while_lstm_cell_239_matmul_readvariableop_resource_0:2(_
Msequential_93_lstm_281_while_lstm_cell_239_matmul_1_readvariableop_resource_0:
(Z
Lsequential_93_lstm_281_while_lstm_cell_239_biasadd_readvariableop_resource_0:()
%sequential_93_lstm_281_while_identity+
'sequential_93_lstm_281_while_identity_1+
'sequential_93_lstm_281_while_identity_2+
'sequential_93_lstm_281_while_identity_3+
'sequential_93_lstm_281_while_identity_4+
'sequential_93_lstm_281_while_identity_5G
Csequential_93_lstm_281_while_sequential_93_lstm_281_strided_slice_1?
sequential_93_lstm_281_while_tensorarrayv2read_tensorlistgetitem_sequential_93_lstm_281_tensorarrayunstack_tensorlistfromtensor[
Isequential_93_lstm_281_while_lstm_cell_239_matmul_readvariableop_resource:2(]
Ksequential_93_lstm_281_while_lstm_cell_239_matmul_1_readvariableop_resource:
(X
Jsequential_93_lstm_281_while_lstm_cell_239_biasadd_readvariableop_resource:(??Asequential_93/lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOp?@sequential_93/lstm_281/while/lstm_cell_239/MatMul/ReadVariableOp?Bsequential_93/lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOp?
Nsequential_93/lstm_281/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
@sequential_93/lstm_281/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_93_lstm_281_while_tensorarrayv2read_tensorlistgetitem_sequential_93_lstm_281_tensorarrayunstack_tensorlistfromtensor_0(sequential_93_lstm_281_while_placeholderWsequential_93/lstm_281/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
@sequential_93/lstm_281/while/lstm_cell_239/MatMul/ReadVariableOpReadVariableOpKsequential_93_lstm_281_while_lstm_cell_239_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
1sequential_93/lstm_281/while/lstm_cell_239/MatMulMatMulGsequential_93/lstm_281/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_93/lstm_281/while/lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
Bsequential_93/lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOpMsequential_93_lstm_281_while_lstm_cell_239_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
3sequential_93/lstm_281/while/lstm_cell_239/MatMul_1MatMul*sequential_93_lstm_281_while_placeholder_2Jsequential_93/lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.sequential_93/lstm_281/while/lstm_cell_239/addAddV2;sequential_93/lstm_281/while/lstm_cell_239/MatMul:product:0=sequential_93/lstm_281/while/lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
Asequential_93/lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOpLsequential_93_lstm_281_while_lstm_cell_239_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
2sequential_93/lstm_281/while/lstm_cell_239/BiasAddBiasAdd2sequential_93/lstm_281/while/lstm_cell_239/add:z:0Isequential_93/lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(|
:sequential_93/lstm_281/while/lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_93/lstm_281/while/lstm_cell_239/splitSplitCsequential_93/lstm_281/while/lstm_cell_239/split/split_dim:output:0;sequential_93/lstm_281/while/lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
2sequential_93/lstm_281/while/lstm_cell_239/SigmoidSigmoid9sequential_93/lstm_281/while/lstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
?
4sequential_93/lstm_281/while/lstm_cell_239/Sigmoid_1Sigmoid9sequential_93/lstm_281/while/lstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
?
.sequential_93/lstm_281/while/lstm_cell_239/mulMul8sequential_93/lstm_281/while/lstm_cell_239/Sigmoid_1:y:0*sequential_93_lstm_281_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
/sequential_93/lstm_281/while/lstm_cell_239/ReluRelu9sequential_93/lstm_281/while/lstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
0sequential_93/lstm_281/while/lstm_cell_239/mul_1Mul6sequential_93/lstm_281/while/lstm_cell_239/Sigmoid:y:0=sequential_93/lstm_281/while/lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
0sequential_93/lstm_281/while/lstm_cell_239/add_1AddV22sequential_93/lstm_281/while/lstm_cell_239/mul:z:04sequential_93/lstm_281/while/lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
4sequential_93/lstm_281/while/lstm_cell_239/Sigmoid_2Sigmoid9sequential_93/lstm_281/while/lstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
?
1sequential_93/lstm_281/while/lstm_cell_239/Relu_1Relu4sequential_93/lstm_281/while/lstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
0sequential_93/lstm_281/while/lstm_cell_239/mul_2Mul8sequential_93/lstm_281/while/lstm_cell_239/Sigmoid_2:y:0?sequential_93/lstm_281/while/lstm_cell_239/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
Asequential_93/lstm_281/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_93_lstm_281_while_placeholder_1(sequential_93_lstm_281_while_placeholder4sequential_93/lstm_281/while/lstm_cell_239/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_93/lstm_281/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_93/lstm_281/while/addAddV2(sequential_93_lstm_281_while_placeholder+sequential_93/lstm_281/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_93/lstm_281/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_93/lstm_281/while/add_1AddV2Fsequential_93_lstm_281_while_sequential_93_lstm_281_while_loop_counter-sequential_93/lstm_281/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_93/lstm_281/while/IdentityIdentity&sequential_93/lstm_281/while/add_1:z:0"^sequential_93/lstm_281/while/NoOp*
T0*
_output_shapes
: ?
'sequential_93/lstm_281/while/Identity_1IdentityLsequential_93_lstm_281_while_sequential_93_lstm_281_while_maximum_iterations"^sequential_93/lstm_281/while/NoOp*
T0*
_output_shapes
: ?
'sequential_93/lstm_281/while/Identity_2Identity$sequential_93/lstm_281/while/add:z:0"^sequential_93/lstm_281/while/NoOp*
T0*
_output_shapes
: ?
'sequential_93/lstm_281/while/Identity_3IdentityQsequential_93/lstm_281/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_93/lstm_281/while/NoOp*
T0*
_output_shapes
: ?
'sequential_93/lstm_281/while/Identity_4Identity4sequential_93/lstm_281/while/lstm_cell_239/mul_2:z:0"^sequential_93/lstm_281/while/NoOp*
T0*'
_output_shapes
:?????????
?
'sequential_93/lstm_281/while/Identity_5Identity4sequential_93/lstm_281/while/lstm_cell_239/add_1:z:0"^sequential_93/lstm_281/while/NoOp*
T0*'
_output_shapes
:?????????
?
!sequential_93/lstm_281/while/NoOpNoOpB^sequential_93/lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOpA^sequential_93/lstm_281/while/lstm_cell_239/MatMul/ReadVariableOpC^sequential_93/lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_93_lstm_281_while_identity.sequential_93/lstm_281/while/Identity:output:0"[
'sequential_93_lstm_281_while_identity_10sequential_93/lstm_281/while/Identity_1:output:0"[
'sequential_93_lstm_281_while_identity_20sequential_93/lstm_281/while/Identity_2:output:0"[
'sequential_93_lstm_281_while_identity_30sequential_93/lstm_281/while/Identity_3:output:0"[
'sequential_93_lstm_281_while_identity_40sequential_93/lstm_281/while/Identity_4:output:0"[
'sequential_93_lstm_281_while_identity_50sequential_93/lstm_281/while/Identity_5:output:0"?
Jsequential_93_lstm_281_while_lstm_cell_239_biasadd_readvariableop_resourceLsequential_93_lstm_281_while_lstm_cell_239_biasadd_readvariableop_resource_0"?
Ksequential_93_lstm_281_while_lstm_cell_239_matmul_1_readvariableop_resourceMsequential_93_lstm_281_while_lstm_cell_239_matmul_1_readvariableop_resource_0"?
Isequential_93_lstm_281_while_lstm_cell_239_matmul_readvariableop_resourceKsequential_93_lstm_281_while_lstm_cell_239_matmul_readvariableop_resource_0"?
Csequential_93_lstm_281_while_sequential_93_lstm_281_strided_slice_1Esequential_93_lstm_281_while_sequential_93_lstm_281_strided_slice_1_0"?
sequential_93_lstm_281_while_tensorarrayv2read_tensorlistgetitem_sequential_93_lstm_281_tensorarrayunstack_tensorlistfromtensor?sequential_93_lstm_281_while_tensorarrayv2read_tensorlistgetitem_sequential_93_lstm_281_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2?
Asequential_93/lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOpAsequential_93/lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOp2?
@sequential_93/lstm_281/while/lstm_cell_239/MatMul/ReadVariableOp@sequential_93/lstm_281/while/lstm_cell_239/MatMul/ReadVariableOp2?
Bsequential_93/lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOpBsequential_93/lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_279_while_cond_1449010.
*lstm_279_while_lstm_279_while_loop_counter4
0lstm_279_while_lstm_279_while_maximum_iterations
lstm_279_while_placeholder 
lstm_279_while_placeholder_1 
lstm_279_while_placeholder_2 
lstm_279_while_placeholder_30
,lstm_279_while_less_lstm_279_strided_slice_1G
Clstm_279_while_lstm_279_while_cond_1449010___redundant_placeholder0G
Clstm_279_while_lstm_279_while_cond_1449010___redundant_placeholder1G
Clstm_279_while_lstm_279_while_cond_1449010___redundant_placeholder2G
Clstm_279_while_lstm_279_while_cond_1449010___redundant_placeholder3
lstm_279_while_identity
?
lstm_279/while/LessLesslstm_279_while_placeholder,lstm_279_while_less_lstm_279_strided_slice_1*
T0*
_output_shapes
: ]
lstm_279/while/IdentityIdentitylstm_279/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_279_while_identity lstm_279/while/Identity:output:0*(
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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1451084

inputs>
,lstm_cell_239_matmul_readvariableop_resource:2(@
.lstm_cell_239_matmul_1_readvariableop_resource:
(;
-lstm_cell_239_biasadd_readvariableop_resource:(
identity??$lstm_cell_239/BiasAdd/ReadVariableOp?#lstm_cell_239/MatMul/ReadVariableOp?%lstm_cell_239/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_239/MatMul/ReadVariableOpReadVariableOp,lstm_cell_239_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_239/MatMulMatMulstrided_slice_2:output:0+lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_239_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_239/MatMul_1MatMulzeros:output:0-lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_239/addAddV2lstm_cell_239/MatMul:product:0 lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_239_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_239/BiasAddBiasAddlstm_cell_239/add:z:0,lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_239/splitSplit&lstm_cell_239/split/split_dim:output:0lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_239/SigmoidSigmoidlstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_239/Sigmoid_1Sigmoidlstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_239/mulMullstm_cell_239/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_239/ReluRelulstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_239/mul_1Mullstm_cell_239/Sigmoid:y:0 lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_239/add_1AddV2lstm_cell_239/mul:z:0lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_239/Sigmoid_2Sigmoidlstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_239/Relu_1Relulstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_239/mul_2Mullstm_cell_239/Sigmoid_2:y:0"lstm_cell_239/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_239_matmul_readvariableop_resource.lstm_cell_239_matmul_1_readvariableop_resource-lstm_cell_239_biasadd_readvariableop_resource*
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
while_body_1451000*
condR
while_cond_1450999*K
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
NoOpNoOp%^lstm_cell_239/BiasAdd/ReadVariableOp$^lstm_cell_239/MatMul/ReadVariableOp&^lstm_cell_239/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????2: : : 2L
$lstm_cell_239/BiasAdd/ReadVariableOp$lstm_cell_239/BiasAdd/ReadVariableOp2J
#lstm_cell_239/MatMul/ReadVariableOp#lstm_cell_239/MatMul/ReadVariableOp2N
%lstm_cell_239/MatMul_1/ReadVariableOp%lstm_cell_239/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
/__inference_lstm_cell_239_layer_call_fn_1451459

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
J__inference_lstm_cell_239_layer_call_and_return_conditional_losses_1446978o
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
?

?
/__inference_sequential_93_layer_call_fn_1447760
lstm_279_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_279_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_93_layer_call_and_return_conditional_losses_1447735o
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
_user_specified_namelstm_279_input
?8
?
while_body_1450714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_239_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_239_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_239_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_239_matmul_readvariableop_resource:2(F
4while_lstm_cell_239_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_239_biasadd_readvariableop_resource:(??*while/lstm_cell_239/BiasAdd/ReadVariableOp?)while/lstm_cell_239/MatMul/ReadVariableOp?+while/lstm_cell_239/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_239/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_239_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_239/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_239_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_239/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_239/addAddV2$while/lstm_cell_239/MatMul:product:0&while/lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_239_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_239/BiasAddBiasAddwhile/lstm_cell_239/add:z:02while/lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_239/splitSplit,while/lstm_cell_239/split/split_dim:output:0$while/lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_239/SigmoidSigmoid"while/lstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_239/Sigmoid_1Sigmoid"while/lstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mulMul!while/lstm_cell_239/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_239/ReluRelu"while/lstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mul_1Mulwhile/lstm_cell_239/Sigmoid:y:0&while/lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/add_1AddV2while/lstm_cell_239/mul:z:0while/lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_239/Sigmoid_2Sigmoid"while/lstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_239/Relu_1Reluwhile/lstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mul_2Mul!while/lstm_cell_239/Sigmoid_2:y:0(while/lstm_cell_239/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_239/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_239/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_239/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_239/BiasAdd/ReadVariableOp*^while/lstm_cell_239/MatMul/ReadVariableOp,^while/lstm_cell_239/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_239_biasadd_readvariableop_resource5while_lstm_cell_239_biasadd_readvariableop_resource_0"n
4while_lstm_cell_239_matmul_1_readvariableop_resource6while_lstm_cell_239_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_239_matmul_readvariableop_resource4while_lstm_cell_239_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_239/BiasAdd/ReadVariableOp*while/lstm_cell_239/BiasAdd/ReadVariableOp2V
)while/lstm_cell_239/MatMul/ReadVariableOp)while/lstm_cell_239/MatMul/ReadVariableOp2Z
+while/lstm_cell_239/MatMul_1/ReadVariableOp+while/lstm_cell_239/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1451000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_239_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_239_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_239_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_239_matmul_readvariableop_resource:2(F
4while_lstm_cell_239_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_239_biasadd_readvariableop_resource:(??*while/lstm_cell_239/BiasAdd/ReadVariableOp?)while/lstm_cell_239/MatMul/ReadVariableOp?+while/lstm_cell_239/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
)while/lstm_cell_239/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_239_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
while/lstm_cell_239/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
+while/lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_239_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
while/lstm_cell_239/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
while/lstm_cell_239/addAddV2$while/lstm_cell_239/MatMul:product:0&while/lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
*while/lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_239_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
while/lstm_cell_239/BiasAddBiasAddwhile/lstm_cell_239/add:z:02while/lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(e
#while/lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_239/splitSplit,while/lstm_cell_239/split/split_dim:output:0$while/lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split|
while/lstm_cell_239/SigmoidSigmoid"while/lstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_239/Sigmoid_1Sigmoid"while/lstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mulMul!while/lstm_cell_239/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????
v
while/lstm_cell_239/ReluRelu"while/lstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mul_1Mulwhile/lstm_cell_239/Sigmoid:y:0&while/lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/add_1AddV2while/lstm_cell_239/mul:z:0while/lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
~
while/lstm_cell_239/Sigmoid_2Sigmoid"while/lstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
s
while/lstm_cell_239/Relu_1Reluwhile/lstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
while/lstm_cell_239/mul_2Mul!while/lstm_cell_239/Sigmoid_2:y:0(while/lstm_cell_239/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_239/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_239/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
z
while/Identity_5Identitywhile/lstm_cell_239/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????
?

while/NoOpNoOp+^while/lstm_cell_239/BiasAdd/ReadVariableOp*^while/lstm_cell_239/MatMul/ReadVariableOp,^while/lstm_cell_239/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_239_biasadd_readvariableop_resource5while_lstm_cell_239_biasadd_readvariableop_resource_0"n
4while_lstm_cell_239_matmul_1_readvariableop_resource6while_lstm_cell_239_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_239_matmul_readvariableop_resource4while_lstm_cell_239_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2X
*while/lstm_cell_239/BiasAdd/ReadVariableOp*while/lstm_cell_239/BiasAdd/ReadVariableOp2V
)while/lstm_cell_239/MatMul/ReadVariableOp)while/lstm_cell_239/MatMul/ReadVariableOp2Z
+while/lstm_cell_239/MatMul_1/ReadVariableOp+while/lstm_cell_239/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1447252

inputs'
lstm_cell_239_1447170:2('
lstm_cell_239_1447172:
(#
lstm_cell_239_1447174:(
identity??%lstm_cell_239/StatefulPartitionedCall?while;
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
%lstm_cell_239/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_239_1447170lstm_cell_239_1447172lstm_cell_239_1447174*
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
J__inference_lstm_cell_239_layer_call_and_return_conditional_losses_1447124n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_239_1447170lstm_cell_239_1447172lstm_cell_239_1447174*
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
while_body_1447183*
condR
while_cond_1447182*K
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
NoOpNoOp&^lstm_cell_239/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2N
%lstm_cell_239/StatefulPartitionedCall%lstm_cell_239/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????2
 
_user_specified_nameinputs
?

?
/__inference_sequential_93_layer_call_fn_1448376
lstm_279_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_279_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_93_layer_call_and_return_conditional_losses_1448324o
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
_user_specified_namelstm_279_input
?
?
*__inference_lstm_280_layer_call_fn_1450028

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
E__inference_lstm_280_layer_call_and_return_conditional_losses_1447560s
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
?
?
J__inference_lstm_cell_239_layer_call_and_return_conditional_losses_1451540

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
while_cond_1450713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1450713___redundant_placeholder05
1while_while_cond_1450713___redundant_placeholder15
1while_while_cond_1450713___redundant_placeholder25
1while_while_cond_1450713___redundant_placeholder3
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
while_cond_1449481
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1449481___redundant_placeholder05
1while_while_cond_1449481___redundant_placeholder15
1while_while_cond_1449481___redundant_placeholder25
1while_while_cond_1449481___redundant_placeholder3
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
lstm_279_while_cond_1448583.
*lstm_279_while_lstm_279_while_loop_counter4
0lstm_279_while_lstm_279_while_maximum_iterations
lstm_279_while_placeholder 
lstm_279_while_placeholder_1 
lstm_279_while_placeholder_2 
lstm_279_while_placeholder_30
,lstm_279_while_less_lstm_279_strided_slice_1G
Clstm_279_while_lstm_279_while_cond_1448583___redundant_placeholder0G
Clstm_279_while_lstm_279_while_cond_1448583___redundant_placeholder1G
Clstm_279_while_lstm_279_while_cond_1448583___redundant_placeholder2G
Clstm_279_while_lstm_279_while_cond_1448583___redundant_placeholder3
lstm_279_while_identity
?
lstm_279/while/LessLesslstm_279_while_placeholder,lstm_279_while_less_lstm_279_strided_slice_1*
T0*
_output_shapes
: ]
lstm_279/while/IdentityIdentitylstm_279/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_279_while_identity lstm_279/while/Identity:output:0*(
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
while_body_1449768
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_237_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_237_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_237_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_237_matmul_readvariableop_resource:	?G
4while_lstm_cell_237_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_237_biasadd_readvariableop_resource:	???*while/lstm_cell_237/BiasAdd/ReadVariableOp?)while/lstm_cell_237/MatMul/ReadVariableOp?+while/lstm_cell_237/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_237/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_237_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_237/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_237_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_237/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_237/addAddV2$while/lstm_cell_237/MatMul:product:0&while/lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_237_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_237/BiasAddBiasAddwhile/lstm_cell_237/add:z:02while/lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_237/splitSplit,while/lstm_cell_237/split/split_dim:output:0$while/lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_237/SigmoidSigmoid"while/lstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_237/Sigmoid_1Sigmoid"while/lstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mulMul!while/lstm_cell_237/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_237/ReluRelu"while/lstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mul_1Mulwhile/lstm_cell_237/Sigmoid:y:0&while/lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/add_1AddV2while/lstm_cell_237/mul:z:0while/lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_237/Sigmoid_2Sigmoid"while/lstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_237/Relu_1Reluwhile/lstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mul_2Mul!while/lstm_cell_237/Sigmoid_2:y:0(while/lstm_cell_237/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_237/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_237/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_237/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_237/BiasAdd/ReadVariableOp*^while/lstm_cell_237/MatMul/ReadVariableOp,^while/lstm_cell_237/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_237_biasadd_readvariableop_resource5while_lstm_cell_237_biasadd_readvariableop_resource_0"n
4while_lstm_cell_237_matmul_1_readvariableop_resource6while_lstm_cell_237_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_237_matmul_readvariableop_resource4while_lstm_cell_237_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_237/BiasAdd/ReadVariableOp*while/lstm_cell_237/BiasAdd/ReadVariableOp2V
)while/lstm_cell_237/MatMul/ReadVariableOp)while/lstm_cell_237/MatMul/ReadVariableOp2Z
+while/lstm_cell_237/MatMul_1/ReadVariableOp+while/lstm_cell_237/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_280_layer_call_and_return_conditional_losses_1448091

inputs?
,lstm_cell_238_matmul_readvariableop_resource:	d?A
.lstm_cell_238_matmul_1_readvariableop_resource:	2?<
-lstm_cell_238_biasadd_readvariableop_resource:	?
identity??$lstm_cell_238/BiasAdd/ReadVariableOp?#lstm_cell_238/MatMul/ReadVariableOp?%lstm_cell_238/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_238/MatMul/ReadVariableOpReadVariableOp,lstm_cell_238_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_238/MatMulMatMulstrided_slice_2:output:0+lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_238_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_238/MatMul_1MatMulzeros:output:0-lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_238/addAddV2lstm_cell_238/MatMul:product:0 lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_238_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_238/BiasAddBiasAddlstm_cell_238/add:z:0,lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_238/splitSplit&lstm_cell_238/split/split_dim:output:0lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_238/SigmoidSigmoidlstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_238/Sigmoid_1Sigmoidlstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_238/mulMullstm_cell_238/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_238/ReluRelulstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_238/mul_1Mullstm_cell_238/Sigmoid:y:0 lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_238/add_1AddV2lstm_cell_238/mul:z:0lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_238/Sigmoid_2Sigmoidlstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_238/Relu_1Relulstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_238/mul_2Mullstm_cell_238/Sigmoid_2:y:0"lstm_cell_238/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_238_matmul_readvariableop_resource.lstm_cell_238_matmul_1_readvariableop_resource-lstm_cell_238_biasadd_readvariableop_resource*
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
while_body_1448007*
condR
while_cond_1448006*K
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
NoOpNoOp%^lstm_cell_238/BiasAdd/ReadVariableOp$^lstm_cell_238/MatMul/ReadVariableOp&^lstm_cell_238/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_238/BiasAdd/ReadVariableOp$lstm_cell_238/BiasAdd/ReadVariableOp2J
#lstm_cell_238/MatMul/ReadVariableOp#lstm_cell_238/MatMul/ReadVariableOp2N
%lstm_cell_238/MatMul_1/ReadVariableOp%lstm_cell_238/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
while_cond_1446291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1446291___redundant_placeholder05
1while_while_cond_1446291___redundant_placeholder15
1while_while_cond_1446291___redundant_placeholder25
1while_while_cond_1446291___redundant_placeholder3
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
while_body_1447326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_237_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_237_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_237_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_237_matmul_readvariableop_resource:	?G
4while_lstm_cell_237_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_237_biasadd_readvariableop_resource:	???*while/lstm_cell_237/BiasAdd/ReadVariableOp?)while/lstm_cell_237/MatMul/ReadVariableOp?+while/lstm_cell_237/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_237/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_237_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_237/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_237_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_237/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_237/addAddV2$while/lstm_cell_237/MatMul:product:0&while/lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_237_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_237/BiasAddBiasAddwhile/lstm_cell_237/add:z:02while/lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_237/splitSplit,while/lstm_cell_237/split/split_dim:output:0$while/lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_237/SigmoidSigmoid"while/lstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_237/Sigmoid_1Sigmoid"while/lstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mulMul!while/lstm_cell_237/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_237/ReluRelu"while/lstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mul_1Mulwhile/lstm_cell_237/Sigmoid:y:0&while/lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/add_1AddV2while/lstm_cell_237/mul:z:0while/lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_237/Sigmoid_2Sigmoid"while/lstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_237/Relu_1Reluwhile/lstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mul_2Mul!while/lstm_cell_237/Sigmoid_2:y:0(while/lstm_cell_237/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_237/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_237/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_237/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_237/BiasAdd/ReadVariableOp*^while/lstm_cell_237/MatMul/ReadVariableOp,^while/lstm_cell_237/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_237_biasadd_readvariableop_resource5while_lstm_cell_237_biasadd_readvariableop_resource_0"n
4while_lstm_cell_237_matmul_1_readvariableop_resource6while_lstm_cell_237_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_237_matmul_readvariableop_resource4while_lstm_cell_237_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_237/BiasAdd/ReadVariableOp*while/lstm_cell_237/BiasAdd/ReadVariableOp2V
)while/lstm_cell_237/MatMul/ReadVariableOp)while/lstm_cell_237/MatMul/ReadVariableOp2Z
+while/lstm_cell_237/MatMul_1/ReadVariableOp+while/lstm_cell_237/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1450941
inputs_0>
,lstm_cell_239_matmul_readvariableop_resource:2(@
.lstm_cell_239_matmul_1_readvariableop_resource:
(;
-lstm_cell_239_biasadd_readvariableop_resource:(
identity??$lstm_cell_239/BiasAdd/ReadVariableOp?#lstm_cell_239/MatMul/ReadVariableOp?%lstm_cell_239/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_239/MatMul/ReadVariableOpReadVariableOp,lstm_cell_239_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_cell_239/MatMulMatMulstrided_slice_2:output:0+lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
%lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_239_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_cell_239/MatMul_1MatMulzeros:output:0-lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_cell_239/addAddV2lstm_cell_239/MatMul:product:0 lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
$lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_239_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_cell_239/BiasAddBiasAddlstm_cell_239/add:z:0,lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(_
lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_239/splitSplit&lstm_cell_239/split/split_dim:output:0lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_splitp
lstm_cell_239/SigmoidSigmoidlstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_239/Sigmoid_1Sigmoidlstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
y
lstm_cell_239/mulMullstm_cell_239/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????
j
lstm_cell_239/ReluRelulstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_cell_239/mul_1Mullstm_cell_239/Sigmoid:y:0 lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
~
lstm_cell_239/add_1AddV2lstm_cell_239/mul:z:0lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
r
lstm_cell_239/Sigmoid_2Sigmoidlstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
g
lstm_cell_239/Relu_1Relulstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_cell_239/mul_2Mullstm_cell_239/Sigmoid_2:y:0"lstm_cell_239/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_239_matmul_readvariableop_resource.lstm_cell_239_matmul_1_readvariableop_resource-lstm_cell_239_biasadd_readvariableop_resource*
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
while_body_1450857*
condR
while_cond_1450856*K
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
NoOpNoOp%^lstm_cell_239/BiasAdd/ReadVariableOp$^lstm_cell_239/MatMul/ReadVariableOp&^lstm_cell_239/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????2: : : 2L
$lstm_cell_239/BiasAdd/ReadVariableOp$lstm_cell_239/BiasAdd/ReadVariableOp2J
#lstm_cell_239/MatMul/ReadVariableOp#lstm_cell_239/MatMul/ReadVariableOp2N
%lstm_cell_239/MatMul_1/ReadVariableOp%lstm_cell_239/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????2
"
_user_specified_name
inputs/0
?
?
J__inference_lstm_cell_238_layer_call_and_return_conditional_losses_1446774

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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1448256

inputs?
,lstm_cell_237_matmul_readvariableop_resource:	?A
.lstm_cell_237_matmul_1_readvariableop_resource:	d?<
-lstm_cell_237_biasadd_readvariableop_resource:	?
identity??$lstm_cell_237/BiasAdd/ReadVariableOp?#lstm_cell_237/MatMul/ReadVariableOp?%lstm_cell_237/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_237/MatMul/ReadVariableOpReadVariableOp,lstm_cell_237_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_237/MatMulMatMulstrided_slice_2:output:0+lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_237_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_237/MatMul_1MatMulzeros:output:0-lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_237/addAddV2lstm_cell_237/MatMul:product:0 lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_237_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_237/BiasAddBiasAddlstm_cell_237/add:z:0,lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_237/splitSplit&lstm_cell_237/split/split_dim:output:0lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_237/SigmoidSigmoidlstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_237/Sigmoid_1Sigmoidlstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_237/mulMullstm_cell_237/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_237/ReluRelulstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_237/mul_1Mullstm_cell_237/Sigmoid:y:0 lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_237/add_1AddV2lstm_cell_237/mul:z:0lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_237/Sigmoid_2Sigmoidlstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_237/Relu_1Relulstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_237/mul_2Mullstm_cell_237/Sigmoid_2:y:0"lstm_cell_237/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_237_matmul_readvariableop_resource.lstm_cell_237_matmul_1_readvariableop_resource-lstm_cell_237_biasadd_readvariableop_resource*
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
while_body_1448172*
condR
while_cond_1448171*K
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
NoOpNoOp%^lstm_cell_237/BiasAdd/ReadVariableOp$^lstm_cell_237/MatMul/ReadVariableOp&^lstm_cell_237/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_237/BiasAdd/ReadVariableOp$lstm_cell_237/BiasAdd/ReadVariableOp2J
#lstm_cell_237/MatMul/ReadVariableOp#lstm_cell_237/MatMul/ReadVariableOp2N
%lstm_cell_237/MatMul_1/ReadVariableOp%lstm_cell_237/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?

lstm_281_while_body_1449289.
*lstm_281_while_lstm_281_while_loop_counter4
0lstm_281_while_lstm_281_while_maximum_iterations
lstm_281_while_placeholder 
lstm_281_while_placeholder_1 
lstm_281_while_placeholder_2 
lstm_281_while_placeholder_3-
)lstm_281_while_lstm_281_strided_slice_1_0i
elstm_281_while_tensorarrayv2read_tensorlistgetitem_lstm_281_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_281_while_lstm_cell_239_matmul_readvariableop_resource_0:2(Q
?lstm_281_while_lstm_cell_239_matmul_1_readvariableop_resource_0:
(L
>lstm_281_while_lstm_cell_239_biasadd_readvariableop_resource_0:(
lstm_281_while_identity
lstm_281_while_identity_1
lstm_281_while_identity_2
lstm_281_while_identity_3
lstm_281_while_identity_4
lstm_281_while_identity_5+
'lstm_281_while_lstm_281_strided_slice_1g
clstm_281_while_tensorarrayv2read_tensorlistgetitem_lstm_281_tensorarrayunstack_tensorlistfromtensorM
;lstm_281_while_lstm_cell_239_matmul_readvariableop_resource:2(O
=lstm_281_while_lstm_cell_239_matmul_1_readvariableop_resource:
(J
<lstm_281_while_lstm_cell_239_biasadd_readvariableop_resource:(??3lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOp?2lstm_281/while/lstm_cell_239/MatMul/ReadVariableOp?4lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOp?
@lstm_281/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
2lstm_281/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_281_while_tensorarrayv2read_tensorlistgetitem_lstm_281_tensorarrayunstack_tensorlistfromtensor_0lstm_281_while_placeholderIlstm_281/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????2*
element_dtype0?
2lstm_281/while/lstm_cell_239/MatMul/ReadVariableOpReadVariableOp=lstm_281_while_lstm_cell_239_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0?
#lstm_281/while/lstm_cell_239/MatMulMatMul9lstm_281/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_281/while/lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
4lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOp?lstm_281_while_lstm_cell_239_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0?
%lstm_281/while/lstm_cell_239/MatMul_1MatMullstm_281_while_placeholder_2<lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
 lstm_281/while/lstm_cell_239/addAddV2-lstm_281/while/lstm_cell_239/MatMul:product:0/lstm_281/while/lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
3lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOp>lstm_281_while_lstm_cell_239_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0?
$lstm_281/while/lstm_cell_239/BiasAddBiasAdd$lstm_281/while/lstm_cell_239/add:z:0;lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(n
,lstm_281/while/lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"lstm_281/while/lstm_cell_239/splitSplit5lstm_281/while/lstm_cell_239/split/split_dim:output:0-lstm_281/while/lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
$lstm_281/while/lstm_cell_239/SigmoidSigmoid+lstm_281/while/lstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
?
&lstm_281/while/lstm_cell_239/Sigmoid_1Sigmoid+lstm_281/while/lstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
?
 lstm_281/while/lstm_cell_239/mulMul*lstm_281/while/lstm_cell_239/Sigmoid_1:y:0lstm_281_while_placeholder_3*
T0*'
_output_shapes
:?????????
?
!lstm_281/while/lstm_cell_239/ReluRelu+lstm_281/while/lstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
"lstm_281/while/lstm_cell_239/mul_1Mul(lstm_281/while/lstm_cell_239/Sigmoid:y:0/lstm_281/while/lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
"lstm_281/while/lstm_cell_239/add_1AddV2$lstm_281/while/lstm_cell_239/mul:z:0&lstm_281/while/lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
&lstm_281/while/lstm_cell_239/Sigmoid_2Sigmoid+lstm_281/while/lstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
?
#lstm_281/while/lstm_cell_239/Relu_1Relu&lstm_281/while/lstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
"lstm_281/while/lstm_cell_239/mul_2Mul*lstm_281/while/lstm_cell_239/Sigmoid_2:y:01lstm_281/while/lstm_cell_239/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
?
3lstm_281/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_281_while_placeholder_1lstm_281_while_placeholder&lstm_281/while/lstm_cell_239/mul_2:z:0*
_output_shapes
: *
element_dtype0:???V
lstm_281/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_281/while/addAddV2lstm_281_while_placeholderlstm_281/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_281/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_281/while/add_1AddV2*lstm_281_while_lstm_281_while_loop_counterlstm_281/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_281/while/IdentityIdentitylstm_281/while/add_1:z:0^lstm_281/while/NoOp*
T0*
_output_shapes
: ?
lstm_281/while/Identity_1Identity0lstm_281_while_lstm_281_while_maximum_iterations^lstm_281/while/NoOp*
T0*
_output_shapes
: t
lstm_281/while/Identity_2Identitylstm_281/while/add:z:0^lstm_281/while/NoOp*
T0*
_output_shapes
: ?
lstm_281/while/Identity_3IdentityClstm_281/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_281/while/NoOp*
T0*
_output_shapes
: ?
lstm_281/while/Identity_4Identity&lstm_281/while/lstm_cell_239/mul_2:z:0^lstm_281/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_281/while/Identity_5Identity&lstm_281/while/lstm_cell_239/add_1:z:0^lstm_281/while/NoOp*
T0*'
_output_shapes
:?????????
?
lstm_281/while/NoOpNoOp4^lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOp3^lstm_281/while/lstm_cell_239/MatMul/ReadVariableOp5^lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_281_while_identity lstm_281/while/Identity:output:0"?
lstm_281_while_identity_1"lstm_281/while/Identity_1:output:0"?
lstm_281_while_identity_2"lstm_281/while/Identity_2:output:0"?
lstm_281_while_identity_3"lstm_281/while/Identity_3:output:0"?
lstm_281_while_identity_4"lstm_281/while/Identity_4:output:0"?
lstm_281_while_identity_5"lstm_281/while/Identity_5:output:0"T
'lstm_281_while_lstm_281_strided_slice_1)lstm_281_while_lstm_281_strided_slice_1_0"~
<lstm_281_while_lstm_cell_239_biasadd_readvariableop_resource>lstm_281_while_lstm_cell_239_biasadd_readvariableop_resource_0"?
=lstm_281_while_lstm_cell_239_matmul_1_readvariableop_resource?lstm_281_while_lstm_cell_239_matmul_1_readvariableop_resource_0"|
;lstm_281_while_lstm_cell_239_matmul_readvariableop_resource=lstm_281_while_lstm_cell_239_matmul_readvariableop_resource_0"?
clstm_281_while_tensorarrayv2read_tensorlistgetitem_lstm_281_tensorarrayunstack_tensorlistfromtensorelstm_281_while_tensorarrayv2read_tensorlistgetitem_lstm_281_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????
:?????????
: : : : : 2j
3lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOp3lstm_281/while/lstm_cell_239/BiasAdd/ReadVariableOp2h
2lstm_281/while/lstm_cell_239/MatMul/ReadVariableOp2lstm_281/while/lstm_cell_239/MatMul/ReadVariableOp2l
4lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOp4lstm_281/while/lstm_cell_239/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1449566
inputs_0?
,lstm_cell_237_matmul_readvariableop_resource:	?A
.lstm_cell_237_matmul_1_readvariableop_resource:	d?<
-lstm_cell_237_biasadd_readvariableop_resource:	?
identity??$lstm_cell_237/BiasAdd/ReadVariableOp?#lstm_cell_237/MatMul/ReadVariableOp?%lstm_cell_237/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_237/MatMul/ReadVariableOpReadVariableOp,lstm_cell_237_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_237/MatMulMatMulstrided_slice_2:output:0+lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_237_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_237/MatMul_1MatMulzeros:output:0-lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_237/addAddV2lstm_cell_237/MatMul:product:0 lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_237_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_237/BiasAddBiasAddlstm_cell_237/add:z:0,lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_237/splitSplit&lstm_cell_237/split/split_dim:output:0lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_237/SigmoidSigmoidlstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_237/Sigmoid_1Sigmoidlstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_237/mulMullstm_cell_237/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_237/ReluRelulstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_237/mul_1Mullstm_cell_237/Sigmoid:y:0 lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_237/add_1AddV2lstm_cell_237/mul:z:0lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_237/Sigmoid_2Sigmoidlstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_237/Relu_1Relulstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_237/mul_2Mullstm_cell_237/Sigmoid_2:y:0"lstm_cell_237/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_237_matmul_readvariableop_resource.lstm_cell_237_matmul_1_readvariableop_resource-lstm_cell_237_biasadd_readvariableop_resource*
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
while_body_1449482*
condR
while_cond_1449481*K
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
NoOpNoOp%^lstm_cell_237/BiasAdd/ReadVariableOp$^lstm_cell_237/MatMul/ReadVariableOp&^lstm_cell_237/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_237/BiasAdd/ReadVariableOp$lstm_cell_237/BiasAdd/ReadVariableOp2J
#lstm_cell_237/MatMul/ReadVariableOp#lstm_cell_237/MatMul/ReadVariableOp2N
%lstm_cell_237/MatMul_1/ReadVariableOp%lstm_cell_237/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?K
?
E__inference_lstm_279_layer_call_and_return_conditional_losses_1449709
inputs_0?
,lstm_cell_237_matmul_readvariableop_resource:	?A
.lstm_cell_237_matmul_1_readvariableop_resource:	d?<
-lstm_cell_237_biasadd_readvariableop_resource:	?
identity??$lstm_cell_237/BiasAdd/ReadVariableOp?#lstm_cell_237/MatMul/ReadVariableOp?%lstm_cell_237/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_237/MatMul/ReadVariableOpReadVariableOp,lstm_cell_237_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_237/MatMulMatMulstrided_slice_2:output:0+lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_237_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_237/MatMul_1MatMulzeros:output:0-lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_237/addAddV2lstm_cell_237/MatMul:product:0 lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_237_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_237/BiasAddBiasAddlstm_cell_237/add:z:0,lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_237/splitSplit&lstm_cell_237/split/split_dim:output:0lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_237/SigmoidSigmoidlstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_237/Sigmoid_1Sigmoidlstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_237/mulMullstm_cell_237/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_237/ReluRelulstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_237/mul_1Mullstm_cell_237/Sigmoid:y:0 lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_237/add_1AddV2lstm_cell_237/mul:z:0lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_237/Sigmoid_2Sigmoidlstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_237/Relu_1Relulstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_237/mul_2Mullstm_cell_237/Sigmoid_2:y:0"lstm_cell_237/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_237_matmul_readvariableop_resource.lstm_cell_237_matmul_1_readvariableop_resource-lstm_cell_237_biasadd_readvariableop_resource*
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
while_body_1449625*
condR
while_cond_1449624*K
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
NoOpNoOp%^lstm_cell_237/BiasAdd/ReadVariableOp$^lstm_cell_237/MatMul/ReadVariableOp&^lstm_cell_237/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_237/BiasAdd/ReadVariableOp$lstm_cell_237/BiasAdd/ReadVariableOp2J
#lstm_cell_237/MatMul/ReadVariableOp#lstm_cell_237/MatMul/ReadVariableOp2N
%lstm_cell_237/MatMul_1/ReadVariableOp%lstm_cell_237/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_281_layer_call_fn_1450622
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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1447061o
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
J__inference_lstm_cell_237_layer_call_and_return_conditional_losses_1451344

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
J__inference_sequential_93_layer_call_and_return_conditional_losses_1447735

inputs#
lstm_279_1447411:	?#
lstm_279_1447413:	d?
lstm_279_1447415:	?#
lstm_280_1447561:	d?#
lstm_280_1447563:	2?
lstm_280_1447565:	?"
lstm_281_1447711:2("
lstm_281_1447713:
(
lstm_281_1447715:("
dense_93_1447729:

dense_93_1447731:
identity?? dense_93/StatefulPartitionedCall? lstm_279/StatefulPartitionedCall? lstm_280/StatefulPartitionedCall? lstm_281/StatefulPartitionedCall?
 lstm_279/StatefulPartitionedCallStatefulPartitionedCallinputslstm_279_1447411lstm_279_1447413lstm_279_1447415*
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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1447410?
 lstm_280/StatefulPartitionedCallStatefulPartitionedCall)lstm_279/StatefulPartitionedCall:output:0lstm_280_1447561lstm_280_1447563lstm_280_1447565*
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
E__inference_lstm_280_layer_call_and_return_conditional_losses_1447560?
 lstm_281/StatefulPartitionedCallStatefulPartitionedCall)lstm_280/StatefulPartitionedCall:output:0lstm_281_1447711lstm_281_1447713lstm_281_1447715*
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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1447710?
 dense_93/StatefulPartitionedCallStatefulPartitionedCall)lstm_281/StatefulPartitionedCall:output:0dense_93_1447729dense_93_1447731*
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
E__inference_dense_93_layer_call_and_return_conditional_losses_1447728x
IdentityIdentity)dense_93/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_93/StatefulPartitionedCall!^lstm_279/StatefulPartitionedCall!^lstm_280/StatefulPartitionedCall!^lstm_281/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_93/StatefulPartitionedCall dense_93/StatefulPartitionedCall2D
 lstm_279/StatefulPartitionedCall lstm_279/StatefulPartitionedCall2D
 lstm_280/StatefulPartitionedCall lstm_280/StatefulPartitionedCall2D
 lstm_281/StatefulPartitionedCall lstm_281/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?K
?
E__inference_lstm_280_layer_call_and_return_conditional_losses_1450182
inputs_0?
,lstm_cell_238_matmul_readvariableop_resource:	d?A
.lstm_cell_238_matmul_1_readvariableop_resource:	2?<
-lstm_cell_238_biasadd_readvariableop_resource:	?
identity??$lstm_cell_238/BiasAdd/ReadVariableOp?#lstm_cell_238/MatMul/ReadVariableOp?%lstm_cell_238/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_238/MatMul/ReadVariableOpReadVariableOp,lstm_cell_238_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_238/MatMulMatMulstrided_slice_2:output:0+lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_238_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_238/MatMul_1MatMulzeros:output:0-lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_238/addAddV2lstm_cell_238/MatMul:product:0 lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_238_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_238/BiasAddBiasAddlstm_cell_238/add:z:0,lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_238/splitSplit&lstm_cell_238/split/split_dim:output:0lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_238/SigmoidSigmoidlstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_238/Sigmoid_1Sigmoidlstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_238/mulMullstm_cell_238/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_238/ReluRelulstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_238/mul_1Mullstm_cell_238/Sigmoid:y:0 lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_238/add_1AddV2lstm_cell_238/mul:z:0lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_238/Sigmoid_2Sigmoidlstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_238/Relu_1Relulstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_238/mul_2Mullstm_cell_238/Sigmoid_2:y:0"lstm_cell_238/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_238_matmul_readvariableop_resource.lstm_cell_238_matmul_1_readvariableop_resource-lstm_cell_238_biasadd_readvariableop_resource*
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
while_body_1450098*
condR
while_cond_1450097*K
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
NoOpNoOp%^lstm_cell_238/BiasAdd/ReadVariableOp$^lstm_cell_238/MatMul/ReadVariableOp&^lstm_cell_238/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_238/BiasAdd/ReadVariableOp$lstm_cell_238/BiasAdd/ReadVariableOp2J
#lstm_cell_238/MatMul/ReadVariableOp#lstm_cell_238/MatMul/ReadVariableOp2N
%lstm_cell_238/MatMul_1/ReadVariableOp%lstm_cell_238/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
*__inference_lstm_280_layer_call_fn_1450017
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
E__inference_lstm_280_layer_call_and_return_conditional_losses_1446902|
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
J__inference_sequential_93_layer_call_and_return_conditional_losses_1449379

inputsH
5lstm_279_lstm_cell_237_matmul_readvariableop_resource:	?J
7lstm_279_lstm_cell_237_matmul_1_readvariableop_resource:	d?E
6lstm_279_lstm_cell_237_biasadd_readvariableop_resource:	?H
5lstm_280_lstm_cell_238_matmul_readvariableop_resource:	d?J
7lstm_280_lstm_cell_238_matmul_1_readvariableop_resource:	2?E
6lstm_280_lstm_cell_238_biasadd_readvariableop_resource:	?G
5lstm_281_lstm_cell_239_matmul_readvariableop_resource:2(I
7lstm_281_lstm_cell_239_matmul_1_readvariableop_resource:
(D
6lstm_281_lstm_cell_239_biasadd_readvariableop_resource:(9
'dense_93_matmul_readvariableop_resource:
6
(dense_93_biasadd_readvariableop_resource:
identity??dense_93/BiasAdd/ReadVariableOp?dense_93/MatMul/ReadVariableOp?-lstm_279/lstm_cell_237/BiasAdd/ReadVariableOp?,lstm_279/lstm_cell_237/MatMul/ReadVariableOp?.lstm_279/lstm_cell_237/MatMul_1/ReadVariableOp?lstm_279/while?-lstm_280/lstm_cell_238/BiasAdd/ReadVariableOp?,lstm_280/lstm_cell_238/MatMul/ReadVariableOp?.lstm_280/lstm_cell_238/MatMul_1/ReadVariableOp?lstm_280/while?-lstm_281/lstm_cell_239/BiasAdd/ReadVariableOp?,lstm_281/lstm_cell_239/MatMul/ReadVariableOp?.lstm_281/lstm_cell_239/MatMul_1/ReadVariableOp?lstm_281/whileD
lstm_279/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_279/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_279/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_279/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_279/strided_sliceStridedSlicelstm_279/Shape:output:0%lstm_279/strided_slice/stack:output:0'lstm_279/strided_slice/stack_1:output:0'lstm_279/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_279/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_279/zeros/packedPacklstm_279/strided_slice:output:0 lstm_279/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_279/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_279/zerosFilllstm_279/zeros/packed:output:0lstm_279/zeros/Const:output:0*
T0*'
_output_shapes
:?????????d[
lstm_279/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d?
lstm_279/zeros_1/packedPacklstm_279/strided_slice:output:0"lstm_279/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_279/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_279/zeros_1Fill lstm_279/zeros_1/packed:output:0lstm_279/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????dl
lstm_279/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_279/transpose	Transposeinputs lstm_279/transpose/perm:output:0*
T0*+
_output_shapes
:?????????V
lstm_279/Shape_1Shapelstm_279/transpose:y:0*
T0*
_output_shapes
:h
lstm_279/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_279/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_279/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_279/strided_slice_1StridedSlicelstm_279/Shape_1:output:0'lstm_279/strided_slice_1/stack:output:0)lstm_279/strided_slice_1/stack_1:output:0)lstm_279/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_279/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_279/TensorArrayV2TensorListReserve-lstm_279/TensorArrayV2/element_shape:output:0!lstm_279/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_279/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
0lstm_279/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_279/transpose:y:0Glstm_279/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_279/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_279/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_279/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_279/strided_slice_2StridedSlicelstm_279/transpose:y:0'lstm_279/strided_slice_2/stack:output:0)lstm_279/strided_slice_2/stack_1:output:0)lstm_279/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask?
,lstm_279/lstm_cell_237/MatMul/ReadVariableOpReadVariableOp5lstm_279_lstm_cell_237_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_279/lstm_cell_237/MatMulMatMul!lstm_279/strided_slice_2:output:04lstm_279/lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_279/lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOp7lstm_279_lstm_cell_237_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_279/lstm_cell_237/MatMul_1MatMullstm_279/zeros:output:06lstm_279/lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_279/lstm_cell_237/addAddV2'lstm_279/lstm_cell_237/MatMul:product:0)lstm_279/lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_279/lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOp6lstm_279_lstm_cell_237_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_279/lstm_cell_237/BiasAddBiasAddlstm_279/lstm_cell_237/add:z:05lstm_279/lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_279/lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_279/lstm_cell_237/splitSplit/lstm_279/lstm_cell_237/split/split_dim:output:0'lstm_279/lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
lstm_279/lstm_cell_237/SigmoidSigmoid%lstm_279/lstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????d?
 lstm_279/lstm_cell_237/Sigmoid_1Sigmoid%lstm_279/lstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????d?
lstm_279/lstm_cell_237/mulMul$lstm_279/lstm_cell_237/Sigmoid_1:y:0lstm_279/zeros_1:output:0*
T0*'
_output_shapes
:?????????d|
lstm_279/lstm_cell_237/ReluRelu%lstm_279/lstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_279/lstm_cell_237/mul_1Mul"lstm_279/lstm_cell_237/Sigmoid:y:0)lstm_279/lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
lstm_279/lstm_cell_237/add_1AddV2lstm_279/lstm_cell_237/mul:z:0 lstm_279/lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
 lstm_279/lstm_cell_237/Sigmoid_2Sigmoid%lstm_279/lstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????dy
lstm_279/lstm_cell_237/Relu_1Relu lstm_279/lstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_279/lstm_cell_237/mul_2Mul$lstm_279/lstm_cell_237/Sigmoid_2:y:0+lstm_279/lstm_cell_237/Relu_1:activations:0*
T0*'
_output_shapes
:?????????dw
&lstm_279/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
lstm_279/TensorArrayV2_1TensorListReserve/lstm_279/TensorArrayV2_1/element_shape:output:0!lstm_279/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_279/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_279/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_279/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_279/whileWhile$lstm_279/while/loop_counter:output:0*lstm_279/while/maximum_iterations:output:0lstm_279/time:output:0!lstm_279/TensorArrayV2_1:handle:0lstm_279/zeros:output:0lstm_279/zeros_1:output:0!lstm_279/strided_slice_1:output:0@lstm_279/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_279_lstm_cell_237_matmul_readvariableop_resource7lstm_279_lstm_cell_237_matmul_1_readvariableop_resource6lstm_279_lstm_cell_237_biasadd_readvariableop_resource*
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
lstm_279_while_body_1449011*'
condR
lstm_279_while_cond_1449010*K
output_shapes:
8: : : : :?????????d:?????????d: : : : : *
parallel_iterations ?
9lstm_279/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
+lstm_279/TensorArrayV2Stack/TensorListStackTensorListStacklstm_279/while:output:3Blstm_279/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????d*
element_dtype0q
lstm_279/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_279/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_279/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_279/strided_slice_3StridedSlice4lstm_279/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_279/strided_slice_3/stack:output:0)lstm_279/strided_slice_3/stack_1:output:0)lstm_279/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_maskn
lstm_279/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_279/transpose_1	Transpose4lstm_279/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_279/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????dd
lstm_279/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_280/ShapeShapelstm_279/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_280/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_280/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_280/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_280/strided_sliceStridedSlicelstm_280/Shape:output:0%lstm_280/strided_slice/stack:output:0'lstm_280/strided_slice/stack_1:output:0'lstm_280/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_280/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_280/zeros/packedPacklstm_280/strided_slice:output:0 lstm_280/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_280/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_280/zerosFilllstm_280/zeros/packed:output:0lstm_280/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2[
lstm_280/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
lstm_280/zeros_1/packedPacklstm_280/strided_slice:output:0"lstm_280/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_280/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_280/zeros_1Fill lstm_280/zeros_1/packed:output:0lstm_280/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2l
lstm_280/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_280/transpose	Transposelstm_279/transpose_1:y:0 lstm_280/transpose/perm:output:0*
T0*+
_output_shapes
:?????????dV
lstm_280/Shape_1Shapelstm_280/transpose:y:0*
T0*
_output_shapes
:h
lstm_280/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_280/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_280/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_280/strided_slice_1StridedSlicelstm_280/Shape_1:output:0'lstm_280/strided_slice_1/stack:output:0)lstm_280/strided_slice_1/stack_1:output:0)lstm_280/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_280/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_280/TensorArrayV2TensorListReserve-lstm_280/TensorArrayV2/element_shape:output:0!lstm_280/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_280/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
0lstm_280/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_280/transpose:y:0Glstm_280/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_280/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_280/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_280/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_280/strided_slice_2StridedSlicelstm_280/transpose:y:0'lstm_280/strided_slice_2/stack:output:0)lstm_280/strided_slice_2/stack_1:output:0)lstm_280/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????d*
shrink_axis_mask?
,lstm_280/lstm_cell_238/MatMul/ReadVariableOpReadVariableOp5lstm_280_lstm_cell_238_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_280/lstm_cell_238/MatMulMatMul!lstm_280/strided_slice_2:output:04lstm_280/lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.lstm_280/lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOp7lstm_280_lstm_cell_238_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_280/lstm_cell_238/MatMul_1MatMullstm_280/zeros:output:06lstm_280/lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_280/lstm_cell_238/addAddV2'lstm_280/lstm_cell_238/MatMul:product:0)lstm_280/lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
-lstm_280/lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOp6lstm_280_lstm_cell_238_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_280/lstm_cell_238/BiasAddBiasAddlstm_280/lstm_cell_238/add:z:05lstm_280/lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
&lstm_280/lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_280/lstm_cell_238/splitSplit/lstm_280/lstm_cell_238/split/split_dim:output:0'lstm_280/lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
lstm_280/lstm_cell_238/SigmoidSigmoid%lstm_280/lstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2?
 lstm_280/lstm_cell_238/Sigmoid_1Sigmoid%lstm_280/lstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2?
lstm_280/lstm_cell_238/mulMul$lstm_280/lstm_cell_238/Sigmoid_1:y:0lstm_280/zeros_1:output:0*
T0*'
_output_shapes
:?????????2|
lstm_280/lstm_cell_238/ReluRelu%lstm_280/lstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_280/lstm_cell_238/mul_1Mul"lstm_280/lstm_cell_238/Sigmoid:y:0)lstm_280/lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
lstm_280/lstm_cell_238/add_1AddV2lstm_280/lstm_cell_238/mul:z:0 lstm_280/lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
 lstm_280/lstm_cell_238/Sigmoid_2Sigmoid%lstm_280/lstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2y
lstm_280/lstm_cell_238/Relu_1Relu lstm_280/lstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_280/lstm_cell_238/mul_2Mul$lstm_280/lstm_cell_238/Sigmoid_2:y:0+lstm_280/lstm_cell_238/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2w
&lstm_280/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
lstm_280/TensorArrayV2_1TensorListReserve/lstm_280/TensorArrayV2_1/element_shape:output:0!lstm_280/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_280/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_280/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_280/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_280/whileWhile$lstm_280/while/loop_counter:output:0*lstm_280/while/maximum_iterations:output:0lstm_280/time:output:0!lstm_280/TensorArrayV2_1:handle:0lstm_280/zeros:output:0lstm_280/zeros_1:output:0!lstm_280/strided_slice_1:output:0@lstm_280/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_280_lstm_cell_238_matmul_readvariableop_resource7lstm_280_lstm_cell_238_matmul_1_readvariableop_resource6lstm_280_lstm_cell_238_biasadd_readvariableop_resource*
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
lstm_280_while_body_1449150*'
condR
lstm_280_while_cond_1449149*K
output_shapes:
8: : : : :?????????2:?????????2: : : : : *
parallel_iterations ?
9lstm_280/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
+lstm_280/TensorArrayV2Stack/TensorListStackTensorListStacklstm_280/while:output:3Blstm_280/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????2*
element_dtype0q
lstm_280/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_280/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_280/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_280/strided_slice_3StridedSlice4lstm_280/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_280/strided_slice_3/stack:output:0)lstm_280/strided_slice_3/stack_1:output:0)lstm_280/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_maskn
lstm_280/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_280/transpose_1	Transpose4lstm_280/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_280/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2d
lstm_280/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_281/ShapeShapelstm_280/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_281/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_281/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_281/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_281/strided_sliceStridedSlicelstm_281/Shape:output:0%lstm_281/strided_slice/stack:output:0'lstm_281/strided_slice/stack_1:output:0'lstm_281/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_281/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_281/zeros/packedPacklstm_281/strided_slice:output:0 lstm_281/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_281/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_281/zerosFilllstm_281/zeros/packed:output:0lstm_281/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
[
lstm_281/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
?
lstm_281/zeros_1/packedPacklstm_281/strided_slice:output:0"lstm_281/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_281/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
lstm_281/zeros_1Fill lstm_281/zeros_1/packed:output:0lstm_281/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
l
lstm_281/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_281/transpose	Transposelstm_280/transpose_1:y:0 lstm_281/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2V
lstm_281/Shape_1Shapelstm_281/transpose:y:0*
T0*
_output_shapes
:h
lstm_281/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_281/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_281/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_281/strided_slice_1StridedSlicelstm_281/Shape_1:output:0'lstm_281/strided_slice_1/stack:output:0)lstm_281/strided_slice_1/stack_1:output:0)lstm_281/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_281/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
??????????
lstm_281/TensorArrayV2TensorListReserve-lstm_281/TensorArrayV2/element_shape:output:0!lstm_281/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:????
>lstm_281/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????2   ?
0lstm_281/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_281/transpose:y:0Glstm_281/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???h
lstm_281/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_281/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_281/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_281/strided_slice_2StridedSlicelstm_281/transpose:y:0'lstm_281/strided_slice_2/stack:output:0)lstm_281/strided_slice_2/stack_1:output:0)lstm_281/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????2*
shrink_axis_mask?
,lstm_281/lstm_cell_239/MatMul/ReadVariableOpReadVariableOp5lstm_281_lstm_cell_239_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0?
lstm_281/lstm_cell_239/MatMulMatMul!lstm_281/strided_slice_2:output:04lstm_281/lstm_cell_239/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
.lstm_281/lstm_cell_239/MatMul_1/ReadVariableOpReadVariableOp7lstm_281_lstm_cell_239_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0?
lstm_281/lstm_cell_239/MatMul_1MatMullstm_281/zeros:output:06lstm_281/lstm_cell_239/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(?
lstm_281/lstm_cell_239/addAddV2'lstm_281/lstm_cell_239/MatMul:product:0)lstm_281/lstm_cell_239/MatMul_1:product:0*
T0*'
_output_shapes
:?????????(?
-lstm_281/lstm_cell_239/BiasAdd/ReadVariableOpReadVariableOp6lstm_281_lstm_cell_239_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0?
lstm_281/lstm_cell_239/BiasAddBiasAddlstm_281/lstm_cell_239/add:z:05lstm_281/lstm_cell_239/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????(h
&lstm_281/lstm_cell_239/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_281/lstm_cell_239/splitSplit/lstm_281/lstm_cell_239/split/split_dim:output:0'lstm_281/lstm_cell_239/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????
:?????????
:?????????
:?????????
*
	num_split?
lstm_281/lstm_cell_239/SigmoidSigmoid%lstm_281/lstm_cell_239/split:output:0*
T0*'
_output_shapes
:?????????
?
 lstm_281/lstm_cell_239/Sigmoid_1Sigmoid%lstm_281/lstm_cell_239/split:output:1*
T0*'
_output_shapes
:?????????
?
lstm_281/lstm_cell_239/mulMul$lstm_281/lstm_cell_239/Sigmoid_1:y:0lstm_281/zeros_1:output:0*
T0*'
_output_shapes
:?????????
|
lstm_281/lstm_cell_239/ReluRelu%lstm_281/lstm_cell_239/split:output:2*
T0*'
_output_shapes
:?????????
?
lstm_281/lstm_cell_239/mul_1Mul"lstm_281/lstm_cell_239/Sigmoid:y:0)lstm_281/lstm_cell_239/Relu:activations:0*
T0*'
_output_shapes
:?????????
?
lstm_281/lstm_cell_239/add_1AddV2lstm_281/lstm_cell_239/mul:z:0 lstm_281/lstm_cell_239/mul_1:z:0*
T0*'
_output_shapes
:?????????
?
 lstm_281/lstm_cell_239/Sigmoid_2Sigmoid%lstm_281/lstm_cell_239/split:output:3*
T0*'
_output_shapes
:?????????
y
lstm_281/lstm_cell_239/Relu_1Relu lstm_281/lstm_cell_239/add_1:z:0*
T0*'
_output_shapes
:?????????
?
lstm_281/lstm_cell_239/mul_2Mul$lstm_281/lstm_cell_239/Sigmoid_2:y:0+lstm_281/lstm_cell_239/Relu_1:activations:0*
T0*'
_output_shapes
:?????????
w
&lstm_281/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
lstm_281/TensorArrayV2_1TensorListReserve/lstm_281/TensorArrayV2_1/element_shape:output:0!lstm_281/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:???O
lstm_281/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_281/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????]
lstm_281/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ?
lstm_281/whileWhile$lstm_281/while/loop_counter:output:0*lstm_281/while/maximum_iterations:output:0lstm_281/time:output:0!lstm_281/TensorArrayV2_1:handle:0lstm_281/zeros:output:0lstm_281/zeros_1:output:0!lstm_281/strided_slice_1:output:0@lstm_281/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_281_lstm_cell_239_matmul_readvariableop_resource7lstm_281_lstm_cell_239_matmul_1_readvariableop_resource6lstm_281_lstm_cell_239_biasadd_readvariableop_resource*
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
lstm_281_while_body_1449289*'
condR
lstm_281_while_cond_1449288*K
output_shapes:
8: : : : :?????????
:?????????
: : : : : *
parallel_iterations ?
9lstm_281/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????
   ?
+lstm_281/TensorArrayV2Stack/TensorListStackTensorListStacklstm_281/while:output:3Blstm_281/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????
*
element_dtype0q
lstm_281/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 lstm_281/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_281/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
lstm_281/strided_slice_3StridedSlice4lstm_281/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_281/strided_slice_3/stack:output:0)lstm_281/strided_slice_3/stack_1:output:0)lstm_281/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????
*
shrink_axis_maskn
lstm_281/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ?
lstm_281/transpose_1	Transpose4lstm_281/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_281/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????
d
lstm_281/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_93/MatMul/ReadVariableOpReadVariableOp'dense_93_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_93/MatMulMatMul!lstm_281/strided_slice_3:output:0&dense_93/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_93/BiasAdd/ReadVariableOpReadVariableOp(dense_93_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_93/BiasAddBiasAdddense_93/MatMul:product:0'dense_93/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_93/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_93/BiasAdd/ReadVariableOp^dense_93/MatMul/ReadVariableOp.^lstm_279/lstm_cell_237/BiasAdd/ReadVariableOp-^lstm_279/lstm_cell_237/MatMul/ReadVariableOp/^lstm_279/lstm_cell_237/MatMul_1/ReadVariableOp^lstm_279/while.^lstm_280/lstm_cell_238/BiasAdd/ReadVariableOp-^lstm_280/lstm_cell_238/MatMul/ReadVariableOp/^lstm_280/lstm_cell_238/MatMul_1/ReadVariableOp^lstm_280/while.^lstm_281/lstm_cell_239/BiasAdd/ReadVariableOp-^lstm_281/lstm_cell_239/MatMul/ReadVariableOp/^lstm_281/lstm_cell_239/MatMul_1/ReadVariableOp^lstm_281/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2B
dense_93/BiasAdd/ReadVariableOpdense_93/BiasAdd/ReadVariableOp2@
dense_93/MatMul/ReadVariableOpdense_93/MatMul/ReadVariableOp2^
-lstm_279/lstm_cell_237/BiasAdd/ReadVariableOp-lstm_279/lstm_cell_237/BiasAdd/ReadVariableOp2\
,lstm_279/lstm_cell_237/MatMul/ReadVariableOp,lstm_279/lstm_cell_237/MatMul/ReadVariableOp2`
.lstm_279/lstm_cell_237/MatMul_1/ReadVariableOp.lstm_279/lstm_cell_237/MatMul_1/ReadVariableOp2 
lstm_279/whilelstm_279/while2^
-lstm_280/lstm_cell_238/BiasAdd/ReadVariableOp-lstm_280/lstm_cell_238/BiasAdd/ReadVariableOp2\
,lstm_280/lstm_cell_238/MatMul/ReadVariableOp,lstm_280/lstm_cell_238/MatMul/ReadVariableOp2`
.lstm_280/lstm_cell_238/MatMul_1/ReadVariableOp.lstm_280/lstm_cell_238/MatMul_1/ReadVariableOp2 
lstm_280/whilelstm_280/while2^
-lstm_281/lstm_cell_239/BiasAdd/ReadVariableOp-lstm_281/lstm_cell_239/BiasAdd/ReadVariableOp2\
,lstm_281/lstm_cell_239/MatMul/ReadVariableOp,lstm_281/lstm_cell_239/MatMul/ReadVariableOp2`
.lstm_281/lstm_cell_239/MatMul_1/ReadVariableOp.lstm_281/lstm_cell_239/MatMul_1/ReadVariableOp2 
lstm_281/whilelstm_281/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_238_layer_call_and_return_conditional_losses_1446628

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
?K
?
E__inference_lstm_280_layer_call_and_return_conditional_losses_1450325
inputs_0?
,lstm_cell_238_matmul_readvariableop_resource:	d?A
.lstm_cell_238_matmul_1_readvariableop_resource:	2?<
-lstm_cell_238_biasadd_readvariableop_resource:	?
identity??$lstm_cell_238/BiasAdd/ReadVariableOp?#lstm_cell_238/MatMul/ReadVariableOp?%lstm_cell_238/MatMul_1/ReadVariableOp?while=
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
#lstm_cell_238/MatMul/ReadVariableOpReadVariableOp,lstm_cell_238_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_238/MatMulMatMulstrided_slice_2:output:0+lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_238_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_238/MatMul_1MatMulzeros:output:0-lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_238/addAddV2lstm_cell_238/MatMul:product:0 lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_238_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_238/BiasAddBiasAddlstm_cell_238/add:z:0,lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_238/splitSplit&lstm_cell_238/split/split_dim:output:0lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_238/SigmoidSigmoidlstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_238/Sigmoid_1Sigmoidlstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_238/mulMullstm_cell_238/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_238/ReluRelulstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_238/mul_1Mullstm_cell_238/Sigmoid:y:0 lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_238/add_1AddV2lstm_cell_238/mul:z:0lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_238/Sigmoid_2Sigmoidlstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_238/Relu_1Relulstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_238/mul_2Mullstm_cell_238/Sigmoid_2:y:0"lstm_cell_238/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_238_matmul_readvariableop_resource.lstm_cell_238_matmul_1_readvariableop_resource-lstm_cell_238_biasadd_readvariableop_resource*
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
while_body_1450241*
condR
while_cond_1450240*K
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
NoOpNoOp%^lstm_cell_238/BiasAdd/ReadVariableOp$^lstm_cell_238/MatMul/ReadVariableOp&^lstm_cell_238/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????d: : : 2L
$lstm_cell_238/BiasAdd/ReadVariableOp$lstm_cell_238/BiasAdd/ReadVariableOp2J
#lstm_cell_238/MatMul/ReadVariableOp#lstm_cell_238/MatMul/ReadVariableOp2N
%lstm_cell_238/MatMul_1/ReadVariableOp%lstm_cell_238/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????d
"
_user_specified_name
inputs/0
?
?
while_cond_1449910
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1449910___redundant_placeholder05
1while_while_cond_1449910___redundant_placeholder15
1while_while_cond_1449910___redundant_placeholder25
1while_while_cond_1449910___redundant_placeholder3
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
)sequential_93_lstm_279_while_body_1445843J
Fsequential_93_lstm_279_while_sequential_93_lstm_279_while_loop_counterP
Lsequential_93_lstm_279_while_sequential_93_lstm_279_while_maximum_iterations,
(sequential_93_lstm_279_while_placeholder.
*sequential_93_lstm_279_while_placeholder_1.
*sequential_93_lstm_279_while_placeholder_2.
*sequential_93_lstm_279_while_placeholder_3I
Esequential_93_lstm_279_while_sequential_93_lstm_279_strided_slice_1_0?
?sequential_93_lstm_279_while_tensorarrayv2read_tensorlistgetitem_sequential_93_lstm_279_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_93_lstm_279_while_lstm_cell_237_matmul_readvariableop_resource_0:	?`
Msequential_93_lstm_279_while_lstm_cell_237_matmul_1_readvariableop_resource_0:	d?[
Lsequential_93_lstm_279_while_lstm_cell_237_biasadd_readvariableop_resource_0:	?)
%sequential_93_lstm_279_while_identity+
'sequential_93_lstm_279_while_identity_1+
'sequential_93_lstm_279_while_identity_2+
'sequential_93_lstm_279_while_identity_3+
'sequential_93_lstm_279_while_identity_4+
'sequential_93_lstm_279_while_identity_5G
Csequential_93_lstm_279_while_sequential_93_lstm_279_strided_slice_1?
sequential_93_lstm_279_while_tensorarrayv2read_tensorlistgetitem_sequential_93_lstm_279_tensorarrayunstack_tensorlistfromtensor\
Isequential_93_lstm_279_while_lstm_cell_237_matmul_readvariableop_resource:	?^
Ksequential_93_lstm_279_while_lstm_cell_237_matmul_1_readvariableop_resource:	d?Y
Jsequential_93_lstm_279_while_lstm_cell_237_biasadd_readvariableop_resource:	???Asequential_93/lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOp?@sequential_93/lstm_279/while/lstm_cell_237/MatMul/ReadVariableOp?Bsequential_93/lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOp?
Nsequential_93/lstm_279/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
@sequential_93/lstm_279/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_93_lstm_279_while_tensorarrayv2read_tensorlistgetitem_sequential_93_lstm_279_tensorarrayunstack_tensorlistfromtensor_0(sequential_93_lstm_279_while_placeholderWsequential_93/lstm_279/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
@sequential_93/lstm_279/while/lstm_cell_237/MatMul/ReadVariableOpReadVariableOpKsequential_93_lstm_279_while_lstm_cell_237_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
1sequential_93/lstm_279/while/lstm_cell_237/MatMulMatMulGsequential_93/lstm_279/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_93/lstm_279/while/lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_93/lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOpMsequential_93_lstm_279_while_lstm_cell_237_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
3sequential_93/lstm_279/while/lstm_cell_237/MatMul_1MatMul*sequential_93_lstm_279_while_placeholder_2Jsequential_93/lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_93/lstm_279/while/lstm_cell_237/addAddV2;sequential_93/lstm_279/while/lstm_cell_237/MatMul:product:0=sequential_93/lstm_279/while/lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_93/lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOpLsequential_93_lstm_279_while_lstm_cell_237_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_93/lstm_279/while/lstm_cell_237/BiasAddBiasAdd2sequential_93/lstm_279/while/lstm_cell_237/add:z:0Isequential_93/lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_93/lstm_279/while/lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_93/lstm_279/while/lstm_cell_237/splitSplitCsequential_93/lstm_279/while/lstm_cell_237/split/split_dim:output:0;sequential_93/lstm_279/while/lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split?
2sequential_93/lstm_279/while/lstm_cell_237/SigmoidSigmoid9sequential_93/lstm_279/while/lstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????d?
4sequential_93/lstm_279/while/lstm_cell_237/Sigmoid_1Sigmoid9sequential_93/lstm_279/while/lstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????d?
.sequential_93/lstm_279/while/lstm_cell_237/mulMul8sequential_93/lstm_279/while/lstm_cell_237/Sigmoid_1:y:0*sequential_93_lstm_279_while_placeholder_3*
T0*'
_output_shapes
:?????????d?
/sequential_93/lstm_279/while/lstm_cell_237/ReluRelu9sequential_93/lstm_279/while/lstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
0sequential_93/lstm_279/while/lstm_cell_237/mul_1Mul6sequential_93/lstm_279/while/lstm_cell_237/Sigmoid:y:0=sequential_93/lstm_279/while/lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
0sequential_93/lstm_279/while/lstm_cell_237/add_1AddV22sequential_93/lstm_279/while/lstm_cell_237/mul:z:04sequential_93/lstm_279/while/lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????d?
4sequential_93/lstm_279/while/lstm_cell_237/Sigmoid_2Sigmoid9sequential_93/lstm_279/while/lstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????d?
1sequential_93/lstm_279/while/lstm_cell_237/Relu_1Relu4sequential_93/lstm_279/while/lstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
0sequential_93/lstm_279/while/lstm_cell_237/mul_2Mul8sequential_93/lstm_279/while/lstm_cell_237/Sigmoid_2:y:0?sequential_93/lstm_279/while/lstm_cell_237/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
Asequential_93/lstm_279/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_93_lstm_279_while_placeholder_1(sequential_93_lstm_279_while_placeholder4sequential_93/lstm_279/while/lstm_cell_237/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_93/lstm_279/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_93/lstm_279/while/addAddV2(sequential_93_lstm_279_while_placeholder+sequential_93/lstm_279/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_93/lstm_279/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_93/lstm_279/while/add_1AddV2Fsequential_93_lstm_279_while_sequential_93_lstm_279_while_loop_counter-sequential_93/lstm_279/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_93/lstm_279/while/IdentityIdentity&sequential_93/lstm_279/while/add_1:z:0"^sequential_93/lstm_279/while/NoOp*
T0*
_output_shapes
: ?
'sequential_93/lstm_279/while/Identity_1IdentityLsequential_93_lstm_279_while_sequential_93_lstm_279_while_maximum_iterations"^sequential_93/lstm_279/while/NoOp*
T0*
_output_shapes
: ?
'sequential_93/lstm_279/while/Identity_2Identity$sequential_93/lstm_279/while/add:z:0"^sequential_93/lstm_279/while/NoOp*
T0*
_output_shapes
: ?
'sequential_93/lstm_279/while/Identity_3IdentityQsequential_93/lstm_279/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_93/lstm_279/while/NoOp*
T0*
_output_shapes
: ?
'sequential_93/lstm_279/while/Identity_4Identity4sequential_93/lstm_279/while/lstm_cell_237/mul_2:z:0"^sequential_93/lstm_279/while/NoOp*
T0*'
_output_shapes
:?????????d?
'sequential_93/lstm_279/while/Identity_5Identity4sequential_93/lstm_279/while/lstm_cell_237/add_1:z:0"^sequential_93/lstm_279/while/NoOp*
T0*'
_output_shapes
:?????????d?
!sequential_93/lstm_279/while/NoOpNoOpB^sequential_93/lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOpA^sequential_93/lstm_279/while/lstm_cell_237/MatMul/ReadVariableOpC^sequential_93/lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_93_lstm_279_while_identity.sequential_93/lstm_279/while/Identity:output:0"[
'sequential_93_lstm_279_while_identity_10sequential_93/lstm_279/while/Identity_1:output:0"[
'sequential_93_lstm_279_while_identity_20sequential_93/lstm_279/while/Identity_2:output:0"[
'sequential_93_lstm_279_while_identity_30sequential_93/lstm_279/while/Identity_3:output:0"[
'sequential_93_lstm_279_while_identity_40sequential_93/lstm_279/while/Identity_4:output:0"[
'sequential_93_lstm_279_while_identity_50sequential_93/lstm_279/while/Identity_5:output:0"?
Jsequential_93_lstm_279_while_lstm_cell_237_biasadd_readvariableop_resourceLsequential_93_lstm_279_while_lstm_cell_237_biasadd_readvariableop_resource_0"?
Ksequential_93_lstm_279_while_lstm_cell_237_matmul_1_readvariableop_resourceMsequential_93_lstm_279_while_lstm_cell_237_matmul_1_readvariableop_resource_0"?
Isequential_93_lstm_279_while_lstm_cell_237_matmul_readvariableop_resourceKsequential_93_lstm_279_while_lstm_cell_237_matmul_readvariableop_resource_0"?
Csequential_93_lstm_279_while_sequential_93_lstm_279_strided_slice_1Esequential_93_lstm_279_while_sequential_93_lstm_279_strided_slice_1_0"?
sequential_93_lstm_279_while_tensorarrayv2read_tensorlistgetitem_sequential_93_lstm_279_tensorarrayunstack_tensorlistfromtensor?sequential_93_lstm_279_while_tensorarrayv2read_tensorlistgetitem_sequential_93_lstm_279_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2?
Asequential_93/lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOpAsequential_93/lstm_279/while/lstm_cell_237/BiasAdd/ReadVariableOp2?
@sequential_93/lstm_279/while/lstm_cell_237/MatMul/ReadVariableOp@sequential_93/lstm_279/while/lstm_cell_237/MatMul/ReadVariableOp2?
Bsequential_93/lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOpBsequential_93/lstm_279/while/lstm_cell_237/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1450526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1450526___redundant_placeholder05
1while_while_cond_1450526___redundant_placeholder15
1while_while_cond_1450526___redundant_placeholder25
1while_while_cond_1450526___redundant_placeholder3
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
while_body_1446833
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_238_1446857_0:	d?0
while_lstm_cell_238_1446859_0:	2?,
while_lstm_cell_238_1446861_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_238_1446857:	d?.
while_lstm_cell_238_1446859:	2?*
while_lstm_cell_238_1446861:	???+while/lstm_cell_238/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_238/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_238_1446857_0while_lstm_cell_238_1446859_0while_lstm_cell_238_1446861_0*
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
J__inference_lstm_cell_238_layer_call_and_return_conditional_losses_1446774?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_238/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_238/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_238/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_238/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_238_1446857while_lstm_cell_238_1446857_0"<
while_lstm_cell_238_1446859while_lstm_cell_238_1446859_0"<
while_lstm_cell_238_1446861while_lstm_cell_238_1446861_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_238/StatefulPartitionedCall+while/lstm_cell_238/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
)sequential_93_lstm_280_while_body_1445982J
Fsequential_93_lstm_280_while_sequential_93_lstm_280_while_loop_counterP
Lsequential_93_lstm_280_while_sequential_93_lstm_280_while_maximum_iterations,
(sequential_93_lstm_280_while_placeholder.
*sequential_93_lstm_280_while_placeholder_1.
*sequential_93_lstm_280_while_placeholder_2.
*sequential_93_lstm_280_while_placeholder_3I
Esequential_93_lstm_280_while_sequential_93_lstm_280_strided_slice_1_0?
?sequential_93_lstm_280_while_tensorarrayv2read_tensorlistgetitem_sequential_93_lstm_280_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_93_lstm_280_while_lstm_cell_238_matmul_readvariableop_resource_0:	d?`
Msequential_93_lstm_280_while_lstm_cell_238_matmul_1_readvariableop_resource_0:	2?[
Lsequential_93_lstm_280_while_lstm_cell_238_biasadd_readvariableop_resource_0:	?)
%sequential_93_lstm_280_while_identity+
'sequential_93_lstm_280_while_identity_1+
'sequential_93_lstm_280_while_identity_2+
'sequential_93_lstm_280_while_identity_3+
'sequential_93_lstm_280_while_identity_4+
'sequential_93_lstm_280_while_identity_5G
Csequential_93_lstm_280_while_sequential_93_lstm_280_strided_slice_1?
sequential_93_lstm_280_while_tensorarrayv2read_tensorlistgetitem_sequential_93_lstm_280_tensorarrayunstack_tensorlistfromtensor\
Isequential_93_lstm_280_while_lstm_cell_238_matmul_readvariableop_resource:	d?^
Ksequential_93_lstm_280_while_lstm_cell_238_matmul_1_readvariableop_resource:	2?Y
Jsequential_93_lstm_280_while_lstm_cell_238_biasadd_readvariableop_resource:	???Asequential_93/lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOp?@sequential_93/lstm_280/while/lstm_cell_238/MatMul/ReadVariableOp?Bsequential_93/lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOp?
Nsequential_93/lstm_280/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
@sequential_93/lstm_280/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_93_lstm_280_while_tensorarrayv2read_tensorlistgetitem_sequential_93_lstm_280_tensorarrayunstack_tensorlistfromtensor_0(sequential_93_lstm_280_while_placeholderWsequential_93/lstm_280/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
@sequential_93/lstm_280/while/lstm_cell_238/MatMul/ReadVariableOpReadVariableOpKsequential_93_lstm_280_while_lstm_cell_238_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
1sequential_93/lstm_280/while/lstm_cell_238/MatMulMatMulGsequential_93/lstm_280/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_93/lstm_280/while/lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Bsequential_93/lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOpMsequential_93_lstm_280_while_lstm_cell_238_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
3sequential_93/lstm_280/while/lstm_cell_238/MatMul_1MatMul*sequential_93_lstm_280_while_placeholder_2Jsequential_93/lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.sequential_93/lstm_280/while/lstm_cell_238/addAddV2;sequential_93/lstm_280/while/lstm_cell_238/MatMul:product:0=sequential_93/lstm_280/while/lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
Asequential_93/lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOpLsequential_93_lstm_280_while_lstm_cell_238_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
2sequential_93/lstm_280/while/lstm_cell_238/BiasAddBiasAdd2sequential_93/lstm_280/while/lstm_cell_238/add:z:0Isequential_93/lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????|
:sequential_93/lstm_280/while/lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential_93/lstm_280/while/lstm_cell_238/splitSplitCsequential_93/lstm_280/while/lstm_cell_238/split/split_dim:output:0;sequential_93/lstm_280/while/lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split?
2sequential_93/lstm_280/while/lstm_cell_238/SigmoidSigmoid9sequential_93/lstm_280/while/lstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2?
4sequential_93/lstm_280/while/lstm_cell_238/Sigmoid_1Sigmoid9sequential_93/lstm_280/while/lstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2?
.sequential_93/lstm_280/while/lstm_cell_238/mulMul8sequential_93/lstm_280/while/lstm_cell_238/Sigmoid_1:y:0*sequential_93_lstm_280_while_placeholder_3*
T0*'
_output_shapes
:?????????2?
/sequential_93/lstm_280/while/lstm_cell_238/ReluRelu9sequential_93/lstm_280/while/lstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
0sequential_93/lstm_280/while/lstm_cell_238/mul_1Mul6sequential_93/lstm_280/while/lstm_cell_238/Sigmoid:y:0=sequential_93/lstm_280/while/lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
0sequential_93/lstm_280/while/lstm_cell_238/add_1AddV22sequential_93/lstm_280/while/lstm_cell_238/mul:z:04sequential_93/lstm_280/while/lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2?
4sequential_93/lstm_280/while/lstm_cell_238/Sigmoid_2Sigmoid9sequential_93/lstm_280/while/lstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2?
1sequential_93/lstm_280/while/lstm_cell_238/Relu_1Relu4sequential_93/lstm_280/while/lstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
0sequential_93/lstm_280/while/lstm_cell_238/mul_2Mul8sequential_93/lstm_280/while/lstm_cell_238/Sigmoid_2:y:0?sequential_93/lstm_280/while/lstm_cell_238/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
Asequential_93/lstm_280/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_93_lstm_280_while_placeholder_1(sequential_93_lstm_280_while_placeholder4sequential_93/lstm_280/while/lstm_cell_238/mul_2:z:0*
_output_shapes
: *
element_dtype0:???d
"sequential_93/lstm_280/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
 sequential_93/lstm_280/while/addAddV2(sequential_93_lstm_280_while_placeholder+sequential_93/lstm_280/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_93/lstm_280/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_93/lstm_280/while/add_1AddV2Fsequential_93_lstm_280_while_sequential_93_lstm_280_while_loop_counter-sequential_93/lstm_280/while/add_1/y:output:0*
T0*
_output_shapes
: ?
%sequential_93/lstm_280/while/IdentityIdentity&sequential_93/lstm_280/while/add_1:z:0"^sequential_93/lstm_280/while/NoOp*
T0*
_output_shapes
: ?
'sequential_93/lstm_280/while/Identity_1IdentityLsequential_93_lstm_280_while_sequential_93_lstm_280_while_maximum_iterations"^sequential_93/lstm_280/while/NoOp*
T0*
_output_shapes
: ?
'sequential_93/lstm_280/while/Identity_2Identity$sequential_93/lstm_280/while/add:z:0"^sequential_93/lstm_280/while/NoOp*
T0*
_output_shapes
: ?
'sequential_93/lstm_280/while/Identity_3IdentityQsequential_93/lstm_280/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_93/lstm_280/while/NoOp*
T0*
_output_shapes
: ?
'sequential_93/lstm_280/while/Identity_4Identity4sequential_93/lstm_280/while/lstm_cell_238/mul_2:z:0"^sequential_93/lstm_280/while/NoOp*
T0*'
_output_shapes
:?????????2?
'sequential_93/lstm_280/while/Identity_5Identity4sequential_93/lstm_280/while/lstm_cell_238/add_1:z:0"^sequential_93/lstm_280/while/NoOp*
T0*'
_output_shapes
:?????????2?
!sequential_93/lstm_280/while/NoOpNoOpB^sequential_93/lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOpA^sequential_93/lstm_280/while/lstm_cell_238/MatMul/ReadVariableOpC^sequential_93/lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_93_lstm_280_while_identity.sequential_93/lstm_280/while/Identity:output:0"[
'sequential_93_lstm_280_while_identity_10sequential_93/lstm_280/while/Identity_1:output:0"[
'sequential_93_lstm_280_while_identity_20sequential_93/lstm_280/while/Identity_2:output:0"[
'sequential_93_lstm_280_while_identity_30sequential_93/lstm_280/while/Identity_3:output:0"[
'sequential_93_lstm_280_while_identity_40sequential_93/lstm_280/while/Identity_4:output:0"[
'sequential_93_lstm_280_while_identity_50sequential_93/lstm_280/while/Identity_5:output:0"?
Jsequential_93_lstm_280_while_lstm_cell_238_biasadd_readvariableop_resourceLsequential_93_lstm_280_while_lstm_cell_238_biasadd_readvariableop_resource_0"?
Ksequential_93_lstm_280_while_lstm_cell_238_matmul_1_readvariableop_resourceMsequential_93_lstm_280_while_lstm_cell_238_matmul_1_readvariableop_resource_0"?
Isequential_93_lstm_280_while_lstm_cell_238_matmul_readvariableop_resourceKsequential_93_lstm_280_while_lstm_cell_238_matmul_readvariableop_resource_0"?
Csequential_93_lstm_280_while_sequential_93_lstm_280_strided_slice_1Esequential_93_lstm_280_while_sequential_93_lstm_280_strided_slice_1_0"?
sequential_93_lstm_280_while_tensorarrayv2read_tensorlistgetitem_sequential_93_lstm_280_tensorarrayunstack_tensorlistfromtensor?sequential_93_lstm_280_while_tensorarrayv2read_tensorlistgetitem_sequential_93_lstm_280_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2?
Asequential_93/lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOpAsequential_93/lstm_280/while/lstm_cell_238/BiasAdd/ReadVariableOp2?
@sequential_93/lstm_280/while/lstm_cell_238/MatMul/ReadVariableOp@sequential_93/lstm_280/while/lstm_cell_238/MatMul/ReadVariableOp2?
Bsequential_93/lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOpBsequential_93/lstm_280/while/lstm_cell_238/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_280_layer_call_and_return_conditional_losses_1450468

inputs?
,lstm_cell_238_matmul_readvariableop_resource:	d?A
.lstm_cell_238_matmul_1_readvariableop_resource:	2?<
-lstm_cell_238_biasadd_readvariableop_resource:	?
identity??$lstm_cell_238/BiasAdd/ReadVariableOp?#lstm_cell_238/MatMul/ReadVariableOp?%lstm_cell_238/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_238/MatMul/ReadVariableOpReadVariableOp,lstm_cell_238_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_238/MatMulMatMulstrided_slice_2:output:0+lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_238_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_238/MatMul_1MatMulzeros:output:0-lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_238/addAddV2lstm_cell_238/MatMul:product:0 lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_238_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_238/BiasAddBiasAddlstm_cell_238/add:z:0,lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_238/splitSplit&lstm_cell_238/split/split_dim:output:0lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_238/SigmoidSigmoidlstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_238/Sigmoid_1Sigmoidlstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_238/mulMullstm_cell_238/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_238/ReluRelulstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_238/mul_1Mullstm_cell_238/Sigmoid:y:0 lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_238/add_1AddV2lstm_cell_238/mul:z:0lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_238/Sigmoid_2Sigmoidlstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_238/Relu_1Relulstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_238/mul_2Mullstm_cell_238/Sigmoid_2:y:0"lstm_cell_238/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_238_matmul_readvariableop_resource.lstm_cell_238_matmul_1_readvariableop_resource-lstm_cell_238_biasadd_readvariableop_resource*
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
while_body_1450384*
condR
while_cond_1450383*K
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
NoOpNoOp%^lstm_cell_238/BiasAdd/ReadVariableOp$^lstm_cell_238/MatMul/ReadVariableOp&^lstm_cell_238/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_238/BiasAdd/ReadVariableOp$lstm_cell_238/BiasAdd/ReadVariableOp2J
#lstm_cell_238/MatMul/ReadVariableOp#lstm_cell_238/MatMul/ReadVariableOp2N
%lstm_cell_238/MatMul_1/ReadVariableOp%lstm_cell_238/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_238_layer_call_and_return_conditional_losses_1451410

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
J__inference_lstm_cell_239_layer_call_and_return_conditional_losses_1447124

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
??
?
#__inference__traced_restore_1451813
file_prefix2
 assignvariableop_dense_93_kernel:
.
 assignvariableop_1_dense_93_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_279_lstm_cell_279_kernel:	?M
:assignvariableop_8_lstm_279_lstm_cell_279_recurrent_kernel:	d?=
.assignvariableop_9_lstm_279_lstm_cell_279_bias:	?D
1assignvariableop_10_lstm_280_lstm_cell_280_kernel:	d?N
;assignvariableop_11_lstm_280_lstm_cell_280_recurrent_kernel:	2?>
/assignvariableop_12_lstm_280_lstm_cell_280_bias:	?C
1assignvariableop_13_lstm_281_lstm_cell_281_kernel:2(M
;assignvariableop_14_lstm_281_lstm_cell_281_recurrent_kernel:
(=
/assignvariableop_15_lstm_281_lstm_cell_281_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_93_kernel_m:
6
(assignvariableop_19_adam_dense_93_bias_m:K
8assignvariableop_20_adam_lstm_279_lstm_cell_279_kernel_m:	?U
Bassignvariableop_21_adam_lstm_279_lstm_cell_279_recurrent_kernel_m:	d?E
6assignvariableop_22_adam_lstm_279_lstm_cell_279_bias_m:	?K
8assignvariableop_23_adam_lstm_280_lstm_cell_280_kernel_m:	d?U
Bassignvariableop_24_adam_lstm_280_lstm_cell_280_recurrent_kernel_m:	2?E
6assignvariableop_25_adam_lstm_280_lstm_cell_280_bias_m:	?J
8assignvariableop_26_adam_lstm_281_lstm_cell_281_kernel_m:2(T
Bassignvariableop_27_adam_lstm_281_lstm_cell_281_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_281_lstm_cell_281_bias_m:(<
*assignvariableop_29_adam_dense_93_kernel_v:
6
(assignvariableop_30_adam_dense_93_bias_v:K
8assignvariableop_31_adam_lstm_279_lstm_cell_279_kernel_v:	?U
Bassignvariableop_32_adam_lstm_279_lstm_cell_279_recurrent_kernel_v:	d?E
6assignvariableop_33_adam_lstm_279_lstm_cell_279_bias_v:	?K
8assignvariableop_34_adam_lstm_280_lstm_cell_280_kernel_v:	d?U
Bassignvariableop_35_adam_lstm_280_lstm_cell_280_recurrent_kernel_v:	2?E
6assignvariableop_36_adam_lstm_280_lstm_cell_280_bias_v:	?J
8assignvariableop_37_adam_lstm_281_lstm_cell_281_kernel_v:2(T
Bassignvariableop_38_adam_lstm_281_lstm_cell_281_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_281_lstm_cell_281_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_93_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_93_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_279_lstm_cell_279_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_279_lstm_cell_279_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_279_lstm_cell_279_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_280_lstm_cell_280_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_280_lstm_cell_280_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_280_lstm_cell_280_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_281_lstm_cell_281_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_281_lstm_cell_281_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_281_lstm_cell_281_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_93_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_93_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_279_lstm_cell_279_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_279_lstm_cell_279_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_279_lstm_cell_279_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_280_lstm_cell_280_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_280_lstm_cell_280_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_280_lstm_cell_280_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_281_lstm_cell_281_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_281_lstm_cell_281_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_281_lstm_cell_281_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_93_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_93_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_279_lstm_cell_279_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_279_lstm_cell_279_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_279_lstm_cell_279_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_280_lstm_cell_280_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_280_lstm_cell_280_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_280_lstm_cell_280_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_281_lstm_cell_281_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_281_lstm_cell_281_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_281_lstm_cell_281_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_cond_1450856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1450856___redundant_placeholder05
1while_while_cond_1450856___redundant_placeholder15
1while_while_cond_1450856___redundant_placeholder25
1while_while_cond_1450856___redundant_placeholder3
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
while_cond_1447325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1447325___redundant_placeholder05
1while_while_cond_1447325___redundant_placeholder15
1while_while_cond_1447325___redundant_placeholder25
1while_while_cond_1447325___redundant_placeholder3
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
E__inference_lstm_280_layer_call_and_return_conditional_losses_1447560

inputs?
,lstm_cell_238_matmul_readvariableop_resource:	d?A
.lstm_cell_238_matmul_1_readvariableop_resource:	2?<
-lstm_cell_238_biasadd_readvariableop_resource:	?
identity??$lstm_cell_238/BiasAdd/ReadVariableOp?#lstm_cell_238/MatMul/ReadVariableOp?%lstm_cell_238/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_238/MatMul/ReadVariableOpReadVariableOp,lstm_cell_238_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_238/MatMulMatMulstrided_slice_2:output:0+lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_238_matmul_1_readvariableop_resource*
_output_shapes
:	2?*
dtype0?
lstm_cell_238/MatMul_1MatMulzeros:output:0-lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_238/addAddV2lstm_cell_238/MatMul:product:0 lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_238_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_238/BiasAddBiasAddlstm_cell_238/add:z:0,lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_238/splitSplit&lstm_cell_238/split/split_dim:output:0lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_splitp
lstm_cell_238/SigmoidSigmoidlstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_238/Sigmoid_1Sigmoidlstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2y
lstm_cell_238/mulMullstm_cell_238/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????2j
lstm_cell_238/ReluRelulstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
lstm_cell_238/mul_1Mullstm_cell_238/Sigmoid:y:0 lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2~
lstm_cell_238/add_1AddV2lstm_cell_238/mul:z:0lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2r
lstm_cell_238/Sigmoid_2Sigmoidlstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2g
lstm_cell_238/Relu_1Relulstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
lstm_cell_238/mul_2Mullstm_cell_238/Sigmoid_2:y:0"lstm_cell_238/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_238_matmul_readvariableop_resource.lstm_cell_238_matmul_1_readvariableop_resource-lstm_cell_238_biasadd_readvariableop_resource*
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
while_body_1447476*
condR
while_cond_1447475*K
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
NoOpNoOp%^lstm_cell_238/BiasAdd/ReadVariableOp$^lstm_cell_238/MatMul/ReadVariableOp&^lstm_cell_238/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????d: : : 2L
$lstm_cell_238/BiasAdd/ReadVariableOp$lstm_cell_238/BiasAdd/ReadVariableOp2J
#lstm_cell_238/MatMul/ReadVariableOp#lstm_cell_238/MatMul/ReadVariableOp2N
%lstm_cell_238/MatMul_1/ReadVariableOp%lstm_cell_238/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_lstm_281_layer_call_fn_1450633
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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1447252o
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
while_cond_1447182
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1447182___redundant_placeholder05
1while_while_cond_1447182___redundant_placeholder15
1while_while_cond_1447182___redundant_placeholder25
1while_while_cond_1447182___redundant_placeholder3
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
while_cond_1450240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1450240___redundant_placeholder05
1while_while_cond_1450240___redundant_placeholder15
1while_while_cond_1450240___redundant_placeholder25
1while_while_cond_1450240___redundant_placeholder3
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
/__inference_lstm_cell_238_layer_call_fn_1451361

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
J__inference_lstm_cell_238_layer_call_and_return_conditional_losses_1446628o
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
lstm_280_while_cond_1448722.
*lstm_280_while_lstm_280_while_loop_counter4
0lstm_280_while_lstm_280_while_maximum_iterations
lstm_280_while_placeholder 
lstm_280_while_placeholder_1 
lstm_280_while_placeholder_2 
lstm_280_while_placeholder_30
,lstm_280_while_less_lstm_280_strided_slice_1G
Clstm_280_while_lstm_280_while_cond_1448722___redundant_placeholder0G
Clstm_280_while_lstm_280_while_cond_1448722___redundant_placeholder1G
Clstm_280_while_lstm_280_while_cond_1448722___redundant_placeholder2G
Clstm_280_while_lstm_280_while_cond_1448722___redundant_placeholder3
lstm_280_while_identity
?
lstm_280/while/LessLesslstm_280_while_placeholder,lstm_280_while_less_lstm_280_strided_slice_1*
T0*
_output_shapes
: ]
lstm_280/while/IdentityIdentitylstm_280/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_280_while_identity lstm_280/while/Identity:output:0*(
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
while_body_1450527
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_238_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_238_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_238_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_238_matmul_readvariableop_resource:	d?G
4while_lstm_cell_238_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_238_biasadd_readvariableop_resource:	???*while/lstm_cell_238/BiasAdd/ReadVariableOp?)while/lstm_cell_238/MatMul/ReadVariableOp?+while/lstm_cell_238/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_238/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_238_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_238/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_238_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_238/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_238/addAddV2$while/lstm_cell_238/MatMul:product:0&while/lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_238_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_238/BiasAddBiasAddwhile/lstm_cell_238/add:z:02while/lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_238/splitSplit,while/lstm_cell_238/split/split_dim:output:0$while/lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_238/SigmoidSigmoid"while/lstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_238/Sigmoid_1Sigmoid"while/lstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mulMul!while/lstm_cell_238/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_238/ReluRelu"while/lstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mul_1Mulwhile/lstm_cell_238/Sigmoid:y:0&while/lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/add_1AddV2while/lstm_cell_238/mul:z:0while/lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_238/Sigmoid_2Sigmoid"while/lstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_238/Relu_1Reluwhile/lstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mul_2Mul!while/lstm_cell_238/Sigmoid_2:y:0(while/lstm_cell_238/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_238/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_238/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_238/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_238/BiasAdd/ReadVariableOp*^while/lstm_cell_238/MatMul/ReadVariableOp,^while/lstm_cell_238/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_238_biasadd_readvariableop_resource5while_lstm_cell_238_biasadd_readvariableop_resource_0"n
4while_lstm_cell_238_matmul_1_readvariableop_resource6while_lstm_cell_238_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_238_matmul_readvariableop_resource4while_lstm_cell_238_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_238/BiasAdd/ReadVariableOp*while/lstm_cell_238/BiasAdd/ReadVariableOp2V
)while/lstm_cell_238/MatMul/ReadVariableOp)while/lstm_cell_238/MatMul/ReadVariableOp2Z
+while/lstm_cell_238/MatMul_1/ReadVariableOp+while/lstm_cell_238/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_1449624
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1449624___redundant_placeholder05
1while_while_cond_1449624___redundant_placeholder15
1while_while_cond_1449624___redundant_placeholder25
1while_while_cond_1449624___redundant_placeholder3
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
/__inference_lstm_cell_239_layer_call_fn_1451476

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
J__inference_lstm_cell_239_layer_call_and_return_conditional_losses_1447124o
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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1447410

inputs?
,lstm_cell_237_matmul_readvariableop_resource:	?A
.lstm_cell_237_matmul_1_readvariableop_resource:	d?<
-lstm_cell_237_biasadd_readvariableop_resource:	?
identity??$lstm_cell_237/BiasAdd/ReadVariableOp?#lstm_cell_237/MatMul/ReadVariableOp?%lstm_cell_237/MatMul_1/ReadVariableOp?while;
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
#lstm_cell_237/MatMul/ReadVariableOpReadVariableOp,lstm_cell_237_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
lstm_cell_237/MatMulMatMulstrided_slice_2:output:0+lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_237_matmul_1_readvariableop_resource*
_output_shapes
:	d?*
dtype0?
lstm_cell_237/MatMul_1MatMulzeros:output:0-lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
lstm_cell_237/addAddV2lstm_cell_237/MatMul:product:0 lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
$lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_237_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
lstm_cell_237/BiasAddBiasAddlstm_cell_237/add:z:0,lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
lstm_cell_237/splitSplit&lstm_cell_237/split/split_dim:output:0lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_splitp
lstm_cell_237/SigmoidSigmoidlstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_237/Sigmoid_1Sigmoidlstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????dy
lstm_cell_237/mulMullstm_cell_237/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:?????????dj
lstm_cell_237/ReluRelulstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
lstm_cell_237/mul_1Mullstm_cell_237/Sigmoid:y:0 lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d~
lstm_cell_237/add_1AddV2lstm_cell_237/mul:z:0lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????dr
lstm_cell_237/Sigmoid_2Sigmoidlstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????dg
lstm_cell_237/Relu_1Relulstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
lstm_cell_237/mul_2Mullstm_cell_237/Sigmoid_2:y:0"lstm_cell_237/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_237_matmul_readvariableop_resource.lstm_cell_237_matmul_1_readvariableop_resource-lstm_cell_237_biasadd_readvariableop_resource*
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
while_body_1447326*
condR
while_cond_1447325*K
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
NoOpNoOp%^lstm_cell_237/BiasAdd/ReadVariableOp$^lstm_cell_237/MatMul/ReadVariableOp&^lstm_cell_237/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_237/BiasAdd/ReadVariableOp$lstm_cell_237/BiasAdd/ReadVariableOp2J
#lstm_cell_237/MatMul/ReadVariableOp#lstm_cell_237/MatMul/ReadVariableOp2N
%lstm_cell_237/MatMul_1/ReadVariableOp%lstm_cell_237/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_237_layer_call_and_return_conditional_losses_1451312

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
/__inference_sequential_93_layer_call_fn_1448525

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
J__inference_sequential_93_layer_call_and_return_conditional_losses_1448324o
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
)sequential_93_lstm_281_while_cond_1446120J
Fsequential_93_lstm_281_while_sequential_93_lstm_281_while_loop_counterP
Lsequential_93_lstm_281_while_sequential_93_lstm_281_while_maximum_iterations,
(sequential_93_lstm_281_while_placeholder.
*sequential_93_lstm_281_while_placeholder_1.
*sequential_93_lstm_281_while_placeholder_2.
*sequential_93_lstm_281_while_placeholder_3L
Hsequential_93_lstm_281_while_less_sequential_93_lstm_281_strided_slice_1c
_sequential_93_lstm_281_while_sequential_93_lstm_281_while_cond_1446120___redundant_placeholder0c
_sequential_93_lstm_281_while_sequential_93_lstm_281_while_cond_1446120___redundant_placeholder1c
_sequential_93_lstm_281_while_sequential_93_lstm_281_while_cond_1446120___redundant_placeholder2c
_sequential_93_lstm_281_while_sequential_93_lstm_281_while_cond_1446120___redundant_placeholder3)
%sequential_93_lstm_281_while_identity
?
!sequential_93/lstm_281/while/LessLess(sequential_93_lstm_281_while_placeholderHsequential_93_lstm_281_while_less_sequential_93_lstm_281_strided_slice_1*
T0*
_output_shapes
: y
%sequential_93/lstm_281/while/IdentityIdentity%sequential_93/lstm_281/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_93_lstm_281_while_identity.sequential_93/lstm_281/while/Identity:output:0*(
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
*__inference_lstm_281_layer_call_fn_1450644

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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1447710o
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
*__inference_lstm_279_layer_call_fn_1449401
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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1446552|
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
while_body_1449911
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_237_matmul_readvariableop_resource_0:	?I
6while_lstm_cell_237_matmul_1_readvariableop_resource_0:	d?D
5while_lstm_cell_237_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_237_matmul_readvariableop_resource:	?G
4while_lstm_cell_237_matmul_1_readvariableop_resource:	d?B
3while_lstm_cell_237_biasadd_readvariableop_resource:	???*while/lstm_cell_237/BiasAdd/ReadVariableOp?)while/lstm_cell_237/MatMul/ReadVariableOp?+while/lstm_cell_237/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0?
)while/lstm_cell_237/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_237_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype0?
while/lstm_cell_237/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_237/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_237/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_237_matmul_1_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_237/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_237/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_237/addAddV2$while/lstm_cell_237/MatMul:product:0&while/lstm_cell_237/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_237/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_237_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_237/BiasAddBiasAddwhile/lstm_cell_237/add:z:02while/lstm_cell_237/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_237/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_237/splitSplit,while/lstm_cell_237/split/split_dim:output:0$while/lstm_cell_237/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????d:?????????d:?????????d:?????????d*
	num_split|
while/lstm_cell_237/SigmoidSigmoid"while/lstm_cell_237/split:output:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_237/Sigmoid_1Sigmoid"while/lstm_cell_237/split:output:1*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mulMul!while/lstm_cell_237/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????dv
while/lstm_cell_237/ReluRelu"while/lstm_cell_237/split:output:2*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mul_1Mulwhile/lstm_cell_237/Sigmoid:y:0&while/lstm_cell_237/Relu:activations:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/add_1AddV2while/lstm_cell_237/mul:z:0while/lstm_cell_237/mul_1:z:0*
T0*'
_output_shapes
:?????????d~
while/lstm_cell_237/Sigmoid_2Sigmoid"while/lstm_cell_237/split:output:3*
T0*'
_output_shapes
:?????????ds
while/lstm_cell_237/Relu_1Reluwhile/lstm_cell_237/add_1:z:0*
T0*'
_output_shapes
:?????????d?
while/lstm_cell_237/mul_2Mul!while/lstm_cell_237/Sigmoid_2:y:0(while/lstm_cell_237/Relu_1:activations:0*
T0*'
_output_shapes
:?????????d?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_237/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_237/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????dz
while/Identity_5Identitywhile/lstm_cell_237/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????d?

while/NoOpNoOp+^while/lstm_cell_237/BiasAdd/ReadVariableOp*^while/lstm_cell_237/MatMul/ReadVariableOp,^while/lstm_cell_237/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_237_biasadd_readvariableop_resource5while_lstm_cell_237_biasadd_readvariableop_resource_0"n
4while_lstm_cell_237_matmul_1_readvariableop_resource6while_lstm_cell_237_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_237_matmul_readvariableop_resource4while_lstm_cell_237_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????d:?????????d: : : : : 2X
*while/lstm_cell_237/BiasAdd/ReadVariableOp*while/lstm_cell_237/BiasAdd/ReadVariableOp2V
)while/lstm_cell_237/MatMul/ReadVariableOp)while/lstm_cell_237/MatMul/ReadVariableOp2Z
+while/lstm_cell_237/MatMul_1/ReadVariableOp+while/lstm_cell_237/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_1447476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_238_matmul_readvariableop_resource_0:	d?I
6while_lstm_cell_238_matmul_1_readvariableop_resource_0:	2?D
5while_lstm_cell_238_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_238_matmul_readvariableop_resource:	d?G
4while_lstm_cell_238_matmul_1_readvariableop_resource:	2?B
3while_lstm_cell_238_biasadd_readvariableop_resource:	???*while/lstm_cell_238/BiasAdd/ReadVariableOp?)while/lstm_cell_238/MatMul/ReadVariableOp?+while/lstm_cell_238/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
)while/lstm_cell_238/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_238_matmul_readvariableop_resource_0*
_output_shapes
:	d?*
dtype0?
while/lstm_cell_238/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_238/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+while/lstm_cell_238/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_238_matmul_1_readvariableop_resource_0*
_output_shapes
:	2?*
dtype0?
while/lstm_cell_238/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_238/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
while/lstm_cell_238/addAddV2$while/lstm_cell_238/MatMul:product:0&while/lstm_cell_238/MatMul_1:product:0*
T0*(
_output_shapes
:???????????
*while/lstm_cell_238/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_238_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype0?
while/lstm_cell_238/BiasAddBiasAddwhile/lstm_cell_238/add:z:02while/lstm_cell_238/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
#while/lstm_cell_238/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
while/lstm_cell_238/splitSplit,while/lstm_cell_238/split/split_dim:output:0$while/lstm_cell_238/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????2:?????????2:?????????2:?????????2*
	num_split|
while/lstm_cell_238/SigmoidSigmoid"while/lstm_cell_238/split:output:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_238/Sigmoid_1Sigmoid"while/lstm_cell_238/split:output:1*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mulMul!while/lstm_cell_238/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2v
while/lstm_cell_238/ReluRelu"while/lstm_cell_238/split:output:2*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mul_1Mulwhile/lstm_cell_238/Sigmoid:y:0&while/lstm_cell_238/Relu:activations:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/add_1AddV2while/lstm_cell_238/mul:z:0while/lstm_cell_238/mul_1:z:0*
T0*'
_output_shapes
:?????????2~
while/lstm_cell_238/Sigmoid_2Sigmoid"while/lstm_cell_238/split:output:3*
T0*'
_output_shapes
:?????????2s
while/lstm_cell_238/Relu_1Reluwhile/lstm_cell_238/add_1:z:0*
T0*'
_output_shapes
:?????????2?
while/lstm_cell_238/mul_2Mul!while/lstm_cell_238/Sigmoid_2:y:0(while/lstm_cell_238/Relu_1:activations:0*
T0*'
_output_shapes
:?????????2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_238/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_238/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2z
while/Identity_5Identitywhile/lstm_cell_238/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:?????????2?

while/NoOpNoOp+^while/lstm_cell_238/BiasAdd/ReadVariableOp*^while/lstm_cell_238/MatMul/ReadVariableOp,^while/lstm_cell_238/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_238_biasadd_readvariableop_resource5while_lstm_cell_238_biasadd_readvariableop_resource_0"n
4while_lstm_cell_238_matmul_1_readvariableop_resource6while_lstm_cell_238_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_238_matmul_readvariableop_resource4while_lstm_cell_238_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2X
*while/lstm_cell_238/BiasAdd/ReadVariableOp*while/lstm_cell_238/BiasAdd/ReadVariableOp2V
)while/lstm_cell_238/MatMul/ReadVariableOp)while/lstm_cell_238/MatMul/ReadVariableOp2Z
+while/lstm_cell_238/MatMul_1/ReadVariableOp+while/lstm_cell_238/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_sequential_93_layer_call_and_return_conditional_losses_1448436
lstm_279_input#
lstm_279_1448409:	?#
lstm_279_1448411:	d?
lstm_279_1448413:	?#
lstm_280_1448416:	d?#
lstm_280_1448418:	2?
lstm_280_1448420:	?"
lstm_281_1448423:2("
lstm_281_1448425:
(
lstm_281_1448427:("
dense_93_1448430:

dense_93_1448432:
identity?? dense_93/StatefulPartitionedCall? lstm_279/StatefulPartitionedCall? lstm_280/StatefulPartitionedCall? lstm_281/StatefulPartitionedCall?
 lstm_279/StatefulPartitionedCallStatefulPartitionedCalllstm_279_inputlstm_279_1448409lstm_279_1448411lstm_279_1448413*
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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1448256?
 lstm_280/StatefulPartitionedCallStatefulPartitionedCall)lstm_279/StatefulPartitionedCall:output:0lstm_280_1448416lstm_280_1448418lstm_280_1448420*
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
E__inference_lstm_280_layer_call_and_return_conditional_losses_1448091?
 lstm_281/StatefulPartitionedCallStatefulPartitionedCall)lstm_280/StatefulPartitionedCall:output:0lstm_281_1448423lstm_281_1448425lstm_281_1448427*
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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1447926?
 dense_93/StatefulPartitionedCallStatefulPartitionedCall)lstm_281/StatefulPartitionedCall:output:0dense_93_1448430dense_93_1448432*
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
E__inference_dense_93_layer_call_and_return_conditional_losses_1447728x
IdentityIdentity)dense_93/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_93/StatefulPartitionedCall!^lstm_279/StatefulPartitionedCall!^lstm_280/StatefulPartitionedCall!^lstm_281/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : 2D
 dense_93/StatefulPartitionedCall dense_93/StatefulPartitionedCall2D
 lstm_279/StatefulPartitionedCall lstm_279/StatefulPartitionedCall2D
 lstm_280/StatefulPartitionedCall lstm_280/StatefulPartitionedCall2D
 lstm_281/StatefulPartitionedCall lstm_281/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_279_input
?
?
J__inference_lstm_cell_237_layer_call_and_return_conditional_losses_1446424

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
while_cond_1449767
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1449767___redundant_placeholder05
1while_while_cond_1449767___redundant_placeholder15
1while_while_cond_1449767___redundant_placeholder25
1while_while_cond_1449767___redundant_placeholder3
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
while_cond_1450097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1450097___redundant_placeholder05
1while_while_cond_1450097___redundant_placeholder15
1while_while_cond_1450097___redundant_placeholder25
1while_while_cond_1450097___redundant_placeholder3
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
while_body_1446642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_238_1446666_0:	d?0
while_lstm_cell_238_1446668_0:	2?,
while_lstm_cell_238_1446670_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_238_1446666:	d?.
while_lstm_cell_238_1446668:	2?*
while_lstm_cell_238_1446670:	???+while/lstm_cell_238/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????d   ?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????d*
element_dtype0?
+while/lstm_cell_238/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_238_1446666_0while_lstm_cell_238_1446668_0while_lstm_cell_238_1446670_0*
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
J__inference_lstm_cell_238_layer_call_and_return_conditional_losses_1446628?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_238/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_238/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????2?
while/Identity_5Identity4while/lstm_cell_238/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:?????????2z

while/NoOpNoOp,^while/lstm_cell_238/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_238_1446666while_lstm_cell_238_1446666_0"<
while_lstm_cell_238_1446668while_lstm_cell_238_1446668_0"<
while_lstm_cell_238_1446670while_lstm_cell_238_1446670_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :?????????2:?????????2: : : : : 2Z
+while/lstm_cell_238/StatefulPartitionedCall+while/lstm_cell_238/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_239_layer_call_and_return_conditional_losses_1451508

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
states/1"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_279_input;
 serving_default_lstm_279_input:0?????????<
dense_930
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
2dense_93/kernel
:2dense_93/bias
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
0:.	?2lstm_279/lstm_cell_279/kernel
::8	d?2'lstm_279/lstm_cell_279/recurrent_kernel
*:(?2lstm_279/lstm_cell_279/bias
0:.	d?2lstm_280/lstm_cell_280/kernel
::8	2?2'lstm_280/lstm_cell_280/recurrent_kernel
*:(?2lstm_280/lstm_cell_280/bias
/:-2(2lstm_281/lstm_cell_281/kernel
9:7
(2'lstm_281/lstm_cell_281/recurrent_kernel
):'(2lstm_281/lstm_cell_281/bias
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
2Adam/dense_93/kernel/m
 :2Adam/dense_93/bias/m
5:3	?2$Adam/lstm_279/lstm_cell_279/kernel/m
?:=	d?2.Adam/lstm_279/lstm_cell_279/recurrent_kernel/m
/:-?2"Adam/lstm_279/lstm_cell_279/bias/m
5:3	d?2$Adam/lstm_280/lstm_cell_280/kernel/m
?:=	2?2.Adam/lstm_280/lstm_cell_280/recurrent_kernel/m
/:-?2"Adam/lstm_280/lstm_cell_280/bias/m
4:22(2$Adam/lstm_281/lstm_cell_281/kernel/m
>:<
(2.Adam/lstm_281/lstm_cell_281/recurrent_kernel/m
.:,(2"Adam/lstm_281/lstm_cell_281/bias/m
&:$
2Adam/dense_93/kernel/v
 :2Adam/dense_93/bias/v
5:3	?2$Adam/lstm_279/lstm_cell_279/kernel/v
?:=	d?2.Adam/lstm_279/lstm_cell_279/recurrent_kernel/v
/:-?2"Adam/lstm_279/lstm_cell_279/bias/v
5:3	d?2$Adam/lstm_280/lstm_cell_280/kernel/v
?:=	2?2.Adam/lstm_280/lstm_cell_280/recurrent_kernel/v
/:-?2"Adam/lstm_280/lstm_cell_280/bias/v
4:22(2$Adam/lstm_281/lstm_cell_281/kernel/v
>:<
(2.Adam/lstm_281/lstm_cell_281/recurrent_kernel/v
.:,(2"Adam/lstm_281/lstm_cell_281/bias/v
?2?
/__inference_sequential_93_layer_call_fn_1447760
/__inference_sequential_93_layer_call_fn_1448498
/__inference_sequential_93_layer_call_fn_1448525
/__inference_sequential_93_layer_call_fn_1448376?
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
J__inference_sequential_93_layer_call_and_return_conditional_losses_1448952
J__inference_sequential_93_layer_call_and_return_conditional_losses_1449379
J__inference_sequential_93_layer_call_and_return_conditional_losses_1448406
J__inference_sequential_93_layer_call_and_return_conditional_losses_1448436?
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
"__inference__wrapped_model_1446211lstm_279_input"?
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
*__inference_lstm_279_layer_call_fn_1449390
*__inference_lstm_279_layer_call_fn_1449401
*__inference_lstm_279_layer_call_fn_1449412
*__inference_lstm_279_layer_call_fn_1449423?
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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1449566
E__inference_lstm_279_layer_call_and_return_conditional_losses_1449709
E__inference_lstm_279_layer_call_and_return_conditional_losses_1449852
E__inference_lstm_279_layer_call_and_return_conditional_losses_1449995?
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
*__inference_lstm_280_layer_call_fn_1450006
*__inference_lstm_280_layer_call_fn_1450017
*__inference_lstm_280_layer_call_fn_1450028
*__inference_lstm_280_layer_call_fn_1450039?
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
E__inference_lstm_280_layer_call_and_return_conditional_losses_1450182
E__inference_lstm_280_layer_call_and_return_conditional_losses_1450325
E__inference_lstm_280_layer_call_and_return_conditional_losses_1450468
E__inference_lstm_280_layer_call_and_return_conditional_losses_1450611?
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
*__inference_lstm_281_layer_call_fn_1450622
*__inference_lstm_281_layer_call_fn_1450633
*__inference_lstm_281_layer_call_fn_1450644
*__inference_lstm_281_layer_call_fn_1450655?
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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1450798
E__inference_lstm_281_layer_call_and_return_conditional_losses_1450941
E__inference_lstm_281_layer_call_and_return_conditional_losses_1451084
E__inference_lstm_281_layer_call_and_return_conditional_losses_1451227?
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
*__inference_dense_93_layer_call_fn_1451236?
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
E__inference_dense_93_layer_call_and_return_conditional_losses_1451246?
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
%__inference_signature_wrapper_1448471lstm_279_input"?
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
/__inference_lstm_cell_237_layer_call_fn_1451263
/__inference_lstm_cell_237_layer_call_fn_1451280?
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
J__inference_lstm_cell_237_layer_call_and_return_conditional_losses_1451312
J__inference_lstm_cell_237_layer_call_and_return_conditional_losses_1451344?
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
/__inference_lstm_cell_238_layer_call_fn_1451361
/__inference_lstm_cell_238_layer_call_fn_1451378?
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
J__inference_lstm_cell_238_layer_call_and_return_conditional_losses_1451410
J__inference_lstm_cell_238_layer_call_and_return_conditional_losses_1451442?
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
/__inference_lstm_cell_239_layer_call_fn_1451459
/__inference_lstm_cell_239_layer_call_fn_1451476?
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
J__inference_lstm_cell_239_layer_call_and_return_conditional_losses_1451508
J__inference_lstm_cell_239_layer_call_and_return_conditional_losses_1451540?
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
"__inference__wrapped_model_1446211-./012345!";?8
1?.
,?)
lstm_279_input?????????
? "3?0
.
dense_93"?
dense_93??????????
E__inference_dense_93_layer_call_and_return_conditional_losses_1451246\!"/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? }
*__inference_dense_93_layer_call_fn_1451236O!"/?,
%?"
 ?
inputs?????????

? "???????????
E__inference_lstm_279_layer_call_and_return_conditional_losses_1449566?-./O?L
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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1449709?-./O?L
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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1449852q-./??<
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
E__inference_lstm_279_layer_call_and_return_conditional_losses_1449995q-./??<
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
*__inference_lstm_279_layer_call_fn_1449390}-./O?L
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
*__inference_lstm_279_layer_call_fn_1449401}-./O?L
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
*__inference_lstm_279_layer_call_fn_1449412d-./??<
5?2
$?!
inputs?????????

 
p 

 
? "??????????d?
*__inference_lstm_279_layer_call_fn_1449423d-./??<
5?2
$?!
inputs?????????

 
p

 
? "??????????d?
E__inference_lstm_280_layer_call_and_return_conditional_losses_1450182?012O?L
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
E__inference_lstm_280_layer_call_and_return_conditional_losses_1450325?012O?L
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
E__inference_lstm_280_layer_call_and_return_conditional_losses_1450468q012??<
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
E__inference_lstm_280_layer_call_and_return_conditional_losses_1450611q012??<
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
*__inference_lstm_280_layer_call_fn_1450006}012O?L
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
*__inference_lstm_280_layer_call_fn_1450017}012O?L
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
*__inference_lstm_280_layer_call_fn_1450028d012??<
5?2
$?!
inputs?????????d

 
p 

 
? "??????????2?
*__inference_lstm_280_layer_call_fn_1450039d012??<
5?2
$?!
inputs?????????d

 
p

 
? "??????????2?
E__inference_lstm_281_layer_call_and_return_conditional_losses_1450798}345O?L
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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1450941}345O?L
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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1451084m345??<
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
E__inference_lstm_281_layer_call_and_return_conditional_losses_1451227m345??<
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
*__inference_lstm_281_layer_call_fn_1450622p345O?L
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
*__inference_lstm_281_layer_call_fn_1450633p345O?L
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
*__inference_lstm_281_layer_call_fn_1450644`345??<
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
*__inference_lstm_281_layer_call_fn_1450655`345??<
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
J__inference_lstm_cell_237_layer_call_and_return_conditional_losses_1451312?-./??}
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
J__inference_lstm_cell_237_layer_call_and_return_conditional_losses_1451344?-./??}
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
/__inference_lstm_cell_237_layer_call_fn_1451263?-./??}
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
/__inference_lstm_cell_237_layer_call_fn_1451280?-./??}
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
J__inference_lstm_cell_238_layer_call_and_return_conditional_losses_1451410?012??}
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
J__inference_lstm_cell_238_layer_call_and_return_conditional_losses_1451442?012??}
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
/__inference_lstm_cell_238_layer_call_fn_1451361?012??}
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
/__inference_lstm_cell_238_layer_call_fn_1451378?012??}
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
J__inference_lstm_cell_239_layer_call_and_return_conditional_losses_1451508?345??}
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
J__inference_lstm_cell_239_layer_call_and_return_conditional_losses_1451540?345??}
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
/__inference_lstm_cell_239_layer_call_fn_1451459?345??}
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
/__inference_lstm_cell_239_layer_call_fn_1451476?345??}
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
J__inference_sequential_93_layer_call_and_return_conditional_losses_1448406y-./012345!"C?@
9?6
,?)
lstm_279_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_93_layer_call_and_return_conditional_losses_1448436y-./012345!"C?@
9?6
,?)
lstm_279_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_93_layer_call_and_return_conditional_losses_1448952q-./012345!";?8
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
J__inference_sequential_93_layer_call_and_return_conditional_losses_1449379q-./012345!";?8
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
/__inference_sequential_93_layer_call_fn_1447760l-./012345!"C?@
9?6
,?)
lstm_279_input?????????
p 

 
? "???????????
/__inference_sequential_93_layer_call_fn_1448376l-./012345!"C?@
9?6
,?)
lstm_279_input?????????
p

 
? "???????????
/__inference_sequential_93_layer_call_fn_1448498d-./012345!";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_93_layer_call_fn_1448525d-./012345!";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_1448471?-./012345!"M?J
? 
C?@
>
lstm_279_input,?)
lstm_279_input?????????"3?0
.
dense_93"?
dense_93?????????